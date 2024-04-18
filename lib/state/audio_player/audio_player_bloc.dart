import 'package:audio_handler/audio_handler.dart';
import 'package:audio_service/audio_service.dart';
import 'package:bloc/bloc.dart';
import 'package:core/entities.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';

part 'audio_player_event.dart';
part 'audio_player_state.dart';

class AudioPlayerBloc extends Bloc<AudioPlayerEvent, AudioPlayerState> {
  final AudioHandler _audioHandler;
  AudioPlayerBloc({
    required AudioHandler audioHandler,
  })  : _audioHandler = audioHandler,
        super(const AudioPlayerState()) {
    on<LoadAudioPlayerEvent>(_onLoadAudioPlayer);
    on<PlayAudioEvent>(_onPlayAudio);
    on<PauseAudioEvent>(_onPauseAudio);
    on<SetAudioEvent>(_onSetAudio);
  }

  void _onLoadAudioPlayer(
    LoadAudioPlayerEvent event,
    Emitter<AudioPlayerState> emit,
  ) async {
    Stream<AudioPlayerData<Song>> audioPlayerDataStream = Rx.combineLatest4<
        PlaybackState,
        List<MediaItem>,
        MediaItem?,
        Duration,
        AudioPlayerData<Song>>(
      _audioHandler.playbackState,
      _audioHandler.queue,
      _audioHandler.mediaItem,
      AudioService.position,
      (playbackState, mediaItems, mediaItem, position) {
        final audio =
            (mediaItem == null) ? null : Song.fromMediaItem(mediaItem);

        final queue = mediaItems.map((e) => Song.fromMediaItem(e)).toList();
        return AudioPlayerData<Song>(
          audio: audio,
          queue: queue,
          playbackState: playbackState,
          currentAudioDuration: audio?.duration,
          currentAudioPosition: position,
        );
      },
    );

    await emit.forEach(
      audioPlayerDataStream,
      onData: (data) {
        if (state.status == AudioPlayerStatus.initial && data.audio == null) {
          return state.copyWith(
            audioPlayerData: data,
            status: AudioPlayerStatus.initial,
          );
        }
        if (state.status == AudioPlayerStatus.initial && data.audio != null) {
          return state.copyWith(
            audioPlayerData: data,
            status: AudioPlayerStatus.loaded,
          );
        }
        print('data: ${data.playbackState.toString()}');
        return state.copyWith(audioPlayerData: data);
      },
    );
  }

  void _onPlayAudio(
    PlayAudioEvent event,
    Emitter<AudioPlayerState> emit,
  ) async {
    await _audioHandler.play();
    emit(state.copyWith(status: AudioPlayerStatus.playing));
  }

  void _onPauseAudio(
    PauseAudioEvent event,
    Emitter<AudioPlayerState> emit,
  ) async {
    await _audioHandler.pause();
    emit(state.copyWith(status: AudioPlayerStatus.paused));
  }

  void _onSetAudio(
    SetAudioEvent event,
    Emitter<AudioPlayerState> emit,
  ) async {
    await _audioHandler.removeQueueItemAt(0);
    await _audioHandler.addQueueItem(event.song.toMediaItem());
    await _audioHandler.play();
    emit(state.copyWith(status: AudioPlayerStatus.playing));
  }
}

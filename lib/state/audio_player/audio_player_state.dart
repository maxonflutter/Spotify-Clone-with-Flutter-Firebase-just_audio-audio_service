part of 'audio_player_bloc.dart';

enum AudioPlayerStatus { initial, loaded, playing, paused }

class AudioPlayerState extends Equatable {
  final AudioPlayerStatus status;
  final AudioPlayerData<Song>? audioPlayerData;

  const AudioPlayerState({
    this.status = AudioPlayerStatus.initial,
    this.audioPlayerData,
  });

  AudioPlayerState copyWith({
    AudioPlayerStatus? status,
    AudioPlayerData<Song>? audioPlayerData,
  }) {
    return AudioPlayerState(
      status: status ?? this.status,
      audioPlayerData: audioPlayerData ?? this.audioPlayerData,
    );
  }

  @override
  List<Object?> get props => [status, audioPlayerData];
}

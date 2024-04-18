import 'package:audio_service/audio_service.dart';
import 'package:equatable/equatable.dart';

class AudioPlayerData<T> extends Equatable {
  final T? audio;
  final List<T> queue;
  final PlaybackState playbackState;
  final Duration? currentAudioDuration;
  final Duration? currentAudioPosition;

  AudioPlayerData({
    this.audio,
    required this.queue,
    required this.playbackState,
    this.currentAudioDuration,
    this.currentAudioPosition,
  });

  @override
  List<Object?> get props => [
        audio,
        queue,
        playbackState,
        currentAudioDuration,
        currentAudioPosition,
      ];
}

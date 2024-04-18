import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../state/audio_player/audio_player_bloc.dart';

class SongTrackCard extends StatelessWidget {
  const SongTrackCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
      buildWhen: (previous, current) {
        return (previous.audioPlayerData?.audio !=
                current.audioPlayerData?.audio) ||
            (previous.audioPlayerData?.playbackState !=
                current.audioPlayerData?.playbackState);
      },
      builder: (context, state) {
        if (state.status == AudioPlayerStatus.initial) {
          return const SizedBox();
        }
        if (state.audioPlayerData?.audio == null) {
          return const SizedBox();
        }
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              height: kToolbarHeight,
              margin: const EdgeInsets.all(8.0).copyWith(bottom: 0.0),
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: colorScheme.surface,
              ),
              child: Row(
                children: [
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(4.0),
                  //   child: Image.network(
                  //     'https://source.unsplash.com/random/?artist,music',
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          state.audioPlayerData!.audio!.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          state.audioPlayerData!.audio!.artistId,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.bodyMedium!.copyWith(
                            color: colorScheme.onBackground.withOpacity(.75),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.computer),
                  ),
                  const SizedBox(width: 8.0),
                  (state.audioPlayerData!.playbackState.playing)
                      ? IconButton(
                          onPressed: () {
                            print('Payse');
                            context
                                .read<AudioPlayerBloc>()
                                .add(PauseAudioEvent());
                          },
                          icon: const Icon(Icons.pause_circle_filled),
                        )
                      : IconButton(
                          onPressed: () {
                            context
                                .read<AudioPlayerBloc>()
                                .add(PlayAudioEvent());
                          },
                          icon: const Icon(Icons.play_circle_filled),
                        ),
                ],
              ),
            ),

            // Seekbar for the song
            const _SongTrackSeekbar(),
          ],
        );
      },
    );
  }
}

class _SongTrackSeekbar extends StatelessWidget {
  const _SongTrackSeekbar();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioPlayerBloc, AudioPlayerState>(
      builder: (context, state) {
        final duration =
            state.audioPlayerData!.audio!.duration.inMilliseconds.toDouble();

        final position = state
            .audioPlayerData!.currentAudioPosition!.inMilliseconds
            .toDouble();
        return SizedBox(
          height: 8.0,
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbShape: SliderComponentShape.noThumb,
            ),
            child: Slider(
              min: 0.0,
              max: duration,
              value: min(duration, position),
              onChanged: (double value) {},
            ),
          ),
        );
      },
    );
  }
}

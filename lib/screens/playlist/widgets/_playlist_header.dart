part of '../playlist_screen.dart';

class _PlaylistHeader extends StatelessWidget {
  const _PlaylistHeader({required this.playlist});

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                colorScheme.secondary,
                colorScheme.secondary.withOpacity(0.0),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 240,
            height: 240,
            margin: const EdgeInsets.only(
              top: kToolbarHeight + 16.0,
              bottom: 64.0,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(playlist.imageUrl!),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          left: 16.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                playlist.name,
                style: textTheme.titleLarge!.copyWith(
                  color: colorScheme.onBackground,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                playlist.duration.toFormattedString(),
                style: textTheme.bodyMedium!.copyWith(
                  color: colorScheme.onBackground.withOpacity(.75),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

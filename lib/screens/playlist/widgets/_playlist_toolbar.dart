part of '../playlist_screen.dart';

class _PlaylistToolbar extends StatelessWidget {
  const _PlaylistToolbar({required this.playlist});

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.add_circle_outline),
          const SizedBox(width: 16.0),
          const Icon(Icons.download_outlined),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shuffle),
          ),
          const SizedBox(width: 16),
          IconButton.filled(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow),
          ),
        ],
      ),
    );
  }
}

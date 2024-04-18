part of '../playlist_screen.dart';

class _PlaylistSongList extends StatelessWidget {
  const _PlaylistSongList({required this.playlist});

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: playlist.songs.length,
      itemBuilder: (context, index) {
        final song = playlist.songs[index];
        return ListTile(
          onTap: () {
            context.read<AudioPlayerBloc>().add(SetAudioEvent(song: song));
          },
          leading: Image.network(
            playlist.imageUrl!,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(song.title),
          subtitle: Text(
            song.artistId,
            style: textTheme.bodySmall!.copyWith(
              color: colorScheme.onBackground.withOpacity(.75),
            ),
          ),
          trailing: const Icon(Icons.more_horiz),
        );
      },
    );
  }
}

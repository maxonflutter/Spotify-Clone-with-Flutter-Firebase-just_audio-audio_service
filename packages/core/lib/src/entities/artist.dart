import 'package:core/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist.freezed.dart';
part 'artist.g.dart';

@freezed
class Artist with _$Artist {
  const Artist._();

  const factory Artist({
    required String id,
    required String name,
    required String description,
    required List<Album> albums,
    Genre? genre,
    String? imageUrl,
    List<String>? moreImageUrls,
    Album? latestAlbum,
    Song? latestSong,
    Playlist? featuredPlaylist,
    @Default([]) List<Song> popularSongs,
    @Default([]) List<Artist> similarArtists,
    required int monthlyListeners,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);

  static final List<Artist> sampleArtists = [
    Artist(
      id: 'artist_1',
      name: 'Artist One',
      description: 'Description for Artist One',
      albums: Album.sampleAlbums,
      genre: Genre.sampleGenres.first,
      imageUrl: 'https://source.unsplash.com/random/?artist,music',
      moreImageUrls: [
        'https://source.unsplash.com/random/?artist,music',
        'https://source.unsplash.com/random/?artist,music'
      ],
      latestAlbum: Album.sampleAlbums.first,
      latestSong: Song.sampleSongs.first,
      featuredPlaylist: Playlist.samplePlaylists.first,
      popularSongs: Song.sampleSongs,
      similarArtists: [],
      monthlyListeners: 1000000,
    ),
    Artist(
      id: 'artist_2',
      name: 'Artist Two',
      description: 'Description for Artist Two',
      albums: Album.sampleAlbums,
      genre: Genre.sampleGenres.last,
      imageUrl: 'https://source.unsplash.com/random/?artist,music',
      moreImageUrls: [
        'https://source.unsplash.com/random/?artist,music',
        'https://source.unsplash.com/random/?artist,music'
      ],
      latestAlbum: Album.sampleAlbums.last,
      latestSong: Song.sampleSongs.last,
      featuredPlaylist: Playlist.samplePlaylists.last,
      popularSongs: Song.sampleSongs,
      similarArtists: [],
      monthlyListeners: 500000,
    ),
    Artist(
      id: 'artist_3',
      name: 'Artist Three',
      description: 'Description for Artist Three',
      albums: Album.sampleAlbums,
      genre: Genre.sampleGenres.elementAt(1),
      imageUrl: 'https://source.unsplash.com/random/?artist,music',
      moreImageUrls: [
        'https://source.unsplash.com/random/?artist,music',
        'https://source.unsplash.com/random/?artist,music'
      ],
      latestAlbum: Album.sampleAlbums.elementAt(1),
      latestSong: Song.sampleSongs.elementAt(1),
      featuredPlaylist: Playlist.samplePlaylists.elementAt(1),
      popularSongs: Song.sampleSongs,
      similarArtists: [],
      monthlyListeners: 750000,
    ),
  ];
}

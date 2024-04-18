import 'package:core/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'album.freezed.dart';
part 'album.g.dart';

@freezed
class Album with _$Album {
  const Album._();

  const factory Album({
    required String id,
    required String artistId,
    required String name,
    required String description,
    required Genre genre,
    required List<Song> songs,
    String? imageUrl,
    List<String>? moreImageUrls,
    required DateTime releaseDate,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

  static final List<Album> sampleAlbums = [
    Album(
      id: 'album_1',
      artistId: 'artist_1',
      name: 'First Album',
      description: 'This is the description for the first album.',
      genre: Genre.sampleGenres[0],
      songs: Song.sampleSongs,
      imageUrl: 'https://source.unsplash.com/random/?artist,music',
      moreImageUrls: [
        'https://source.unsplash.com/random/?artist,music',
        'https://source.unsplash.com/random/?artist,music'
      ],
      releaseDate: DateTime(2024, 1, 1),
    ),
    Album(
      id: 'album_2',
      artistId: 'artist_2',
      name: 'Second Album',
      description: 'This is the description for the second album.',
      genre: Genre.sampleGenres[1],
      songs: Song.sampleSongs.sublist(0, 2),
      imageUrl: 'https://source.unsplash.com/random/?artist,music',
      moreImageUrls: [
        'https://source.unsplash.com/random/?artist,music',
        'https://source.unsplash.com/random/?artist,music'
      ],
      releaseDate: DateTime(2024, 2, 20),
    ),
    Album(
      id: 'album_3',
      artistId: 'artist_3',
      name: 'Third Album',
      description: 'This is the description for the third album.',
      genre: Genre.sampleGenres[2],
      songs: Song.sampleSongs.sublist(1),
      imageUrl: 'https://source.unsplash.com/random/?artist,music',
      moreImageUrls: [
        'https://source.unsplash.com/random/?artist,music',
        'https://source.unsplash.com/random/?artist,music'
      ],
      releaseDate: DateTime(2024, 2, 15),
    ),
  ];
}

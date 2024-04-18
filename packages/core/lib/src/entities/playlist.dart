import 'package:core/src/entities/song.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist.freezed.dart';
part 'playlist.g.dart';

@freezed
class Playlist with _$Playlist {
  const Playlist._();

  const factory Playlist({
    required String id,
    required String name,
    required String description,
    required List<Song> songs,
    String? imageUrl,
    List<String>? moreImageUrls,
    // Playlists can be created by artists or users
    required String ownerId,
    @Default(false) bool createdByArtist,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Playlist;

  factory Playlist.fromJson(Map<String, dynamic> json) =>
      _$PlaylistFromJson(json);

  Duration get duration {
    return songs.fold(
      Duration.zero,
      (previousValue, element) => previousValue + element.duration,
    );
  }

  static final List<Playlist> samplePlaylists = [
    Playlist(
      id: 'playlist_1',
      name: 'Summer Hits',
      description: 'The hottest tracks for your summer vibes.',
      songs: Song.sampleSongs,
      imageUrl:
          'https://images.unsplash.com/photo-1498038432885-c6f3f1b912ee?q=80&w=3570&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      moreImageUrls: [
        'https://source.unsplash.com/random/?artist,music',
        'https://source.unsplash.com/random/?artist,music',
      ],
      ownerId: 'user_1',
      createdByArtist: false,
      createdAt: DateTime(2023, 1, 1),
      updatedAt: DateTime(2023, 1, 2),
    ),
    Playlist(
      id: 'playlist_2',
      name: 'Workout Anthems',
      description: 'Pump up your workout with these energetic anthems.',
      songs: Song.sampleSongs,
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1682265683254-3b08ea75ce40?q=80&w=3570&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ownerId: 'artist_1',
      createdByArtist: true,
      createdAt: DateTime(2023, 2, 1),
      updatedAt: DateTime(2023, 2, 2),
    ),
    Playlist(
      id: 'playlist_3',
      name: 'Chill Beats',
      description: 'Relax and unwind with these smooth chill beats.',
      songs: Song.sampleSongs,
      imageUrl:
          'https://images.unsplash.com/photo-1548426589-b5560481a46e?q=80&w=3571&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ownerId: 'user_2',
      createdByArtist: false,
      createdAt: DateTime(2023, 3, 1),
      updatedAt: DateTime(2023, 3, 2),
    ),
  ];
}

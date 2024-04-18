import 'package:audio_service/audio_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'song.freezed.dart';
part 'song.g.dart';

@freezed
class Song with _$Song {
  const Song._();

  const factory Song({
    required String id,
    required String albumId,
    required String artistId,
    required String title,
    required String audioUrl,
    required int playCount,
    required Duration duration,
    required bool isExplicit,
  }) = _Song;

  factory Song.fromJson(Map<String, dynamic> json) => _$SongFromJson(json);

  factory Song.fromMediaItem(MediaItem mediaItem) {
    try {
      return Song(
        id: mediaItem.id,
        albumId: mediaItem.album ?? '',
        artistId: mediaItem.artist ?? '',
        title: mediaItem.title,
        audioUrl: mediaItem.extras!['audioUrl'],
        playCount: mediaItem.extras!['playCount'] ?? 0,
        isExplicit: mediaItem.extras!['isExplicit'] ?? false,
        duration: mediaItem.duration ?? Duration.zero,
      );
    } catch (err) {
      throw Exception('Failed to convert MediaItem to Song: $err');
    }
  }

  MediaItem toMediaItem() => MediaItem(
        id: id,
        album: albumId,
        artist: artistId,
        title: title,
        extras: <String, dynamic>{
          'audioUrl': audioUrl,
          'playCount': playCount,
          'isExplicit': isExplicit,
        },
      );

  static const sampleSongs = [
    Song(
      id: 'song_1',
      albumId: 'album_1',
      artistId: 'artist_1',
      title: 'Song One',
      audioUrl: 'assets/songs/crystal_bloom__slowya_roll.mp3',
      playCount: 150,
      duration: Duration(minutes: 3, seconds: 30),
      isExplicit: false,
    ),
    Song(
      id: 'song_2',
      albumId: 'album_2',
      artistId: 'artist_2',
      title: 'Song Two',
      audioUrl: 'assets/songs/long_vacay__aleph_one.mp3',
      playCount: 250,
      duration: Duration(minutes: 4),
      isExplicit: true,
    ),
    Song(
      id: 'song_3',
      albumId: 'album_3',
      artistId: 'artist_3',
      title: 'Song Three',
      audioUrl: 'assets/songs/rojo_rojo__harvio.mp3',
      playCount: 500,
      duration: Duration(minutes: 2, seconds: 45),
      isExplicit: false,
    ),
  ];
}

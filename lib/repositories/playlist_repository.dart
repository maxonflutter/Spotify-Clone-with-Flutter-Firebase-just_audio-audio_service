import 'package:core/entities.dart';
import 'package:db_client/db_client.dart';

class PlaylistRepository {
  final FirestoreDbClient dbClient;

  const PlaylistRepository({required this.dbClient});

  Future<UserRecommendations> fetchPlaylistRecommendations({
    required String userId,
  }) async {
    final recommendation = await dbClient.fetchOneById(
      entity: 'userRecommendations',
      id: userId,
    );

    if (recommendation == null) {
      throw Exception('Recommendation not found');
    } else {
      return UserRecommendations.fromJson({
        ...recommendation.data,
        'userId': recommendation.id,
      });
    }
  }

  Future<Playlist> fetchPlaylist({required String playlistId}) async {
    try {
      final playlist = await dbClient.fetchOneById(
        entity: 'playlists',
        id: playlistId,
      );

      if (playlist == null) {
        throw Exception('Playlist not found');
      } else {
        return Playlist.fromJson({...playlist.data, 'id': playlist.id});
      }
    } catch (err) {
      throw Exception('Error getting the playlist doc: $err');
    }
  }
}

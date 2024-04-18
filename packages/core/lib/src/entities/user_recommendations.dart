import 'package:core/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_recommendations.freezed.dart';
part 'user_recommendations.g.dart';

@freezed
class UserRecommendations with _$UserRecommendations {
  const UserRecommendations._();

  const factory UserRecommendations({
    required String userId,
    @Default([]) List<Playlist> recommendedPlaylists,
    @Default([]) List<Playlist> discoveryPlaylists,
    @Default([]) List<Song> recommendedSongs,
    @Default([]) List<Song> discoverySongs,
    @Default([]) List<Artist> recommendedArtists,
    @Default([]) List<Artist> discoveryArtists,
  }) = _UserRecommendations;

  factory UserRecommendations.fromJson(Map<String, dynamic> json) =>
      _$UserRecommendationsFromJson(json);

  static final sampleUserRecommendations = UserRecommendations(
    userId: 'user_1',
    recommendedPlaylists: Playlist.samplePlaylists,
    discoveryPlaylists: Playlist.samplePlaylists,
  );
}

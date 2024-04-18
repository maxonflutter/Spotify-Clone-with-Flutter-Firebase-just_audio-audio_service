// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_recommendations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRecommendationsImpl _$$UserRecommendationsImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRecommendationsImpl(
      userId: json['userId'] as String,
      recommendedPlaylists: (json['recommendedPlaylists'] as List<dynamic>?)
              ?.map((e) => Playlist.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      discoveryPlaylists: (json['discoveryPlaylists'] as List<dynamic>?)
              ?.map((e) => Playlist.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      recommendedSongs: (json['recommendedSongs'] as List<dynamic>?)
              ?.map((e) => Song.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      discoverySongs: (json['discoverySongs'] as List<dynamic>?)
              ?.map((e) => Song.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      recommendedArtists: (json['recommendedArtists'] as List<dynamic>?)
              ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      discoveryArtists: (json['discoveryArtists'] as List<dynamic>?)
              ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserRecommendationsImplToJson(
        _$UserRecommendationsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'recommendedPlaylists':
          instance.recommendedPlaylists.map((e) => e.toJson()).toList(),
      'discoveryPlaylists':
          instance.discoveryPlaylists.map((e) => e.toJson()).toList(),
      'recommendedSongs':
          instance.recommendedSongs.map((e) => e.toJson()).toList(),
      'discoverySongs': instance.discoverySongs.map((e) => e.toJson()).toList(),
      'recommendedArtists':
          instance.recommendedArtists.map((e) => e.toJson()).toList(),
      'discoveryArtists':
          instance.discoveryArtists.map((e) => e.toJson()).toList(),
    };

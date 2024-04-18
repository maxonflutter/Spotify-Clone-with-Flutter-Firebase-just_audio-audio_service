// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaylistImpl _$$PlaylistImplFromJson(Map<String, dynamic> json) =>
    _$PlaylistImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      songs: (json['songs'] as List<dynamic>)
          .map((e) => Song.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrl: json['imageUrl'] as String?,
      moreImageUrls: (json['moreImageUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      ownerId: json['ownerId'] as String,
      createdByArtist: json['createdByArtist'] as bool? ?? false,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PlaylistImplToJson(_$PlaylistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'songs': instance.songs.map((e) => e.toJson()).toList(),
      'imageUrl': instance.imageUrl,
      'moreImageUrls': instance.moreImageUrls,
      'ownerId': instance.ownerId,
      'createdByArtist': instance.createdByArtist,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

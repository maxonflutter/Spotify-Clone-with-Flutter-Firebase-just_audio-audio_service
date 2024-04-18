// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumImpl _$$AlbumImplFromJson(Map<String, dynamic> json) => _$AlbumImpl(
      id: json['id'] as String,
      artistId: json['artistId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      genre: Genre.fromJson(json['genre'] as Map<String, dynamic>),
      songs: (json['songs'] as List<dynamic>)
          .map((e) => Song.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrl: json['imageUrl'] as String?,
      moreImageUrls: (json['moreImageUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      releaseDate: DateTime.parse(json['releaseDate'] as String),
    );

Map<String, dynamic> _$$AlbumImplToJson(_$AlbumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'artistId': instance.artistId,
      'name': instance.name,
      'description': instance.description,
      'genre': instance.genre.toJson(),
      'songs': instance.songs.map((e) => e.toJson()).toList(),
      'imageUrl': instance.imageUrl,
      'moreImageUrls': instance.moreImageUrls,
      'releaseDate': instance.releaseDate.toIso8601String(),
    };

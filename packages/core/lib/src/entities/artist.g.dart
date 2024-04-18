// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistImpl _$$ArtistImplFromJson(Map<String, dynamic> json) => _$ArtistImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      albums: (json['albums'] as List<dynamic>)
          .map((e) => Album.fromJson(e as Map<String, dynamic>))
          .toList(),
      genre: json['genre'] == null
          ? null
          : Genre.fromJson(json['genre'] as Map<String, dynamic>),
      imageUrl: json['imageUrl'] as String?,
      moreImageUrls: (json['moreImageUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      latestAlbum: json['latestAlbum'] == null
          ? null
          : Album.fromJson(json['latestAlbum'] as Map<String, dynamic>),
      latestSong: json['latestSong'] == null
          ? null
          : Song.fromJson(json['latestSong'] as Map<String, dynamic>),
      featuredPlaylist: json['featuredPlaylist'] == null
          ? null
          : Playlist.fromJson(json['featuredPlaylist'] as Map<String, dynamic>),
      popularSongs: (json['popularSongs'] as List<dynamic>?)
              ?.map((e) => Song.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      similarArtists: (json['similarArtists'] as List<dynamic>?)
              ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      monthlyListeners: json['monthlyListeners'] as int,
    );

Map<String, dynamic> _$$ArtistImplToJson(_$ArtistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'albums': instance.albums.map((e) => e.toJson()).toList(),
      'genre': instance.genre?.toJson(),
      'imageUrl': instance.imageUrl,
      'moreImageUrls': instance.moreImageUrls,
      'latestAlbum': instance.latestAlbum?.toJson(),
      'latestSong': instance.latestSong?.toJson(),
      'featuredPlaylist': instance.featuredPlaylist?.toJson(),
      'popularSongs': instance.popularSongs.map((e) => e.toJson()).toList(),
      'similarArtists': instance.similarArtists.map((e) => e.toJson()).toList(),
      'monthlyListeners': instance.monthlyListeners,
    };

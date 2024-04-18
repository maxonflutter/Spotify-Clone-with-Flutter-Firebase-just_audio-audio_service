// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SongImpl _$$SongImplFromJson(Map<String, dynamic> json) => _$SongImpl(
      id: json['id'] as String,
      albumId: json['albumId'] as String,
      artistId: json['artistId'] as String,
      title: json['title'] as String,
      audioUrl: json['audioUrl'] as String,
      playCount: json['playCount'] as int,
      duration: Duration(microseconds: json['duration'] as int),
      isExplicit: json['isExplicit'] as bool,
    );

Map<String, dynamic> _$$SongImplToJson(_$SongImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'albumId': instance.albumId,
      'artistId': instance.artistId,
      'title': instance.title,
      'audioUrl': instance.audioUrl,
      'playCount': instance.playCount,
      'duration': instance.duration.inMicroseconds,
      'isExplicit': instance.isExplicit,
    };

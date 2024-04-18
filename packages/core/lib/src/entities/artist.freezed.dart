// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Album> get albums => throw _privateConstructorUsedError;
  Genre? get genre => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<String>? get moreImageUrls => throw _privateConstructorUsedError;
  Album? get latestAlbum => throw _privateConstructorUsedError;
  Song? get latestSong => throw _privateConstructorUsedError;
  Playlist? get featuredPlaylist => throw _privateConstructorUsedError;
  List<Song> get popularSongs => throw _privateConstructorUsedError;
  List<Artist> get similarArtists => throw _privateConstructorUsedError;
  int get monthlyListeners => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res, Artist>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      List<Album> albums,
      Genre? genre,
      String? imageUrl,
      List<String>? moreImageUrls,
      Album? latestAlbum,
      Song? latestSong,
      Playlist? featuredPlaylist,
      List<Song> popularSongs,
      List<Artist> similarArtists,
      int monthlyListeners});

  $GenreCopyWith<$Res>? get genre;
  $AlbumCopyWith<$Res>? get latestAlbum;
  $SongCopyWith<$Res>? get latestSong;
  $PlaylistCopyWith<$Res>? get featuredPlaylist;
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res, $Val extends Artist>
    implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? albums = null,
    Object? genre = freezed,
    Object? imageUrl = freezed,
    Object? moreImageUrls = freezed,
    Object? latestAlbum = freezed,
    Object? latestSong = freezed,
    Object? featuredPlaylist = freezed,
    Object? popularSongs = null,
    Object? similarArtists = null,
    Object? monthlyListeners = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as Genre?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      moreImageUrls: freezed == moreImageUrls
          ? _value.moreImageUrls
          : moreImageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      latestAlbum: freezed == latestAlbum
          ? _value.latestAlbum
          : latestAlbum // ignore: cast_nullable_to_non_nullable
              as Album?,
      latestSong: freezed == latestSong
          ? _value.latestSong
          : latestSong // ignore: cast_nullable_to_non_nullable
              as Song?,
      featuredPlaylist: freezed == featuredPlaylist
          ? _value.featuredPlaylist
          : featuredPlaylist // ignore: cast_nullable_to_non_nullable
              as Playlist?,
      popularSongs: null == popularSongs
          ? _value.popularSongs
          : popularSongs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      similarArtists: null == similarArtists
          ? _value.similarArtists
          : similarArtists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      monthlyListeners: null == monthlyListeners
          ? _value.monthlyListeners
          : monthlyListeners // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GenreCopyWith<$Res>? get genre {
    if (_value.genre == null) {
      return null;
    }

    return $GenreCopyWith<$Res>(_value.genre!, (value) {
      return _then(_value.copyWith(genre: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumCopyWith<$Res>? get latestAlbum {
    if (_value.latestAlbum == null) {
      return null;
    }

    return $AlbumCopyWith<$Res>(_value.latestAlbum!, (value) {
      return _then(_value.copyWith(latestAlbum: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SongCopyWith<$Res>? get latestSong {
    if (_value.latestSong == null) {
      return null;
    }

    return $SongCopyWith<$Res>(_value.latestSong!, (value) {
      return _then(_value.copyWith(latestSong: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaylistCopyWith<$Res>? get featuredPlaylist {
    if (_value.featuredPlaylist == null) {
      return null;
    }

    return $PlaylistCopyWith<$Res>(_value.featuredPlaylist!, (value) {
      return _then(_value.copyWith(featuredPlaylist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtistImplCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$ArtistImplCopyWith(
          _$ArtistImpl value, $Res Function(_$ArtistImpl) then) =
      __$$ArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      List<Album> albums,
      Genre? genre,
      String? imageUrl,
      List<String>? moreImageUrls,
      Album? latestAlbum,
      Song? latestSong,
      Playlist? featuredPlaylist,
      List<Song> popularSongs,
      List<Artist> similarArtists,
      int monthlyListeners});

  @override
  $GenreCopyWith<$Res>? get genre;
  @override
  $AlbumCopyWith<$Res>? get latestAlbum;
  @override
  $SongCopyWith<$Res>? get latestSong;
  @override
  $PlaylistCopyWith<$Res>? get featuredPlaylist;
}

/// @nodoc
class __$$ArtistImplCopyWithImpl<$Res>
    extends _$ArtistCopyWithImpl<$Res, _$ArtistImpl>
    implements _$$ArtistImplCopyWith<$Res> {
  __$$ArtistImplCopyWithImpl(
      _$ArtistImpl _value, $Res Function(_$ArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? albums = null,
    Object? genre = freezed,
    Object? imageUrl = freezed,
    Object? moreImageUrls = freezed,
    Object? latestAlbum = freezed,
    Object? latestSong = freezed,
    Object? featuredPlaylist = freezed,
    Object? popularSongs = null,
    Object? similarArtists = null,
    Object? monthlyListeners = null,
  }) {
    return _then(_$ArtistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as Genre?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      moreImageUrls: freezed == moreImageUrls
          ? _value._moreImageUrls
          : moreImageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      latestAlbum: freezed == latestAlbum
          ? _value.latestAlbum
          : latestAlbum // ignore: cast_nullable_to_non_nullable
              as Album?,
      latestSong: freezed == latestSong
          ? _value.latestSong
          : latestSong // ignore: cast_nullable_to_non_nullable
              as Song?,
      featuredPlaylist: freezed == featuredPlaylist
          ? _value.featuredPlaylist
          : featuredPlaylist // ignore: cast_nullable_to_non_nullable
              as Playlist?,
      popularSongs: null == popularSongs
          ? _value._popularSongs
          : popularSongs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      similarArtists: null == similarArtists
          ? _value._similarArtists
          : similarArtists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      monthlyListeners: null == monthlyListeners
          ? _value.monthlyListeners
          : monthlyListeners // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistImpl extends _Artist {
  const _$ArtistImpl(
      {required this.id,
      required this.name,
      required this.description,
      required final List<Album> albums,
      this.genre,
      this.imageUrl,
      final List<String>? moreImageUrls,
      this.latestAlbum,
      this.latestSong,
      this.featuredPlaylist,
      final List<Song> popularSongs = const [],
      final List<Artist> similarArtists = const [],
      required this.monthlyListeners})
      : _albums = albums,
        _moreImageUrls = moreImageUrls,
        _popularSongs = popularSongs,
        _similarArtists = similarArtists,
        super._();

  factory _$ArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  final List<Album> _albums;
  @override
  List<Album> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  @override
  final Genre? genre;
  @override
  final String? imageUrl;
  final List<String>? _moreImageUrls;
  @override
  List<String>? get moreImageUrls {
    final value = _moreImageUrls;
    if (value == null) return null;
    if (_moreImageUrls is EqualUnmodifiableListView) return _moreImageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Album? latestAlbum;
  @override
  final Song? latestSong;
  @override
  final Playlist? featuredPlaylist;
  final List<Song> _popularSongs;
  @override
  @JsonKey()
  List<Song> get popularSongs {
    if (_popularSongs is EqualUnmodifiableListView) return _popularSongs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularSongs);
  }

  final List<Artist> _similarArtists;
  @override
  @JsonKey()
  List<Artist> get similarArtists {
    if (_similarArtists is EqualUnmodifiableListView) return _similarArtists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_similarArtists);
  }

  @override
  final int monthlyListeners;

  @override
  String toString() {
    return 'Artist(id: $id, name: $name, description: $description, albums: $albums, genre: $genre, imageUrl: $imageUrl, moreImageUrls: $moreImageUrls, latestAlbum: $latestAlbum, latestSong: $latestSong, featuredPlaylist: $featuredPlaylist, popularSongs: $popularSongs, similarArtists: $similarArtists, monthlyListeners: $monthlyListeners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._albums, _albums) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._moreImageUrls, _moreImageUrls) &&
            (identical(other.latestAlbum, latestAlbum) ||
                other.latestAlbum == latestAlbum) &&
            (identical(other.latestSong, latestSong) ||
                other.latestSong == latestSong) &&
            (identical(other.featuredPlaylist, featuredPlaylist) ||
                other.featuredPlaylist == featuredPlaylist) &&
            const DeepCollectionEquality()
                .equals(other._popularSongs, _popularSongs) &&
            const DeepCollectionEquality()
                .equals(other._similarArtists, _similarArtists) &&
            (identical(other.monthlyListeners, monthlyListeners) ||
                other.monthlyListeners == monthlyListeners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_albums),
      genre,
      imageUrl,
      const DeepCollectionEquality().hash(_moreImageUrls),
      latestAlbum,
      latestSong,
      featuredPlaylist,
      const DeepCollectionEquality().hash(_popularSongs),
      const DeepCollectionEquality().hash(_similarArtists),
      monthlyListeners);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      __$$ArtistImplCopyWithImpl<_$ArtistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistImplToJson(
      this,
    );
  }
}

abstract class _Artist extends Artist {
  const factory _Artist(
      {required final String id,
      required final String name,
      required final String description,
      required final List<Album> albums,
      final Genre? genre,
      final String? imageUrl,
      final List<String>? moreImageUrls,
      final Album? latestAlbum,
      final Song? latestSong,
      final Playlist? featuredPlaylist,
      final List<Song> popularSongs,
      final List<Artist> similarArtists,
      required final int monthlyListeners}) = _$ArtistImpl;
  const _Artist._() : super._();

  factory _Artist.fromJson(Map<String, dynamic> json) = _$ArtistImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  List<Album> get albums;
  @override
  Genre? get genre;
  @override
  String? get imageUrl;
  @override
  List<String>? get moreImageUrls;
  @override
  Album? get latestAlbum;
  @override
  Song? get latestSong;
  @override
  Playlist? get featuredPlaylist;
  @override
  List<Song> get popularSongs;
  @override
  List<Artist> get similarArtists;
  @override
  int get monthlyListeners;
  @override
  @JsonKey(ignore: true)
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

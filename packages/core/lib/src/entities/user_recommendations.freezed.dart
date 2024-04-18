// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_recommendations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRecommendations _$UserRecommendationsFromJson(Map<String, dynamic> json) {
  return _UserRecommendations.fromJson(json);
}

/// @nodoc
mixin _$UserRecommendations {
  String get userId => throw _privateConstructorUsedError;
  List<Playlist> get recommendedPlaylists => throw _privateConstructorUsedError;
  List<Playlist> get discoveryPlaylists => throw _privateConstructorUsedError;
  List<Song> get recommendedSongs => throw _privateConstructorUsedError;
  List<Song> get discoverySongs => throw _privateConstructorUsedError;
  List<Artist> get recommendedArtists => throw _privateConstructorUsedError;
  List<Artist> get discoveryArtists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRecommendationsCopyWith<UserRecommendations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRecommendationsCopyWith<$Res> {
  factory $UserRecommendationsCopyWith(
          UserRecommendations value, $Res Function(UserRecommendations) then) =
      _$UserRecommendationsCopyWithImpl<$Res, UserRecommendations>;
  @useResult
  $Res call(
      {String userId,
      List<Playlist> recommendedPlaylists,
      List<Playlist> discoveryPlaylists,
      List<Song> recommendedSongs,
      List<Song> discoverySongs,
      List<Artist> recommendedArtists,
      List<Artist> discoveryArtists});
}

/// @nodoc
class _$UserRecommendationsCopyWithImpl<$Res, $Val extends UserRecommendations>
    implements $UserRecommendationsCopyWith<$Res> {
  _$UserRecommendationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? recommendedPlaylists = null,
    Object? discoveryPlaylists = null,
    Object? recommendedSongs = null,
    Object? discoverySongs = null,
    Object? recommendedArtists = null,
    Object? discoveryArtists = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedPlaylists: null == recommendedPlaylists
          ? _value.recommendedPlaylists
          : recommendedPlaylists // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
      discoveryPlaylists: null == discoveryPlaylists
          ? _value.discoveryPlaylists
          : discoveryPlaylists // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
      recommendedSongs: null == recommendedSongs
          ? _value.recommendedSongs
          : recommendedSongs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      discoverySongs: null == discoverySongs
          ? _value.discoverySongs
          : discoverySongs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      recommendedArtists: null == recommendedArtists
          ? _value.recommendedArtists
          : recommendedArtists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      discoveryArtists: null == discoveryArtists
          ? _value.discoveryArtists
          : discoveryArtists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRecommendationsImplCopyWith<$Res>
    implements $UserRecommendationsCopyWith<$Res> {
  factory _$$UserRecommendationsImplCopyWith(_$UserRecommendationsImpl value,
          $Res Function(_$UserRecommendationsImpl) then) =
      __$$UserRecommendationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      List<Playlist> recommendedPlaylists,
      List<Playlist> discoveryPlaylists,
      List<Song> recommendedSongs,
      List<Song> discoverySongs,
      List<Artist> recommendedArtists,
      List<Artist> discoveryArtists});
}

/// @nodoc
class __$$UserRecommendationsImplCopyWithImpl<$Res>
    extends _$UserRecommendationsCopyWithImpl<$Res, _$UserRecommendationsImpl>
    implements _$$UserRecommendationsImplCopyWith<$Res> {
  __$$UserRecommendationsImplCopyWithImpl(_$UserRecommendationsImpl _value,
      $Res Function(_$UserRecommendationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? recommendedPlaylists = null,
    Object? discoveryPlaylists = null,
    Object? recommendedSongs = null,
    Object? discoverySongs = null,
    Object? recommendedArtists = null,
    Object? discoveryArtists = null,
  }) {
    return _then(_$UserRecommendationsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedPlaylists: null == recommendedPlaylists
          ? _value._recommendedPlaylists
          : recommendedPlaylists // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
      discoveryPlaylists: null == discoveryPlaylists
          ? _value._discoveryPlaylists
          : discoveryPlaylists // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
      recommendedSongs: null == recommendedSongs
          ? _value._recommendedSongs
          : recommendedSongs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      discoverySongs: null == discoverySongs
          ? _value._discoverySongs
          : discoverySongs // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      recommendedArtists: null == recommendedArtists
          ? _value._recommendedArtists
          : recommendedArtists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      discoveryArtists: null == discoveryArtists
          ? _value._discoveryArtists
          : discoveryArtists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRecommendationsImpl extends _UserRecommendations {
  const _$UserRecommendationsImpl(
      {required this.userId,
      final List<Playlist> recommendedPlaylists = const [],
      final List<Playlist> discoveryPlaylists = const [],
      final List<Song> recommendedSongs = const [],
      final List<Song> discoverySongs = const [],
      final List<Artist> recommendedArtists = const [],
      final List<Artist> discoveryArtists = const []})
      : _recommendedPlaylists = recommendedPlaylists,
        _discoveryPlaylists = discoveryPlaylists,
        _recommendedSongs = recommendedSongs,
        _discoverySongs = discoverySongs,
        _recommendedArtists = recommendedArtists,
        _discoveryArtists = discoveryArtists,
        super._();

  factory _$UserRecommendationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRecommendationsImplFromJson(json);

  @override
  final String userId;
  final List<Playlist> _recommendedPlaylists;
  @override
  @JsonKey()
  List<Playlist> get recommendedPlaylists {
    if (_recommendedPlaylists is EqualUnmodifiableListView)
      return _recommendedPlaylists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedPlaylists);
  }

  final List<Playlist> _discoveryPlaylists;
  @override
  @JsonKey()
  List<Playlist> get discoveryPlaylists {
    if (_discoveryPlaylists is EqualUnmodifiableListView)
      return _discoveryPlaylists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discoveryPlaylists);
  }

  final List<Song> _recommendedSongs;
  @override
  @JsonKey()
  List<Song> get recommendedSongs {
    if (_recommendedSongs is EqualUnmodifiableListView)
      return _recommendedSongs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedSongs);
  }

  final List<Song> _discoverySongs;
  @override
  @JsonKey()
  List<Song> get discoverySongs {
    if (_discoverySongs is EqualUnmodifiableListView) return _discoverySongs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discoverySongs);
  }

  final List<Artist> _recommendedArtists;
  @override
  @JsonKey()
  List<Artist> get recommendedArtists {
    if (_recommendedArtists is EqualUnmodifiableListView)
      return _recommendedArtists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedArtists);
  }

  final List<Artist> _discoveryArtists;
  @override
  @JsonKey()
  List<Artist> get discoveryArtists {
    if (_discoveryArtists is EqualUnmodifiableListView)
      return _discoveryArtists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discoveryArtists);
  }

  @override
  String toString() {
    return 'UserRecommendations(userId: $userId, recommendedPlaylists: $recommendedPlaylists, discoveryPlaylists: $discoveryPlaylists, recommendedSongs: $recommendedSongs, discoverySongs: $discoverySongs, recommendedArtists: $recommendedArtists, discoveryArtists: $discoveryArtists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRecommendationsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._recommendedPlaylists, _recommendedPlaylists) &&
            const DeepCollectionEquality()
                .equals(other._discoveryPlaylists, _discoveryPlaylists) &&
            const DeepCollectionEquality()
                .equals(other._recommendedSongs, _recommendedSongs) &&
            const DeepCollectionEquality()
                .equals(other._discoverySongs, _discoverySongs) &&
            const DeepCollectionEquality()
                .equals(other._recommendedArtists, _recommendedArtists) &&
            const DeepCollectionEquality()
                .equals(other._discoveryArtists, _discoveryArtists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      const DeepCollectionEquality().hash(_recommendedPlaylists),
      const DeepCollectionEquality().hash(_discoveryPlaylists),
      const DeepCollectionEquality().hash(_recommendedSongs),
      const DeepCollectionEquality().hash(_discoverySongs),
      const DeepCollectionEquality().hash(_recommendedArtists),
      const DeepCollectionEquality().hash(_discoveryArtists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRecommendationsImplCopyWith<_$UserRecommendationsImpl> get copyWith =>
      __$$UserRecommendationsImplCopyWithImpl<_$UserRecommendationsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRecommendationsImplToJson(
      this,
    );
  }
}

abstract class _UserRecommendations extends UserRecommendations {
  const factory _UserRecommendations(
      {required final String userId,
      final List<Playlist> recommendedPlaylists,
      final List<Playlist> discoveryPlaylists,
      final List<Song> recommendedSongs,
      final List<Song> discoverySongs,
      final List<Artist> recommendedArtists,
      final List<Artist> discoveryArtists}) = _$UserRecommendationsImpl;
  const _UserRecommendations._() : super._();

  factory _UserRecommendations.fromJson(Map<String, dynamic> json) =
      _$UserRecommendationsImpl.fromJson;

  @override
  String get userId;
  @override
  List<Playlist> get recommendedPlaylists;
  @override
  List<Playlist> get discoveryPlaylists;
  @override
  List<Song> get recommendedSongs;
  @override
  List<Song> get discoverySongs;
  @override
  List<Artist> get recommendedArtists;
  @override
  List<Artist> get discoveryArtists;
  @override
  @JsonKey(ignore: true)
  _$$UserRecommendationsImplCopyWith<_$UserRecommendationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

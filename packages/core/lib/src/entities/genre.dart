import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre.freezed.dart';
part 'genre.g.dart';

@freezed
class Genre with _$Genre {
  const Genre._();

  const factory Genre({
    required String id,
    required String name,
    required String description,
    required String imageUrl,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  static const List<Genre> sampleGenres = [
    Genre(
      id: 'genre_1',
      name: 'Rock',
      description:
          'A genre of popular music that originated as "rock and roll" in the United States in the late 1940s and early 1950s.',
      imageUrl: 'https://source.unsplash.com/random/?music,rock',
    ),
    Genre(
      id: 'genre_2',
      name: 'Jazz',
      description:
          'A music genre that originated in the African-American communities of New Orleans, United States.',
      imageUrl: 'https://source.unsplash.com/random/?music,jazz',
    ),
    Genre(
      id: 'genre_3',
      name: 'Classical',
      description:
          'Art music produced in the traditions of Western culture, including both liturgical (religious) and secular music.',
      imageUrl: 'https://source.unsplash.com/random/?music,classical',
    ),
  ];
}

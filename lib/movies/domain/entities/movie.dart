import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String? backdropPath;
  final double voteAverage;
  final List<int> genreId;
  final String overview;
  final String releaseDate;

  const Movie({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.voteAverage,
    required this.genreId,
    required this.overview,
    required this.releaseDate,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        backdropPath,
        voteAverage,
        genreId,
        overview,
        releaseDate,
      ];
}

import 'package:movies_app/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.voteAverage,
    required super.genreId,
    required super.overview,
    required super.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json["id"],
        title: json["title"],
        backdropPath: json["backdrop_path"],
        voteAverage: json["vote_average"],
        genreId: List<int>.from(json["genre_ids"].map((e) => e)),
        overview: json["overview"],
        releaseDate: json["release_date"],
      );
}

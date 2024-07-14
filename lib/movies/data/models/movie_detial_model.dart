import 'package:movies_app/movies/data/models/genres_model.dart';
import 'package:movies_app/movies/domain/entities/geners.dart';
import 'package:movies_app/movies/domain/entities/movies_details.dart';

class MovieDetailModel extends MovieDetail {
  const MovieDetailModel(
      {required super.backdropPath,
      required super.genres,
      required super.id,
      required super.overview,
      required super.releaseDate,
      required super.runtime,
      required super.title,
      required super.voteAverage});

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailModel(
          backdropPath: json["backdrop_path"],
          genres: List<Genres>.from(
              json["genres"].map((e) => GenresModel.fromJson(e))),
          id: json["id"],
          overview: json["overview"],
          releaseDate: json["release_date"],
          runtime: json["runtime"],
          title: json["title"],
          voteAverage: json["vote_average"]);
}

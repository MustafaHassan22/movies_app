import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/entities/movies_details.dart';
import 'package:movies_app/movies/domain/entities/recomendation.dart';
import 'package:movies_app/movies/domain/usecase/get_movie_detail_usecase.dart';
import 'package:movies_app/movies/domain/usecase/get_recommendation_usecase.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRated();
  Future<Either<Failure, MovieDetail>> getMovieDetail(
      GetMovieDetailsParameter parameter);
  Future<Either<Failure, List<Recommendations>>> getRecommendationMovies(
      RecommendationParameter parameters);
}

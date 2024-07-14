import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/movies/domain/entities/movies_details.dart';
import 'package:movies_app/movies/domain/repository/base_movie_repository.dart';

class GetMovieDetailUseCase
    extends BaseUseCase<MovieDetail, GetMovieDetailsParameter> {
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, MovieDetail>> call(
      GetMovieDetailsParameter parameters) async {
    return await baseMoviesRepository.getMovieDetail(parameters);
  }
}

class GetMovieDetailsParameter extends Equatable {
  final int id;

  const GetMovieDetailsParameter({required this.id});

  @override
  List<Object?> get props => [id];
}

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/movies/domain/entities/recomendation.dart';
import 'package:movies_app/movies/domain/repository/base_movie_repository.dart';

class GetRecommendationUseCase
    extends BaseUseCase<List<Recommendations>, RecommendationParameter> {
  final BaseMoviesRepository baseMoviesRepository;

  GetRecommendationUseCase(this.baseMoviesRepository);
  @override
  Future<Either<Failure, List<Recommendations>>> call(
      RecommendationParameter parameters) async {
    return await baseMoviesRepository.getRecommendationMovies(parameters);
  }
}

class RecommendationParameter extends Equatable {
  final int id;

  const RecommendationParameter(this.id);

  @override
  List<Object?> get props => [
        id,
      ];
}

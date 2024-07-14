import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/utilles/enums.dart';
import 'package:movies_app/movies/domain/entities/movies_details.dart';
import 'package:movies_app/movies/domain/entities/recomendation.dart';
import 'package:movies_app/movies/domain/usecase/get_movie_detail_usecase.dart';
import 'package:movies_app/movies/domain/usecase/get_recommendation_usecase.dart';

part 'movie_detials_event.dart';
part 'movie_detials_state.dart';

class MovieDetialsBloc extends Bloc<MovieDetialsEvent, MovieDetialsState> {
  MovieDetialsBloc(this.getMovieDetailUseCase, this.getRecommendationUseCase)
      : super(const MovieDetialsState()) {
    on<GetMovieDetialsEvent>(_getMovieDetails);
    on<GetMoviesRecomendationEvent>(_getRecommendation);
  }
  final GetMovieDetailUseCase getMovieDetailUseCase;
  final GetRecommendationUseCase getRecommendationUseCase;
  FutureOr<void> _getMovieDetails(
      GetMovieDetialsEvent event, Emitter<MovieDetialsState> emit) async {
    final result =
        await getMovieDetailUseCase(GetMovieDetailsParameter(id: event.id));

    result.fold(
        (l) => emit(state.copyWith(
              movieDetailState: RequestStat.error,
              movieDetailsMessage: l.message,
            )), (r) {
      emit(state.copyWith(
        movieDetail: r,
        movieDetailState: RequestStat.loaded,
      ));
    });
  }

  FutureOr<void> _getRecommendation(GetMoviesRecomendationEvent event,
      Emitter<MovieDetialsState> emit) async {
    final result =
        await getRecommendationUseCase(RecommendationParameter(event.id));

    result.fold(
        (l) => emit(state.copyWith(
              recommendationState: RequestStat.error,
              recommendationMessage: l.message,
            )),
        (r) => emit(state.copyWith(
              recommendation: r,
              recommendationState: RequestStat.loaded,
            )));
  }
}

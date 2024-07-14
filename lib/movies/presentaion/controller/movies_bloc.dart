import 'dart:async';

import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/core/utilles/enums.dart';
import 'package:movies_app/movies/domain/usecase/get_now_playing_usecase.dart';
import 'package:movies_app/movies/domain/usecase/get_popular_movies_usecase.dart';
import 'package:movies_app/movies/domain/usecase/get_top_rated_usecase.dart';
import 'package:movies_app/movies/presentaion/controller/movies_event.dart';
import 'package:movies_app/movies/presentaion/controller/movies_state.dart';
import 'package:bloc/bloc.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMovies;
  final GetPopularMoviesUsecase getPopularMoviesUsecase;
  final GetTopRatedMoviesUsecase getTopRatedMoviesUsecase;

  MoviesBloc(this.getNowPlayingMovies, this.getPopularMoviesUsecase,
      this.getTopRatedMoviesUsecase)
      : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);
    on<GetPopularMoviesEvent>(_getPopularMovies);
    on<GetTopRatedMoviesEvent>(_getTopRatedMovies);
  }

  FutureOr<void> _getNowPlayingMovies(
      GetNowPlayingMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getNowPlayingMovies(const NoParameters());

    result.fold(
      (l) => emit(state.copyWith(
        nowPlayingMessage: l.message,
        nowPlayingState: RequestStat.error,
      )),
      (r) => emit(state.copyWith(
        nowPlayingMovies: r,
        nowPlayingState: RequestStat.loaded,
      )),
    );
  }

  FutureOr<void> _getPopularMovies(
      GetPopularMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getPopularMoviesUsecase(const NoParameters());
    result.fold(
      (l) => emit(state.copyWith(
        popularMessage: l.message,
        popularState: RequestStat.error,
      )),
      (r) => emit(state.copyWith(
        popularMovies: r,
        popularState: RequestStat.loaded,
      )),
    );
  }

  FutureOr<void> _getTopRatedMovies(
      GetTopRatedMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getTopRatedMoviesUsecase(const NoParameters());
    result.fold(
      (l) => emit(state.copyWith(
        topRatedMessage: l.message,
        topRatedState: RequestStat.error,
      )),
      (r) => emit(state.copyWith(
        topRatedMovies: r,
        topRatedState: RequestStat.loaded,
      )),
    );
  }
}

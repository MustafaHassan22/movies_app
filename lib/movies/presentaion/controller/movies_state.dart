import 'package:equatable/equatable.dart';
import 'package:movies_app/core/utilles/enums.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';

class MoviesState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final RequestStat nowPlayingState;
  final String nowPlayingMessage;

  final List<Movie> popularMovies;
  final RequestStat popularState;
  final String popularMessage;

  final List<Movie> topRatedMovies;
  final RequestStat topRatedState;
  final String topRatedMessage;

  const MoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestStat.loading,
    this.nowPlayingMessage = '',
    this.popularMovies = const [],
    this.popularState = RequestStat.loading,
    this.popularMessage = '',
    this.topRatedMovies = const [],
    this.topRatedState = RequestStat.loading,
    this.topRatedMessage = '',
  });

  MoviesState copyWith({
    List<Movie>? nowPlayingMovies,
    RequestStat? nowPlayingState,
    String? nowPlayingMessage,
    List<Movie>? popularMovies,
    RequestStat? popularState,
    String? popularMessage,
    List<Movie>? topRatedMovies,
    RequestStat? topRatedState,
    String? topRatedMessage,
  }) {
    return MoviesState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlayingState: nowPlayingState ?? this.nowPlayingState,
      nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
      popularMovies: popularMovies ?? this.popularMovies,
      popularState: popularState ?? this.popularState,
      popularMessage: popularMessage ?? this.popularMessage,
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedState: topRatedState ?? this.topRatedState,
      topRatedMessage: topRatedMessage ?? this.topRatedMessage,
    );
  }

  @override
  List<Object?> get props => [
        nowPlayingMovies,
        nowPlayingState,
        nowPlayingMessage,
        popularMovies,
        popularState,
        popularMessage,
        topRatedMovies,
        topRatedState,
        topRatedMessage
      ];
}

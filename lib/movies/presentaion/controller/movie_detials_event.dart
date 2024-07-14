part of 'movie_detials_bloc.dart';

sealed class MovieDetialsEvent extends Equatable {
  const MovieDetialsEvent();

  @override
  List<Object> get props => [];
}

class GetMovieDetialsEvent extends MovieDetialsEvent {
  final int id;

  const GetMovieDetialsEvent(this.id);

  @override
  List<Object> get props => [id];
}

class GetMoviesRecomendationEvent extends MovieDetialsEvent {
  final int id;

  const GetMoviesRecomendationEvent(this.id);

  @override
  List<Object> get props => [id];
}

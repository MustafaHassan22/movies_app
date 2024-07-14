part of 'movie_detials_bloc.dart';

class MovieDetialsState extends Equatable {
  const MovieDetialsState({
    this.movieDetail,
    this.movieDetailState = RequestStat.loading,
    this.movieDetailsMessage = '',
    this.recommendation = const [],
    this.recommendationState = RequestStat.loading,
    this.recommendationMessage = '',
  });

  final MovieDetail? movieDetail;
  final RequestStat movieDetailState;
  final String movieDetailsMessage;

  final List<Recommendations> recommendation;
  final RequestStat recommendationState;
  final String recommendationMessage;

  MovieDetialsState copyWith({
    MovieDetail? movieDetail,
    RequestStat? movieDetailState,
    String? movieDetailsMessage,
    List<Recommendations>? recommendation,
    RequestStat? recommendationState,
    String? recommendationMessage,
  }) {
    return MovieDetialsState(
      movieDetail: movieDetail ?? this.movieDetail,
      movieDetailState: movieDetailState ?? this.movieDetailState,
      movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
      recommendation: recommendation ?? this.recommendation,
      recommendationState: recommendationState ?? this.recommendationState,
      recommendationMessage:
          recommendationMessage ?? this.recommendationMessage,
    );
  }

  @override
  List<Object?> get props => [
        movieDetail,
        movieDetailState,
        movieDetailsMessage,
        recommendation,
        recommendationState,
        recommendationMessage
      ];
}

class AppConstances {
  static const String nowPlayingMoviesPath =
      "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String popularMoviesPaht =
      "$baseUrl/movie/popular?api_key=$apiKey";
  static const String topRatedMoviesPaht =
      "$baseUrl/movie/top_rated?api_key=$apiKey";

  static String movieDetailsPaht(int movieId) =>
      "$baseUrl/movie/$movieId?api_key=$apiKey";

  static String movieRecommendationPath(int movieId) =>
      "$baseUrl/movie/$movieId/recommendations?api_key=$apiKey";

  static const String baseUrl = "https://api.themoviedb.org/3";
  static const apiKey = "17ea9de680d9370ba06e06c5fe5b077a";

  static const baseImageUrl = "https://image.tmdb.org/t/p/w500";

  static String imageUrl(String path) => '$baseImageUrl$path';
}

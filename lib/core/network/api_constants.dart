class APIConstants {
  static const String baseURL = 'https://api.themoviedb.org/3';
  static const String apiKey = 'c7068659b63358b4328e0d1f46bf1dbe';

  static const String nowPlayingMoviesPath =
      '$baseURL/movie/now_playing?api_key=$apiKey';
  static const String popularMoviesPath =
      '$baseURL/movie/popular?api_key=$apiKey';
  static const String topRatedMoviesPath =
      '$baseURL/movie/top_rated?api_key=$apiKey';

  static String movieDetailsPath(int movieId) =>
      '$baseURL/movie/$movieId?api_key=$apiKey';

  static String movieRecommendationsPath(int movieId) =>
      '$baseURL/movie/$movieId/recommendations?api_key=$apiKey';

  static const String baseImageURL = 'https://image.tmdb.org/t/p/w500';

  static String imageURL(String path) => '$baseImageURL$path';

  static String noImagePath = 'assets/images/no_image.jpg';
}

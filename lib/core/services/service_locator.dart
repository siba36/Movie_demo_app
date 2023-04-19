import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/data/datasource/movies_remote_datasource.dart';
import 'package:movies_app/movies/data/repository/movies_repository.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_recommendations_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:movies_app/movies/presentation/controllers/movie_bloc/movies_bloc.dart';
import 'package:movies_app/movies/presentation/controllers/movie_details_bloc/movie_details_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    //bloc
    sl.registerFactory(() => MoviesBloc(
          getNowPlayingMovies: sl(),
          getPopularMoviesUseCase: sl(),
          getTopRatedMoviesUseCase: sl(),
        ));
    sl.registerFactory(() => MovieDetailsBloc(
          getMovieDetailsUseCase: sl(),
          getMovieRecommendationUseCase: sl(),
        ));

    //datasource
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MoviesRemoteDataSource());

    //repository
    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(baseMovieRemoteDataSource: sl()));

    //use cases
    sl.registerLazySingleton(
        () => GetNowPlayingMoviesUseCase(baseMovieRepository: sl()));
    sl.registerLazySingleton(
        () => GetPopularMoviesUseCase(baseMovieRepository: sl()));
    sl.registerLazySingleton(
        () => GetTopRatedMoviesUseCase(baseMovieRepository: sl()));
    sl.registerLazySingleton(
        () => GetMovieDetailsUseCase(baseMoviesRepository: sl()));
    sl.registerLazySingleton(
        () => GetMovieRecommendationUseCase(baseMoviesRepository: sl()));
  }
}

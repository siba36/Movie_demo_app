import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/error/failures.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/movies/domain/entities/recommendation.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class GetMovieRecommendationUseCase
    extends BaseUseCase<List<Recommendation>, MovieRecommendationParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieRecommendationUseCase({required this.baseMoviesRepository});

  @override
  Future<Either<Failure, List<Recommendation>>> call(
      MovieRecommendationParameters parameters) async {
    return await baseMoviesRepository.getMovieRecommendations(parameters);
  }
}

class MovieRecommendationParameters extends Equatable {
  final int movieId;

  const MovieRecommendationParameters({required this.movieId});

  @override
  List<Object> get props => [movieId];
}

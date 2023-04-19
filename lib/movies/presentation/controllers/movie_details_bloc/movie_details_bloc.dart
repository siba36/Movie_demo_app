import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/util/enums.dart';
import 'package:movies_app/movies/domain/entities/movie_details.dart';

import '../../../domain/entities/recommendation.dart';
import '../../../domain/usecases/get_movie_details_usecase.dart';
import '../../../domain/usecases/get_movie_recommendations_usecase.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetMovieRecommendationUseCase getMovieRecommendationUseCase;

  MovieDetailsBloc({
    required this.getMovieDetailsUseCase,
    required this.getMovieRecommendationUseCase,
  }) : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    on<GetMovieRecommendationEvent>(_getMovieRecommendations);
  }

  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result = await getMovieDetailsUseCase(
        MovieDetailsParameters(movieId: event.movieId));
    result.fold(
      (l) => emit(state.copyWith(
        movieDetailsState: RequestState.error,
        movieDetailsMessage: l.message,
      )),
      (r) => emit(state.copyWith(
        movieDetails: r,
        movieDetailsState: RequestState.loaded,
      )),
    );
  }

  FutureOr<void> _getMovieRecommendations(GetMovieRecommendationEvent event,
      Emitter<MovieDetailsState> emit) async {
    final result = await getMovieRecommendationUseCase(
        MovieRecommendationParameters(movieId: event.movieId));
    result.fold(
      (l) => emit(state.copyWith(
        recommendationsState: RequestState.error,
        recommendationsMessage: l.message,
      )),
      (r) => emit(state.copyWith(
        recommendationsState: RequestState.loaded,
        recommendations: r,
      )),
    );
  }
}

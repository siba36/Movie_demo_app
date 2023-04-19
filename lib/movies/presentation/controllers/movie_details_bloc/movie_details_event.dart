part of 'movie_details_bloc.dart';

abstract class MovieDetailsEvent extends Equatable {
  const MovieDetailsEvent();
}

class GetMovieDetailsEvent extends MovieDetailsEvent {
  final int movieId;

  const GetMovieDetailsEvent({required this.movieId});

  @override
  List<Object> get props => [movieId];
}

class GetMovieRecommendationEvent extends MovieDetailsEvent {
  final int movieId;

  const GetMovieRecommendationEvent({required this.movieId});

  @override
  List<Object> get props => [movieId];
}

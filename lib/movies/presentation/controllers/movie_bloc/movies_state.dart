part of 'movies_bloc.dart';

class MoviesState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingMoviesState;
  final String nowPlayingMoviesMessage;
  final List<Movie> popularMovies;
  final RequestState popularMoviesState;
  final String popularMoviesMessage;
  final List<Movie> topRatedMovies;
  final RequestState topRatedMoviesState;
  final String topRatedMoviesMessage;

  const MoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingMoviesState = RequestState.loading,
    this.nowPlayingMoviesMessage = '',
    this.popularMovies = const [],
    this.popularMoviesState = RequestState.loading,
    this.popularMoviesMessage = '',
    this.topRatedMovies = const [],
    this.topRatedMoviesState = RequestState.loading,
    this.topRatedMoviesMessage = '',
  });

  MoviesState copyWith({
    List<Movie>? nowPlayingMovies,
    RequestState? nowPlayingMoviesState,
    String? nowPlayingMoviesMessage,
    List<Movie>? popularMovies,
    RequestState? popularMoviesState,
    String? popularMoviesMessage,
    List<Movie>? topRatedMovies,
    RequestState? topRatedMoviesState,
    String? topRatedMoviesMessage,
  }) =>
      MoviesState(
        nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
        nowPlayingMoviesState:
            nowPlayingMoviesState ?? this.nowPlayingMoviesState,
        nowPlayingMoviesMessage:
            nowPlayingMoviesMessage ?? this.nowPlayingMoviesMessage,
        popularMovies: popularMovies ?? this.popularMovies,
        popularMoviesState: popularMoviesState ?? this.popularMoviesState,
        popularMoviesMessage: popularMoviesMessage ?? this.popularMoviesMessage,
        topRatedMovies: topRatedMovies ?? this.topRatedMovies,
        topRatedMoviesState: topRatedMoviesState ?? this.topRatedMoviesState,
        topRatedMoviesMessage:
            topRatedMoviesMessage ?? this.topRatedMoviesMessage,
      );

  @override
  List<Object> get props => [
        nowPlayingMovies,
        nowPlayingMoviesState,
        nowPlayingMoviesMessage,
        popularMovies,
        popularMoviesState,
        popularMoviesMessage,
        topRatedMovies,
        topRatedMoviesState,
        topRatedMoviesMessage,
      ];
}

// class MoviesInitial extends MoviesState {
//   @override
//   List<Object> get props => [];
// }

// class MoviesLoadingState extends MoviesState {
//   @override
//   List<Object> get props => [];
// }
//
// class MoviesLoadedState extends MoviesState {
//   final List<Movie> movies;
//
//   const MoviesLoadedState({required this.movies});
//
//   @override
//   List<Object> get props => [movies];
// }
//
// class MoviesErrorState extends MoviesState {
//   final String message;
//
//   const MoviesErrorState({required this.message});
//   @override
//   List<Object> get props => [message];
// }

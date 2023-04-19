import 'package:equatable/equatable.dart';

import 'genre.dart';

class MovieDetails extends Equatable {
  final int id;
  final String title;
  final String? imagePath;
  final String overview;
  final int runtime;
  final double voteAverage;
  final String releaseDate;
  final List<Genre> genres;

  const MovieDetails({
    required this.id,
    required this.title,
    this.imagePath,
    required this.overview,
    required this.runtime,
    required this.voteAverage,
    required this.releaseDate,
    required this.genres,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        imagePath,
        overview,
        runtime,
        voteAverage,
        releaseDate,
        genres,
      ];
}

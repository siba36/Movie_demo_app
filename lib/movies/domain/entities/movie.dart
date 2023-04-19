import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String? imagePath;
  final List<int> genreIds;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  const Movie(
      {required this.id,
      required this.title, this.imagePath,
      required this.genreIds,
      required this.overview,
      required this.voteAverage,
      required this.releaseDate});

  @override
  List<Object?> get props => [
        id,
        title,
        imagePath,
        genreIds,
        overview,
        voteAverage,
        releaseDate,
      ];
}

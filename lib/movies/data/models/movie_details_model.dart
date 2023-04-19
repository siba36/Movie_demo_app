import 'package:movies_app/movies/data/models/genre_model.dart';
import 'package:movies_app/movies/domain/entities/genre.dart';
import 'package:movies_app/movies/domain/entities/movie_details.dart';

import '../../../core/network/api_constants.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel(
      {required super.id,
      required super.title,
      super.imagePath,
      required super.overview,
      required super.runtime,
      required super.voteAverage,
      required super.releaseDate,
      required super.genres});

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
        id: json['id'],
        title: json['title'],
        imagePath: json['backdrop_path'] ?? APIConstants.noImagePath,
        overview: json['overview'],
        runtime: json['runtime'],
        voteAverage: json['vote_average'].toDouble(),
        releaseDate: json['release_date'],
        genres: List<GenreModel>.from(
            json['genres'].map((e) => GenreModel.fromJson(e))),
      );
}

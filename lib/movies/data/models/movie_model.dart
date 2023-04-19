import 'package:movies_app/core/network/api_constants.dart';

import '../../domain/entities/Movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.id,
    required super.title,
    super.imagePath,
    required super.genreIds,
    required super.overview,
    required super.voteAverage,
    required super.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json['id'],
        title: json['title'],
        imagePath: json['backdrop_path'] ?? APIConstants.noImagePath,
        genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
        overview: json['overview'],
        voteAverage: json['vote_average'].toDouble(),
        releaseDate: json['release_date'],
      );
  /*double.parse(json['release_date']
          .toString()
          .substring(0, json['release_date'].toString().indexOf('-'))));*/
}

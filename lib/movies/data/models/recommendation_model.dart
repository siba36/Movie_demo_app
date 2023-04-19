import 'package:movies_app/movies/domain/entities/recommendation.dart';

import '../../../core/network/api_constants.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({
    required super.id,
    super.imagePath,
  });

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        id: json['id'],
        imagePath: json['backdrop_path'] ?? APIConstants.noImagePath,
      );
}

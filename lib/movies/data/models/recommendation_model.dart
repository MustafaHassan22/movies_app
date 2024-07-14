import 'package:movies_app/movies/domain/entities/recomendation.dart';

class RecommendationModel extends Recommendations {
  const RecommendationModel({
    required super.backdropPath,
    required super.id,
  });

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        backdropPath:
            json["backdrop_path"] ?? '/6XjMwQTvnICBz6TguiDKkDVHvgS.jpg',
        id: json["id"],
      );
}
/// ?? '/6XjMwQTvnICBz6TguiDKkDVHvgS.jpg'
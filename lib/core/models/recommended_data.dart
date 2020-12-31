import 'dart:convert';

RecommendedDataCard recommendedDataCardFromJson(String str) =>
    RecommendedDataCard.fromJson(json.decode(str));

String recommendedDataCardToJson(RecommendedDataCard data) =>
    json.encode(data.toJson());

class RecommendedDataCard {
  RecommendedDataCard({
    this.recommended,
  });

  List<Recommended> recommended;

  factory RecommendedDataCard.fromJson(Map<String, dynamic> json) =>
      RecommendedDataCard(
        recommended: List<Recommended>.from(
            json["recommended"].map((x) => Recommended.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "recommended": List<dynamic>.from(recommended.map((x) => x.toJson())),
      };
}

class Recommended {
  Recommended({
    this.id,
    this.recommendedDays,
    this.recommendedModel,
  });

  int id;
  String recommendedDays;
  String recommendedModel;

  factory Recommended.fromJson(Map<String, dynamic> json) => Recommended(
        id: json["id"],
        recommendedDays: json["recommendedDays"],
        recommendedModel: json["recommendedModel"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "recommendedDays": recommendedDays,
        "recommendedModel": recommendedModel,
      };
}

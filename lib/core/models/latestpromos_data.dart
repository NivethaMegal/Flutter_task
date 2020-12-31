import 'dart:convert';

LatestPromoCard latestPromoCardFromJson(String str) =>
    LatestPromoCard.fromJson(json.decode(str));

String latestPromoCardToJson(LatestPromoCard data) =>
    json.encode(data.toJson());

class LatestPromoCard {
  LatestPromoCard({
    this.latestPromos,
  });

  List<LatestPromo> latestPromos;

  factory LatestPromoCard.fromJson(Map<String, dynamic> json) =>
      LatestPromoCard(
        latestPromos: List<LatestPromo>.from(
            json["latestPromos"].map((x) => LatestPromo.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "latestPromos": List<dynamic>.from(latestPromos.map((x) => x.toJson())),
      };
}

class LatestPromo {
  LatestPromo({
    this.id,
    this.bgimage,
    this.icon,
    this.data,
    this.price,
  });

  int id;
  String bgimage;
  String icon;
  String data;
  String price;

  factory LatestPromo.fromJson(Map<String, dynamic> json) => LatestPromo(
        id: json["id"],
        bgimage: json["bgimage"],
        icon: json["icon"],
        data: json["data"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "bgimage": bgimage,
        "icon": icon,
        "data": data,
        "price": price,
      };
}

import 'dart:convert';

BalanceCard balancecardFromJson(String str) =>
    BalanceCard.fromJson(json.decode(str));

String balancecardToJson(BalanceCard data) => json.encode(data.toJson());

class BalanceCard {
  BalanceCard({
    this.balance,
  });

  List<Balance> balance;

  factory BalanceCard.fromJson(Map<String, dynamic> json) => BalanceCard(
        balance:
            List<Balance>.from(json["balance"].map((x) => Balance.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "balance": List<dynamic>.from(balance.map((x) => x.toJson())),
      };
}

class Balance {
  Balance({
    this.id,
    this.balancename,
    this.image,
    this.number,
    this.subdata,
  });

  int id;
  String balancename;
  String image;
  String number;
  String subdata;

  factory Balance.fromJson(Map<String, dynamic> json) => Balance(
        id: json["id"],
        balancename: json["balancename"],
        image: json["image"],
        number: json["number"],
        subdata: json["subdata"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "balancename": balancename,
        "image": image,
        "number": number,
        "subdata": subdata,
      };
}

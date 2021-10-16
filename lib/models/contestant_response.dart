// To parse this JSON data, do
//
//     final contestantList = contestantListFromJson(jsonString);

import 'dart:convert';

List<ContestantList> contestantListFromJson(String str) => List<ContestantList>.from(json.decode(str).map((x) => ContestantList.fromJson(x)));

String contestantListToJson(List<ContestantList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ContestantList {
  ContestantList({
    this.id,
    this.name,
    this.phone,
    this.passphoto,
  });

  String id;
  String name;
  String phone;
  String passphoto;

  factory ContestantList.fromJson(Map<String, dynamic> json) => ContestantList(
    id: json["id"],
    name: json["name"],
    phone: json["phone"],
    passphoto: json["passphoto"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "phone": phone,
    "passphoto": passphoto,
  };
}

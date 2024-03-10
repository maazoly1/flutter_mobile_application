/// Old model for json
///

// import 'dart:convert';

// IcecreamData icecreamDataFromJson (String str) {
//   final jsonData = json.decode(str);
//   return IcecreamData.fromJson(jsonData);
// }

// class IcecreamData {

//   List<Icecream>? icecream;

//   IcecreamData({
//     this.icecream,
//   });

//   factory IcecreamData.fromJson(List<dynamic> json) {
//     return IcecreamData(
//     icecream: List<Icecream>.from(
//       json.map((x) => Icecream.fromJson(x))
//     ));
//   }

// }

// class Icecream {
//   String? name;
//   String? imageClosed;
//   String? imageOpen;
//   String? description;
//   String? story;
//   List<String>? sourcingValues;
//   List<String>? ingredients;
//   String? allergyInfo;
//   String? dietaryCertifications;
//   String? productId;

//   Icecream({
//     required this.name,
//     this.imageClosed,
//     required this.imageOpen,
//     required this.description,
//     this.story,
//     this.sourcingValues,
//     required this.ingredients,
//     this.allergyInfo,
//     this.dietaryCertifications,
//     required this.productId
//   });

//   factory Icecream.fromJson(Map<String, dynamic> json) {
//     var data = Icecream(
//       name : json["name"] is String ? json["name"] : null,
//       imageClosed : json["image_closed"] is String ? json["image_closed"] : null,
//       imageOpen : json["image_open"] is String ? json["image_open"] : null,
//       description : json["description"] is String ? json["description"] : null,
//       story : json["story"] is String ? json["story"] : null,
//       sourcingValues : json["sourcingValues"] is List ? List<String>.from(json["sourcingValues"]) : null,
//       ingredients : json["ingredients"] is List ? List<String>.from(json["ingredients"]) : null,
//       allergyInfo : json["allergy_info"] is String ? json["allergy_info"] : null,
//       dietaryCertifications : json["dietary_certifications"] is String ? json["dietary_certifications"] : null,
//       productId : json["productId"] is String ? json["productId"] : null,
//     );
//     print(data);
//     return data;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data["name"] = name;
//     data["image_closed"] = imageClosed;
//     data["image_open"] = imageOpen;
//     data["description"] = description;
//     data["story"] = story;
//     if (sourcingValues != null) {
//       data["sourcing_values"] = sourcingValues;
//     }
//     if (ingredients != null) {
//       data["ingredients"] = ingredients;
//     }
//     data["allergy_info"] = allergyInfo;
//     data["dietary_certifications"] = dietaryCertifications;
//     data["productId"] = productId;
//     return data;
//   }
// }
// Generated by https://quicktype.io
// To parse this JSON data, do
//
//     final icecreamData = icecreamDataFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

List<IcecreamData> icecreamDataFromJson(String str) {
  final jsonData = json.decode(str);
  return List<IcecreamData>.from(jsonData.map((x) => IcecreamData.fromJson(x)));
}

String icecreamDataToJson(List<IcecreamData> data) {
  final dyn = List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}

class IcecreamData {
  String? name;
  String? imageClosed;
  String? imageOpen;
  String? description;
  String? story;
  List<SourcingValue>? sourcingValues;
  List<String>? ingredients;
  String? allergyInfo;
  DietaryCertifications? dietaryCertifications;
  String? productId;

  IcecreamData({
    this.name,
    this.imageClosed,
    this.imageOpen,
    this.description,
    this.story,
    this.sourcingValues,
    this.ingredients,
    this.allergyInfo,
    this.dietaryCertifications,
    this.productId,
  });

  factory IcecreamData.fromJson(Map<String, dynamic> json) => IcecreamData(
    name: json["name"],
    imageClosed: json["image_closed"],
    imageOpen: json["image_open"],
    description: json["description"],
    story: json["story"],
    sourcingValues: List<SourcingValue>.from(json["sourcing_values"].map((x) => sourcingValueValues.map![x])),
    ingredients: List<String>.from(json["ingredients"].map((x) => x)),
    allergyInfo: json["allergy_info"],
    dietaryCertifications: dietaryCertificationsValues.map![json["dietary_certifications"]],
    productId: json["productId"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "image_closed": imageClosed,
    "image_open": imageOpen,
    "description": description,
    "story": story,
    "sourcing_values": List<dynamic>.from(sourcingValues!.map((x) => sourcingValueValues.reverse![x])),
    "ingredients": List<dynamic>.from(ingredients!.map((x) => x)),
    "allergy_info": allergyInfo,
    "dietary_certifications": dietaryCertificationsValues.reverse?[dietaryCertifications],
    "productId": productId,
  };
}

enum DietaryCertifications { KOSHER, EMPTY }

final dietaryCertificationsValues = EnumValues({
  "": DietaryCertifications.EMPTY,
  "Kosher": DietaryCertifications.KOSHER
});

enum SourcingValue { NON_GMO, CAGE_FREE_EGGS, FAIRTRADE, RESPONSIBLY_SOURCED_PACKAGING, CARING_DAIRY, GREYSTON_BROWNIES }

final sourcingValueValues = EnumValues({
  "Cage-Free Eggs": SourcingValue.CAGE_FREE_EGGS,
  "Caring Dairy": SourcingValue.CARING_DAIRY,
  "Fairtrade": SourcingValue.FAIRTRADE,
  "Greyston Brownies": SourcingValue.GREYSTON_BROWNIES,
  "Non-GMO": SourcingValue.NON_GMO,
  "Responsibly Sourced Packaging": SourcingValue.RESPONSIBLY_SOURCED_PACKAGING
});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map!.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
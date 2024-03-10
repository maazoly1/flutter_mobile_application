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

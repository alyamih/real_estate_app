enum ERealEstateCount {
  fisrt("1-3"),
  second("4-7"),
  third("More than 7");

  const ERealEstateCount(this.text);
  final String text;
}

class UserItem {
  String? brandName;
  ERealEstateCount? type;

  UserItem({this.brandName, this.type});

  factory UserItem.fromJson(Map<String, dynamic> parsedJson) {
    return UserItem(
      brandName: parsedJson['brandName'] ?? "",
      type: ERealEstateCount.values.byName(parsedJson['type']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "brandName": brandName,
      "type": type!.name,
    };
  }
}

enum EState {
  perfect("Perfect"),
  average("Average"),
  bad("Bad");

  const EState(this.text);
  final String text;
}

enum EPayments {
  weekly("Weekly"),
  monthly("Monthly"),
  annually("Annually");

  const EPayments(this.text);
  final String text;
}

class RealEstateItem {
  String? id;
  String? whoRents;
  String? type;
  EState? state;
  EPayments? payments;
  String? comment;
  double? rentalCost;

  RealEstateItem(
      {this.id,
      this.whoRents,
      this.type,
      this.rentalCost,
      this.comment,
      this.payments,
      this.state});

  factory RealEstateItem.fromJson(Map<String, dynamic> parsedJson) {
    return RealEstateItem(
      id: parsedJson['id'] ?? "",
      whoRents: parsedJson['whoRents'] ?? "",
      type: parsedJson['type'] ?? "",
      comment: parsedJson['comment'] ?? "",
      rentalCost: parsedJson['rentalCost'],
      state: EState.values.byName(parsedJson['state']),
      payments: EPayments.values.byName(parsedJson['payments']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "whoRents": whoRents,
      "rentalCost": rentalCost,
      "type": type,
      "comment": comment,
      "state": state!.name,
      "payments": payments!.name,
    };
  }
}

class Kitchen {
  String? sId;
  String? kitchenName;
  HomeChef? homeChef;
  String? society;
  String? description;
  String? displayPhoto;
  String? coverPhoto;
  String? foodLicenseNumber;
  String? foodLicensePhoto;
  int? costForOne;
  String? status;
  String? kitchenId;

  Kitchen(
      {
        this.sId,
        this.kitchenName,
        this.homeChef,
        this.society,
        this.description,
        this.displayPhoto,
        this.coverPhoto,
        this.foodLicenseNumber,
        this.foodLicensePhoto,
        this.costForOne,
        this.status,
        this.kitchenId,
        });

  Kitchen.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    kitchenName = json['kitchenName'];
    homeChef = json['homeChef'] != null
        ? new HomeChef.fromJson(json['homeChef'])
        : null;
    society = json['society'];


    description = json['description'];
    displayPhoto = json['displayPhoto'];
    coverPhoto = json['coverPhoto'];
    foodLicenseNumber = json['foodLicenseNumber'];
    foodLicensePhoto = json['foodLicensePhoto'];
    costForOne = json['costForOne'];
    status = json['status'];
    kitchenId = json['kitchenId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['kitchenName'] = this.kitchenName;
    if (this.homeChef != null) {
      data['homeChef'] = this.homeChef!.toJson();
    }

    data['society'] = this.society;

    data['description'] = this.description;
    data['displayPhoto'] = this.displayPhoto;
    data['coverPhoto'] = this.coverPhoto;
    data['foodLicenseNumber'] = this.foodLicenseNumber;
    data['foodLicensePhoto'] = this.foodLicensePhoto;
    data['costForOne'] = this.costForOne;
    data['status'] = this.status;
    data['kitchenId'] = this.kitchenId;
    return data;
  }
}

class HomeChef {
  String? sId;
  String? firstName;
  String? lastName;

  HomeChef({this.sId, this.firstName, this.lastName});

  HomeChef.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    return data;
  }
}



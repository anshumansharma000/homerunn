import 'package:flutter/material.dart';

class Carousel {
  String? sId;
  String? carouselName;
  String? description;
  String? startDate;
  String? carouselPhoto;
  String? endDate;
  String? createdOn;
  String? createdBy;
  bool? isDeleted;
  String? lastModifiedOn;
  String? carouselId;
  int? iV;

  Carousel(
      {this.sId,
        this.carouselName,
        this.description,
        this.startDate,
        this.carouselPhoto,
        this.endDate,
        this.createdOn,
        this.createdBy,
        this.isDeleted,
        this.lastModifiedOn,
        this.carouselId,
        this.iV});

  Carousel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    carouselName = json['carouselName'];
    description = json['description'];
    startDate = json['startDate'];
    carouselPhoto = json['carouselPhoto'];
    endDate = json['endDate'];
    createdOn = json['createdOn'];
    createdBy = json['createdBy'];
    isDeleted = json['isDeleted'];
    lastModifiedOn = json['lastModifiedOn'];
    carouselId = json['carouselId'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['carouselName'] = this.carouselName;
    data['description'] = this.description;
    data['startDate'] = this.startDate;
    data['carouselPhoto'] = this.carouselPhoto;
    data['endDate'] = this.endDate;
    data['createdOn'] = this.createdOn;
    data['createdBy'] = this.createdBy;
    data['isDeleted'] = this.isDeleted;
    data['lastModifiedOn'] = this.lastModifiedOn;
    data['carouselId'] = this.carouselId;
    data['__v'] = this.iV;
    return data;
  }
}



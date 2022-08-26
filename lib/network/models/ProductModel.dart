import 'package:json_annotation/json_annotation.dart';
part 'ProductModel.g.dart';

@JsonSerializable()
class ProductModel {

    int? kcalNum;
    String? img;
    double? imgWidth;
    double? imgHeight;
    String? productName;
    int? numOfProductInStore;
    double? price;

  ProductModel({this.kcalNum,this.img,this.imgHeight,this.imgWidth,this.productName,this.numOfProductInStore,this.price});

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}



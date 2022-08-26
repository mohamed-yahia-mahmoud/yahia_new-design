// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ProductModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      kcalNum: json['kcalNum'] as int?,
      img: json['img'] as String?,
      imgHeight: (json['imgHeight'] as num?)?.toDouble(),
      imgWidth: (json['imgWidth'] as num?)?.toDouble(),
      productName: json['productName'] as String?,
      numOfProductInStore: json['numOfProductInStore'] as int?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'kcalNum': instance.kcalNum,
      'img': instance.img,
      'imgWidth': instance.imgWidth,
      'imgHeight': instance.imgHeight,
      'productName': instance.productName,
      'numOfProductInStore': instance.numOfProductInStore,
      'price': instance.price,
    };

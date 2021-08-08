import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class ProductEntity {
  int? id;
  String? name;
  int? price;
  int? before_sale_price;
  String? description;
  String? full_description;
  int? order;
  CategoryEntity? category;
  ImageEntity? images;
  List<ExtraEntity>? extras;
  List<ExtraItemEntity>? extra_items;

  ProductEntity();

  factory ProductEntity.fromJson(Map<String, dynamic> json) => _$ProductEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ProductEntityToJson(this);
}

@JsonSerializable()
class CategoryEntity {
  int? id;
  String? name;

  CategoryEntity();

  factory CategoryEntity.fromJson(Map<String, dynamic> json) => _$CategoryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryEntityToJson(this);
}

@JsonSerializable()
class ImageEntity {
  String? full_size;
  String? thumbnail;

  ImageEntity();

  factory ImageEntity.fromJson(Map<String, dynamic> json) => _$ImageEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ImageEntityToJson(this);
}

@JsonSerializable()
class ExtraEntity {
  int? id;
  String? name;
  String? min;
  String? max;

  ExtraEntity();

  factory ExtraEntity.fromJson(Map<String, dynamic> json) => _$ExtraEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ExtraEntityToJson(this);
}

@JsonSerializable()
class ExtraItemEntity {
  int? id;
  String? name;
  int? extra_id;
  String? price;
  bool? isChecked;

  ExtraItemEntity();

  factory ExtraItemEntity.fromJson(Map<String, dynamic> json) => _$ExtraItemEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ExtraItemEntityToJson(this);
}

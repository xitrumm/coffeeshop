// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) =>
    ProductEntity()
      ..id = json['id'] as int?
      ..name = json['name'] as String?
      ..price = json['price'] as int?
      ..before_sale_price = json['before_sale_price'] as int?
      ..description = json['description'] as String?
      ..full_description = json['full_description'] as String?
      ..order = json['order'] as int?
      ..category = json['category'] == null
          ? null
          : CategoryEntity.fromJson(json['category'] as Map<String, dynamic>)
      ..images = json['images'] == null
          ? null
          : ImageEntity.fromJson(json['images'] as Map<String, dynamic>)
      ..extras = (json['extras'] as List<dynamic>?)
          ?.map((e) => ExtraEntity.fromJson(e as Map<String, dynamic>))
          .toList()
      ..extra_items = (json['extra_items'] as List<dynamic>?)
          ?.map((e) => ExtraItemEntity.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ProductEntityToJson(ProductEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'before_sale_price': instance.before_sale_price,
      'description': instance.description,
      'full_description': instance.full_description,
      'order': instance.order,
      'category': instance.category,
      'images': instance.images,
      'extras': instance.extras,
      'extra_items': instance.extra_items,
    };

CategoryEntity _$CategoryEntityFromJson(Map<String, dynamic> json) =>
    CategoryEntity()
      ..id = json['id'] as int?
      ..name = json['name'] as String?;

Map<String, dynamic> _$CategoryEntityToJson(CategoryEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

ImageEntity _$ImageEntityFromJson(Map<String, dynamic> json) => ImageEntity()
  ..full_size = json['full_size'] as String?
  ..thumbnail = json['thumbnail'] as String?;

Map<String, dynamic> _$ImageEntityToJson(ImageEntity instance) =>
    <String, dynamic>{
      'full_size': instance.full_size,
      'thumbnail': instance.thumbnail,
    };

ExtraEntity _$ExtraEntityFromJson(Map<String, dynamic> json) => ExtraEntity()
  ..id = json['id'] as int?
  ..name = json['name'] as String?
  ..min = json['min'] as String?
  ..max = json['max'] as String?;

Map<String, dynamic> _$ExtraEntityToJson(ExtraEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'min': instance.min,
      'max': instance.max,
    };

ExtraItemEntity _$ExtraItemEntityFromJson(Map<String, dynamic> json) =>
    ExtraItemEntity()
      ..id = json['id'] as int?
      ..name = json['name'] as String?
      ..extra_id = json['extra_id'] as int?
      ..price = json['price'] as String?
      ..isChecked = json['isChecked'] as bool?;

Map<String, dynamic> _$ExtraItemEntityToJson(ExtraItemEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'extra_id': instance.extra_id,
      'price': instance.price,
      'isChecked': instance.isChecked,
    };

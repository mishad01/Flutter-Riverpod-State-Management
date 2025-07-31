import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_template/src/domain/entities/product_entity.dart';

part 'product_model.mapper.dart';

@MappableClass(generateMethods: GenerateMethods.decode)
class ProductResponseModel extends ProductEntity
    with ProductResponseModelMappable {
  ProductResponseModel({
    @MappableField(key: '_id') required super.id,
    super.name,
    super.code,
    super.imageUrl,
    super.unitPrice,
    super.quantity,
    super.totalPrice,
    super.createdDate,
  }) : super();

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) {
    return ProductResponseModelMapper.fromJson(json);
  }
}

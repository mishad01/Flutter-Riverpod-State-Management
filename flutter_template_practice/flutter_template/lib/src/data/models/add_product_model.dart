// lib/src/data/models/add_product_model.dart

import 'package:dart_mappable/dart_mappable.dart';

import '../../domain/entities/add_product_entity.dart';

part 'add_product_model.mapper.dart';

@MappableClass(
  generateMethods: GenerateMethods.encode | GenerateMethods.decode,
  caseStyle: CaseStyle.pascalCase,
)
class AddProductModel extends AddProductEntity with AddProductModelMappable {
  const AddProductModel({
    required super.productName,
    required super.productCode,
    required super.img,
    required super.unitPrice,
    required super.qty,
    required super.totalPrice,
    required super.createdDate,
    //@MappableField(key: '_id') required super.id,
  });

  /// 🔁 Converts from entity to model (for POSTing data)
  factory AddProductModel.fromEntity(AddProductEntity entity) {
    return AddProductModel(
      productName: entity.productName,
      productCode: entity.productCode,
      img: entity.img,
      unitPrice: entity.unitPrice,
      qty: entity.qty,
      totalPrice: entity.totalPrice,
      createdDate: entity.createdDate,
      //id: entity.id,
    );
  }

  /// 🔁 Converts from JSON (for GET/parsing response)
  factory AddProductModel.fromJson(Map<String, dynamic> json) {
    return AddProductModelMapper.fromJson(json);
  }
}

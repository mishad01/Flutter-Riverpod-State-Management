import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_template/src/domain/entities/product_entity.dart';

part 'product_model.mapper.dart';

@MappableClass(
  generateMethods: GenerateMethods.decode,
  caseStyle: CaseStyle.pascalCase,
)
class ProductResponseModel extends ProductEntity
    with ProductResponseModelMappable {
  ProductResponseModel({
    @MappableField(key: '_id') required super.sId,
    //@MappableField(key: 'ProductName') required super.productName,
    super.productName,
    super.productCode,
    super.img,
    super.unitPrice,
    super.qty,
    super.totalPrice,
    super.createdDate,
  }) : super();

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) {
    return ProductResponseModelMapper.fromJson(json);
  }
}

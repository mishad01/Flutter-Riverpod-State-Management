import 'package:flutter_template/src/core/base/repository.dart';

import '../../core/base/failure.dart';
import '../../core/base/result.dart';
import '../entities/add_product_entity.dart';

abstract base class AddProductRepository extends Repository {
  Future<Result<AddProductEntity, Failure>> addProduct(
    AddProductEntity product,
  );
}

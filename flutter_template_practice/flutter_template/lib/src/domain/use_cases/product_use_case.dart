import 'package:flutter_template/src/core/base/result.dart';
import 'package:flutter_template/src/domain/entities/product_entity.dart';
import 'package:flutter_template/src/domain/repositories/product_home_repository.dart';

import '../../core/base/failure.dart';

class FetchProductUseCase {
  FetchProductUseCase(this.repository);
  final ProductRepository repository;

  Future<Result<List<ProductEntity>, Failure>> call() {
    final itemCount = repository.allProduct.length;
    return repository.fetchProducts();
  }
}

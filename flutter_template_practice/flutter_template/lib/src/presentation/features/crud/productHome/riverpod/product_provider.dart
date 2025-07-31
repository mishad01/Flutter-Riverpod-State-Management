import 'package:flutter_template/src/core/base/result.dart';
import 'package:flutter_template/src/core/di/dependency_injection.dart';
import 'package:flutter_template/src/domain/use_cases/product_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../domain/entities/product_entity.dart';

part 'product_provider.g.dart';

@riverpod
class Product extends _$Product {
  late FetchProductUseCase _fetchProductUseCase;

  @override
  Future<List<ProductEntity>> build() async {
    _fetchProductUseCase = ref.watch(fetchProductUseCaseProvider);

    final result = await _fetchProductUseCase.call();

    return result.when(success: (data) => data, error: (failure) => []);
  }
}

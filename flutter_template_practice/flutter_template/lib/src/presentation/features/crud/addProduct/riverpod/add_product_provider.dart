import 'package:flutter_template/src/core/base/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../core/base/failure.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../domain/entities/add_product_entity.dart';

part 'add_product_provider.g.dart';

@riverpod
class AddProduct extends _$AddProduct {
  @override
  Future<AddProductEntity?> build() async {
    return null; // Initial state is null
  }

  Future<void> add({
    required String productName,
    required String productCode,
    required String img,
    required String unitPrice,
    required String qty,
    required String totalPrice,
  }) async {
    final entity = AddProductEntity(
      productName: productName,
      productCode: productCode,
      img: img,
      unitPrice: unitPrice,
      qty: qty,
      totalPrice: totalPrice,
      createdDate: DateTime.now(),
      id: '',
    );

    state = const AsyncValue.loading();

    // Get the repository from DI
    final repo = ref.read(addProductRepositoryProvider);

    // Call the repository method
    final result = await repo.addProduct(entity);

    // Handle result
    state = result.when(
      success: (addedProduct) => AsyncValue.data(addedProduct),
      error: (Failure failure) =>
          AsyncValue.error(failure.message, StackTrace.current),
    );
  }
}

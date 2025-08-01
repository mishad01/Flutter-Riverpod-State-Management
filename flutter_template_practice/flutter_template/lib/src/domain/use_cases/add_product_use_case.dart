import '../../core/base/failure.dart';
import '../../core/base/result.dart';
import '../entities/add_product_entity.dart';
import '../repositories/add_repository.dart';

class AddProductUseCase {
  AddProductUseCase(this.repository);
  final AddProductRepository repository;

  Future<Result<AddProductEntity, Failure>> call(
      {required AddProductEntity product}) async {
    return repository.addProduct(product);
  }
}

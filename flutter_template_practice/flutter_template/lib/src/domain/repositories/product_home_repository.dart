import '../../core/base/failure.dart';
import '../../core/base/repository.dart';
import '../../core/base/result.dart';
import '../entities/product_entity.dart';

abstract base class ProductRepository extends Repository {
  Future<Result<List<ProductEntity>, Failure>> fetchProducts(
      /*{
    required String businessId,
    required int page,
    int? limit,
    bool reset = false,
  }*/
      );

  List<ProductEntity> get allProduct;

  Future<Result<ProductEntity, Failure>> getProductById(String id);

  Future<Result<void, Failure>> deleteProduct(String id);

  Future<Result<ProductEntity, Failure>> createProduct(ProductEntity product);

  Future<Result<ProductEntity, Failure>> updateProduct(ProductEntity product);
}

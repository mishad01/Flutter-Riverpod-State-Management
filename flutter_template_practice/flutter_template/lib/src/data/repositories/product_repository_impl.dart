import 'dart:developer';

import 'package:flutter_template/src/core/base/failure.dart';
import 'package:flutter_template/src/core/base/result.dart';
import 'package:flutter_template/src/data/models/product_model.dart';
import 'package:flutter_template/src/data/services/network/rest_client.dart';
import 'package:flutter_template/src/domain/entities/product_entity.dart';
import 'package:flutter_template/src/domain/repositories/product_home_repository.dart';

final class ProductRepositoryImpl extends ProductRepository {
  ProductRepositoryImpl(this.remote);
  final RestClient remote;

  final List<ProductEntity> _allProduct = [];
  List<ProductEntity> get allProduct => _allProduct;

  Future<Result<List<ProductEntity>, Failure>> fetchProducts() {
    return asyncGuard(
      () async {
        final response = await remote.fetchProducts();
        if (response.data['data'] is List) {
          final List<dynamic> rawList = response.data['data'];
          log(rawList.toString(), name: 'ProductRepositoryImpl');
          _allProduct.addAll(
            rawList.map((e) => ProductResponseModel.fromJson(e)).toList(),
            //rawList.map((e) => ProductResponseModelMapper.fromJson(e)).toList(),
            /*
            - Cleaner: It's easier to read and immediately tells other developers what model you're working with.
            - More maintainable: If you ever decide to change the internal logic of fromJson, you only update it in one place (inside the factory constructor), not everywhere else in the codebase.
            - More idiomatic Dart: It's a Dart convention to use Model.fromJson() when deserializing JSON.
            */
          );
          log(allProduct.toString(), name: 'dataimp');
        }

        return _allProduct;
      },
    );
  }

  @override
  Future<Result<ProductEntity, Failure>> createProduct(ProductEntity product) {
    // TODO: implement createProduct
    throw UnimplementedError();
  }

  @override
  Future<Result<void, Failure>> deleteProduct(String id) {
    // TODO: implement deleteProduct
    throw UnimplementedError();
  }

  @override
  Future<Result<ProductEntity, Failure>> getProductById(String id) {
    // TODO: implement getProductById
    throw UnimplementedError();
  }

  @override
  Future<Result<ProductEntity, Failure>> updateProduct(ProductEntity product) {
    // TODO: implement updateProduct
    throw UnimplementedError();
  }
}

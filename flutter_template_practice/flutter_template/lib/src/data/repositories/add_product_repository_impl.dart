import 'package:flutter_template/src/core/base/failure.dart';
import 'package:flutter_template/src/core/base/result.dart';
import 'package:flutter_template/src/data/models/add_product_model.dart';
import 'package:flutter_template/src/domain/entities/add_product_entity.dart';

import '../../domain/repositories/add_repository.dart';
import '../services/network/rest_client.dart';

final class AddProductRepositoryImpl extends AddProductRepository {
  AddProductRepositoryImpl({required this.remote});
  final RestClient remote;

  @override
  Future<Result<AddProductEntity, Failure>> addProduct(
      AddProductEntity product) async {
    return asyncGuard(
      () async {
        await remote.addProduct(
            body: AddProductModel.fromEntity(product).toJson());
        return product;
      },
    );
  }
}

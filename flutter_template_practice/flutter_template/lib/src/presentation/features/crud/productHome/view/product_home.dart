import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/src/presentation/core/router/routes.dart';
import 'package:go_router/go_router.dart';

import '../../../../../domain/entities/product_entity.dart';
import '../riverpod/product_provider.dart';
import '../widget/product_tile.dart';

class ProductHomeView extends ConsumerWidget {
  const ProductHomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productAsyncValue = ref.watch(productProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Home'),
        centerTitle: true,
      ),
      body: productAsyncValue.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Failed to load products')),
        data: (products) {
          if (products.isEmpty) {
            return const Center(child: Text('No products available.'));
          }
          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: products.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final ProductEntity product = products[index];
              return ProductTile(
                name: product.productName,
                code: product.productCode,
                imgUrl: product.img,
                price: product.unitPrice,
                qty: product.qty,
                total: product.totalPrice,
                onEdit: () {
                  // TODO: Handle edit
                },
                onDelete: () {
                  // TODO: Handle delete
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.go(Routes.addProduct);
        },
        label: const Text('Add Product'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../domain/entities/product_entity.dart';
import '../../addProduct/view/add_product_view.dart';
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
                name: product.name!,
                price: product.unitPrice,
                onEdit: () {
                  // TODO: Navigate to edit view with `product`
                },
                onDelete: () {
                  // TODO: Handle delete action
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddProductView()),
          );
        },
        label: const Text('Add Product'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}

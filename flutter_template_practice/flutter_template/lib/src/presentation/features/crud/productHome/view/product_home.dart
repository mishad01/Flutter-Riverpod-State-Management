import 'package:flutter/material.dart';

import '../../addProduct/view/add_product_view.dart';
import '../widget/product_tile.dart';

class ProductHomeView extends StatelessWidget {
  const ProductHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Temporary dummy data
    final List<Map<String, String>> products = [
      {'id': '1', 'name': 'T-Shirt', 'price': '299'},
      {'id': '2', 'name': 'Shoes', 'price': '999'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Home'),
        centerTitle: true,
      ),
      body: products.isEmpty
          ? const Center(child: Text('No products available.'))
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: products.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductTile(
                  name: product['name'] ?? '',
                  price: product['price'] ?? '',
                  onEdit: () {
                    /*Navigator.push(
                        context,
                        */ /*MaterialPageRoute(
                        builder: (_) => EditProductView(product: product),
                      ),*/ /*
                        MaterialPageRoute(
                          builder: (context) {

                          },
                        ));*/
                  },
                  onDelete: () {
                    // TODO: Handle delete action
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

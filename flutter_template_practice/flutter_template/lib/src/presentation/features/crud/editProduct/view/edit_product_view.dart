import 'package:flutter/material.dart';

class EditProductView extends StatelessWidget {
  final Map<String, String> product;
  final String id;
  const EditProductView({super.key, required this.product, required this.id});
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(text: product['name']);
    final priceController = TextEditingController(text: product['price']);

    return Scaffold(
      appBar: AppBar(title: const Text('Edit Product')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Product Name'),
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Update product logic
              },
              child: const Text('Update'),
            )
          ],
        ),
      ),
    );
  }
}

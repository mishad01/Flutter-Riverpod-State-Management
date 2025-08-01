import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../riverpod/add_product_provider.dart';

class AddProductView extends ConsumerStatefulWidget {
  const AddProductView({Key? key}) : super(key: key);

  @override
  ConsumerState<AddProductView> createState() => _AddProductViewState();
}

class _AddProductViewState extends ConsumerState<AddProductView> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _productCodeController = TextEditingController();
  final TextEditingController _imgController = TextEditingController();
  final TextEditingController _unitPriceController = TextEditingController();
  final TextEditingController _qtyController = TextEditingController();
  final TextEditingController _totalPriceController = TextEditingController();

  @override
  void dispose() {
    _productNameController.dispose();
    _productCodeController.dispose();
    _imgController.dispose();
    _unitPriceController.dispose();
    _qtyController.dispose();
    _totalPriceController.dispose();
    super.dispose();
  }

  Future<void> _submitProduct() async {
    if (_formKey.currentState!.validate()) {
      await ref.read(addProductProvider.notifier).add(
            productName: _productNameController.text,
            productCode: _productCodeController.text,
            img: _imgController.text,
            unitPrice: _unitPriceController.text,
            qty: _qtyController.text,
            totalPrice: _totalPriceController.text,
          );

      final state = ref.read(addProductProvider);

      if (state.hasError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(state.error.toString())),
        );
      } else if (!state.isLoading) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Product submitted successfully!")),
        );
        _formKey.currentState?.reset();
      }
    }
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        validator: (value) =>
            (value == null || value.isEmpty) ? 'This field is required' : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addProductProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Add Product")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _buildTextField("Product Name", _productNameController),
              _buildTextField("Product Code", _productCodeController),
              _buildTextField("Image URL", _imgController),
              _buildTextField("Unit Price", _unitPriceController),
              _buildTextField("Quantity", _qtyController),
              _buildTextField("Total Price", _totalPriceController),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: state.isLoading ? null : _submitProduct,
                child: state.isLoading
                    ? const CircularProgressIndicator()
                    : const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

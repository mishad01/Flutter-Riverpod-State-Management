class Endpoints {
  static const String base = 'https://crud.teamrabbil.com/api/v1';

  /// Product Endpoints
  static const String getProduct = '/ReadProduct';
  static const String createProduct = '/CreateProduct';

  // Dynamic endpoints
  static String updateProduct(String id) => '/UpdateProduct/$id';
  static String deleteProduct(String id) => '/DeleteProduct/$id';

  /// Full URL builders (optional, if you want absolute URLs)
  static String get getProductUrl => '$base$getProduct';
  static String get createProductUrl => '$base$createProduct';
  static String updateProductUrl(String id) => '$base${updateProduct(id)}';
  static String deleteProductUrl(String id) => '$base${deleteProduct(id)}';
}

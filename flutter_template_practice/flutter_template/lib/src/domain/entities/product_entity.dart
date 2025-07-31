class ProductEntity {
  final String id;
  final String? name;
  final String? code;
  final String? imageUrl;
  final dynamic unitPrice;
  final dynamic quantity;
  final dynamic totalPrice;
  final DateTime? createdDate;

  ProductEntity({
    required this.id,
    this.name,
    this.code,
    this.imageUrl,
    this.unitPrice,
    this.quantity,
    this.totalPrice,
    this.createdDate,
  });
}

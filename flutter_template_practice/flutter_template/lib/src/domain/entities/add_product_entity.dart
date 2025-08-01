class AddProductResponseEntity {
  final String? status;
  final AddProductEntity? product;

  const AddProductResponseEntity({
    this.status,
    this.product,
  });
}

class AddProductEntity {
  const AddProductEntity({
    this.productName,
    this.productCode,
    this.img,
    this.unitPrice,
    this.qty,
    this.totalPrice,
    this.createdDate,
    this.id,
  });
  final String? productName;
  final String? productCode;
  final String? img;
  final String? unitPrice;
  final String? qty;
  final String? totalPrice;
  final DateTime? createdDate;
  final String? id;
}

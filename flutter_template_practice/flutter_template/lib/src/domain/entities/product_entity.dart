class ProductEntity {
  String? sId;
  String? productName;
  String? productCode;
  String? img;
  String? unitPrice;
  String? qty;
  String? totalPrice;
  String? createdDate;

  ProductEntity({
    required this.sId,
    this.productName,
    this.productCode,
    this.img,
    this.unitPrice,
    this.qty,
    this.totalPrice,
    this.createdDate,
  });
}

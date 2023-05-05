class ProductInCart {
  final int id;
  final int quantity;

  ProductInCart({required this.id, required this.quantity});
  factory ProductInCart.fromJson(Map<String, dynamic> json) {
    return ProductInCart(
      id: json['id'] as int,
      quantity: json['quantity'] as int,
      
    );
  }
  ProductInCart copyWith({int? id, int? quantity}) {
    return ProductInCart(
      id: id ?? this.id,
      quantity: quantity ?? this.quantity,
    );
  }
}

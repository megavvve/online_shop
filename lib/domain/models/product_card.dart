class ProductCard {
  final String name;
  final double weight;
  final int price;
  final String imageUrl;
  final int inCart = 0;
  ProductCard({
    required this.name,
    required this.weight,
    required this.price,
    required this.imageUrl,
    int inCart = 0,
  });
  ProductCard copyWithPlus() {
    return ProductCard(
        name: name,
        weight: weight,
        price: price,
        imageUrl: imageUrl,
        inCart: inCart + 1);
  }

  ProductCard copyWithMinus() {
    return ProductCard(
        name: name,
        weight: weight,
        price: price,
        imageUrl: imageUrl,
        inCart: (inCart > 0) ? inCart - 1 : inCart,);
  }

  static List<ProductCard> listProdCard = [
    ProductCard(
      name: "Масло сливочное Традиционное",
      weight: 0.35,
      price: 329,
      imageUrl: "assets/images/product_card/product_card1.png",
    ),
    ProductCard(
      name: 'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
      weight: 0.4,
      price: 1090,
      imageUrl: "assets/images/product_card/beef.png",
    ),
  ];
}

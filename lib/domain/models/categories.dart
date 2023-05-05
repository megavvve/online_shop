class Category {
  final String name;
  final String imageUrl;

  Category({required this.name, required this.imageUrl});
  static List<Category> categoriesList = [
    Category(
      name: 'Молочные продукты, яйцо',
      imageUrl: "assets/images/categories/categorie1.png",
    ),
    Category(
      name: 'Мясо и птица',
      imageUrl: "assets/images/categories/categorie2.png",
    ),
    Category(
      name: 'Овощи, фрукты, зелень',
      imageUrl: "assets/images/categories/categorie3.png",
    ),
    Category(
      name: 'Кондитерские изделия',
      imageUrl: "assets/images/categories/categorie4.png",
    ),
    Category(
      name: 'Товары для дома',
      imageUrl: "assets/images/categories/categorie5.png",
    ),
  ];
}

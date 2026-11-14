class ProductModel {
  final String name;
  final String brand;
  final String price;
  final String image;

  bool isFavorite;

  ProductModel({
    required this.name,
    required this.brand,
    required this.price,
    required this.image,
    this.isFavorite = false,
  });
}
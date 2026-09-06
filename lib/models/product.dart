class Product {
  final String id;
  final String name;
  final double price;
  final double? oldPrice;
  final String image;

  final String description;
  final double rating;
  final int reviews;
  final List<String> colors;
  final List<String> sizes;
  final String categoryId;
  Product({
    required this.id,
    required this.name,
    required this.price,
    this.oldPrice,
    required this.image,
    required this.categoryId,
    required this.description,
    required this.rating,
    required this.reviews,
    required this.colors,
    required this.sizes,
  });
}

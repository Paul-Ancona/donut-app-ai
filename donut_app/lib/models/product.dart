class Product {
  final String id;
  final String name;
  final String vendor;
  final double price;
  final String imageUrl;
  final String colorHex;
  final String description;
  final Map<String, String> ingredients;

  Product({
    required this.id,
    required this.name,
    required this.vendor,
    required this.price,
    required this.imageUrl,
    required this.colorHex,
    required this.description,
    required this.ingredients,
  });
}

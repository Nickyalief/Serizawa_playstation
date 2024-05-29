class Controller {
  Controller({
    required this.name,
    required this.rating,
    required this.price,
    required this.imageURL,
    required this.productCategory,
    required this.productInfo,
  });

  final String name;
  final double rating;
  final int price;
  final List<String> imageURL;
  final String productCategory;
  final String productInfo;
}

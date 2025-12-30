class ProductModel {
  final String id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final String image;
  final Rating? rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    this.rating,
  });
  factory ProductModel.fromJson(Map<String, dynamic> jsonData) {
    return ProductModel(
      id: jsonData['id'].toString(),
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      category: jsonData['category'],
      image: jsonData['image'],
      rating: jsonData['rating'] != null
          ? Rating.fromJson(jsonData['rating'])
          : null,
    );
  }
}

class Rating {
  final double rate;
  final int count;

  Rating({required this.rate, required this.count});

  factory Rating.fromJson(Map<String, dynamic> jsonData) {
    return Rating(rate: jsonData['rate'].toDouble(), count: jsonData['count']);
  }
}

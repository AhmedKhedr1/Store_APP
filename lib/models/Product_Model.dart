import 'package:store_app/models/Rating_Model.dart';

class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;

  ProductModel(
      {required this.rating,
      required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image});

  factory ProductModel.fromJson(jsondat) {
    return ProductModel(
        id: jsondat['id'],
        title: jsondat['title'],
        price: jsondat['price'],
        description: jsondat['description'],
        category: jsondat['category'],
        image: jsondat['image'],
        rating: RatingModel.fromJson(jsondat['rating']));
  }
}

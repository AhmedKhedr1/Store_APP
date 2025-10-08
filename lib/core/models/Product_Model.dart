// // ignore_for_file: file_names

// import 'package:store_app/core/models/Rating_Model.dart';

// class ProductModel {
//   final int id;
//   final String title;
//   final double  price;
//   final String description;
//   final String category;
//   final String image;
//   final RatingModel rating;

//   ProductModel(
//       {required this.rating,
//       required this.id,
//       required this.title,
//       required this.price,
//       required this.description,
//       required this.category,
//       required this.image});

//   factory ProductModel.fromJson(jsondata) {
//     return ProductModel(
//         id: jsondata['id'],
//         title: jsondata['title'],
//         price: jsondata['price'],
//         description: jsondata['description'],
//         category: jsondata['category'],
//         image: jsondata['image'],
//         rating: RatingModel.fromJson(jsondata['rating']));
//   }
// }

// ignore_for_file: file_names

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(jsondat) {
    return RatingModel(rate: jsondat['rate'], count: jsondat['count']);
  }
}

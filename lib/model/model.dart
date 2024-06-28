class TreatmentModel {
  String? id;
  String? title;
  String? description;
  double? price;
  String? image;
  String? author;
  String? category;

  TreatmentModel({
    this.id,
    this.title,
    this.description,
    this.price,
    this.image,
    this.author,
    this.category,
  });

  factory TreatmentModel.fromJson(Map<String, dynamic> json) {
    return TreatmentModel(
      id: json['_id'],
      title: json['title'],
      description: json['description'],
      price: (json['price'] as num).toDouble(),
      image: json['image'],
      author: json['author'],
      category: json['category'],
    );
  }
}

class Phone {
  int id;
  String brand;
  String type;
  String imageURL;
  int price;
  String description;
  Phone({
    required this.id,
    required this.brand,
    required this.type,
    required this.imageURL,
    required this.price,
    required this.description,
  });

  factory Phone.fromJson(Map<String, dynamic> json) {
    return Phone(
      id: json['id'] as int,
      brand: json['brand'] as String,
      type: json['type'] as String,
      imageURL: "http://localhost:3000/uploads/" + (json['image'] as String),
      price: json['price'] as int,
      description: json['description'] as String,
    );
  }
}

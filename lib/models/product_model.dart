class Product {
  final String id;
  final String title;
  final double price;
  final String imageUrl;
  final String category;
  final String description;
  final String condition;
  final DateTime listedDate;
  final bool isNegotiable;
  final String location;
  final String sellerId;

  Product({
     required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.category,
    required this.description,
    required this.condition,
    required this.location,
    this.isNegotiable = false,
    String? sellerId,
    DateTime? listedDate,
  }) : 
    this.sellerId = sellerId ?? 'anonymous',
    this.listedDate = listedDate ?? DateTime.now();

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'imageUrl': imageUrl,
      'category': category,
      'description': description,
      'condition': condition,
      'location': location,
      'isNegotiable': isNegotiable,
      'sellerId': sellerId,
      'listedDate': listedDate.toIso8601String(),
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      title: map['title'],
      price: map['price'],
      imageUrl: map['imageUrl'],
      category: map['category'],
      description: map['description'],
      condition: map['condition'],
      location: map['location'],
      isNegotiable: map['isNegotiable'],
      sellerId: map['sellerId'],
      listedDate: DateTime.parse(map['listedDate']),
    );
  }
} 
import 'package:uuid/uuid.dart';
import 'product_model.dart';

class ProductData {
  static final _uuid = Uuid();

  static final List<Product> products = [
    Product(
      id: _uuid.v4(),
      title: 'Engineering Books Set',
      price: 1499.00,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Books',
      description: 'Complete set of engineering reference books',
      condition: 'Like New',
      location: 'Engineering Block',
      isNegotiable: true,
      sellerId: 'system',
    ),
    Product(
      id: _uuid.v4(),
      title: 'Scientific Calculator',
      price: 999.00,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Electronics',
      description: 'Advanced scientific calculator for engineering students',
      condition: 'Good',
      location: 'Science Block',
      isNegotiable: false,
      sellerId: 'system',
    ),
    Product(
      id: _uuid.v4(),
      title: 'Laptop - Dell XPS 13',
      price: 89999.00,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Electronics',
      description: 'Dell XPS 13 with Intel i7, 16GB RAM, 512GB SSD',
      condition: 'New',
      location: 'Tech Hub',
      isNegotiable: false,
      sellerId: 'system',
    ),
    Product(
      id: _uuid.v4(),
      title: 'Air Fryer',
      price: 3999.00,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Home Appliances',
      description: 'Digital air fryer for healthy cooking',
      condition: 'New',
      location: 'Kitchenware Section',
      isNegotiable: false,
      sellerId: 'system',
    ),
    Product(
      id: _uuid.v4(),
      title: 'Bluetooth Headphones',
      price: 4999.00,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Electronics',
      description: 'Noise-cancelling Bluetooth headphones',
      condition: 'New',
      location: 'Audio Store',
      isNegotiable: false,
      sellerId: 'system',
    ),
    Product(
      id: _uuid.v4(),
      title: 'Smartwatch - Samsung Galaxy Watch 5',
      price: 12999.00,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Electronics',
      description: 'Fitness and health smartwatch with AMOLED display',
      condition: 'New',
      location: 'Tech Store',
      isNegotiable: false,
      sellerId: 'system',
    ),
    Product(
      id: _uuid.v4(),
      title: 'Running Shoes - Nike Air Zoom',
      price: 6999.00,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Fashion',
      description: 'Comfortable running shoes for athletes',
      condition: 'New',
      location: 'Sports Store',
      isNegotiable: false,
      sellerId: 'system',
    ),
    Product(
      id: _uuid.v4(),
      title: 'Portable Charger',
      price: 1299.00,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Electronics',
      description: 'Compact portable charger with 10000mAh capacity',
      condition: 'New',
      location: 'Gadgets Store',
      isNegotiable: false,
      sellerId: 'system',
    ),
    Product(
      id: _uuid.v4(),
      title: 'Winter Jacket - Adidas',
      price: 8999.00,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Fashion',
      description: 'Warm and stylish winter jacket for cold weather',
      condition: 'New',
      location: 'Fashion Store',
      isNegotiable: false,
      sellerId: 'system',
    ),
    Product(
      id: _uuid.v4(),
      title: 'Digital Camera - Canon EOS 1500D',
      price: 34999.00,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Electronics',
      description: 'Canon DSLR camera with 18-55mm lens',
      condition: 'New',
      location: 'Camera Store',
      isNegotiable: false,
      sellerId: 'system',
    ),
    Product(
      id: _uuid.v4(),
      title: 'LED TV - Samsung 43" 4K',
      price: 25999.00,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Electronics',
      description: 'Samsung 4K LED TV with HDR and Smart TV features',
      condition: 'New',
      location: 'Electronics Store',
      isNegotiable: false,
      sellerId: 'system',
    ),
    Product(
      id: _uuid.v4(),
      title: 'Wireless Mouse - Logitech',
      price: 799.00,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Electronics',
      description: 'Wireless optical mouse with ergonomic design',
      condition: 'New',
      location: 'Computer Accessories',
      isNegotiable: false,
      sellerId: 'system',
    ),
    Product(
      id: _uuid.v4(),
      title: 'Smartphone - OnePlus 9 Pro',
      price: 64999.00,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Electronics',
      description: 'OnePlus 9 Pro with Snapdragon 888, 12GB RAM, 256GB storage',
      condition: 'New',
      location: 'Mobile Store',
      isNegotiable: false,
      sellerId: 'system',
    ),
    Product(
      id: _uuid.v4(),
      title: 'Desk Chair - Ergonomic Design',
      price: 4999.00,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Furniture',
      description: 'Ergonomic desk chair for comfortable long hours of work',
      condition: 'New',
      location: 'Furniture Store',
      isNegotiable: false,
      sellerId: 'system',
    ),
    Product(
      id: _uuid.v4(),
      title: 'Coffee Maker - Philips',
      price: 3999.00,
      imageUrl: 'https://via.placeholder.com/150',
      category: 'Home Appliances',
      description: 'Philips coffee maker with 1.2L capacity',
      condition: 'New',
      location: 'Kitchenware Section',
      isNegotiable: false,
      sellerId: 'system',
    ),
  ];

  static void addProduct(Product product) {
    products.add(product);
  }

  static List<Product> getProductsByCategory(String category) {
    if (category == 'All Items') return products;
    return products.where((product) => product.category == category).toList();
  }

  static List<Product> searchProducts(String query) {
    query = query.toLowerCase();
    return products.where((product) =>
    product.title.toLowerCase().contains(query) ||
        product.description.toLowerCase().contains(query) ||
        product.location.toLowerCase().contains(query)
    ).toList();
  }

  static List<Product> getProductsByCondition(String condition) {
    return products.where((product) => product.condition == condition).toList();
  }

  static List<Product> getNewestProducts() {
    var sortedProducts = List<Product>.from(products);
    sortedProducts.sort((a, b) => b.listedDate.compareTo(a.listedDate));
    return sortedProducts;
  }
}

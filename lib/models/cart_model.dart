class CartItem {
  final String title;
  final double price;
  final String imageUrl;
  final String category;
  int quantity;

  CartItem({
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.category,
    this.quantity = 1,
  });

  double get totalPrice => price * quantity;
}

class Cart {
  static final Cart _instance = Cart._internal();
  factory Cart() => _instance;
  Cart._internal();

  final List<CartItem> _items = [];

  List<CartItem> get items => _items;
  
  double get totalAmount => _items.fold(0, (sum, item) => sum + item.totalPrice);

  void addItem(String title, double price, String imageUrl, String category) {
    final existingItemIndex = _items.indexWhere((item) => item.title == title);
    if (existingItemIndex != -1) {
      _items[existingItemIndex].quantity++;
    } else {
      _items.add(CartItem(
        title: title,
        price: price,
        imageUrl: imageUrl,
        category: category,
      ));
    }
  }

  void removeItem(String title) {
    _items.removeWhere((item) => item.title == title);
  }

  void updateQuantity(String title, int quantity) {
    final item = _items.firstWhere((item) => item.title == title);
    item.quantity = quantity;
    if (quantity <= 0) {
      removeItem(title);
    }
  }

  void clear() {
    _items.clear();
  }
} 
import 'package:uuid/uuid.dart';
import 'product_model.dart';

class ProductData {
  static final _uuid = Uuid();

  static final List<Product> products = [
    Product(
      id: _uuid.v4(),
      title: 'Engineering Books Set',
      price: 1499.00,
      imageUrl: 'https://media.wiley.com/product_data/coverImage300/95/11181189/1118118995.jpg',
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
      imageUrl: 'https://cdn.schoolspecialty.com/dec3efc1-da73-42e8-a873-b0f100545916/1572188_SPR_JPG%20Output.jpg?width=700&height=700&fit=bounds&canvas=700,700&bg-color=ffffff',
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
      imageUrl: 'https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/notebooks/xps-notebooks/xps-13-9315/media-gallery/notebook-xps-9315-nt-blue-gallery-3.psd?fmt=pjpg&pscan=auto&scl=1&wid=4108&hei=2874&qlt=100,1&resMode=sharp2&size=4108,2874&chrss=full&imwidth=5000',
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
      imageUrl: 'https://m.media-amazon.com/images/I/61TG1L3DV1L.jpg',
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
      imageUrl: 'https://static.independent.co.uk/2024/10/30/12/Wireless-headphones.jpg',
      category: 'Electronics',
      description: 'Noise-cancelling Bluetooth headphones',
      condition: 'New',
      location: 'Audio Store',
      isNegotiable: false,
      sellerId: 'system',
    ),
    Product(
      id: _uuid.v4(),
      title: 'Smartwatch - Samsung Galaxy Watch',
      price: 12999.00,
      imageUrl: 'https://images.samsung.com/in/galaxy-watch6/feature/galaxy-watch6-safety-mo.jpg',
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
      imageUrl: 'https://pictures-kenya.jijistatic.com/66215610_NjIwLTYyMC0zYmQ4OTQ0ZGRk.webp',
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
      imageUrl: 'https://explorehonor.com/cdn/shop/files/HONORSuperCharge100WUSBType-AMobileCharger-1_1500x.jpg?v=1718695943',
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
      imageUrl: 'https://i.pinimg.com/originals/26/a7/34/26a7345390d49e888bb430bffb7ebe58.jpg',
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
      imageUrl: 'https://cdn.dotpe.in/longtail/item_thumbnails/7227152/isxlPiS8-800-800.webp',
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
      imageUrl: 'https://images-cdn.ubuy.co.in/646c382c82e0d07a433ba438-samsung-un55tu7000-55-inches-4k-ultra-hd.jpg',
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
      imageUrl: 'https://resource.logitechg.com/w_692,c_lpad,ar_4:3,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/gaming/en/products/g502-lightspeed-gaming-mouse/g502-lightspeed-gallery-1.png?v=1',
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
      imageUrl: 'https://www.androidauthority.com/wp-content/uploads/2021/03/OnePlus-9-Pro-in-hand-angled.jpg',
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
      imageUrl: 'https://wakefitdev.gumlet.io/img/chairs/office-chair/WSCHRMASTPGBPBRDBKBKML.jpg?w=3840',
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
      imageUrl: 'https://images.philips.com/is/image/philipsconsumer/vrs_a021402c54998654b02d1e0648f56d16240885ac?wid=700&hei=700&\$pnglarge\$',
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

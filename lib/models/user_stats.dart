class UserStats {
  static final UserStats _instance = UserStats._internal();
  factory UserStats() => _instance;
  UserStats._internal();

  int _itemsSold = 0;

  int get itemsSold => _itemsSold;

  void incrementSoldItems() {
    _itemsSold++;
  }
} 
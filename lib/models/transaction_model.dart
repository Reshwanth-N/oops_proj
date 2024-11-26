class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final String type; // 'buy' or 'sell'
  final String status;

  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.type,
    required this.status,
  });
}

class TransactionHistory {
  static final TransactionHistory _instance = TransactionHistory._internal();
  factory TransactionHistory() => _instance;
  TransactionHistory._internal();

  final List<Transaction> _transactions = [];

  List<Transaction> get transactions => _transactions;

  void addTransaction(Transaction transaction) {
    _transactions.add(transaction);
  }

  List<Transaction> getRecentTransactions([int count = 5]) {
    var sortedTransactions = List<Transaction>.from(_transactions);
    sortedTransactions.sort((a, b) => b.date.compareTo(a.date));
    return sortedTransactions.take(count).toList();
  }
} 
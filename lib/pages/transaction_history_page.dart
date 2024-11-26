import 'package:flutter/material.dart';
import '../models/transaction_model.dart';
import '../utils/page_transitions.dart';

class TransactionHistoryPage extends StatelessWidget {
  final TransactionHistory _transactionHistory = TransactionHistory();

  TransactionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TRANSACTION HISTORY',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black,
              Colors.grey[900]!,
              Colors.black,
            ],
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: _transactionHistory.transactions.length,
          itemBuilder: (context, index) {
            final transaction = _transactionHistory.transactions[index];
            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: transaction.type == 'buy' 
                      ? Colors.green.withOpacity(0.2)
                      : Colors.blue.withOpacity(0.2),
                  child: Icon(
                    transaction.type == 'buy' 
                        ? Icons.shopping_cart
                        : Icons.sell,
                    color: transaction.type == 'buy' 
                        ? Colors.green
                        : Colors.blue,
                  ),
                ),
                title: Text(
                  transaction.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '₹${transaction.amount.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: transaction.type == 'buy' 
                            ? Colors.green
                            : Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Date: ${transaction.date.toString().split(' ')[0]}',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    Text(
                      'Status: ${transaction.status}',
                      style: TextStyle(
                        color: transaction.status == 'Completed'
                            ? Colors.green
                            : Colors.orange,
                      ),
                    ),
                  ],
                ),
                trailing: const Icon(Icons.chevron_right, color: Colors.cyan),
                onTap: () {
                  // TODO: Show transaction details
                },
              ),
            );
          },
        ),
      ),
    );
  }
} 
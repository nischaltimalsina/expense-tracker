import 'package:flutter_test/flutter_test.dart';
import 'package:expense_tracker/models/transaction.dart';

void main() {
  group('Transaction Model', () {
    test('should create a transaction with all required fields', () {
      final transaction = Transaction(
        id: '1',
        amount: 100.0,
        description: 'Test transaction',
        category: 'food',
        date: DateTime(2024, 1, 1),
        type: TransactionType.expense,
      );

      expect(transaction.id, '1');
      expect(transaction.amount, 100.0);
      expect(transaction.description, 'Test transaction');
      expect(transaction.category, 'food');
      expect(transaction.type, TransactionType.expense);
    });

    test('should convert transaction to map', () {
      final transaction = Transaction(
        id: '1',
        amount: 100.0,
        description: 'Test transaction',
        category: 'food',
        date: DateTime(2024, 1, 1),
        type: TransactionType.expense,
      );

      final map = transaction.toMap();

      expect(map['id'], '1');
      expect(map['amount'], 100.0);
      expect(map['description'], 'Test transaction');
      expect(map['category'], 'food');
      expect(map['type'], 'TransactionType.expense');
    });

    test('should create transaction from map', () {
      final map = {
        'id': '1',
        'amount': 100.0,
        'description': 'Test transaction',
        'category': 'food',
        'date': DateTime(2024, 1, 1).toIso8601String(),
        'type': 'TransactionType.expense',
      };

      final transaction = Transaction.fromMap(map);

      expect(transaction.id, '1');
      expect(transaction.amount, 100.0);
      expect(transaction.description, 'Test transaction');
      expect(transaction.category, 'food');
      expect(transaction.type, TransactionType.expense);
    });
  });
}

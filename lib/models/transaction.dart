/// Transaction model representing an income or expense entry
class Transaction {
  final String id;
  final double amount;
  final String description;
  final String category;
  final DateTime date;
  final TransactionType type;

  Transaction({
    required this.id,
    required this.amount,
    required this.description,
    required this.category,
    required this.date,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'amount': amount,
      'description': description,
      'category': category,
      'date': date.toIso8601String(),
      'type': type.toString(),
    };
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      id: map['id'] as String,
      amount: map['amount'] as double,
      description: map['description'] as String,
      category: map['category'] as String,
      date: DateTime.parse(map['date'] as String),
      type: TransactionType.values.firstWhere(
        (e) => e.toString() == map['type'],
      ),
    );
  }
}

enum TransactionType {
  income,
  expense,
}

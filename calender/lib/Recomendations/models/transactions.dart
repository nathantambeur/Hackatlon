class Transaction {
  final String id;
  final String title;
  final DateTime date;
  final int likeCount;
  final String description;

  Transaction({
    required this.description,
    required this.id,
    required this.date,
    required this.title,
    required this.likeCount,
  });
}

class TransactionModel {
  final String title, date, amount;
  final bool withDrawl;
  const TransactionModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.withDrawl});
}

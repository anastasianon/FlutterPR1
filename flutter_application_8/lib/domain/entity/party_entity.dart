class PartyEntity{
  late int id;
  final String date;
  final int wholesalePrice;
  final int id_product;
  final int id_provider;
  final int id_currentBalance;

PartyEntity({
  required this.date,
  required this.wholesalePrice,
  required this.id_product,
  required this.id_provider,
  required this.id_currentBalance
  });
}
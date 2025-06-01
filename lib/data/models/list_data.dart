class ListData {

  final String id;
  final String title;
  final String category;
  final String subtitle;
  final List<String> items;

  ListData({
    required this.id,
    required this.title,
    required this.category,
    required this.subtitle,
    this.items = const [],
  });

}
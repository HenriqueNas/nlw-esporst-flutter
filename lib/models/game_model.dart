class GameModel {
  final String id;
  final String image;
  final String title;
  final int ads;

  const GameModel({
    required this.id,
    required this.image,
    required this.title,
    required this.ads,
  });

  @override
  String toString() {
    return 'id: $id, title: $title';
  }
}

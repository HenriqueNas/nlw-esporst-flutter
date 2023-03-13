class AdModel {
  final String id;
  final String gameId;
  final String name;
  final int yearsPlayed;
  final String discord;
  final List<int> weekDays;
  final int hourStart;
  final int hourEnd;
  final bool useVoiceChannel;
  final DateTime createdAt;

  const AdModel({
    required this.id,
    required this.gameId,
    required this.name,
    required this.yearsPlayed,
    required this.discord,
    required this.weekDays,
    required this.hourStart,
    required this.hourEnd,
    required this.useVoiceChannel,
    required this.createdAt,
  });
}

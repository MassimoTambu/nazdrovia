class AchievementsContainer {
  AchievementsCategory? category;
  List<Achievement>? achievements;
}

class Achievement {
  int? id;
  String? title;
  String? description;
  int? nasScore;
  String? icon;
}

class AchievementsCategory {
  static const String PRINCIPALI = "Principali";
  static const String LIMITED = "Limited";
  static const String SEGRETI = "Segreti";
}

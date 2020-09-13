class RulesContainer {
  RulesCategory title;
  String prologue;
  List<Rule> rules;
  String epilogue;
}

class Rule {
  int id;
  String number;
  String title;
  String description;
}

class RulesCategory {
  static const PRINCIPALI = "Principali";
  static const EXTRA = "Extra";
  static const PENALITA = "Penalità";
  static const SACRIFICIO = "Sacrificio";
  static const BEVUTA = "La Bevuta";
}

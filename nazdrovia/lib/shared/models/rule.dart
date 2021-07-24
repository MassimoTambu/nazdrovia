import 'package:json_annotation/json_annotation.dart';

part 'rule.g.dart';

@JsonSerializable()
class Rule {
  final int id;
  final String number;
  final String title;
  final String description;

  const Rule(this.id, this.number, this.title, this.description);

  factory Rule.fromJson(Map<String, dynamic> json) => _$RuleFromJson(json);
  Map<String, dynamic> toJson() => _$RuleToJson(this);
}

abstract class RulesCategory {
  static const PRINCIPALI = "Principali";
  static const EXTRA = "Extra";
  static const PENALITA = "Penalità";
  static const SACRIFICIO = "Sacrificio";
  static const BEVUTA = "La Bevuta";
}

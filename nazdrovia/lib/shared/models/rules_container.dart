import 'package:json_annotation/json_annotation.dart';
import 'package:nazdrovia/shared/models/rule.dart';

part 'rules_container.g.dart';

@JsonSerializable()
class RulesContainer {
  final String title;
  final String prologue;
  final List<Rule> rules;
  final String epilogue;

  const RulesContainer(this.title, this.prologue, this.rules, this.epilogue);

  factory RulesContainer.fromJson(Map<String, dynamic> json) =>
      _$RulesContainerFromJson(json);
  Map<String, dynamic> toJson() => _$RulesContainerToJson(this);
}

export interface RulesContainer {
  title: RulesCategory;
  prologue?: string;
  rules: Rule[];
  epilogue?: string;
}

export interface Rule {
  id: number;
  number?: string;
  title?: string;
  description: string;
}

export class RulesCategory {
  static readonly Principali = "Principali";
  static readonly Extra = "Extra";
  static readonly Penalità = "Penalità";
  static readonly Sacrificio = "Sacrificio";
  static readonly Bevuta = "La Bevuta";
}

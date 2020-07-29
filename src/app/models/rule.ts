export interface Rule {
  id: number;
  number: number;
  type: RuleType;
  title?: string;
  description: string;
}

export enum RuleType {
  Principali,
  Extra,
  Penalità,
  Sacrificio,
  Bevuta,
}

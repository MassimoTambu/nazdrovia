export interface RulesContainerRef {
  id: number;
  ruleId: number;
  ruleContainerId: number;
}

export interface RulesContainer {
  id: number;
  title: string;
  prologue?: string;
  rules?: Rule[];
  epilogue?: string;
  categoryId: number;
}

export interface RulesContainersWithCategories {
  category: string;
  rulesContainer: RulesContainer;
}

export interface RulesCategory {
  id: number;
  category: string;
}

export interface Rule {
  id: number;
  number?: string;
  title?: string;
  description: string;
}

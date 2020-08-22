import { Request, Response } from 'express';
import { QueryResult } from 'pg';
import { pool } from '../database';
import {
  Rule,
  RulesCategory,
  RulesContainer,
  RulesContainerRef,
  RulesContainersWithCategories,
} from '../models/rule';
import { RuleTable } from '../models/tables/rule.table';
import { RulesCategoryTable } from '../models/tables/rules-category.table';
import { RulesContainerRefTable } from '../models/tables/rules-container-ref.table';
import { RulesContainerTable } from '../models/tables/rules-container.table';

export const getRules = async (req: Request, res: Response) => {
  const rResponse: QueryResult<Rule> = await pool.query(
    ` SELECT * FROM ${RuleTable.tableName} `
  );

  const rcResponse: QueryResult<RulesContainer> = await pool.query(
    ` SELECT * FROM ${RulesContainerTable.tableName} `
  );

  const rcrResponse: QueryResult<RulesContainerRef> = await pool.query(
    ` SELECT * FROM ${RulesContainerRefTable.tableName} `
  );

  const rcatResponse: QueryResult<RulesCategory> = await pool.query(
    ` SELECT * FROM ${RulesCategoryTable.tableName} `
  );

  const rulesContainersWithCategories: RulesContainersWithCategories[] = [];
  const rulesContainers: RulesContainer[] = [];

  rcrResponse.rows.forEach((rcr) => {
    const rule: Rule = rResponse.rows.find((r) => r.id === rcr.ruleId)!;
    const rulesContainer: RulesContainer = rcResponse.rows.find(
      (rc) => rc.id === rcr.ruleContainerId
    )!;
    if (
      rulesContainers.length === 0 ||
      rulesContainers.find((rc) => rc.id === rcr.ruleContainerId)?.rules ===
        undefined
    ) {
      rulesContainers.push({
        id: rulesContainer.id,
        categoryId: rulesContainer.categoryId,
        rules: [rule],
        title: rulesContainer.title,
        prologue: rulesContainer.prologue,
        epilogue: rulesContainer.epilogue,
      });
    } else {
      rulesContainers
        .find((rc) => rc.id === rcr.ruleContainerId)!
        .rules?.push(rule);
    }
  });

  rulesContainers.forEach((rc) => {
    rulesContainersWithCategories.push({
      rulesContainer: rc,
      category: rcatResponse.rows.find((rcat) => rcat.id === rc.categoryId)!
        .category,
    });
  });

  res.send(rulesContainersWithCategories);
};

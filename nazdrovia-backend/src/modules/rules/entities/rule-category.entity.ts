import { AbstractEntity } from 'src/shared/abstracts/abstract.entity';
import { DBSchemas } from 'src/shared/enums/db-schemas';
import { Column, Entity } from 'typeorm';

import { RulesCategories } from '../shared/rules-categories.enum';

@Entity({ schema: DBSchemas.Rules })
export class RuleCategory extends AbstractEntity {
    @Column({ type: 'enum', enum: RulesCategories })
    category: RulesCategories;
}

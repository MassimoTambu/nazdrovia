import { AbstractEntity } from 'src/shared/abstracts/abstract.entity';
import { DBSchemas } from 'src/shared/enums/db-schemas';
import { Column, Entity, ManyToOne, OneToMany } from 'typeorm';

import { RuleContainer } from './rule-container.entity';

@Entity({ schema: DBSchemas.Rules })
export class Rule extends AbstractEntity {
    @Column({ type: 'varchar', length: 20 })
    number: string;

    @Column()
    title: string;

    @Column()
    description: string;

    @ManyToOne(() => RuleContainer, (ruleContainer) => ruleContainer.rules)
    ruleContainer: RuleContainer;
}

import { AbstractEntity } from 'src/shared/abstracts/abstract.entity';
import {
    Column,
    Entity,
    JoinColumn,
    JoinTable,
    OneToMany,
    OneToOne,
} from 'typeorm';

import { RuleCategory } from './rule-category.entity';
import { Rule } from './rule.entity';

@Entity()
export class RuleContainer extends AbstractEntity {
    @Column({ nullable: true })
    prologue?: string;

    @Column({ nullable: true })
    epilogue?: string;

    @OneToOne(() => RuleCategory)
    @JoinColumn()
    ruleCategory: RuleCategory;

    @OneToMany(() => Rule, (rule) => rule.ruleContainer)
    @JoinTable()
    rules: Rule[];
}

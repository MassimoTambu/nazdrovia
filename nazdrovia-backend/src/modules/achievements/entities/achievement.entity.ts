import { AbstractEntity } from 'src/shared/abstracts/abstract.entity';
import { DBSchemas } from 'src/shared/enums/db-schemas';
import { Column, Entity, ManyToOne, PrimaryColumn, RelationId } from 'typeorm';

import { AchievementCategory } from './achievement-category.entity';

@Entity({ schema: DBSchemas.Achievements })
export class Achievement extends AbstractEntity {
    @Column()
    title: string;

    @Column()
    description: string;

    @Column()
    nasScore: number;

    @Column()
    icon: string;

    @ManyToOne(
        () => AchievementCategory,
        (achievementCategory) => achievementCategory.achievements,
    )
    achievementCategory: AchievementCategory;
}

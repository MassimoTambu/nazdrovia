import { AbstractEntity } from 'src/shared/abstracts/abstract.entity';
import { DBSchemas } from 'src/shared/enums/db-schemas';
import { Column, Entity, OneToMany } from 'typeorm';

import { AchievementsCategories } from '../shared/achievements-categories.enum';
import { Achievement } from './achievement.entity';

@Entity({ schema: DBSchemas.Achievements })
export class AchievementCategory extends AbstractEntity {
    @Column({ type: 'enum', enum: AchievementsCategories })
    category: AchievementsCategories;
    @OneToMany(
        () => Achievement,
        (achievement) => achievement.achievementCategory,
        { eager: true },
    )
    achievements: Achievement[];
}

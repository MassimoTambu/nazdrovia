import { Achievement } from 'src/modules/achievements/entities/achievement.entity';
import { AbstractEntity } from 'src/shared/abstracts/abstract.entity';
import { DBSchemas } from 'src/shared/enums/db-schemas';
import { Column, Entity, JoinTable, ManyToMany } from 'typeorm';

@Entity({ schema: DBSchemas.Players })
export class Player extends AbstractEntity {
    @Column({ type: 'varchar', length: '30' })
    firstName: string;

    @Column({ type: 'varchar', length: '40' })
    lastName: string;

    @Column({ nullable: true, length: '100' })
    catchPhrase?: string;

    @ManyToMany(() => Achievement)
    @JoinTable()
    achievements: Achievement[];
}

BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "achievements" ADD COLUMN "_achievementCategoriesAchievementsAchievementCategoriesId" bigint;
ALTER TABLE ONLY "achievements"
    ADD CONSTRAINT "achievements_fk_3"
    FOREIGN KEY("_achievementCategoriesAchievementsAchievementCategoriesId")
    REFERENCES "achievement_categories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR nazdrovia
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nazdrovia', '20241201125356008', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241201125356008', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;

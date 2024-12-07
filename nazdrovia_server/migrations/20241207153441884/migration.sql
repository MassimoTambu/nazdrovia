BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "achievements" DROP CONSTRAINT "achievements_fk_3";
ALTER TABLE "achievements" DROP COLUMN "_achievementCategoriesAchievementsAchievementCategoriesId";

--
-- MIGRATION VERSION FOR nazdrovia
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nazdrovia', '20241207153441884', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241207153441884', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;

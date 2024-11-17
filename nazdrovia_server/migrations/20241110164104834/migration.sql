BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "achievement_categories" (
    "id" bigserial PRIMARY KEY,
    "category" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "achievements" (
    "id" bigserial PRIMARY KEY,
    "title" text NOT NULL,
    "description" text NOT NULL,
    "nasScore" bigint NOT NULL,
    "categoryId" bigint NOT NULL,
    "image" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "completed_achievements" (
    "id" bigserial PRIMARY KEY,
    "playerId" bigint NOT NULL,
    "achievementId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "enrollment_index_idx" ON "completed_achievements" USING btree ("playerId", "achievementId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "players" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "lastName" text NOT NULL,
    "catchPhrase" text NOT NULL,
    "penalities" bigint NOT NULL,
    "isOut" boolean NOT NULL,
    "image" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "rule_categories" (
    "id" bigserial PRIMARY KEY,
    "title" text NOT NULL,
    "prologue" text,
    "epilogue" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "rules" (
    "id" bigserial PRIMARY KEY,
    "number" text,
    "title" text,
    "description" text NOT NULL,
    "_ruleCategoriesRulesRuleCategoriesId" bigint
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "achievements"
    ADD CONSTRAINT "achievements_fk_0"
    FOREIGN KEY("categoryId")
    REFERENCES "achievement_categories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "completed_achievements"
    ADD CONSTRAINT "completed_achievements_fk_0"
    FOREIGN KEY("playerId")
    REFERENCES "players"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "completed_achievements"
    ADD CONSTRAINT "completed_achievements_fk_1"
    FOREIGN KEY("achievementId")
    REFERENCES "achievements"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "rules"
    ADD CONSTRAINT "rules_fk_0"
    FOREIGN KEY("_ruleCategoriesRulesRuleCategoriesId")
    REFERENCES "rule_categories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR nazdrovia
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nazdrovia', '20241110164104834', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241110164104834', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;

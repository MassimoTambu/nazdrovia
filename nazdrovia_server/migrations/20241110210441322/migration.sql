BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "achievement_categories" ADD COLUMN "displayOrder" bigint NOT NULL DEFAULT 0;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "achievements" ADD COLUMN "displayOrder" bigint NOT NULL DEFAULT 0;
--
-- ACTION ALTER TABLE
--
ALTER TABLE "rule_categories" ADD COLUMN "displayOrder" bigint NOT NULL DEFAULT 0;
--
-- ACTION DROP TABLE
--
DROP TABLE "rules" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "rules" (
    "id" bigserial PRIMARY KEY,
    "number" text,
    "title" text,
    "description" text NOT NULL,
    "ruleCategoryId" bigint NOT NULL,
    "displayOrder" bigint NOT NULL DEFAULT 0,
    "_ruleCategoriesRulesRuleCategoriesId" bigint
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "rules"
    ADD CONSTRAINT "rules_fk_0"
    FOREIGN KEY("ruleCategoryId")
    REFERENCES "rule_categories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "rules"
    ADD CONSTRAINT "rules_fk_1"
    FOREIGN KEY("_ruleCategoriesRulesRuleCategoriesId")
    REFERENCES "rule_categories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR nazdrovia
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('nazdrovia', '20241110210441322', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241110210441322', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;

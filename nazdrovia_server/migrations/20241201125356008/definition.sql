BEGIN;

--
-- Class AchievementCategory as table achievement_categories
--
CREATE TABLE "achievement_categories" (
    "id" bigserial PRIMARY KEY,
    "categoryId" bigint NOT NULL,
    "displayOrder" bigint NOT NULL DEFAULT 0
);

-- Indexes
CREATE INDEX "achievement_categories_category_idx" ON "achievement_categories" USING btree ("categoryId");

--
-- Class Achievement as table achievements
--
CREATE TABLE "achievements" (
    "id" bigserial PRIMARY KEY,
    "titleId" bigint NOT NULL,
    "descriptionId" bigint NOT NULL,
    "nasScore" bigint NOT NULL,
    "categoryId" bigint NOT NULL,
    "image" text,
    "displayOrder" bigint NOT NULL DEFAULT 0,
    "_achievementCategoriesAchievementsAchievementCategoriesId" bigint
);

-- Indexes
CREATE INDEX "achievements_title_idx" ON "achievements" USING btree ("titleId");
CREATE INDEX "achievements_description_idx" ON "achievements" USING btree ("descriptionId");
CREATE INDEX "achievements_category_idx" ON "achievements" USING btree ("categoryId");

--
-- Class CompletedAchievements as table completed_achievements
--
CREATE TABLE "completed_achievements" (
    "id" bigserial PRIMARY KEY,
    "playerId" bigint NOT NULL,
    "achievementId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "completed_achievements_enrollment_idx" ON "completed_achievements" USING btree ("playerId", "achievementId");

--
-- Class Player as table players
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
-- Class RuleCategory as table rule_categories
--
CREATE TABLE "rule_categories" (
    "id" bigserial PRIMARY KEY,
    "titleId" bigint NOT NULL,
    "prologueId" bigint NOT NULL,
    "epilogueId" bigint NOT NULL,
    "displayOrder" bigint NOT NULL DEFAULT 0
);

-- Indexes
CREATE INDEX "rule_categories_title_idx" ON "rule_categories" USING btree ("titleId");
CREATE INDEX "rule_categories_prologue_idx" ON "rule_categories" USING btree ("prologueId");
CREATE INDEX "rule_categories_epilogue_idx" ON "rule_categories" USING btree ("epilogueId");

--
-- Class Rule as table rules
--
CREATE TABLE "rules" (
    "id" bigserial PRIMARY KEY,
    "number" text,
    "titleId" bigint NOT NULL,
    "descriptionId" bigint NOT NULL,
    "ruleCategoryId" bigint NOT NULL,
    "displayOrder" bigint NOT NULL DEFAULT 0,
    "_ruleCategoriesRulesRuleCategoriesId" bigint
);

-- Indexes
CREATE INDEX "rules_title_idx" ON "rules" USING btree ("titleId");
CREATE INDEX "rules_description_idx" ON "rules" USING btree ("descriptionId");

--
-- Class Texts as table texts
--
CREATE TABLE "texts" (
    "id" bigserial PRIMARY KEY,
    "originalText" text NOT NULL
);

--
-- Class Translation as table translations
--
CREATE TABLE "translations" (
    "id" bigserial PRIMARY KEY,
    "textId" bigint NOT NULL,
    "languageCode" text NOT NULL,
    "translatedText" text NOT NULL,
    "_textsTranslationsTextsId" bigint
);

-- Indexes
CREATE INDEX "translations_text_idx" ON "translations" USING btree ("textId");
CREATE INDEX "translations_language_code_idx" ON "translations" USING btree ("languageCode");

--
-- Class CloudStorageEntry as table serverpod_cloud_storage
--
CREATE TABLE "serverpod_cloud_storage" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "addedTime" timestamp without time zone NOT NULL,
    "expiration" timestamp without time zone,
    "byteData" bytea NOT NULL,
    "verified" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_path_idx" ON "serverpod_cloud_storage" USING btree ("storageId", "path");
CREATE INDEX "serverpod_cloud_storage_expiration" ON "serverpod_cloud_storage" USING btree ("expiration");

--
-- Class CloudStorageDirectUploadEntry as table serverpod_cloud_storage_direct_upload
--
CREATE TABLE "serverpod_cloud_storage_direct_upload" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_upload_storage_path" ON "serverpod_cloud_storage_direct_upload" USING btree ("storageId", "path");

--
-- Class FutureCallEntry as table serverpod_future_call
--
CREATE TABLE "serverpod_future_call" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "serializedObject" text,
    "serverId" text NOT NULL,
    "identifier" text
);

-- Indexes
CREATE INDEX "serverpod_future_call_time_idx" ON "serverpod_future_call" USING btree ("time");
CREATE INDEX "serverpod_future_call_serverId_idx" ON "serverpod_future_call" USING btree ("serverId");
CREATE INDEX "serverpod_future_call_identifier_idx" ON "serverpod_future_call" USING btree ("identifier");

--
-- Class ServerHealthConnectionInfo as table serverpod_health_connection_info
--
CREATE TABLE "serverpod_health_connection_info" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "active" bigint NOT NULL,
    "closing" bigint NOT NULL,
    "idle" bigint NOT NULL,
    "granularity" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_connection_info_timestamp_idx" ON "serverpod_health_connection_info" USING btree ("timestamp", "serverId", "granularity");

--
-- Class ServerHealthMetric as table serverpod_health_metric
--
CREATE TABLE "serverpod_health_metric" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "isHealthy" boolean NOT NULL,
    "value" double precision NOT NULL,
    "granularity" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_metric_timestamp_idx" ON "serverpod_health_metric" USING btree ("timestamp", "serverId", "name", "granularity");

--
-- Class LogEntry as table serverpod_log
--
CREATE TABLE "serverpod_log" (
    "id" bigserial PRIMARY KEY,
    "sessionLogId" bigint NOT NULL,
    "messageId" bigint,
    "reference" text,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "logLevel" bigint NOT NULL,
    "message" text NOT NULL,
    "error" text,
    "stackTrace" text,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_log_sessionLogId_idx" ON "serverpod_log" USING btree ("sessionLogId");

--
-- Class MessageLogEntry as table serverpod_message_log
--
CREATE TABLE "serverpod_message_log" (
    "id" bigserial PRIMARY KEY,
    "sessionLogId" bigint NOT NULL,
    "serverId" text NOT NULL,
    "messageId" bigint NOT NULL,
    "endpoint" text NOT NULL,
    "messageName" text NOT NULL,
    "duration" double precision NOT NULL,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" bigint NOT NULL
);

--
-- Class MethodInfo as table serverpod_method
--
CREATE TABLE "serverpod_method" (
    "id" bigserial PRIMARY KEY,
    "endpoint" text NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_method_endpoint_method_idx" ON "serverpod_method" USING btree ("endpoint", "method");

--
-- Class DatabaseMigrationVersion as table serverpod_migrations
--
CREATE TABLE "serverpod_migrations" (
    "id" bigserial PRIMARY KEY,
    "module" text NOT NULL,
    "version" text NOT NULL,
    "timestamp" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_migrations_ids" ON "serverpod_migrations" USING btree ("module");

--
-- Class QueryLogEntry as table serverpod_query_log
--
CREATE TABLE "serverpod_query_log" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "sessionLogId" bigint NOT NULL,
    "messageId" bigint,
    "query" text NOT NULL,
    "duration" double precision NOT NULL,
    "numRows" bigint,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_query_log_sessionLogId_idx" ON "serverpod_query_log" USING btree ("sessionLogId");

--
-- Class ReadWriteTestEntry as table serverpod_readwrite_test
--
CREATE TABLE "serverpod_readwrite_test" (
    "id" bigserial PRIMARY KEY,
    "number" bigint NOT NULL
);

--
-- Class RuntimeSettings as table serverpod_runtime_settings
--
CREATE TABLE "serverpod_runtime_settings" (
    "id" bigserial PRIMARY KEY,
    "logSettings" json NOT NULL,
    "logSettingsOverrides" json NOT NULL,
    "logServiceCalls" boolean NOT NULL,
    "logMalformedCalls" boolean NOT NULL
);

--
-- Class SessionLogEntry as table serverpod_session_log
--
CREATE TABLE "serverpod_session_log" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "module" text,
    "endpoint" text,
    "method" text,
    "duration" double precision,
    "numQueries" bigint,
    "slow" boolean,
    "error" text,
    "stackTrace" text,
    "authenticatedUserId" bigint,
    "isOpen" boolean,
    "touched" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_session_log_serverid_idx" ON "serverpod_session_log" USING btree ("serverId");
CREATE INDEX "serverpod_session_log_touched_idx" ON "serverpod_session_log" USING btree ("touched");
CREATE INDEX "serverpod_session_log_isopen_idx" ON "serverpod_session_log" USING btree ("isOpen");

--
-- Foreign relations for "achievement_categories" table
--
ALTER TABLE ONLY "achievement_categories"
    ADD CONSTRAINT "achievement_categories_fk_0"
    FOREIGN KEY("categoryId")
    REFERENCES "texts"("id")
    ON DELETE SET NULL
    ON UPDATE CASCADE;

--
-- Foreign relations for "achievements" table
--
ALTER TABLE ONLY "achievements"
    ADD CONSTRAINT "achievements_fk_0"
    FOREIGN KEY("titleId")
    REFERENCES "texts"("id")
    ON DELETE SET NULL
    ON UPDATE CASCADE;
ALTER TABLE ONLY "achievements"
    ADD CONSTRAINT "achievements_fk_1"
    FOREIGN KEY("descriptionId")
    REFERENCES "texts"("id")
    ON DELETE SET NULL
    ON UPDATE CASCADE;
ALTER TABLE ONLY "achievements"
    ADD CONSTRAINT "achievements_fk_2"
    FOREIGN KEY("categoryId")
    REFERENCES "achievement_categories"("id")
    ON DELETE SET NULL
    ON UPDATE CASCADE;
ALTER TABLE ONLY "achievements"
    ADD CONSTRAINT "achievements_fk_3"
    FOREIGN KEY("_achievementCategoriesAchievementsAchievementCategoriesId")
    REFERENCES "achievement_categories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "completed_achievements" table
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
-- Foreign relations for "rule_categories" table
--
ALTER TABLE ONLY "rule_categories"
    ADD CONSTRAINT "rule_categories_fk_0"
    FOREIGN KEY("titleId")
    REFERENCES "texts"("id")
    ON DELETE SET NULL
    ON UPDATE CASCADE;
ALTER TABLE ONLY "rule_categories"
    ADD CONSTRAINT "rule_categories_fk_1"
    FOREIGN KEY("prologueId")
    REFERENCES "texts"("id")
    ON DELETE SET NULL
    ON UPDATE CASCADE;
ALTER TABLE ONLY "rule_categories"
    ADD CONSTRAINT "rule_categories_fk_2"
    FOREIGN KEY("epilogueId")
    REFERENCES "texts"("id")
    ON DELETE SET NULL
    ON UPDATE CASCADE;

--
-- Foreign relations for "rules" table
--
ALTER TABLE ONLY "rules"
    ADD CONSTRAINT "rules_fk_0"
    FOREIGN KEY("titleId")
    REFERENCES "texts"("id")
    ON DELETE SET NULL
    ON UPDATE CASCADE;
ALTER TABLE ONLY "rules"
    ADD CONSTRAINT "rules_fk_1"
    FOREIGN KEY("descriptionId")
    REFERENCES "texts"("id")
    ON DELETE SET NULL
    ON UPDATE CASCADE;
ALTER TABLE ONLY "rules"
    ADD CONSTRAINT "rules_fk_2"
    FOREIGN KEY("ruleCategoryId")
    REFERENCES "rule_categories"("id")
    ON DELETE SET NULL
    ON UPDATE CASCADE;
ALTER TABLE ONLY "rules"
    ADD CONSTRAINT "rules_fk_3"
    FOREIGN KEY("_ruleCategoriesRulesRuleCategoriesId")
    REFERENCES "rule_categories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "translations" table
--
ALTER TABLE ONLY "translations"
    ADD CONSTRAINT "translations_fk_0"
    FOREIGN KEY("textId")
    REFERENCES "texts"("id")
    ON DELETE CASCADE
    ON UPDATE CASCADE;
ALTER TABLE ONLY "translations"
    ADD CONSTRAINT "translations_fk_1"
    FOREIGN KEY("_textsTranslationsTextsId")
    REFERENCES "texts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_log" table
--
ALTER TABLE ONLY "serverpod_log"
    ADD CONSTRAINT "serverpod_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_message_log" table
--
ALTER TABLE ONLY "serverpod_message_log"
    ADD CONSTRAINT "serverpod_message_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_query_log" table
--
ALTER TABLE ONLY "serverpod_query_log"
    ADD CONSTRAINT "serverpod_query_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
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

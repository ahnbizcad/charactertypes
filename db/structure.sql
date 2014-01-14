CREATE TABLE "characters" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "declarations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "character_id" integer, "personality_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "personalities" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "stype" varchar(255), "mtype" varchar(255), "quadra" varchar(255), "cf1" varchar(255), "cf2" varchar(255), "cf3" varchar(255), "cf4" varchar(255), "cf5" varchar(255), "cf6" varchar(255), "cf7" varchar(255), "cf8" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "personality_types" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "stype" varchar(255), "mtype" varchar(255), "cf1" varchar(255), "cf2" varchar(255), "cf3" varchar(255), "cf4" varchar(255), "cf5" varchar(255), "cf6" varchar(255), "cf7" varchar(255), "cf8" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "shows" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "year" integer, "show_type" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20140101182045');

INSERT INTO schema_migrations (version) VALUES ('20140102181817');

INSERT INTO schema_migrations (version) VALUES ('20140102181905');

INSERT INTO schema_migrations (version) VALUES ('20140104120851');

INSERT INTO schema_migrations (version) VALUES ('20140104164843');

INSERT INTO schema_migrations (version) VALUES ('20140104165326');

INSERT INTO schema_migrations (version) VALUES ('20140104171116');

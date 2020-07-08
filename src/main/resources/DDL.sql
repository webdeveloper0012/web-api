CREATE TABLE "public"."roles" ("id" UUID NOT NULL, "name" CHARACTER VARYING(60), PRIMARY KEY ("id"), CONSTRAINT "uk_nb4h0p6txrmfc0xbrd1kglp9t" UNIQUE ("name"));
CREATE TABLE "public"."user_roles" ("user_id" UUID NOT NULL, "role_id" UUID NOT NULL, PRIMARY KEY ("user_id", "role_id"));
CREATE TABLE "public"."users" ("id" UUID NOT NULL, "created_at" TIMESTAMP(6) WITHOUT TIME ZONE, "updated_at" TIMESTAMP(6) WITHOUT TIME ZONE, "email" CHARACTER VARYING(40), "name" CHARACTER VARYING(40), "password" CHARACTER VARYING(100), "username" CHARACTER VARYING(15), PRIMARY KEY ("id"), CONSTRAINT "ukr43af9ap4edm43mmtq01oddj6" UNIQUE ("username"), CONSTRAINT "uk6dotkott2kjsp8vw4d0m25fb7" UNIQUE ("email"));
ALTER TABLE "public"."user_roles" ADD CONSTRAINT "fkh8ciramu9cc9q3qcqiv4ue8a6" FOREIGN KEY ("role_id") REFERENCES "webapischool"."public"."roles" ("id");
ALTER TABLE "public"."user_roles" ADD CONSTRAINT "fkhfh9dx7w3ubf1co1vdev94g3f" FOREIGN KEY ("user_id") REFERENCES "webapischool"."public"."users" ("id");
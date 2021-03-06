﻿-- =============================================================================
-- Diagram Name: 47rest
-- Created on: 4/17/2018 4:45:14 PM
-- Diagram Version: 
-- =============================================================================

CREATE TABLE "obj_user" (
	"id_user" SERIAL NOT NULL,
	"user_email" varchar NOT NULL,
	"user_name" varchar NOT NULL,
	"user_password" varchar NOT NULL,
	CONSTRAINT "obj_user_pkey" PRIMARY KEY("id_user")
)
WITH (
	OIDS = False
);

CREATE UNIQUE INDEX "idx_user_email" ON "obj_user" (
	"user_email"
);


COMMENT ON TABLE "obj_user" IS 'Пользователи';

CREATE TABLE "aggr_bills" (
	"id_bills" BIGSERIAL NOT NULL,
	"bills_count" int8 NOT NULL,
	"bills_amount" float8 NOT NULL,
	"bills_paid_count" int8 NOT NULL,
	"bills_paid_amount" float8 NOT NULL,
	"bills_add_timestamp" timestamp with time zone NOT NULL,
	PRIMARY KEY("id_bills"),
	CONSTRAINT "constr_bills_add_timestamp_unique" UNIQUE("bills_add_timestamp")
);


insert into public.obj_user(user_email, user_name, user_password)
values ('candidate@e.ru', 'candidate', 'dda18a0e21ae47c53b4309434cbc02ae8bf764fa83a6defbb719431242722aa7');

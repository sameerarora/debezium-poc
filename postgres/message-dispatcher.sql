--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.9
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
CREATE TABLE IF NOT EXISTS public.messages
(
    id uuid NOT NULL,
    part_id bigint NOT NULL,
    program_id uuid NOT NULL,
    priority bigint,
    text text COLLATE pg_catalog."default" NOT NULL,
    sent_message_source jsonb,
    contact_id uuid NOT NULL,
    recipient_phone character varying(15) COLLATE pg_catalog."default" NOT NULL,
    program_phone character varying COLLATE pg_catalog."default" NOT NULL,
    aggregator character varying COLLATE pg_catalog."default",
    scheduled_time timestamp without time zone NOT NULL,
    created_at timestamp without time zone NOT NULL,
    message_timestamp timestamp without time zone NOT NULL,
    media character varying[] COLLATE pg_catalog."default",
    presta_id uuid NOT NULL,
    status character varying COLLATE pg_catalog."default" NOT NULL,
    aggregator_response_id character varying COLLATE pg_catalog."default",
    sent_at timestamp without time zone,
    status_code bigint,
    CONSTRAINT messages_pkey PRIMARY KEY (id)
    )

    TABLESPACE pg_default;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

-- Table: public.messages

-- DROP TABLE public.messages;

SELECT pg_catalog.set_config('search_path', '', false);

-- Table: public.commands

-- DROP TABLE public.commands;

CREATE TABLE IF NOT EXISTS public.commands
(
    id uuid NOT NULL,
    payload jsonb NOT NULL,
    CONSTRAINT commands_pkey PRIMARY KEY (id)
    )

    TABLESPACE pg_default;

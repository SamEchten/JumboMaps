--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-06-05 14:06:00

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "JumboMaps";
--
-- TOC entry 3350 (class 1262 OID 16388)
-- Name: JumboMaps; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "JumboMaps" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Dutch_Netherlands.1252';


ALTER DATABASE "JumboMaps" OWNER TO postgres;

\connect "JumboMaps"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3351 (class 0 OID 0)
-- Dependencies: 3350
-- Name: DATABASE "JumboMaps"; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE "JumboMaps" IS 'C# 2';


--
-- TOC entry 6 (class 2615 OID 16389)
-- Name: default; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "default";


ALTER SCHEMA "default" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 16448)
-- Name: Customers; Type: TABLE; Schema: default; Owner: postgres
--

CREATE TABLE "default"."Customers" (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE "default"."Customers" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16397)
-- Name: blueprints; Type: TABLE; Schema: default; Owner: postgres
--

CREATE TABLE "default".blueprints (
    id integer NOT NULL,
    background character varying
);


ALTER TABLE "default".blueprints OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16407)
-- Name: products; Type: TABLE; Schema: default; Owner: postgres
--

CREATE TABLE "default".products (
    id integer NOT NULL,
    name character varying,
    image character varying,
    description character varying,
    section integer
);


ALTER TABLE "default".products OWNER TO postgres;

--
-- TOC entry 3352 (class 0 OID 0)
-- Dependencies: 217
-- Name: COLUMN products.id; Type: COMMENT; Schema: default; Owner: postgres
--

COMMENT ON COLUMN "default".products.id IS 'barcode';


--
-- TOC entry 215 (class 1259 OID 16390)
-- Name: sectionPositions; Type: TABLE; Schema: default; Owner: postgres
--

CREATE TABLE "default"."sectionPositions" (
    id integer NOT NULL,
    blueprint integer,
    "topLeft" integer[],
    "topRight" integer[],
    "bottomLeft" integer[],
    "bottomRight" integer[]
);


ALTER TABLE "default"."sectionPositions" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16435)
-- Name: sectionPositions_id_seq; Type: SEQUENCE; Schema: default; Owner: postgres
--

ALTER TABLE "default"."sectionPositions" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "default"."sectionPositions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16423)
-- Name: sections; Type: TABLE; Schema: default; Owner: postgres
--

CREATE TABLE "default".sections (
    id integer NOT NULL,
    name character varying,
    location integer[]
);


ALTER TABLE "default".sections OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16422)
-- Name: section_id_seq; Type: SEQUENCE; Schema: default; Owner: postgres
--

ALTER TABLE "default".sections ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "default".section_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3200 (class 2606 OID 16454)
-- Name: Customers Customers_pkey; Type: CONSTRAINT; Schema: default; Owner: postgres
--

ALTER TABLE ONLY "default"."Customers"
    ADD CONSTRAINT "Customers_pkey" PRIMARY KEY (id);


--
-- TOC entry 3194 (class 2606 OID 16401)
-- Name: blueprints blueprints_pkey; Type: CONSTRAINT; Schema: default; Owner: postgres
--

ALTER TABLE ONLY "default".blueprints
    ADD CONSTRAINT blueprints_pkey PRIMARY KEY (id);


--
-- TOC entry 3196 (class 2606 OID 16413)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: default; Owner: postgres
--

ALTER TABLE ONLY "default".products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3192 (class 2606 OID 16442)
-- Name: sectionPositions sectionPositions_pkey; Type: CONSTRAINT; Schema: default; Owner: postgres
--

ALTER TABLE ONLY "default"."sectionPositions"
    ADD CONSTRAINT "sectionPositions_pkey" PRIMARY KEY (id);


--
-- TOC entry 3198 (class 2606 OID 16429)
-- Name: sections section_pkey; Type: CONSTRAINT; Schema: default; Owner: postgres
--

ALTER TABLE ONLY "default".sections
    ADD CONSTRAINT section_pkey PRIMARY KEY (id);


--
-- TOC entry 3201 (class 2606 OID 16443)
-- Name: sectionPositions blueprint_FK; Type: FK CONSTRAINT; Schema: default; Owner: postgres
--

ALTER TABLE ONLY "default"."sectionPositions"
    ADD CONSTRAINT "blueprint_FK" FOREIGN KEY (blueprint) REFERENCES "default".blueprints(id) NOT VALID;


--
-- TOC entry 3202 (class 2606 OID 16430)
-- Name: products section_FK; Type: FK CONSTRAINT; Schema: default; Owner: postgres
--

ALTER TABLE ONLY "default".products
    ADD CONSTRAINT "section_FK" FOREIGN KEY (section) REFERENCES "default".sections(id) NOT VALID;


-- Completed on 2023-06-05 14:06:01

--
-- PostgreSQL database dump complete
--


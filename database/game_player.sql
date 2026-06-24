--
-- PostgreSQL database dump
--

\restrict 8rdYMmdgLgaMW5adrhFf7xZq7n1GGtvJgm33eSJBlyjVYk4ShTjwDn2XhJ6qgKb

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

-- Started on 2026-06-24 22:24:22

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16409)
-- Name: players; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.players (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(100) NOT NULL,
    wins integer DEFAULT 0,
    losses integer DEFAULT 0,
    draws integer DEFAULT 0,
    score integer DEFAULT 0
);


ALTER TABLE public.players OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16408)
-- Name: players_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.players_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.players_id_seq OWNER TO postgres;

--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 219
-- Name: players_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.players_id_seq OWNED BY public.players.id;


--
-- TOC entry 4755 (class 2604 OID 16412)
-- Name: players id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players ALTER COLUMN id SET DEFAULT nextval('public.players_id_seq'::regclass);


--
-- TOC entry 4914 (class 0 OID 16409)
-- Dependencies: 220
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.players (id, username, password, wins, losses, draws, score) FROM stdin;
2	Chandika	1	0	0	0	0
3	Mike	1	0	0	0	0
4	Husein	1	200	5	2	2000
5	Akbar	1	2	5	2	20
6	Ega	1	2	5	2	20
1	Evan	1	22	4	2	226
\.


--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 219
-- Name: players_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.players_id_seq', 6, true);


--
-- TOC entry 4761 (class 2606 OID 16421)
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);


--
-- TOC entry 4763 (class 2606 OID 16423)
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- TOC entry 4765 (class 2606 OID 16431)
-- Name: players unique_username; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT unique_username UNIQUE (username);


-- Completed on 2026-06-24 22:24:22

--
-- PostgreSQL database dump complete
--

\unrestrict 8rdYMmdgLgaMW5adrhFf7xZq7n1GGtvJgm33eSJBlyjVYk4ShTjwDn2XhJ6qgKb


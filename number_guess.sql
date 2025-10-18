--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying NOT NULL,
    game_played integer DEFAULT 0,
    best_game integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'p', 0, 0);
INSERT INTO public.users VALUES (3, 'user_1760744906585', 0, 0);
INSERT INTO public.users VALUES (4, 'user_1760744906584', 0, 0);
INSERT INTO public.users VALUES (5, 'user_1760744929847', 0, 0);
INSERT INTO public.users VALUES (6, 'user_1760744929846', 0, 0);
INSERT INTO public.users VALUES (7, 'user_1760744972155', 0, 0);
INSERT INTO public.users VALUES (8, 'user_1760744972154', 0, 0);
INSERT INTO public.users VALUES (9, 'user_1760745070528', 0, 0);
INSERT INTO public.users VALUES (10, 'user_1760745070527', 0, 0);
INSERT INTO public.users VALUES (11, 'user_1760746631105', 0, 0);
INSERT INTO public.users VALUES (12, 'user_1760746631104', 0, 0);
INSERT INTO public.users VALUES (13, 'user_1760746968263', 0, 0);
INSERT INTO public.users VALUES (14, 'user_1760746968262', 0, 0);
INSERT INTO public.users VALUES (15, 'ty', 0, 0);
INSERT INTO public.users VALUES (16, 'ee', 0, 0);
INSERT INTO public.users VALUES (17, 'rr', 0, 0);
INSERT INTO public.users VALUES (18, 'user_1760747391198', 0, 0);
INSERT INTO public.users VALUES (19, 'user_1760747391197', 0, 0);
INSERT INTO public.users VALUES (21, 'user_1760748213277', 1, 463);
INSERT INTO public.users VALUES (42, 'user_1760751289943', 2, 177);
INSERT INTO public.users VALUES (41, 'user_1760751289944', 5, 113);
INSERT INTO public.users VALUES (20, 'user_1760748213278', 4, 421);
INSERT INTO public.users VALUES (23, 'user_1760748259663', 1, 111);
INSERT INTO public.users VALUES (44, 'user_1760751327402', 2, 116);
INSERT INTO public.users VALUES (22, 'user_1760748259664', 4, 611);
INSERT INTO public.users VALUES (43, 'user_1760751327403', 5, 123);
INSERT INTO public.users VALUES (24, 'user_1760749906766', 0, 0);
INSERT INTO public.users VALUES (25, 'user_1760749906765', 0, 0);
INSERT INTO public.users VALUES (26, 'user_1760749997384', 0, 0);
INSERT INTO public.users VALUES (27, 'user_1760749997383', 0, 0);
INSERT INTO public.users VALUES (28, '446', 0, 0);
INSERT INTO public.users VALUES (29, 'user_1760750851050', 0, 0);
INSERT INTO public.users VALUES (30, 'user_1760750851049', 0, 0);
INSERT INTO public.users VALUES (1, 'r', 25, 1);
INSERT INTO public.users VALUES (31, 'user_1760750948228', 0, 0);
INSERT INTO public.users VALUES (32, 'user_1760750948227', 0, 0);
INSERT INTO public.users VALUES (33, 'user_1760750952230', 0, 0);
INSERT INTO public.users VALUES (34, 'user_1760750952229', 0, 0);
INSERT INTO public.users VALUES (35, 'kk', 0, 0);
INSERT INTO public.users VALUES (36, 'ok', 0, 0);
INSERT INTO public.users VALUES (37, 'user_1760751046353', 0, 0);
INSERT INTO public.users VALUES (38, 'user_1760751046352', 0, 0);
INSERT INTO public.users VALUES (40, 'user_1760751223223', 2, 476);
INSERT INTO public.users VALUES (39, 'user_1760751223224', 5, 47);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 44, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 859);
INSERT INTO public.games VALUES (2, 1, 592);
INSERT INTO public.games VALUES (3, 2, 515);
INSERT INTO public.games VALUES (4, 2, 355);
INSERT INTO public.games VALUES (5, 1, 687);
INSERT INTO public.games VALUES (6, 1, 887);
INSERT INTO public.games VALUES (7, 1, 640);
INSERT INTO public.games VALUES (8, 3, 218);
INSERT INTO public.games VALUES (9, 3, 539);
INSERT INTO public.games VALUES (10, 4, 411);
INSERT INTO public.games VALUES (11, 4, 234);
INSERT INTO public.games VALUES (12, 3, 233);
INSERT INTO public.games VALUES (13, 3, 97);
INSERT INTO public.games VALUES (14, 3, 588);
INSERT INTO public.games VALUES (15, 5, 692);
INSERT INTO public.games VALUES (16, 5, 680);
INSERT INTO public.games VALUES (17, 6, 235);
INSERT INTO public.games VALUES (18, 6, 266);
INSERT INTO public.games VALUES (19, 5, 665);
INSERT INTO public.games VALUES (20, 5, 339);
INSERT INTO public.games VALUES (21, 5, 265);
INSERT INTO public.games VALUES (22, 7, 10);
INSERT INTO public.games VALUES (23, 8, 45);
INSERT INTO public.games VALUES (24, 8, 749);
INSERT INTO public.games VALUES (25, 9, 674);
INSERT INTO public.games VALUES (26, 9, 267);
INSERT INTO public.games VALUES (27, 8, 166);
INSERT INTO public.games VALUES (28, 8, 150);
INSERT INTO public.games VALUES (29, 8, 645);
INSERT INTO public.games VALUES (30, 7, 9);
INSERT INTO public.games VALUES (31, 10, 417);
INSERT INTO public.games VALUES (32, 10, 541);
INSERT INTO public.games VALUES (33, 11, 542);
INSERT INTO public.games VALUES (34, 11, 709);
INSERT INTO public.games VALUES (35, 10, 771);
INSERT INTO public.games VALUES (36, 10, 8);
INSERT INTO public.games VALUES (37, 10, 238);
INSERT INTO public.games VALUES (38, 12, 472);
INSERT INTO public.games VALUES (39, 12, 467);
INSERT INTO public.games VALUES (40, 13, 812);
INSERT INTO public.games VALUES (41, 13, 81);
INSERT INTO public.games VALUES (42, 12, 65);
INSERT INTO public.games VALUES (43, 12, 684);
INSERT INTO public.games VALUES (44, 12, 168);
INSERT INTO public.games VALUES (45, 14, 105);
INSERT INTO public.games VALUES (46, 14, 555);
INSERT INTO public.games VALUES (47, 15, 708);
INSERT INTO public.games VALUES (48, 15, 627);
INSERT INTO public.games VALUES (49, 14, 1000);
INSERT INTO public.games VALUES (50, 14, 863);
INSERT INTO public.games VALUES (51, 14, 737);
INSERT INTO public.games VALUES (52, 16, 253);
INSERT INTO public.games VALUES (53, 16, 166);
INSERT INTO public.games VALUES (54, 17, 389);
INSERT INTO public.games VALUES (55, 17, 773);
INSERT INTO public.games VALUES (56, 16, 501);
INSERT INTO public.games VALUES (57, 16, 631);
INSERT INTO public.games VALUES (58, 16, 735);
INSERT INTO public.games VALUES (59, 18, 291);
INSERT INTO public.games VALUES (60, 18, 990);
INSERT INTO public.games VALUES (61, 19, 277);
INSERT INTO public.games VALUES (62, 19, 909);
INSERT INTO public.games VALUES (63, 18, 617);
INSERT INTO public.games VALUES (64, 18, 351);
INSERT INTO public.games VALUES (65, 18, 268);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1748343538498');
INSERT INTO public.users VALUES (2, 'user_1748343538497');
INSERT INTO public.users VALUES (3, 'user_1748343613555');
INSERT INTO public.users VALUES (4, 'user_1748343613554');
INSERT INTO public.users VALUES (5, 'user_1748343683233');
INSERT INTO public.users VALUES (6, 'user_1748343683232');
INSERT INTO public.users VALUES (7, 'ireneo');
INSERT INTO public.users VALUES (8, 'user_1748343773940');
INSERT INTO public.users VALUES (9, 'user_1748343773939');
INSERT INTO public.users VALUES (10, 'user_1748343860126');
INSERT INTO public.users VALUES (11, 'user_1748343860125');
INSERT INTO public.users VALUES (12, 'user_1748343911318');
INSERT INTO public.users VALUES (13, 'user_1748343911317');
INSERT INTO public.users VALUES (14, 'user_1748344030617');
INSERT INTO public.users VALUES (15, 'user_1748344030616');
INSERT INTO public.users VALUES (16, 'user_1748344196617');
INSERT INTO public.users VALUES (17, 'user_1748344196616');
INSERT INTO public.users VALUES (18, 'user_1748344271600');
INSERT INTO public.users VALUES (19, 'user_1748344271599');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 65, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 19, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


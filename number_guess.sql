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
    username character varying(22) NOT NULL,
    game_id integer NOT NULL,
    tries integer NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES ('Andrei', 1, 3);
INSERT INTO public.games VALUES ('Andrei', 2, 4);
INSERT INTO public.games VALUES ('Andrei', 3, 2);
INSERT INTO public.games VALUES ('Andrei', 4, 2);
INSERT INTO public.games VALUES ('Andu', 5, 5);
INSERT INTO public.games VALUES ('Andrei', 7, 1);
INSERT INTO public.games VALUES ('user_1713382419304', 8, 781);
INSERT INTO public.games VALUES ('user_1713382419304', 9, 562);
INSERT INTO public.games VALUES ('user_1713382419303', 10, 398);
INSERT INTO public.games VALUES ('user_1713382419303', 11, 540);
INSERT INTO public.games VALUES ('user_1713382419304', 12, 763);
INSERT INTO public.games VALUES ('user_1713382419304', 13, 394);
INSERT INTO public.games VALUES ('user_1713382419304', 14, 981);
INSERT INTO public.games VALUES ('user_1713382710847', 15, 696);
INSERT INTO public.games VALUES ('user_1713382710847', 16, 7);
INSERT INTO public.games VALUES ('user_1713382710846', 17, 43);
INSERT INTO public.games VALUES ('user_1713382710846', 18, 610);
INSERT INTO public.games VALUES ('user_1713382710847', 19, 383);
INSERT INTO public.games VALUES ('user_1713382710847', 20, 283);
INSERT INTO public.games VALUES ('user_1713382710847', 21, 837);
INSERT INTO public.games VALUES ('user_1713382792297', 22, 349);
INSERT INTO public.games VALUES ('user_1713382792297', 23, 9);
INSERT INTO public.games VALUES ('user_1713382792296', 24, 461);
INSERT INTO public.games VALUES ('user_1713382792296', 25, 359);
INSERT INTO public.games VALUES ('user_1713382792297', 26, 130);
INSERT INTO public.games VALUES ('user_1713382792297', 27, 599);
INSERT INTO public.games VALUES ('user_1713382792297', 28, 982);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 28, true);


--
-- PostgreSQL database dump complete
--


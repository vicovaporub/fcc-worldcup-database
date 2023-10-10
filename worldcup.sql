--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (196, 2018, 'Final', 925, 924, 4, 2);
INSERT INTO public.games VALUES (197, 2018, 'Third Place', 927, 926, 2, 0);
INSERT INTO public.games VALUES (198, 2018, 'Semi-Final', 924, 926, 2, 1);
INSERT INTO public.games VALUES (199, 2018, 'Semi-Final', 925, 927, 1, 0);
INSERT INTO public.games VALUES (200, 2018, 'Quarter-Final', 924, 932, 3, 2);
INSERT INTO public.games VALUES (201, 2018, 'Quarter-Final', 926, 934, 2, 0);
INSERT INTO public.games VALUES (202, 2018, 'Quarter-Final', 927, 936, 2, 1);
INSERT INTO public.games VALUES (203, 2018, 'Quarter-Final', 925, 938, 2, 0);
INSERT INTO public.games VALUES (204, 2018, 'Eighth-Final', 926, 940, 2, 1);
INSERT INTO public.games VALUES (205, 2018, 'Eighth-Final', 934, 942, 1, 0);
INSERT INTO public.games VALUES (206, 2018, 'Eighth-Final', 927, 944, 3, 2);
INSERT INTO public.games VALUES (207, 2018, 'Eighth-Final', 936, 946, 2, 0);
INSERT INTO public.games VALUES (208, 2018, 'Eighth-Final', 924, 948, 2, 1);
INSERT INTO public.games VALUES (209, 2018, 'Eighth-Final', 932, 950, 2, 1);
INSERT INTO public.games VALUES (210, 2018, 'Eighth-Final', 938, 952, 2, 1);
INSERT INTO public.games VALUES (211, 2018, 'Eighth-Final', 925, 954, 4, 3);
INSERT INTO public.games VALUES (212, 2014, 'Final', 957, 954, 1, 0);
INSERT INTO public.games VALUES (213, 2014, 'Third Place', 959, 936, 3, 0);
INSERT INTO public.games VALUES (214, 2014, 'Semi-Final', 954, 959, 1, 0);
INSERT INTO public.games VALUES (215, 2014, 'Semi-Final', 957, 936, 7, 1);
INSERT INTO public.games VALUES (216, 2014, 'Quarter-Final', 959, 964, 1, 0);
INSERT INTO public.games VALUES (217, 2014, 'Quarter-Final', 954, 927, 1, 0);
INSERT INTO public.games VALUES (218, 2014, 'Quarter-Final', 936, 940, 2, 1);
INSERT INTO public.games VALUES (219, 2014, 'Quarter-Final', 957, 925, 1, 0);
INSERT INTO public.games VALUES (220, 2014, 'Eighth-Final', 936, 972, 2, 1);
INSERT INTO public.games VALUES (221, 2014, 'Eighth-Final', 940, 938, 2, 0);
INSERT INTO public.games VALUES (222, 2014, 'Eighth-Final', 925, 976, 2, 0);
INSERT INTO public.games VALUES (223, 2014, 'Eighth-Final', 957, 978, 2, 1);
INSERT INTO public.games VALUES (224, 2014, 'Eighth-Final', 959, 946, 2, 1);
INSERT INTO public.games VALUES (225, 2014, 'Eighth-Final', 964, 982, 2, 1);
INSERT INTO public.games VALUES (226, 2014, 'Eighth-Final', 954, 942, 1, 0);
INSERT INTO public.games VALUES (227, 2014, 'Eighth-Final', 927, 986, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (924, 'Croatia');
INSERT INTO public.teams VALUES (925, 'France');
INSERT INTO public.teams VALUES (926, 'England');
INSERT INTO public.teams VALUES (927, 'Belgium');
INSERT INTO public.teams VALUES (932, 'Russia');
INSERT INTO public.teams VALUES (934, 'Sweden');
INSERT INTO public.teams VALUES (936, 'Brazil');
INSERT INTO public.teams VALUES (938, 'Uruguay');
INSERT INTO public.teams VALUES (940, 'Colombia');
INSERT INTO public.teams VALUES (942, 'Switzerland');
INSERT INTO public.teams VALUES (944, 'Japan');
INSERT INTO public.teams VALUES (946, 'Mexico');
INSERT INTO public.teams VALUES (948, 'Denmark');
INSERT INTO public.teams VALUES (950, 'Spain');
INSERT INTO public.teams VALUES (952, 'Portugal');
INSERT INTO public.teams VALUES (954, 'Argentina');
INSERT INTO public.teams VALUES (957, 'Germany');
INSERT INTO public.teams VALUES (959, 'Netherlands');
INSERT INTO public.teams VALUES (964, 'Costa Rica');
INSERT INTO public.teams VALUES (972, 'Chile');
INSERT INTO public.teams VALUES (976, 'Nigeria');
INSERT INTO public.teams VALUES (978, 'Algeria');
INSERT INTO public.teams VALUES (982, 'Greece');
INSERT INTO public.teams VALUES (986, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 227, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 987, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


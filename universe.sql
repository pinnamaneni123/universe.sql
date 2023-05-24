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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    material text,
    has_life boolean,
    is_spherical boolean,
    distance numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.info (
    info_id integer NOT NULL,
    name character varying(20) NOT NULL,
    person_id integer,
    address text
);


ALTER TABLE public.info OWNER TO freecodecamp;

--
-- Name: info_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.info_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.info_info_id_seq OWNER TO freecodecamp;

--
-- Name: info_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.info_info_id_seq OWNED BY public.info.info_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    material text,
    has_life boolean,
    is_spherical boolean,
    distance numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    material text,
    has_life boolean,
    is_spherical boolean,
    distance numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    material text,
    has_life boolean,
    is_spherical boolean,
    distance numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: info info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info ALTER COLUMN info_id SET DEFAULT nextval('public.info_info_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 123, 789, 'solid', true, true, 123.87);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 765, 876, 'solid', true, true, 456.8);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 232, 852, 'solid', true, true, 422.8);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 344, 323, 'solid', true, true, 322.8);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 989, 676, 'solid', true, true, 878.6);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 999, 656, 'solid', true, true, 99.98);


--
-- Data for Name: info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.info VALUES (1, 'jupiter', 123, 'universal');
INSERT INTO public.info VALUES (2, 'satrun', 767, 'universal');
INSERT INTO public.info VALUES (3, 'earth', 909, 'universal');
INSERT INTO public.info VALUES (4, 'sun', 989, 'universal');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 77, 901, 'solid', true, true, 89.4, 1);
INSERT INTO public.moon VALUES (2, 'mmon2', 291, 345, 'solid', true, true, 99.5, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 177, 921, 'solid', true, true, 829.4, 3);
INSERT INTO public.moon VALUES (4, 'mmon4', 291, 345, 'solid', true, true, 199.5, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 187, 721, 'solid', true, true, 82.4, 5);
INSERT INTO public.moon VALUES (6, 'mmon6', 564, 676, 'solid', true, true, 159.5, 6);
INSERT INTO public.moon VALUES (7, 'moon7', 143, 121, 'solid', true, true, 812.4, 7);
INSERT INTO public.moon VALUES (8, 'mmon8', 124, 789, 'solid', true, true, 154.5, 8);
INSERT INTO public.moon VALUES (9, 'moon9', 145, 123, 'solid', true, true, 912.4, 9);
INSERT INTO public.moon VALUES (10, 'mmon10', 125, 689, 'solid', true, true, 134.5, 10);
INSERT INTO public.moon VALUES (11, 'moon11', 564, 153, 'solid', true, true, 92.4, 11);
INSERT INTO public.moon VALUES (12, 'mmon12', 225, 189, 'solid', true, true, 34.5, 12);
INSERT INTO public.moon VALUES (13, 'moon13', 234, 445, 'solid', true, true, 23.98, 1);
INSERT INTO public.moon VALUES (14, 'moon14', 989, 976, 'solid', true, true, 909.9, 2);
INSERT INTO public.moon VALUES (15, 'moon15', 264, 455, 'solid', true, true, 239.8, 3);
INSERT INTO public.moon VALUES (16, 'moon16', 990, 706, 'solid', true, true, 90.9, 4);
INSERT INTO public.moon VALUES (17, 'moon17', 111, 495, 'solid', true, true, 23.8, 5);
INSERT INTO public.moon VALUES (18, 'moon18', 990, 706, 'solid', true, true, 568.9, 6);
INSERT INTO public.moon VALUES (19, 'moon19', 110, 410, 'solid', true, true, 231.8, 7);
INSERT INTO public.moon VALUES (120, 'moon120', 910, 710, 'solid', true, true, 968.9, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 123, 343, 'solid', true, true, 354.6, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 423, 353, 'solid', true, true, 454.6, 2);
INSERT INTO public.planet VALUES (3, 'planet3', 9423, 653, 'solid', true, true, 454.4, 3);
INSERT INTO public.planet VALUES (4, 'planet4', 888, 853, 'solid', true, true, 454.4, 4);
INSERT INTO public.planet VALUES (5, 'planet5', 588, 553, 'solid', true, true, 454.4, 5);
INSERT INTO public.planet VALUES (6, 'planet6', 343, 356, 'solid', true, true, 345.5, 6);
INSERT INTO public.planet VALUES (7, 'planet7', 909, 989, 'solid', true, true, 45.4, 1);
INSERT INTO public.planet VALUES (8, 'planet8', 843, 808, 'solid', true, true, 388.5, 2);
INSERT INTO public.planet VALUES (9, 'planet9', 977, 976, 'solid', true, true, 989.4, 3);
INSERT INTO public.planet VALUES (10, 'planet10', 111, 999, 'solid', true, true, 988.5, 4);
INSERT INTO public.planet VALUES (11, 'planet11', 77, 901, 'solid', true, true, 89.4, 5);
INSERT INTO public.planet VALUES (12, 'planet12', 191, 345, 'solid', true, true, 99.5, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 332, 434, 'solid', true, true, 123.5, 1);
INSERT INTO public.star VALUES (2, 'star2', 456, 676, 'solid', true, true, 456.7, 2);
INSERT INTO public.star VALUES (3, 'star3', 676, 566, 'solid', true, true, 45.7, 3);
INSERT INTO public.star VALUES (4, 'star4', 198, 999, 'solid', true, true, 454.7, 4);
INSERT INTO public.star VALUES (5, 'star5', 333, 674, 'solid', true, true, 354.7, 5);
INSERT INTO public.star VALUES (6, 'star6', 333, 675, 'solid', true, true, 354.6, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: info_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.info_info_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: info info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_name_key UNIQUE (name);


--
-- Name: info info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_pkey PRIMARY KEY (info_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


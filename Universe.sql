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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroid_id_seq OWNED BY public.asteroids.asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    kiloparsecs_from_earth integer,
    diameter_in_kiloparsecs numeric(6,2),
    blackholes boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    orbit_time character varying(30),
    color character varying(10)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    km_from_earth bigint,
    orbit_time character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer NOT NULL,
    lightyears_from_earth integer,
    supergiant boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: asteroids asteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN asteroids_id SET DEFAULT nextval('public.asteroids_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, 'Ceres', '939.4 kilometers largest one to date');
INSERT INTO public.asteroids VALUES (2, 'Vesta', '525 kilometers can be seen with the naked eye');
INSERT INTO public.asteroids VALUES (3, 'Pallas', '513 kilometers originally considered a planet');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 765, 46.56, false);
INSERT INTO public.galaxy VALUES (2, 'Siamese Twins', 21000, 27.91, false);
INSERT INTO public.galaxy VALUES (3, 'Eye Of Sauron', 16, NULL, true);
INSERT INTO public.galaxy VALUES (4, 'Fireworks', 7, 12.26, true);
INSERT INTO public.galaxy VALUES (5, 'Malin 1', 366000, 76.65, false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 9550, 15.00, true);
INSERT INTO public.galaxy VALUES (7, 'Milky Way', NULL, 32.40, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Calisto', 5, '17 days', 'Acre');
INSERT INTO public.moon VALUES (2, 'Ganymede', 5, '7 days', 'Grey');
INSERT INTO public.moon VALUES (3, 'Europa', 5, '3.5 days', 'White');
INSERT INTO public.moon VALUES (4, 'IO', 5, '1.8 days', 'Yellow');
INSERT INTO public.moon VALUES (5, 'Calypso', 6, '45 hours', 'Grey');
INSERT INTO public.moon VALUES (6, 'Enceladus', 6, '32.9 hours', 'Light-Blue');
INSERT INTO public.moon VALUES (7, 'Titan', 6, '16 days', 'Yellow');
INSERT INTO public.moon VALUES (8, 'Mimas', 6, '22 hours', 'Grey');
INSERT INTO public.moon VALUES (9, 'Deimos', 4, '30 hours', 'Red');
INSERT INTO public.moon VALUES (10, 'Phobos', 4, 'Three Times a Day', 'Red');
INSERT INTO public.moon VALUES (11, 'Moon', 3, '27 days', 'Grey');
INSERT INTO public.moon VALUES (12, 'Ariel', 8, '60 hours', 'White');
INSERT INTO public.moon VALUES (13, 'Oberon', 8, '13 days', 'Brown');
INSERT INTO public.moon VALUES (14, 'Puck', 8, '18 hours', 'Grey');
INSERT INTO public.moon VALUES (15, 'Titania', 8, '209 hours', 'Grey');
INSERT INTO public.moon VALUES (16, 'Rosalind', 8, '13 hours', 'Light-Blue');
INSERT INTO public.moon VALUES (17, 'Triton', 7, '141 hours', 'White');
INSERT INTO public.moon VALUES (18, 'Hippocamp', 7, '23 hours', 'Grey');
INSERT INTO public.moon VALUES (19, 'Proteus', 7, '27 hours', 'Grey');
INSERT INTO public.moon VALUES (20, 'Larissa', 7, '13 hours', 'Light-Blue');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 6, 77000000, '87.97 days');
INSERT INTO public.planet VALUES (2, 'Venus', 6, 40000000, '243 days');
INSERT INTO public.planet VALUES (3, 'Earth', 6, 0, '365 days');
INSERT INTO public.planet VALUES (4, 'Mars', 6, 54600000, '687 days');
INSERT INTO public.planet VALUES (5, 'Jupiter', 6, 604910000, '12 years');
INSERT INTO public.planet VALUES (6, 'Saturn', 6, 1408800000, '29 Years');
INSERT INTO public.planet VALUES (7, 'Neptune', 6, 4348200000, '165 years');
INSERT INTO public.planet VALUES (8, 'Uranus', 6, 2804200000, '84 years');
INSERT INTO public.planet VALUES (9, 'HD 131399Ab', 1, NULL, '550 years');
INSERT INTO public.planet VALUES (10, 'Kepler-16B', 7, NULL, '229 days');
INSERT INTO public.planet VALUES (11, 'Kepler-452B', 8, NULL, '385 days');
INSERT INTO public.planet VALUES (12, 'Kepler-22B', 9, 635, '290 days');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Antares', 7, 550, false);
INSERT INTO public.star VALUES (4, 'VV Cephei A', 7, 4900, false);
INSERT INTO public.star VALUES (6, 'SUN', 7, NULL, false);
INSERT INTO public.star VALUES (7, 'Kepler-16A', 7, 245, false);
INSERT INTO public.star VALUES (8, 'Kepler-22', 7, 635, false);
INSERT INTO public.star VALUES (9, 'Kepler-452', 7, 1799, false);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 7, 643, true);
INSERT INTO public.star VALUES (3, 'KW Sagittarii', 7, 7800, true);
INSERT INTO public.star VALUES (5, 'Mu Cephei', 7, 6000, true);


--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroid_id_seq', 1, false);


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 1, false);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 1, false);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 1, false);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 1, true);


--
-- Name: asteroids asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


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
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_id_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


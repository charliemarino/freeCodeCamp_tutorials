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
    name character varying(30) NOT NULL,
    constellation character varying(60),
    also_known_as character varying(30),
    distance_from_earth numeric(7,3),
    galaxy_id integer NOT NULL,
    name1 character varying(30)
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    name character varying(30) NOT NULL,
    description text,
    galaxy_types_id integer NOT NULL,
    name1 character varying(30)
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    description character varying(60),
    age_in_millions_of_years numeric(4,1),
    is_spherical boolean,
    planet_id integer,
    moon_id integer NOT NULL,
    name1 character varying(30)
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    planet_id integer NOT NULL,
    number_of_moons integer,
    name1 character varying(30)
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
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric(4,1),
    galaxy_id integer,
    star_id integer NOT NULL,
    name1 character varying(30)
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES ('Antennae Galaxies', 'Corvus', 'NGC 4038/NGC 4039', 45.000, 2, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 'Andromeda', 'Messier 31, M31, NGC 224', 2.500, 1, NULL);
INSERT INTO public.galaxy VALUES ('Messier 81', 'Ursa Major', 'NGC 3031', 11.800, 3, NULL);
INSERT INTO public.galaxy VALUES ('Condor Galaxy', 'Pavo', 'NGC 6872', 212.000, 4, NULL);
INSERT INTO public.galaxy VALUES ('Milky Way', 'Sagittarius', NULL, 0.030, 5, NULL);
INSERT INTO public.galaxy VALUES ('Galaxy Bravo', NULL, 'The Mothership', 697.430, 6, NULL);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES ('Spiral', 'Galaxies resembling spiral pinwheels', 1, NULL);
INSERT INTO public.galaxy_types VALUES ('Elliptical', 'Galaxies showing an ellipsoidal profile', 2, NULL);
INSERT INTO public.galaxy_types VALUES ('Irregular', 'Galaxies that cannot be readily classified as elliptical or spiral', 3, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('The Moon', NULL, NULL, true, 1, 1, NULL);
INSERT INTO public.moon VALUES ('Io', NULL, NULL, true, 3, 2, NULL);
INSERT INTO public.moon VALUES ('Phobos', NULL, NULL, false, 2, 3, NULL);
INSERT INTO public.moon VALUES ('Deimos', NULL, NULL, false, 2, 4, NULL);
INSERT INTO public.moon VALUES ('Europa', NULL, NULL, true, 3, 5, NULL);
INSERT INTO public.moon VALUES ('Ganymede', NULL, NULL, true, 3, 6, NULL);
INSERT INTO public.moon VALUES ('Callisto', NULL, NULL, true, 3, 7, NULL);
INSERT INTO public.moon VALUES ('Themisto', NULL, NULL, true, 3, 8, NULL);
INSERT INTO public.moon VALUES ('Leda', NULL, NULL, true, 3, 9, NULL);
INSERT INTO public.moon VALUES ('Ersa', NULL, NULL, true, 3, 10, NULL);
INSERT INTO public.moon VALUES ('Himalia', NULL, NULL, true, 3, 11, NULL);
INSERT INTO public.moon VALUES ('Pandia', NULL, NULL, true, 3, 12, NULL);
INSERT INTO public.moon VALUES ('Lysithea', NULL, NULL, true, 3, 13, NULL);
INSERT INTO public.moon VALUES ('Elara', NULL, NULL, true, 3, 14, NULL);
INSERT INTO public.moon VALUES ('Titan', NULL, NULL, true, 6, 15, NULL);
INSERT INTO public.moon VALUES ('Rhea', NULL, NULL, true, 6, 16, NULL);
INSERT INTO public.moon VALUES ('Phoebe', NULL, NULL, false, 6, 17, NULL);
INSERT INTO public.moon VALUES ('Prometheus', NULL, NULL, false, 6, 18, NULL);
INSERT INTO public.moon VALUES ('Pandora', NULL, NULL, false, 6, 19, NULL);
INSERT INTO public.moon VALUES ('Janus', NULL, NULL, false, 6, 20, NULL);
INSERT INTO public.moon VALUES ('Atlas', NULL, NULL, false, 6, 21, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Jupiter', 'Largest planet in our solar system', false, NULL, NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES ('Venus', 'Second planet closest to the Sun', false, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.planet VALUES ('Saturn', 'The ringed planet', false, NULL, NULL, 6, NULL, NULL);
INSERT INTO public.planet VALUES ('Uranus', 'Planet with a weird name', false, NULL, NULL, 7, NULL, NULL);
INSERT INTO public.planet VALUES ('Neptune', 'Another gassy giant', false, NULL, NULL, 8, NULL, NULL);
INSERT INTO public.planet VALUES ('Pluto', 'Not actually a planet anymore', false, NULL, NULL, 9, NULL, NULL);
INSERT INTO public.planet VALUES ('Planet A', NULL, false, NULL, NULL, 10, NULL, NULL);
INSERT INTO public.planet VALUES ('Planet B', NULL, false, NULL, NULL, 11, NULL, NULL);
INSERT INTO public.planet VALUES ('Planet C', NULL, false, NULL, NULL, 12, NULL, NULL);
INSERT INTO public.planet VALUES ('Planet D', NULL, true, NULL, NULL, 13, NULL, NULL);
INSERT INTO public.planet VALUES ('Earth', 'Home!', true, NULL, NULL, 1, 1, NULL);
INSERT INTO public.planet VALUES ('Mars', 'Red Planet', false, NULL, NULL, 2, 2, NULL);
INSERT INTO public.planet VALUES ('Mercury', 'Closest planet to the Sun', false, NULL, NULL, 4, 0, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('The Sun', 90000000, NULL, 5, 1, NULL);
INSERT INTO public.star VALUES ('Star A', NULL, NULL, 3, 2, NULL);
INSERT INTO public.star VALUES ('Star B', NULL, NULL, 3, 3, NULL);
INSERT INTO public.star VALUES ('Star C', NULL, NULL, 2, 4, NULL);
INSERT INTO public.star VALUES ('Star D', NULL, NULL, 2, 5, NULL);
INSERT INTO public.star VALUES ('Star E', NULL, NULL, 1, 6, NULL);
INSERT INTO public.star VALUES ('Star F', NULL, NULL, 1, 7, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name1_key UNIQUE (name1);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_name1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name1_key UNIQUE (name1);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_name1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name1_key UNIQUE (name1);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name1_key UNIQUE (name1);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name1_key UNIQUE (name1);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star host_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT host_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon host_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT host_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet host_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT host_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


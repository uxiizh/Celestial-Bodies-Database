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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(50),
    age integer NOT NULL,
    height numeric NOT NULL,
    email text,
    indian boolean
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50),
    age integer NOT NULL,
    email text,
    height numeric NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age integer NOT NULL,
    email text,
    height numeric,
    planet_id integer,
    indian boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age integer NOT NULL,
    email text,
    height numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age integer NOT NULL,
    email text,
    height numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'A', 2, 3, 'A', NULL);
INSERT INTO public.earth VALUES (2, 'B', 2, 4, 'B', NULL);
INSERT INTO public.earth VALUES (4, 'C', 2, 5, 'C', NULL);
INSERT INTO public.earth VALUES (5, 'D', 2, 6, 'D', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('a', 1, 's', 5, 1);
INSERT INTO public.galaxy VALUES ('a', 1, 'a', 5, 2);
INSERT INTO public.galaxy VALUES ('a', 1, 'b', 5, 3);
INSERT INTO public.galaxy VALUES ('a', 1, 'c', 5, 4);
INSERT INTO public.galaxy VALUES ('a', 1, 'd', 5, 5);
INSERT INTO public.galaxy VALUES ('a', 1, 'e', 5, 6);
INSERT INTO public.galaxy VALUES ('a', 1, 'f', 5, 7);
INSERT INTO public.galaxy VALUES ('a', 1, 'g', 5, 8);
INSERT INTO public.galaxy VALUES ('a', 1, 'h', 5, 9);
INSERT INTO public.galaxy VALUES ('a', 1, 'i', 5, 10);
INSERT INTO public.galaxy VALUES ('a', 1, 'j', 5, 11);
INSERT INTO public.galaxy VALUES ('a', 1, 'k', 5, 12);
INSERT INTO public.galaxy VALUES ('a', 1, 'l', 5, 13);
INSERT INTO public.galaxy VALUES ('a', 1, 'm', 5, 14);
INSERT INTO public.galaxy VALUES ('a', 1, 'n', 5, 15);
INSERT INTO public.galaxy VALUES ('a', 1, 'o', 5, 16);
INSERT INTO public.galaxy VALUES ('a', 1, 'p', 5, 17);
INSERT INTO public.galaxy VALUES ('a', 1, 'q', 5, 18);
INSERT INTO public.galaxy VALUES ('a', 1, 'r', 5, 19);
INSERT INTO public.galaxy VALUES ('a', 1, 's', 5, 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A', 2, 'A', 3, 1, NULL);
INSERT INTO public.moon VALUES (2, 'B', 2, 'B', 3, 2, NULL);
INSERT INTO public.moon VALUES (3, 'C', 2, 'C', 3, 3, NULL);
INSERT INTO public.moon VALUES (4, 'D', 2, 'D', 3, 4, NULL);
INSERT INTO public.moon VALUES (5, 'E', 2, 'E', 3, 5, NULL);
INSERT INTO public.moon VALUES (6, 'F', 2, 'F', 3, 6, NULL);
INSERT INTO public.moon VALUES (7, 'G', 2, 'G', 3, 7, NULL);
INSERT INTO public.moon VALUES (8, 'H', 2, 'H', 3, 8, NULL);
INSERT INTO public.moon VALUES (9, 'I', 2, 'I', 3, 9, NULL);
INSERT INTO public.moon VALUES (10, 'J', 2, 'J', 3, 10, NULL);
INSERT INTO public.moon VALUES (11, 'K', 2, 'K', 3, 11, NULL);
INSERT INTO public.moon VALUES (12, 'L', 2, 'L', 3, 12, NULL);
INSERT INTO public.moon VALUES (13, 'M', 2, 'M', 3, 13, NULL);
INSERT INTO public.moon VALUES (14, 'N', 2, 'N', 3, 14, NULL);
INSERT INTO public.moon VALUES (15, 'O', 2, 'O', 3, 15, NULL);
INSERT INTO public.moon VALUES (16, 'P', 2, 'P', 3, 16, NULL);
INSERT INTO public.moon VALUES (17, 'Q', 2, 'Q', 3, 17, NULL);
INSERT INTO public.moon VALUES (18, 'R', 2, 'R', 3, 18, NULL);
INSERT INTO public.moon VALUES (19, 'S', 2, 'S', 3, 19, NULL);
INSERT INTO public.moon VALUES (20, 'T', 2, 'T', 3, 20, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'A', 2, 'A', 1, 1);
INSERT INTO public.planet VALUES (2, 'B', 2, 'B', 1, 2);
INSERT INTO public.planet VALUES (3, 'C', 2, 'C', 1, 3);
INSERT INTO public.planet VALUES (4, 'D', 2, 'D', 1, 4);
INSERT INTO public.planet VALUES (5, 'E', 2, 'E', 1, 5);
INSERT INTO public.planet VALUES (6, 'F', 2, 'F', 1, 6);
INSERT INTO public.planet VALUES (7, 'G', 2, 'G', 1, 7);
INSERT INTO public.planet VALUES (8, 'H', 2, 'H', 1, 8);
INSERT INTO public.planet VALUES (9, 'I', 2, 'I', 1, 9);
INSERT INTO public.planet VALUES (10, 'J', 2, 'J', 1, 10);
INSERT INTO public.planet VALUES (11, 'K', 2, 'K', 1, 11);
INSERT INTO public.planet VALUES (12, 'L', 2, 'L', 1, 12);
INSERT INTO public.planet VALUES (13, 'M', 2, 'M', 1, 13);
INSERT INTO public.planet VALUES (14, 'N', 2, 'N', 1, 14);
INSERT INTO public.planet VALUES (15, 'O', 2, 'O', 1, 15);
INSERT INTO public.planet VALUES (16, 'P', 2, 'P', 1, 16);
INSERT INTO public.planet VALUES (17, 'Q', 2, 'Q', 1, 17);
INSERT INTO public.planet VALUES (18, 'R', 2, 'R', 1, 18);
INSERT INTO public.planet VALUES (19, 'S', 2, 'S', 1, 19);
INSERT INTO public.planet VALUES (20, 'T', 2, 'T', 1, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'S', 2, 'A', 4, 1);
INSERT INTO public.star VALUES (2, 'B', 2, 'B', 4, 2);
INSERT INTO public.star VALUES (3, 'C', 2, 'C', 4, 3);
INSERT INTO public.star VALUES (4, 'D', 2, 'D', 4, 4);
INSERT INTO public.star VALUES (5, 'E', 2, 'E', 4, 5);
INSERT INTO public.star VALUES (6, 'F', 2, 'F', 4, 6);
INSERT INTO public.star VALUES (7, 'G', 2, 'G', 4, 7);
INSERT INTO public.star VALUES (8, 'H', 2, 'H', 4, 8);
INSERT INTO public.star VALUES (9, 'I', 2, 'I', 4, 9);
INSERT INTO public.star VALUES (10, 'J', 2, 'J', 4, 10);
INSERT INTO public.star VALUES (11, 'K', 2, 'K', 4, 11);
INSERT INTO public.star VALUES (12, 'L', 2, 'L', 4, 12);
INSERT INTO public.star VALUES (13, 'M', 2, 'M', 4, 13);
INSERT INTO public.star VALUES (14, 'N', 2, 'N', 4, 14);
INSERT INTO public.star VALUES (15, 'O', 2, 'O', 4, 15);
INSERT INTO public.star VALUES (16, 'P', 2, 'P', 4, 16);
INSERT INTO public.star VALUES (17, 'Q', 2, 'Q', 4, 17);
INSERT INTO public.star VALUES (18, 'R', 2, 'R', 4, 18);
INSERT INTO public.star VALUES (19, 'T', 2, 'T', 4, 19);
INSERT INTO public.star VALUES (20, 'W', 2, 'W', 4, 20);


--
-- Name: earth earth_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_id UNIQUE (earth_id);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


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
    has_life boolean,
    galaxy_type character varying(40),
    name character varying(30) NOT NULL,
    radius integer,
    foreign_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_foreign_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_foreign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_foreign_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_foreign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_foreign_id_seq OWNED BY public.galaxy.foreign_id;


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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    description text,
    name character varying(30) NOT NULL,
    foreign_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_foreign_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_foreign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_foreign_id_seq OWNER TO freecodecamp;

--
-- Name: moon_foreign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_foreign_id_seq OWNED BY public.moon.foreign_id;


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
    has_life boolean,
    name character varying(30) NOT NULL,
    radius integer NOT NULL,
    description text,
    planet_id integer NOT NULL,
    distance_km numeric,
    foreign_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_foreign_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_foreign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_foreign_id_seq OWNER TO freecodecamp;

--
-- Name: planet_foreign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_foreign_id_seq OWNED BY public.planet.foreign_id;


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
    description text,
    age_in_millions_of_years numeric,
    distance integer,
    foreign_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_foreign_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_foreign_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_foreign_id_seq OWNER TO freecodecamp;

--
-- Name: star_foreign_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_foreign_id_seq OWNED BY public.star.foreign_id;


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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    description text,
    distance character varying(50),
    age_in_millions_of_years character varying(50),
    name character varying(50) NOT NULL
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy foreign_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN foreign_id SET DEFAULT nextval('public.galaxy_foreign_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon foreign_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN foreign_id SET DEFAULT nextval('public.moon_foreign_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet foreign_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN foreign_id SET DEFAULT nextval('public.planet_foreign_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star foreign_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN foreign_id SET DEFAULT nextval('public.star_foreign_id_seq'::regclass);


--
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, true, NULL, 'mauris', 20, 1);
INSERT INTO public.galaxy VALUES (2, false, NULL, 'blandit non', 71, 2);
INSERT INTO public.galaxy VALUES (3, true, NULL, 'aliquet', 21, 3);
INSERT INTO public.galaxy VALUES (4, false, 'justo in blandit', 'morbi vel lectus', 75, 4);
INSERT INTO public.galaxy VALUES (5, false, NULL, 'sed nisl', 87, 5);
INSERT INTO public.galaxy VALUES (6, false, NULL, 'justo sit amet', 74, 6);
INSERT INTO public.galaxy VALUES (7, false, NULL, 'erat', 60, 7);
INSERT INTO public.galaxy VALUES (8, false, NULL, 'erat eros', 67, 8);
INSERT INTO public.galaxy VALUES (9, false, 'condimentum neque', 'proin', 68, 9);
INSERT INTO public.galaxy VALUES (10, true, 'erat', 'turpis donec posuere', 38, 10);
INSERT INTO public.galaxy VALUES (11, false, 'est', 'a odio in', 46, 11);
INSERT INTO public.galaxy VALUES (12, true, 'dictumst', 'mauris laoreet ut', 77, 12);
INSERT INTO public.galaxy VALUES (13, false, NULL, 'dis parturient', 42, 13);
INSERT INTO public.galaxy VALUES (14, false, 'congue', 'tristique fusce congue', 87, 14);
INSERT INTO public.galaxy VALUES (15, true, 'vel enim sit', 'venenatis', 85, 15);
INSERT INTO public.galaxy VALUES (16, true, 'sapien', 'aliquet', 56, 16);
INSERT INTO public.galaxy VALUES (17, true, NULL, 'interdum mauris ullamcorper', 47, 17);
INSERT INTO public.galaxy VALUES (18, false, NULL, 'placerat', 81, 18);
INSERT INTO public.galaxy VALUES (19, false, NULL, 'at nunc', 61, 19);
INSERT INTO public.galaxy VALUES (20, false, NULL, 'lacinia nisi', 61, 20);
INSERT INTO public.galaxy VALUES (21, true, NULL, 'mauris', 20, 21);
INSERT INTO public.galaxy VALUES (22, false, NULL, 'blandit non', 71, 22);
INSERT INTO public.galaxy VALUES (23, true, NULL, 'aliquet', 21, 23);
INSERT INTO public.galaxy VALUES (24, false, 'justo in blandit', 'morbi vel lectus', 75, 24);
INSERT INTO public.galaxy VALUES (25, false, NULL, 'sed nisl', 87, 25);
INSERT INTO public.galaxy VALUES (26, false, NULL, 'justo sit amet', 74, 26);
INSERT INTO public.galaxy VALUES (27, false, NULL, 'erat', 60, 27);
INSERT INTO public.galaxy VALUES (28, false, NULL, 'erat eros', 67, 28);
INSERT INTO public.galaxy VALUES (29, false, 'condimentum neque', 'proin', 68, 29);
INSERT INTO public.galaxy VALUES (30, true, 'erat', 'turpis donec posuere', 38, 30);
INSERT INTO public.galaxy VALUES (31, false, 'est', 'a odio in', 46, 31);
INSERT INTO public.galaxy VALUES (32, true, 'dictumst', 'mauris laoreet ut', 77, 32);
INSERT INTO public.galaxy VALUES (33, false, NULL, 'dis parturient', 42, 33);
INSERT INTO public.galaxy VALUES (34, false, 'congue', 'tristique fusce congue', 87, 34);
INSERT INTO public.galaxy VALUES (35, true, 'vel enim sit', 'venenatis', 85, 35);
INSERT INTO public.galaxy VALUES (36, true, 'sapien', 'aliquet', 56, 36);
INSERT INTO public.galaxy VALUES (37, true, NULL, 'interdum mauris ullamcorper', 47, 37);
INSERT INTO public.galaxy VALUES (38, false, NULL, 'placerat', 81, 38);
INSERT INTO public.galaxy VALUES (39, false, NULL, 'at nunc', 61, 39);
INSERT INTO public.galaxy VALUES (40, false, NULL, 'lacinia nisi', 61, 40);
INSERT INTO public.galaxy VALUES (41, true, NULL, 'mauris', 20, 41);
INSERT INTO public.galaxy VALUES (42, false, NULL, 'blandit non', 71, 42);
INSERT INTO public.galaxy VALUES (43, true, NULL, 'aliquet', 21, 43);
INSERT INTO public.galaxy VALUES (44, false, 'justo in blandit', 'morbi vel lectus', 75, 44);
INSERT INTO public.galaxy VALUES (45, false, NULL, 'sed nisl', 87, 45);
INSERT INTO public.galaxy VALUES (46, false, NULL, 'justo sit amet', 74, 46);
INSERT INTO public.galaxy VALUES (47, false, NULL, 'erat', 60, 47);
INSERT INTO public.galaxy VALUES (48, false, NULL, 'erat eros', 67, 48);
INSERT INTO public.galaxy VALUES (49, false, 'condimentum neque', 'proin', 68, 49);
INSERT INTO public.galaxy VALUES (50, true, 'erat', 'turpis donec posuere', 38, 50);
INSERT INTO public.galaxy VALUES (51, false, 'est', 'a odio in', 46, 51);
INSERT INTO public.galaxy VALUES (52, true, 'dictumst', 'mauris laoreet ut', 77, 52);
INSERT INTO public.galaxy VALUES (53, false, NULL, 'dis parturient', 42, 53);
INSERT INTO public.galaxy VALUES (54, false, 'congue', 'tristique fusce congue', 87, 54);
INSERT INTO public.galaxy VALUES (55, true, 'vel enim sit', 'venenatis', 85, 55);
INSERT INTO public.galaxy VALUES (56, true, 'sapien', 'aliquet', 56, 56);
INSERT INTO public.galaxy VALUES (57, true, NULL, 'interdum mauris ullamcorper', 47, 57);
INSERT INTO public.galaxy VALUES (58, false, NULL, 'placerat', 81, 58);
INSERT INTO public.galaxy VALUES (59, false, NULL, 'at nunc', 61, 59);
INSERT INTO public.galaxy VALUES (60, false, NULL, 'lacinia nisi', 61, 60);
INSERT INTO public.galaxy VALUES (61, true, NULL, 'mauris', 20, 61);
INSERT INTO public.galaxy VALUES (62, false, NULL, 'blandit non', 71, 62);
INSERT INTO public.galaxy VALUES (63, true, NULL, 'aliquet', 21, 63);
INSERT INTO public.galaxy VALUES (64, false, 'justo in blandit', 'morbi vel lectus', 75, 64);
INSERT INTO public.galaxy VALUES (65, false, NULL, 'sed nisl', 87, 65);
INSERT INTO public.galaxy VALUES (66, false, NULL, 'justo sit amet', 74, 66);
INSERT INTO public.galaxy VALUES (67, false, NULL, 'erat', 60, 67);
INSERT INTO public.galaxy VALUES (68, false, NULL, 'erat eros', 67, 68);
INSERT INTO public.galaxy VALUES (69, false, 'condimentum neque', 'proin', 68, 69);
INSERT INTO public.galaxy VALUES (70, true, 'erat', 'turpis donec posuere', 38, 70);
INSERT INTO public.galaxy VALUES (71, false, 'est', 'a odio in', 46, 71);
INSERT INTO public.galaxy VALUES (72, true, 'dictumst', 'mauris laoreet ut', 77, 72);
INSERT INTO public.galaxy VALUES (73, false, NULL, 'dis parturient', 42, 73);
INSERT INTO public.galaxy VALUES (74, false, 'congue', 'tristique fusce congue', 87, 74);
INSERT INTO public.galaxy VALUES (75, true, 'vel enim sit', 'venenatis', 85, 75);
INSERT INTO public.galaxy VALUES (76, true, 'sapien', 'aliquet', 56, 76);
INSERT INTO public.galaxy VALUES (77, true, NULL, 'interdum mauris ullamcorper', 47, 77);
INSERT INTO public.galaxy VALUES (78, false, NULL, 'placerat', 81, 78);
INSERT INTO public.galaxy VALUES (79, false, NULL, 'at nunc', 61, 79);
INSERT INTO public.galaxy VALUES (80, false, NULL, 'lacinia nisi', 61, 80);
INSERT INTO public.galaxy VALUES (81, true, NULL, 'mauris', 20, 81);
INSERT INTO public.galaxy VALUES (82, false, NULL, 'blandit non', 71, 82);
INSERT INTO public.galaxy VALUES (83, true, NULL, 'aliquet', 21, 83);
INSERT INTO public.galaxy VALUES (84, false, 'justo in blandit', 'morbi vel lectus', 75, 84);
INSERT INTO public.galaxy VALUES (85, false, NULL, 'sed nisl', 87, 85);
INSERT INTO public.galaxy VALUES (86, false, NULL, 'justo sit amet', 74, 86);
INSERT INTO public.galaxy VALUES (87, false, NULL, 'erat', 60, 87);
INSERT INTO public.galaxy VALUES (88, false, NULL, 'erat eros', 67, 88);
INSERT INTO public.galaxy VALUES (89, false, 'condimentum neque', 'proin', 68, 89);
INSERT INTO public.galaxy VALUES (90, true, 'erat', 'turpis donec posuere', 38, 90);
INSERT INTO public.galaxy VALUES (91, false, 'est', 'a odio in', 46, 91);
INSERT INTO public.galaxy VALUES (92, true, 'dictumst', 'mauris laoreet ut', 77, 92);
INSERT INTO public.galaxy VALUES (93, false, NULL, 'dis parturient', 42, 93);
INSERT INTO public.galaxy VALUES (94, false, 'congue', 'tristique fusce congue', 87, 94);
INSERT INTO public.galaxy VALUES (95, true, 'vel enim sit', 'venenatis', 85, 95);
INSERT INTO public.galaxy VALUES (96, true, 'sapien', 'aliquet', 56, 96);
INSERT INTO public.galaxy VALUES (97, true, NULL, 'interdum mauris ullamcorper', 47, 97);
INSERT INTO public.galaxy VALUES (98, false, NULL, 'placerat', 81, 98);
INSERT INTO public.galaxy VALUES (99, false, NULL, 'at nunc', 61, 99);
INSERT INTO public.galaxy VALUES (100, false, NULL, 'lacinia nisi', 61, 100);
INSERT INTO public.galaxy VALUES (101, true, NULL, 'mauris', 20, 101);
INSERT INTO public.galaxy VALUES (102, false, NULL, 'blandit non', 71, 102);
INSERT INTO public.galaxy VALUES (103, true, NULL, 'aliquet', 21, 103);
INSERT INTO public.galaxy VALUES (104, false, 'justo in blandit', 'morbi vel lectus', 75, 104);
INSERT INTO public.galaxy VALUES (105, false, NULL, 'sed nisl', 87, 105);
INSERT INTO public.galaxy VALUES (106, false, NULL, 'justo sit amet', 74, 106);
INSERT INTO public.galaxy VALUES (107, false, NULL, 'erat', 60, 107);
INSERT INTO public.galaxy VALUES (108, false, NULL, 'erat eros', 67, 108);
INSERT INTO public.galaxy VALUES (109, false, 'condimentum neque', 'proin', 68, 109);
INSERT INTO public.galaxy VALUES (110, true, 'erat', 'turpis donec posuere', 38, 110);
INSERT INTO public.galaxy VALUES (111, false, 'est', 'a odio in', 46, 111);
INSERT INTO public.galaxy VALUES (112, true, 'dictumst', 'mauris laoreet ut', 77, 112);
INSERT INTO public.galaxy VALUES (113, false, NULL, 'dis parturient', 42, 113);
INSERT INTO public.galaxy VALUES (114, false, 'congue', 'tristique fusce congue', 87, 114);
INSERT INTO public.galaxy VALUES (115, true, 'vel enim sit', 'venenatis', 85, 115);
INSERT INTO public.galaxy VALUES (116, true, 'sapien', 'aliquet', 56, 116);
INSERT INTO public.galaxy VALUES (117, true, NULL, 'interdum mauris ullamcorper', 47, 117);
INSERT INTO public.galaxy VALUES (118, false, NULL, 'placerat', 81, 118);
INSERT INTO public.galaxy VALUES (119, false, NULL, 'at nunc', 61, 119);
INSERT INTO public.galaxy VALUES (120, false, NULL, 'lacinia nisi', 61, 120);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, false, true, 'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla', 'est', 1, NULL);
INSERT INTO public.moon VALUES (2, true, false, 'mi in porttitor pede justo eu massa donec dapibus duis at velit eu est', 'sollicitudin vitae', 2, NULL);
INSERT INTO public.moon VALUES (3, false, false, 'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim', 'sapien iaculis congue', 3, NULL);
INSERT INTO public.moon VALUES (4, true, true, 'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi', 'felis sed', 4, NULL);
INSERT INTO public.moon VALUES (5, false, true, 'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante', 'sodales', 5, NULL);
INSERT INTO public.moon VALUES (6, false, false, 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl', 'iaculis diam', 6, NULL);
INSERT INTO public.moon VALUES (7, false, true, 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis', 'justo etiam', 7, NULL);
INSERT INTO public.moon VALUES (8, true, true, 'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', 'nisl nunc rhoncus', 8, NULL);
INSERT INTO public.moon VALUES (9, false, false, 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo', 'sociis natoque', 9, NULL);
INSERT INTO public.moon VALUES (10, false, false, 'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum', 'nulla suscipit', 10, NULL);
INSERT INTO public.moon VALUES (11, true, false, 'sapien a libero nam dui proin leo odio porttitor id consequat in consequat', 'porttitor pede justo', 11, NULL);
INSERT INTO public.moon VALUES (12, false, true, 'at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', 'nibh ligula nec', 12, NULL);
INSERT INTO public.moon VALUES (13, false, true, 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio', 'justo nec condimentum', 13, NULL);
INSERT INTO public.moon VALUES (14, true, true, 'eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa', 'erat curabitur', 14, NULL);
INSERT INTO public.moon VALUES (15, false, true, 'orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet', 'primis in faucibus', 15, NULL);
INSERT INTO public.moon VALUES (16, false, true, 'nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque', 'et magnis', 16, NULL);
INSERT INTO public.moon VALUES (17, true, false, 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis', 'nisl nunc', 17, NULL);
INSERT INTO public.moon VALUES (18, true, false, 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', 'primis in faucibus', 18, NULL);
INSERT INTO public.moon VALUES (19, false, true, 'quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis', 'pede', 19, NULL);
INSERT INTO public.moon VALUES (20, false, true, 'suscipit ligula in lacus curabitur at ipsum ac tellus semper', 'pede', 20, NULL);
INSERT INTO public.moon VALUES (21, false, true, 'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla', 'est', 21, NULL);
INSERT INTO public.moon VALUES (22, true, false, 'mi in porttitor pede justo eu massa donec dapibus duis at velit eu est', 'sollicitudin vitae', 22, NULL);
INSERT INTO public.moon VALUES (23, false, false, 'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim', 'sapien iaculis congue', 23, NULL);
INSERT INTO public.moon VALUES (24, true, true, 'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi', 'felis sed', 24, NULL);
INSERT INTO public.moon VALUES (25, false, true, 'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante', 'sodales', 25, NULL);
INSERT INTO public.moon VALUES (26, false, false, 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl', 'iaculis diam', 26, NULL);
INSERT INTO public.moon VALUES (27, false, true, 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis', 'justo etiam', 27, NULL);
INSERT INTO public.moon VALUES (28, true, true, 'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', 'nisl nunc rhoncus', 28, NULL);
INSERT INTO public.moon VALUES (29, false, false, 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo', 'sociis natoque', 29, NULL);
INSERT INTO public.moon VALUES (30, false, false, 'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum', 'nulla suscipit', 30, NULL);
INSERT INTO public.moon VALUES (31, true, false, 'sapien a libero nam dui proin leo odio porttitor id consequat in consequat', 'porttitor pede justo', 31, NULL);
INSERT INTO public.moon VALUES (32, false, true, 'at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', 'nibh ligula nec', 32, NULL);
INSERT INTO public.moon VALUES (33, false, true, 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio', 'justo nec condimentum', 33, NULL);
INSERT INTO public.moon VALUES (34, true, true, 'eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa', 'erat curabitur', 34, NULL);
INSERT INTO public.moon VALUES (35, false, true, 'orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet', 'primis in faucibus', 35, NULL);
INSERT INTO public.moon VALUES (36, false, true, 'nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque', 'et magnis', 36, NULL);
INSERT INTO public.moon VALUES (37, true, false, 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis', 'nisl nunc', 37, NULL);
INSERT INTO public.moon VALUES (38, true, false, 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', 'primis in faucibus', 38, NULL);
INSERT INTO public.moon VALUES (39, false, true, 'quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis', 'pede', 39, NULL);
INSERT INTO public.moon VALUES (40, false, true, 'suscipit ligula in lacus curabitur at ipsum ac tellus semper', 'pede', 40, NULL);
INSERT INTO public.moon VALUES (41, false, true, 'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla', 'est', 41, NULL);
INSERT INTO public.moon VALUES (42, true, false, 'mi in porttitor pede justo eu massa donec dapibus duis at velit eu est', 'sollicitudin vitae', 42, NULL);
INSERT INTO public.moon VALUES (43, false, false, 'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim', 'sapien iaculis congue', 43, NULL);
INSERT INTO public.moon VALUES (44, true, true, 'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi', 'felis sed', 44, NULL);
INSERT INTO public.moon VALUES (45, false, true, 'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante', 'sodales', 45, NULL);
INSERT INTO public.moon VALUES (46, false, false, 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl', 'iaculis diam', 46, NULL);
INSERT INTO public.moon VALUES (47, false, true, 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis', 'justo etiam', 47, NULL);
INSERT INTO public.moon VALUES (48, true, true, 'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', 'nisl nunc rhoncus', 48, NULL);
INSERT INTO public.moon VALUES (49, false, false, 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo', 'sociis natoque', 49, NULL);
INSERT INTO public.moon VALUES (50, false, false, 'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum', 'nulla suscipit', 50, NULL);
INSERT INTO public.moon VALUES (51, true, false, 'sapien a libero nam dui proin leo odio porttitor id consequat in consequat', 'porttitor pede justo', 51, NULL);
INSERT INTO public.moon VALUES (52, false, true, 'at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', 'nibh ligula nec', 52, NULL);
INSERT INTO public.moon VALUES (53, false, true, 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio', 'justo nec condimentum', 53, NULL);
INSERT INTO public.moon VALUES (54, true, true, 'eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa', 'erat curabitur', 54, NULL);
INSERT INTO public.moon VALUES (55, false, true, 'orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet', 'primis in faucibus', 55, NULL);
INSERT INTO public.moon VALUES (56, false, true, 'nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque', 'et magnis', 56, NULL);
INSERT INTO public.moon VALUES (57, true, false, 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis', 'nisl nunc', 57, NULL);
INSERT INTO public.moon VALUES (58, true, false, 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', 'primis in faucibus', 58, NULL);
INSERT INTO public.moon VALUES (59, false, true, 'quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis', 'pede', 59, NULL);
INSERT INTO public.moon VALUES (60, false, true, 'suscipit ligula in lacus curabitur at ipsum ac tellus semper', 'pede', 60, NULL);
INSERT INTO public.moon VALUES (61, false, true, 'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla', 'est', 61, NULL);
INSERT INTO public.moon VALUES (62, true, false, 'mi in porttitor pede justo eu massa donec dapibus duis at velit eu est', 'sollicitudin vitae', 62, NULL);
INSERT INTO public.moon VALUES (63, false, false, 'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim', 'sapien iaculis congue', 63, NULL);
INSERT INTO public.moon VALUES (64, true, true, 'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi', 'felis sed', 64, NULL);
INSERT INTO public.moon VALUES (65, false, true, 'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante', 'sodales', 65, NULL);
INSERT INTO public.moon VALUES (66, false, false, 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl', 'iaculis diam', 66, NULL);
INSERT INTO public.moon VALUES (67, false, true, 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis', 'justo etiam', 67, NULL);
INSERT INTO public.moon VALUES (68, true, true, 'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', 'nisl nunc rhoncus', 68, NULL);
INSERT INTO public.moon VALUES (69, false, false, 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo', 'sociis natoque', 69, NULL);
INSERT INTO public.moon VALUES (70, false, false, 'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum', 'nulla suscipit', 70, NULL);
INSERT INTO public.moon VALUES (71, true, false, 'sapien a libero nam dui proin leo odio porttitor id consequat in consequat', 'porttitor pede justo', 71, NULL);
INSERT INTO public.moon VALUES (72, false, true, 'at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', 'nibh ligula nec', 72, NULL);
INSERT INTO public.moon VALUES (73, false, true, 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio', 'justo nec condimentum', 73, NULL);
INSERT INTO public.moon VALUES (74, true, true, 'eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa', 'erat curabitur', 74, NULL);
INSERT INTO public.moon VALUES (75, false, true, 'orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet', 'primis in faucibus', 75, NULL);
INSERT INTO public.moon VALUES (76, false, true, 'nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque', 'et magnis', 76, NULL);
INSERT INTO public.moon VALUES (77, true, false, 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis', 'nisl nunc', 77, NULL);
INSERT INTO public.moon VALUES (78, true, false, 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', 'primis in faucibus', 78, NULL);
INSERT INTO public.moon VALUES (79, false, true, 'quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis', 'pede', 79, NULL);
INSERT INTO public.moon VALUES (80, false, true, 'suscipit ligula in lacus curabitur at ipsum ac tellus semper', 'pede', 80, NULL);
INSERT INTO public.moon VALUES (81, false, true, 'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla', 'est', 81, NULL);
INSERT INTO public.moon VALUES (82, true, false, 'mi in porttitor pede justo eu massa donec dapibus duis at velit eu est', 'sollicitudin vitae', 82, NULL);
INSERT INTO public.moon VALUES (83, false, false, 'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim', 'sapien iaculis congue', 83, NULL);
INSERT INTO public.moon VALUES (84, true, true, 'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi', 'felis sed', 84, NULL);
INSERT INTO public.moon VALUES (85, false, true, 'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante', 'sodales', 85, NULL);
INSERT INTO public.moon VALUES (86, false, false, 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl', 'iaculis diam', 86, NULL);
INSERT INTO public.moon VALUES (87, false, true, 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis', 'justo etiam', 87, NULL);
INSERT INTO public.moon VALUES (88, true, true, 'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', 'nisl nunc rhoncus', 88, NULL);
INSERT INTO public.moon VALUES (89, false, false, 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo', 'sociis natoque', 89, NULL);
INSERT INTO public.moon VALUES (90, false, false, 'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum', 'nulla suscipit', 90, NULL);
INSERT INTO public.moon VALUES (91, true, false, 'sapien a libero nam dui proin leo odio porttitor id consequat in consequat', 'porttitor pede justo', 91, NULL);
INSERT INTO public.moon VALUES (92, false, true, 'at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', 'nibh ligula nec', 92, NULL);
INSERT INTO public.moon VALUES (93, false, true, 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio', 'justo nec condimentum', 93, NULL);
INSERT INTO public.moon VALUES (94, true, true, 'eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa', 'erat curabitur', 94, NULL);
INSERT INTO public.moon VALUES (95, false, true, 'orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet', 'primis in faucibus', 95, NULL);
INSERT INTO public.moon VALUES (96, false, true, 'nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque', 'et magnis', 96, NULL);
INSERT INTO public.moon VALUES (97, true, false, 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis', 'nisl nunc', 97, NULL);
INSERT INTO public.moon VALUES (98, true, false, 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', 'primis in faucibus', 98, NULL);
INSERT INTO public.moon VALUES (99, false, true, 'quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis', 'pede', 99, NULL);
INSERT INTO public.moon VALUES (100, false, true, 'suscipit ligula in lacus curabitur at ipsum ac tellus semper', 'pede', 100, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (true, 'duis ac nibh', 38, 'semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', 1, 4, 1, NULL);
INSERT INTO public.planet VALUES (true, 'tincidunt', 99, 'habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum', 2, 401, 2, NULL);
INSERT INTO public.planet VALUES (true, 'habitasse platea dictumst', 14, 'mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede', 3, 39, 3, NULL);
INSERT INTO public.planet VALUES (false, 'vivamus vel nulla', 568, 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet', 4, 75, 4, NULL);
INSERT INTO public.planet VALUES (true, 'orci mauris', 264, 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper', 5, 2, 5, NULL);
INSERT INTO public.planet VALUES (true, 'sed', 6, 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in', 6, 3, 6, NULL);
INSERT INTO public.planet VALUES (false, 'viverra', 88791, 'vestibulum sit amet cursus id turpis integer aliquet massa id', 7, 563, 7, NULL);
INSERT INTO public.planet VALUES (true, 'ipsum ac', 73, 'mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse', 8, 112, 8, NULL);
INSERT INTO public.planet VALUES (true, 'eget elit sodales', 415, 'augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula', 9, 21, 9, NULL);
INSERT INTO public.planet VALUES (true, 'et ultrices posuere', 148, 'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce', 10, 39, 10, NULL);
INSERT INTO public.planet VALUES (true, 'sagittis', 5, 'varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 11, 373, 11, NULL);
INSERT INTO public.planet VALUES (false, 'at velit eu', 76, 'neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 12, 2, 12, NULL);
INSERT INTO public.planet VALUES (true, 'proin', 281, 'eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo', 13, 4765, 13, NULL);
INSERT INTO public.planet VALUES (true, 'pharetra', 4, 'libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis', 14, 49028, 14, NULL);
INSERT INTO public.planet VALUES (true, 'libero', 63, 'id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla', 15, 6, 15, NULL);
INSERT INTO public.planet VALUES (false, 'pellentesque ultrices', 23, 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra', 16, 7, 16, NULL);
INSERT INTO public.planet VALUES (true, 'suspendisse', 185, 'amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', 17, 2108, 17, NULL);
INSERT INTO public.planet VALUES (true, 'vestibulum aliquet', 54355, 'praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede', 18, 9, 18, NULL);
INSERT INTO public.planet VALUES (false, 'neque libero', 55522, 'duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel', 19, 4729, 19, NULL);
INSERT INTO public.planet VALUES (false, 'maecenas rhoncus', 74, 'in hac habitasse platea dictumst maecenas ut massa quis augue', 20, 3255, 20, NULL);
INSERT INTO public.planet VALUES (true, 'duis ac nibh', 38, 'semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', 21, 4, 21, NULL);
INSERT INTO public.planet VALUES (true, 'tincidunt', 99, 'habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum', 22, 401, 22, NULL);
INSERT INTO public.planet VALUES (true, 'habitasse platea dictumst', 14, 'mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede', 23, 39, 23, NULL);
INSERT INTO public.planet VALUES (false, 'vivamus vel nulla', 568, 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet', 24, 75, 24, NULL);
INSERT INTO public.planet VALUES (true, 'orci mauris', 264, 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper', 25, 2, 25, NULL);
INSERT INTO public.planet VALUES (true, 'sed', 6, 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in', 26, 3, 26, NULL);
INSERT INTO public.planet VALUES (false, 'viverra', 88791, 'vestibulum sit amet cursus id turpis integer aliquet massa id', 27, 563, 27, NULL);
INSERT INTO public.planet VALUES (true, 'ipsum ac', 73, 'mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse', 28, 112, 28, NULL);
INSERT INTO public.planet VALUES (true, 'eget elit sodales', 415, 'augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula', 29, 21, 29, NULL);
INSERT INTO public.planet VALUES (true, 'et ultrices posuere', 148, 'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce', 30, 39, 30, NULL);
INSERT INTO public.planet VALUES (true, 'sagittis', 5, 'varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 31, 373, 31, NULL);
INSERT INTO public.planet VALUES (false, 'at velit eu', 76, 'neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 32, 2, 32, NULL);
INSERT INTO public.planet VALUES (true, 'proin', 281, 'eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo', 33, 4765, 33, NULL);
INSERT INTO public.planet VALUES (true, 'pharetra', 4, 'libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis', 34, 49028, 34, NULL);
INSERT INTO public.planet VALUES (true, 'libero', 63, 'id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla', 35, 6, 35, NULL);
INSERT INTO public.planet VALUES (false, 'pellentesque ultrices', 23, 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra', 36, 7, 36, NULL);
INSERT INTO public.planet VALUES (true, 'suspendisse', 185, 'amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', 37, 2108, 37, NULL);
INSERT INTO public.planet VALUES (true, 'vestibulum aliquet', 54355, 'praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede', 38, 9, 38, NULL);
INSERT INTO public.planet VALUES (false, 'neque libero', 55522, 'duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel', 39, 4729, 39, NULL);
INSERT INTO public.planet VALUES (false, 'maecenas rhoncus', 74, 'in hac habitasse platea dictumst maecenas ut massa quis augue', 40, 3255, 40, NULL);
INSERT INTO public.planet VALUES (true, 'libero', 63, 'id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla', 55, 6, 55, NULL);
INSERT INTO public.planet VALUES (true, 'duis ac nibh', 38, 'semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', 41, 4, 41, NULL);
INSERT INTO public.planet VALUES (true, 'tincidunt', 99, 'habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum', 42, 401, 42, NULL);
INSERT INTO public.planet VALUES (true, 'habitasse platea dictumst', 14, 'mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede', 43, 39, 43, NULL);
INSERT INTO public.planet VALUES (false, 'vivamus vel nulla', 568, 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet', 44, 75, 44, NULL);
INSERT INTO public.planet VALUES (true, 'orci mauris', 264, 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper', 45, 2, 45, NULL);
INSERT INTO public.planet VALUES (true, 'sed', 6, 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in', 46, 3, 46, NULL);
INSERT INTO public.planet VALUES (false, 'viverra', 88791, 'vestibulum sit amet cursus id turpis integer aliquet massa id', 47, 563, 47, NULL);
INSERT INTO public.planet VALUES (true, 'ipsum ac', 73, 'mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse', 48, 112, 48, NULL);
INSERT INTO public.planet VALUES (true, 'eget elit sodales', 415, 'augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula', 49, 21, 49, NULL);
INSERT INTO public.planet VALUES (true, 'et ultrices posuere', 148, 'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce', 50, 39, 50, NULL);
INSERT INTO public.planet VALUES (true, 'sagittis', 5, 'varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 51, 373, 51, NULL);
INSERT INTO public.planet VALUES (false, 'at velit eu', 76, 'neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 52, 2, 52, NULL);
INSERT INTO public.planet VALUES (true, 'proin', 281, 'eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo', 53, 4765, 53, NULL);
INSERT INTO public.planet VALUES (true, 'pharetra', 4, 'libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis', 54, 49028, 54, NULL);
INSERT INTO public.planet VALUES (false, 'pellentesque ultrices', 23, 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra', 56, 7, 56, NULL);
INSERT INTO public.planet VALUES (true, 'suspendisse', 185, 'amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', 57, 2108, 57, NULL);
INSERT INTO public.planet VALUES (true, 'vestibulum aliquet', 54355, 'praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede', 58, 9, 58, NULL);
INSERT INTO public.planet VALUES (false, 'neque libero', 55522, 'duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel', 59, 4729, 59, NULL);
INSERT INTO public.planet VALUES (false, 'maecenas rhoncus', 74, 'in hac habitasse platea dictumst maecenas ut massa quis augue', 60, 3255, 60, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'vel est donec', 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris', 6189, 9, 1, NULL);
INSERT INTO public.star VALUES (2, 'nam tristique tortor', 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', 353, 174, 2, NULL);
INSERT INTO public.star VALUES (3, 'dolor morbi', 'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum', 6, 2, 3, NULL);
INSERT INTO public.star VALUES (4, 'ac', 'rutrum ac lobortis vel dapibus at diam nam tristique tortor eu', 7, 33, 4, NULL);
INSERT INTO public.star VALUES (5, 'mollis', 'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa', 559, 57686, 5, NULL);
INSERT INTO public.star VALUES (6, 'in faucibus orci', 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis', 85145, 3571, 6, NULL);
INSERT INTO public.star VALUES (7, 'consequat varius integer', 'integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', 27567, 8, 7, NULL);
INSERT INTO public.star VALUES (8, 'at ipsum ac', 'semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus', 6416, 2, 8, NULL);
INSERT INTO public.star VALUES (9, 'justo morbi', 'enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis', 52, 16075, 9, NULL);
INSERT INTO public.star VALUES (10, 'ipsum dolor sit', 'elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam', 988, 4850, 10, NULL);
INSERT INTO public.star VALUES (11, 'aliquam', 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem', 69014, 61969, 11, NULL);
INSERT INTO public.star VALUES (12, 'amet', 'eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum', 43, 37953, 12, NULL);
INSERT INTO public.star VALUES (13, 'vulputate nonummy', 'vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget', 3216, 46, 13, NULL);
INSERT INTO public.star VALUES (14, 'erat tortor', 'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien', 36, 41236, 14, NULL);
INSERT INTO public.star VALUES (15, 'maecenas', 'arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse', 173, 2353, 15, NULL);
INSERT INTO public.star VALUES (16, 'justo pellentesque viverra', 'neque duis bibendum morbi non quam nec dui luctus rutrum', 5370, 1, 16, NULL);
INSERT INTO public.star VALUES (17, 'sit', 'tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero', 40, 54482, 17, NULL);
INSERT INTO public.star VALUES (18, 'nulla sed', 'pede justo eu massa donec dapibus duis at velit eu est congue elementum', 75, 7, 18, NULL);
INSERT INTO public.star VALUES (19, 'hendrerit at vulputate', 'ut massa quis augue luctus tincidunt nulla mollis molestie lorem', 0, 21196, 19, NULL);
INSERT INTO public.star VALUES (20, 'turpis', 'tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris', 2, 7, 20, NULL);
INSERT INTO public.star VALUES (21, 'vel est donec', 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris', 6189, 9, 21, NULL);
INSERT INTO public.star VALUES (22, 'nam tristique tortor', 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', 353, 174, 22, NULL);
INSERT INTO public.star VALUES (23, 'dolor morbi', 'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum', 6, 2, 23, NULL);
INSERT INTO public.star VALUES (24, 'ac', 'rutrum ac lobortis vel dapibus at diam nam tristique tortor eu', 7, 33, 24, NULL);
INSERT INTO public.star VALUES (25, 'mollis', 'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa', 559, 57686, 25, NULL);
INSERT INTO public.star VALUES (26, 'in faucibus orci', 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis', 85145, 3571, 26, NULL);
INSERT INTO public.star VALUES (27, 'consequat varius integer', 'integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', 27567, 8, 27, NULL);
INSERT INTO public.star VALUES (28, 'at ipsum ac', 'semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus', 6416, 2, 28, NULL);
INSERT INTO public.star VALUES (29, 'justo morbi', 'enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis', 52, 16075, 29, NULL);
INSERT INTO public.star VALUES (30, 'ipsum dolor sit', 'elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam', 988, 4850, 30, NULL);
INSERT INTO public.star VALUES (31, 'aliquam', 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem', 69014, 61969, 31, NULL);
INSERT INTO public.star VALUES (32, 'amet', 'eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum', 43, 37953, 32, NULL);
INSERT INTO public.star VALUES (33, 'vulputate nonummy', 'vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget', 3216, 46, 33, NULL);
INSERT INTO public.star VALUES (34, 'erat tortor', 'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien', 36, 41236, 34, NULL);
INSERT INTO public.star VALUES (35, 'maecenas', 'arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse', 173, 2353, 35, NULL);
INSERT INTO public.star VALUES (36, 'justo pellentesque viverra', 'neque duis bibendum morbi non quam nec dui luctus rutrum', 5370, 1, 36, NULL);
INSERT INTO public.star VALUES (37, 'sit', 'tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero', 40, 54482, 37, NULL);
INSERT INTO public.star VALUES (38, 'nulla sed', 'pede justo eu massa donec dapibus duis at velit eu est congue elementum', 75, 7, 38, NULL);
INSERT INTO public.star VALUES (39, 'hendrerit at vulputate', 'ut massa quis augue luctus tincidunt nulla mollis molestie lorem', 0, 21196, 39, NULL);
INSERT INTO public.star VALUES (40, 'turpis', 'tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris', 2, 7, 40, NULL);
INSERT INTO public.star VALUES (41, 'vel est donec', 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris', 6189, 9, 41, NULL);
INSERT INTO public.star VALUES (42, 'nam tristique tortor', 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', 353, 174, 42, NULL);
INSERT INTO public.star VALUES (43, 'dolor morbi', 'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum', 6, 2, 43, NULL);
INSERT INTO public.star VALUES (44, 'ac', 'rutrum ac lobortis vel dapibus at diam nam tristique tortor eu', 7, 33, 44, NULL);
INSERT INTO public.star VALUES (45, 'mollis', 'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa', 559, 57686, 45, NULL);
INSERT INTO public.star VALUES (46, 'in faucibus orci', 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis', 85145, 3571, 46, NULL);
INSERT INTO public.star VALUES (47, 'consequat varius integer', 'integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', 27567, 8, 47, NULL);
INSERT INTO public.star VALUES (48, 'at ipsum ac', 'semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus', 6416, 2, 48, NULL);
INSERT INTO public.star VALUES (49, 'justo morbi', 'enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis', 52, 16075, 49, NULL);
INSERT INTO public.star VALUES (50, 'ipsum dolor sit', 'elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam', 988, 4850, 50, NULL);
INSERT INTO public.star VALUES (51, 'aliquam', 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem', 69014, 61969, 51, NULL);
INSERT INTO public.star VALUES (52, 'amet', 'eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum', 43, 37953, 52, NULL);
INSERT INTO public.star VALUES (53, 'vulputate nonummy', 'vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget', 3216, 46, 53, NULL);
INSERT INTO public.star VALUES (54, 'erat tortor', 'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien', 36, 41236, 54, NULL);
INSERT INTO public.star VALUES (55, 'maecenas', 'arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse', 173, 2353, 55, NULL);
INSERT INTO public.star VALUES (56, 'justo pellentesque viverra', 'neque duis bibendum morbi non quam nec dui luctus rutrum', 5370, 1, 56, NULL);
INSERT INTO public.star VALUES (57, 'sit', 'tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero', 40, 54482, 57, NULL);
INSERT INTO public.star VALUES (58, 'nulla sed', 'pede justo eu massa donec dapibus duis at velit eu est congue elementum', 75, 7, 58, NULL);
INSERT INTO public.star VALUES (59, 'hendrerit at vulputate', 'ut massa quis augue luctus tincidunt nulla mollis molestie lorem', 0, 21196, 59, NULL);
INSERT INTO public.star VALUES (60, 'turpis', 'tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris', 2, 7, 60, NULL);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat', '66279', '6', 'ut');
INSERT INTO public.universe VALUES (2, 'vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis', '31095', '2', 'vivamus');
INSERT INTO public.universe VALUES (3, 'mattis egestas metus aenean fermentum donec ut mauris eget massa tempor', '1', '10540', 'odio cras');
INSERT INTO public.universe VALUES (4, 'dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et', '3086', '7843', 'ultrices erat');
INSERT INTO public.universe VALUES (5, 'integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue', '18565', '73767', 'viverra');
INSERT INTO public.universe VALUES (6, 'a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla', '13', '72078', 'elementum in hac');
INSERT INTO public.universe VALUES (7, 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum', '6537', '82', 'duis');
INSERT INTO public.universe VALUES (8, 'mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh', '3', '174', 'pede justo lacinia');
INSERT INTO public.universe VALUES (9, 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci', '150', '73', 'integer');
INSERT INTO public.universe VALUES (10, 'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl', '081', '75', 'diam neque');
INSERT INTO public.universe VALUES (11, 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in', '2', '5784', 'malesuada');
INSERT INTO public.universe VALUES (12, 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit', '029', '18252', 'lobortis ligula');
INSERT INTO public.universe VALUES (13, 'integer non velit donec diam neque vestibulum eget vulputate ut', '9', '315', 'molestie');
INSERT INTO public.universe VALUES (14, 'et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc', '561', '678', 'ante ipsum');
INSERT INTO public.universe VALUES (15, 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus', '302', '65075', 'lorem');
INSERT INTO public.universe VALUES (16, 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris', '4', '4', 'porttitor lorem id');
INSERT INTO public.universe VALUES (17, 'eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est', '48', '21465', 'dui proin');
INSERT INTO public.universe VALUES (18, 'nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam', '904', '3711', 'integer');
INSERT INTO public.universe VALUES (19, 'ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum', '5', '904', 'in');
INSERT INTO public.universe VALUES (20, 'orci mauris lacinia sapien quis libero nullam sit amet turpis elementum', '52577', '5', 'pellentesque eget nunc');


--
-- Name: galaxy_foreign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_foreign_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_foreign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_foreign_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_foreign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_foreign_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_foreign_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_foreign_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 20, true);


--
-- Name: star foreign_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT foreign_id UNIQUE (foreign_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: universe universe_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_id UNIQUE (universe_id);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


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


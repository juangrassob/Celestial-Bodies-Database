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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    description text,
    has_life boolean NOT NULL,
    age_in_years integer,
    galaxy_types character varying(40)
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
-- Name: juan; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.juan (
    juan_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description character varying(40),
    age integer,
    country character varying(60)
);


ALTER TABLE public.juan OWNER TO freecodecamp;

--
-- Name: juan_juan_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.juan_juan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.juan_juan_id_seq OWNER TO freecodecamp;

--
-- Name: juan_juan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.juan_juan_id_seq OWNED BY public.juan.juan_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    description text,
    temperature_in_c numeric(10,2),
    has_life boolean,
    population integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_galaxy_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    description text,
    temperature_in_c numeric(10,2),
    has_life boolean NOT NULL,
    population integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_galaxy_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    description text,
    galaxy_id integer,
    has_life boolean NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: juan juan_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.juan ALTER COLUMN juan_id SET DEFAULT nextval('public.juan_juan_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_galaxy_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_galaxy_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', 'Nuestra galaxia hogar, una espiral barrada con múltiples brazos', true, 13600000, 'Espiral barrada');
INSERT INTO public.galaxy VALUES (2, 'Andrómeda', 'La galaxia espiral más cercana a la Vía Láctea', false, 10010000, 'Espiral');
INSERT INTO public.galaxy VALUES (3, 'Triángulo', 'Tercera galaxia más grande del Grupo Local', false, 10000000, 'Espiral');
INSERT INTO public.galaxy VALUES (4, 'Nube de Magallanes', 'Galaxia satélite de la Vía Láctea', true, 1300000, 'Irregular');
INSERT INTO public.galaxy VALUES (5, 'Remolino', 'Conocida por su estructura espiral bien definida', false, 13300000, 'Espiral');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Parece un sombrero mexicano visto de perfil', false, 13250000, 'Espiral');
INSERT INTO public.galaxy VALUES (7, 'Centaurus A', 'Galaxia con un núcleo activo y potente jet de radiación', false, 12000000, 'Elíptica');
INSERT INTO public.galaxy VALUES (8, 'Rueda de Carro', 'Formada por una colisión galáctica, parece una rueda', false, 8000000, 'Anular');
INSERT INTO public.galaxy VALUES (9, 'Ojo Negro', 'Tiene un agujero negro supermasivo extremadamente activo', false, 9500000, 'Espiral');
INSERT INTO public.galaxy VALUES (10, 'Cigarro', 'Galaxia con intensa formación estelar', true, 7000000, 'Irregular');
INSERT INTO public.galaxy VALUES (11, 'Girasol', 'Sus brazos espirales recuerdan a los pétalos de un girasol', false, 11000000, 'Espiral');
INSERT INTO public.galaxy VALUES (12, 'Escultor', 'Galaxia enana satélite de la Vía Láctea', false, 6000000, 'Enana irregular');
INSERT INTO public.galaxy VALUES (13, 'Galaxia del Cometa', 'Tiene una cola similar a un cometa por interacción gravitacional', false, 9000000, 'Irregular');
INSERT INTO public.galaxy VALUES (14, 'Galaxia del Molinete', 'Diseño espiral perfecto visto de frente', true, 12100000, 'Espiral');
INSERT INTO public.galaxy VALUES (15, 'Galaxia del Compás', 'Forma casi circular con brazos simétricos', false, 14000000, 'Espiral');
INSERT INTO public.galaxy VALUES (16, 'Galaxia del Fénix', 'Se regenera tras una colisión con una galaxia vecina', true, 5000000, 'Irregular');
INSERT INTO public.galaxy VALUES (17, 'Galaxia Antena', 'Formada por la colisión de dos galaxias', false, 3000000, 'Irregular');
INSERT INTO public.galaxy VALUES (18, 'NGC 4414', 'Galaxia con alto contenido de polvo interestelar', false, 10500000, 'Espiral flocular');
INSERT INTO public.galaxy VALUES (19, 'Enana de Fornax', 'Galaxia enana rica en materia oscura', true, 4000000, 'Enana esferoidal');
INSERT INTO public.galaxy VALUES (20, 'IC 1101', 'Una de las galaxias más grandes conocidas', false, 12700000, 'Elíptica gigante');


--
-- Data for Name: juan; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.juan VALUES (1, 'juan', 'Description', 29, 'Ar');
INSERT INTO public.juan VALUES (2, 'Pedro', 'Description', 29, 'Ar');
INSERT INTO public.juan VALUES (3, 'Lara', 'Description', 29, 'Ar');
INSERT INTO public.juan VALUES (4, 'Luciiano', 'Description', 29, 'Ar');
INSERT INTO public.juan VALUES (5, 'Carlos', 'Description', 29, 'Ar');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Satélite natural de la Tierra', -53.00, false, 0, 1);
INSERT INTO public.moon VALUES (2, 'Fobos', 'Luna de Marte con órbita decreciente', -40.15, false, 0, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Pequeña luna de Marte', -60.10, false, 0, 3);
INSERT INTO public.moon VALUES (4, 'Proxima I', 'Luna helada con océano subterráneo', -80.50, true, 50000, 4);
INSERT INTO public.moon VALUES (5, 'Andromeda Secundus', 'Luna volcánica', 200.30, false, 0, 5);
INSERT INTO public.moon VALUES (6, 'Triangulum Minor', 'Luna con densas nubes de metano', -190.80, false, 0, 6);
INSERT INTO public.moon VALUES (7, 'Doradus Aqua', 'Luna completamente cubierta de agua', 10.25, true, 150000, 7);
INSERT INTO public.moon VALUES (8, 'Whirlpool Torus', 'Luna con forma toroidal única', -200.45, false, 0, 8);
INSERT INTO public.moon VALUES (9, 'Sombrero III', 'Luna con radiación extrema', 150.20, false, 0, 9);
INSERT INTO public.moon VALUES (10, 'Centaurian Beta', 'Luna con extrañas formaciones rocosas', -45.75, false, 0, 10);
INSERT INTO public.moon VALUES (11, 'Cartwheel Satellite', 'Luna artificial construida por antigua civilización', -30.10, true, 2000, 11);
INSERT INTO public.moon VALUES (12, 'Black Eye Shadow', 'Luna que bloquea la luz de su estrella', -120.30, false, 0, 12);
INSERT INTO public.moon VALUES (13, 'Cigar Ash', 'Luna cubierta de ceniza volcánica', 80.90, false, 0, 13);
INSERT INTO public.moon VALUES (14, 'Sunflower Seed', 'Luna con vegetación bioluminiscente', 15.40, true, 35000, 14);
INSERT INTO public.moon VALUES (15, 'Sculptor Chisel', 'Luna minera con valiosos recursos', -10.65, true, 20000000, 15);
INSERT INTO public.moon VALUES (16, 'Comet Trail', 'Luna con estela visible desde lejos', -80.20, false, 0, 16);
INSERT INTO public.moon VALUES (17, 'Pinwheel Fragment', 'Luna fragmentada por impacto', -150.30, false, 0, 17);
INSERT INTO public.moon VALUES (18, 'Compass Needle', 'Luna con alineación magnética perfecta', -25.75, false, 0, 18);
INSERT INTO public.moon VALUES (19, 'Phoenix Nest', 'Luna cálida con colonias experimentales', 30.60, true, 75000, 19);
INSERT INTO public.moon VALUES (20, 'Antenna Dish', 'Luna con forma cóncava natural', -35.40, false, 0, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 'Nuestro planeta hogar, rico en biodiversidad', 15.00, true, 2000000000, 1);
INSERT INTO public.planet VALUES (2, 'Marte', 'El planeta rojo, con casquetes polares y valles', -65.00, false, 0, 2);
INSERT INTO public.planet VALUES (3, 'Proxima b', 'Exoplaneta potencialmente habitable', -39.15, true, 5000000, 3);
INSERT INTO public.planet VALUES (4, 'Andromeda Prime', 'Planeta gaseoso gigante', -145.30, false, 0, 4);
INSERT INTO public.planet VALUES (5, 'Triangulum Major', 'Planeta rocoso con atmósfera tóxica', 89.70, false, 0, 5);
INSERT INTO public.planet VALUES (6, 'Doradus IX', 'Planeta acuático con océanos profundos', 23.45, true, 3000000, 6);
INSERT INTO public.planet VALUES (7, 'Whirlpool Secundus', 'Planeta con anillos espectaculares', -178.90, false, 0, 7);
INSERT INTO public.planet VALUES (8, 'Sombrero II', 'Planeta desértico con dos soles', 58.30, false, 0, 8);
INSERT INTO public.planet VALUES (9, 'Centaurian Alpha', 'Planeta con gravedad extrema', 120.75, false, 0, 9);
INSERT INTO public.planet VALUES (10, 'Cartwheel Prime', 'Planeta con órbita errática', -210.50, false, 0, 10);
INSERT INTO public.planet VALUES (11, 'Black Eye I', 'Planeta con perpetua noche', -89.60, true, 750000, 11);
INSERT INTO public.planet VALUES (12, 'Cigar Minor', 'Planeta volcánico activo', 230.80, false, 0, 12);
INSERT INTO public.planet VALUES (13, 'Girasol', 'Planeta con vegetación que sigue patrones solares', 28.30, true, 12000000, 13);
INSERT INTO public.planet VALUES (14, 'Sculptor Haven', 'Planeta refugio con civilización avanzada', 19.85, true, 2000000000, 14);
INSERT INTO public.planet VALUES (15, 'Comet Dust', 'Planeta con atmósfera de polvo brillante', -50.20, false, 0, 15);
INSERT INTO public.planet VALUES (16, 'Pinwheel Gem', 'Planeta cristalino con superficie reflectante', -130.45, false, 0, 16);
INSERT INTO public.planet VALUES (17, 'Compass Rose', 'Planeta con campo magnético único', 5.75, true, 1200000, 17);
INSERT INTO public.planet VALUES (18, 'Phoenix Ash', 'Planeta en proceso de terraformación', -5.30, true, 300000, 18);
INSERT INTO public.planet VALUES (19, 'Antenna Relay', 'Planeta con extrañas estructuras artificiales', 12.40, true, 8500000, 19);
INSERT INTO public.planet VALUES (20, 'Fornax Haven', 'Planeta con civilización subterránea', -25.80, true, 2700000, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'Nuestra estrella, centro del Sistema Solar', 1, false);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Estrella más cercana al Sistema Solar', 2, false);
INSERT INTO public.star VALUES (3, 'Alpha Andromedae', 'Estrella más brillante de Andrómeda', 3, false);
INSERT INTO public.star VALUES (4, 'Beta Trianguli', 'Estrella principal de Triangulum', 4, false);
INSERT INTO public.star VALUES (5, 'S Doradus', 'Hipergigante luminosa azul en la Nube de Magallanes', 5, false);
INSERT INTO public.star VALUES (6, 'Whirlpool Prime', 'Estrella central de la galaxia Remolino', 6, false);
INSERT INTO public.star VALUES (7, 'Sombrero Nova', 'Estrella recién formada en la galaxia Sombrero', 7, false);
INSERT INTO public.star VALUES (8, 'Centurion Alpha', 'Estrella binaria en Centaurus A', 8, false);
INSERT INTO public.star VALUES (9, 'Cartwheel Beacon', 'Pulsar en la galaxia Rueda de Carro', 9, false);
INSERT INTO public.star VALUES (10, 'Black Eye Star', 'Estrella en la galaxia Ojo Negro', 10, false);
INSERT INTO public.star VALUES (11, 'Cigar Major', 'Estrella principal de la galaxia Cigarro', 11, false);
INSERT INTO public.star VALUES (12, 'Sunflower Core', 'Estrella masiva en el núcleo de la galaxia Girasol', 12, false);
INSERT INTO public.star VALUES (13, 'Sculptor Prime', 'Estrella antigua en la galaxia Escultor', 13, true);
INSERT INTO public.star VALUES (14, 'Comet Tail', 'Estrella en la cola de la galaxia del Cometa', 14, false);
INSERT INTO public.star VALUES (15, 'Pinwheel Nova', 'Nova recurrente en la galaxia del Molinete', 15, false);
INSERT INTO public.star VALUES (16, 'Compass Point', 'Estrella guía en la galaxia del Compás', 16, false);
INSERT INTO public.star VALUES (17, 'Phoenix Flame', 'Estrella en proceso de renacimiento', 17, true);
INSERT INTO public.star VALUES (18, 'Antenna Signal', 'Estrella con fuertes emisiones de radio', 18, false);
INSERT INTO public.star VALUES (19, 'NGC Lumina', 'Estrella supermasiva en NGC 4414', 19, false);
INSERT INTO public.star VALUES (20, 'Fornax Light', 'Estrella enana en la galaxia de Fornax', 20, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: juan_juan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.juan_juan_id_seq', 1, false);


--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_galaxy_id_seq', 1, false);


--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_galaxy_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: juan juan_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.juan
    ADD CONSTRAINT juan_pkey PRIMARY KEY (juan_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_star_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: juan unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.juan
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 16.4

-- Started on 2024-11-25 08:14:43

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
-- TOC entry 214 (class 1259 OID 16615)
-- Name: arbitro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.arbitro (
    id integer NOT NULL,
    categoria_id integer NOT NULL
);


ALTER TABLE public.arbitro OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16618)
-- Name: arbitro_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.arbitro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.arbitro_id_seq OWNER TO postgres;

--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 215
-- Name: arbitro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.arbitro_id_seq OWNED BY public.arbitro.id;


--
-- TOC entry 216 (class 1259 OID 16619)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16622)
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categoria_id_seq OWNER TO postgres;

--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 217
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- TOC entry 218 (class 1259 OID 16623)
-- Name: equipo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.equipo (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    pais_id integer NOT NULL
);


ALTER TABLE public.equipo OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16626)
-- Name: equipo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.equipo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.equipo_id_seq OWNER TO postgres;

--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 219
-- Name: equipo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.equipo_id_seq OWNED BY public.equipo.id;


--
-- TOC entry 220 (class 1259 OID 16627)
-- Name: estadio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estadio (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    direccion character varying(100) NOT NULL,
    capacidad_maxima integer NOT NULL,
    pais_id integer NOT NULL
);


ALTER TABLE public.estadio OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16630)
-- Name: estadio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estadio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estadio_id_seq OWNER TO postgres;

--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 221
-- Name: estadio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estadio_id_seq OWNED BY public.estadio.id;


--
-- TOC entry 222 (class 1259 OID 16631)
-- Name: estado_fisico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado_fisico (
    id integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.estado_fisico OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16634)
-- Name: estado_fisico_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estado_fisico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.estado_fisico_id_seq OWNER TO postgres;

--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 223
-- Name: estado_fisico_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estado_fisico_id_seq OWNED BY public.estado_fisico.id;


--
-- TOC entry 224 (class 1259 OID 16635)
-- Name: fase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fase (
    id integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.fase OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16638)
-- Name: fase_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fase_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fase_id_seq OWNER TO postgres;

--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 225
-- Name: fase_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fase_id_seq OWNED BY public.fase.id;


--
-- TOC entry 226 (class 1259 OID 16639)
-- Name: genero; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genero (
    id integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.genero OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16642)
-- Name: genero_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genero_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.genero_id_seq OWNER TO postgres;

--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 227
-- Name: genero_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genero_id_seq OWNED BY public.genero.id;


--
-- TOC entry 228 (class 1259 OID 16643)
-- Name: jugador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jugador (
    id integer NOT NULL,
    club_actual character varying(50),
    equipo_id integer NOT NULL
);


ALTER TABLE public.jugador OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16646)
-- Name: jugador_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jugador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jugador_id_seq OWNER TO postgres;

--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 229
-- Name: jugador_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jugador_id_seq OWNED BY public.jugador.id;


--
-- TOC entry 230 (class 1259 OID 16647)
-- Name: mundial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mundial (
    "año" integer NOT NULL,
    genero_id integer NOT NULL,
    pais_id integer NOT NULL
);


ALTER TABLE public.mundial OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16650)
-- Name: mundial_estadio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mundial_estadio (
    estadio_id integer NOT NULL,
    mundial_genero_id integer NOT NULL,
    "mundial_año_id" integer NOT NULL
);


ALTER TABLE public.mundial_estadio OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 16997)
-- Name: novedad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.novedad (
    id integer NOT NULL,
    minuto integer,
    partido_id integer,
    participacion_jugador_id integer,
    tipo_novedad_id integer
);


ALTER TABLE public.novedad OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16656)
-- Name: pais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pais (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public.pais OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16659)
-- Name: pais_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pais_id_seq OWNER TO postgres;

--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 233
-- Name: pais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pais_id_seq OWNED BY public.pais.id;


--
-- TOC entry 234 (class 1259 OID 16660)
-- Name: participacion_equipo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.participacion_equipo (
    id integer NOT NULL,
    n_partidos_jugados integer NOT NULL,
    puntos_acumulados integer NOT NULL,
    posicion_grupo integer NOT NULL,
    mundial_genero_id integer NOT NULL,
    "mundial_año_id" integer NOT NULL,
    fase_alcanzada_id integer NOT NULL,
    equipo_id integer NOT NULL
);


ALTER TABLE public.participacion_equipo OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16663)
-- Name: participacion_equipo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.participacion_equipo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.participacion_equipo_id_seq OWNER TO postgres;

--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 235
-- Name: participacion_equipo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.participacion_equipo_id_seq OWNED BY public.participacion_equipo.id;


--
-- TOC entry 252 (class 1259 OID 16969)
-- Name: participacion_equipo_partido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.participacion_equipo_partido (
    participacion_equipo_1_id integer NOT NULL,
    participacion_equipo_2_id integer NOT NULL,
    partido_id integer NOT NULL,
    goles integer
);


ALTER TABLE public.participacion_equipo_partido OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16664)
-- Name: participacion_jugador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.participacion_jugador (
    id integer NOT NULL,
    n_min_jugados integer NOT NULL,
    estado_fisico_id integer NOT NULL,
    participacion_equipo_id integer NOT NULL,
    jugador_id integer NOT NULL
);


ALTER TABLE public.participacion_jugador OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16667)
-- Name: participacion_jugador_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.participacion_jugador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.participacion_jugador_id_seq OWNER TO postgres;

--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 237
-- Name: participacion_jugador_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.participacion_jugador_id_seq OWNED BY public.participacion_jugador.id;


--
-- TOC entry 238 (class 1259 OID 16668)
-- Name: partido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partido (
    id integer NOT NULL,
    fecha_hora timestamp without time zone NOT NULL,
    clima character varying(50),
    resultado character varying(50),
    duracion integer NOT NULL,
    estadio_id integer NOT NULL,
    genero_id integer NOT NULL,
    fase_id integer NOT NULL,
    "año_id" integer NOT NULL
);


ALTER TABLE public.partido OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16671)
-- Name: partido_arbitro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.partido_arbitro (
    partido_id integer NOT NULL,
    arbitro_id integer NOT NULL,
    puesto_id integer NOT NULL
);


ALTER TABLE public.partido_arbitro OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16674)
-- Name: partido_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.partido_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.partido_id_seq OWNER TO postgres;

--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 240
-- Name: partido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.partido_id_seq OWNED BY public.partido.id;


--
-- TOC entry 241 (class 1259 OID 16675)
-- Name: patrocinador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patrocinador (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    pais_id integer NOT NULL
);


ALTER TABLE public.patrocinador OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16678)
-- Name: patrocinador_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patrocinador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.patrocinador_id_seq OWNER TO postgres;

--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 242
-- Name: patrocinador_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patrocinador_id_seq OWNED BY public.patrocinador.id;


--
-- TOC entry 243 (class 1259 OID 16679)
-- Name: patrocinador_mundial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patrocinador_mundial (
    patrocinador_id integer NOT NULL,
    genero_id integer NOT NULL,
    "año" integer NOT NULL
);


ALTER TABLE public.patrocinador_mundial OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 16682)
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.persona (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    edad integer NOT NULL,
    documento character varying(20) NOT NULL,
    genero_id integer NOT NULL,
    tipo_documento_id integer NOT NULL,
    pais_id integer NOT NULL
);


ALTER TABLE public.persona OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 16685)
-- Name: persona_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.persona_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.persona_id_seq OWNER TO postgres;

--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 245
-- Name: persona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.persona_id_seq OWNED BY public.persona.id;


--
-- TOC entry 246 (class 1259 OID 16686)
-- Name: puesto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.puesto (
    id integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.puesto OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 16689)
-- Name: puesto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.puesto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.puesto_id_seq OWNER TO postgres;

--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 247
-- Name: puesto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.puesto_id_seq OWNED BY public.puesto.id;


--
-- TOC entry 248 (class 1259 OID 16690)
-- Name: tipo_documento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_documento (
    id integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.tipo_documento OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 16693)
-- Name: tipo_documento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_documento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipo_documento_id_seq OWNER TO postgres;

--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 249
-- Name: tipo_documento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_documento_id_seq OWNED BY public.tipo_documento.id;


--
-- TOC entry 250 (class 1259 OID 16694)
-- Name: tipo_novedad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_novedad (
    id integer NOT NULL,
    descripcion character varying(50) NOT NULL
);


ALTER TABLE public.tipo_novedad OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 16697)
-- Name: tipo_novedad_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_novedad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipo_novedad_id_seq OWNER TO postgres;

--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 251
-- Name: tipo_novedad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_novedad_id_seq OWNED BY public.tipo_novedad.id;


--
-- TOC entry 3277 (class 2604 OID 16698)
-- Name: arbitro id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.arbitro ALTER COLUMN id SET DEFAULT nextval('public.arbitro_id_seq'::regclass);


--
-- TOC entry 3278 (class 2604 OID 16699)
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- TOC entry 3279 (class 2604 OID 16700)
-- Name: equipo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipo ALTER COLUMN id SET DEFAULT nextval('public.equipo_id_seq'::regclass);


--
-- TOC entry 3280 (class 2604 OID 16701)
-- Name: estadio id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estadio ALTER COLUMN id SET DEFAULT nextval('public.estadio_id_seq'::regclass);


--
-- TOC entry 3281 (class 2604 OID 16702)
-- Name: estado_fisico id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_fisico ALTER COLUMN id SET DEFAULT nextval('public.estado_fisico_id_seq'::regclass);


--
-- TOC entry 3282 (class 2604 OID 16703)
-- Name: fase id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase ALTER COLUMN id SET DEFAULT nextval('public.fase_id_seq'::regclass);


--
-- TOC entry 3283 (class 2604 OID 16704)
-- Name: genero id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genero ALTER COLUMN id SET DEFAULT nextval('public.genero_id_seq'::regclass);


--
-- TOC entry 3284 (class 2604 OID 16705)
-- Name: jugador id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jugador ALTER COLUMN id SET DEFAULT nextval('public.jugador_id_seq'::regclass);


--
-- TOC entry 3285 (class 2604 OID 16706)
-- Name: pais id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pais ALTER COLUMN id SET DEFAULT nextval('public.pais_id_seq'::regclass);


--
-- TOC entry 3286 (class 2604 OID 16707)
-- Name: participacion_equipo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participacion_equipo ALTER COLUMN id SET DEFAULT nextval('public.participacion_equipo_id_seq'::regclass);


--
-- TOC entry 3287 (class 2604 OID 16708)
-- Name: participacion_jugador id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participacion_jugador ALTER COLUMN id SET DEFAULT nextval('public.participacion_jugador_id_seq'::regclass);


--
-- TOC entry 3288 (class 2604 OID 16709)
-- Name: partido id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partido ALTER COLUMN id SET DEFAULT nextval('public.partido_id_seq'::regclass);


--
-- TOC entry 3289 (class 2604 OID 16710)
-- Name: patrocinador id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patrocinador ALTER COLUMN id SET DEFAULT nextval('public.patrocinador_id_seq'::regclass);


--
-- TOC entry 3290 (class 2604 OID 16711)
-- Name: persona id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona ALTER COLUMN id SET DEFAULT nextval('public.persona_id_seq'::regclass);


--
-- TOC entry 3291 (class 2604 OID 16712)
-- Name: puesto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.puesto ALTER COLUMN id SET DEFAULT nextval('public.puesto_id_seq'::regclass);


--
-- TOC entry 3292 (class 2604 OID 16713)
-- Name: tipo_documento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_documento ALTER COLUMN id SET DEFAULT nextval('public.tipo_documento_id_seq'::regclass);


--
-- TOC entry 3293 (class 2604 OID 16714)
-- Name: tipo_novedad id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_novedad ALTER COLUMN id SET DEFAULT nextval('public.tipo_novedad_id_seq'::regclass);


--
-- TOC entry 3517 (class 0 OID 16615)
-- Dependencies: 214
-- Data for Name: arbitro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.arbitro (id, categoria_id) FROM stdin;
505	6
506	5
507	6
508	5
509	6
510	5
511	4
512	4
513	4
514	5
515	6
516	4
517	4
518	4
519	3
520	4
521	3
522	4
523	6
524	5
525	4
526	5
527	5
528	3
529	3
530	3
531	4
532	2
533	2
534	2
535	2
\.


--
-- TOC entry 3519 (class 0 OID 16619)
-- Dependencies: 216
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria (id, descripcion) FROM stdin;
1	Novato
2	Regional
3	Nacional
4	Internacional
5	Profesional
6	FIFA
\.


--
-- TOC entry 3521 (class 0 OID 16623)
-- Dependencies: 218
-- Data for Name: equipo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.equipo (id, nombre, pais_id) FROM stdin;
1	Brasil	1
2	Alemania	2
3	Argentina	3
4	Países Bajos	4
5	Colombia	5
6	Francia	6
7	Bélgica	7
8	Uruguay	8
9	Chile	9
10	Costa Rica	10
11	México	11
12	Estados Unidos	12
13	Suiza	13
14	Grecia	14
15	Nigeria	15
16	Argelia	16
17	Portugal	17
18	Italia	18
19	Inglaterra	19
20	Ecuador	20
21	Bosnia y Herzegovina	21
22	Croacia	22
23	Rusia	23
24	España	24
25	Irán	25
26	Japón	26
27	Ghana	27
28	Corea del Sur	28
29	Australia	29
30	Camerún	30
31	Honduras	31
32	Costa de Marfil	32
\.


--
-- TOC entry 3523 (class 0 OID 16627)
-- Dependencies: 220
-- Data for Name: estadio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estadio (id, nombre, direccion, capacidad_maxima, pais_id) FROM stdin;
1	Maracaná	Rio de Janeiro	74738	1
2	Arena de São Paulo	São Paulo	61839	1
3	Estadio Nacional	Brasilia	69642	1
4	Estadio Mineirão	Belo Horizonte	58259	1
5	Arena Castelão	Fortaleza	63903	1
6	Arena Fonte Nova	Salvador	51900	1
7	Arena Pernambuco	Recife	46154	1
8	Arena da Amazônia	Manaus	42374	1
9	Arena Pantanal	Cuiabá	41420	1
10	Estadio Beira-Rio	Porto Alegre	50128	1
11	Arena da Baixada	Curitiba	43981	1
12	Estadio das Dunas	Natal	39000	1
\.


--
-- TOC entry 3525 (class 0 OID 16631)
-- Dependencies: 222
-- Data for Name: estado_fisico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado_fisico (id, descripcion) FROM stdin;
1	Excelente condición física
2	Lesión muscular leve
3	Lesión muscular grave
4	Fractura en recuperación
5	Fatiga moderada
6	Fatiga severa
7	En proceso de rehabilitación
8	Sin lesiones, en óptimas condiciones
9	Molestias articulares
10	Recuperado recientemente de lesión
11	Sobrepeso leve
12	Desgaste físico acumulado
\.


--
-- TOC entry 3527 (class 0 OID 16635)
-- Dependencies: 224
-- Data for Name: fase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fase (id, descripcion) FROM stdin;
1	Fase de Grupos
2	Octavos de Final
3	Cuartos de Final
4	Semifinales
5	Final
6	Tercer Puesto
\.


--
-- TOC entry 3529 (class 0 OID 16639)
-- Dependencies: 226
-- Data for Name: genero; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genero (id, descripcion) FROM stdin;
1	Masculino
2	Femenino
\.


--
-- TOC entry 3531 (class 0 OID 16643)
-- Dependencies: 228
-- Data for Name: jugador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jugador (id, club_actual, equipo_id) FROM stdin;
1	Liverpool FC	1
2	Chelsea FC	1
3	Flamengo	1
4	Real Madrid	1
5	Manchester United	1
6	Al Ahli	1
7	Shanghái SIPG	1
8	Al Duhail	1
9	Al-Hilal	1
10	Arsenal	1
11	Tottenham Hotspur	1
12	Manchester City	1
13	Juventus	1
14	Paris Saint-Germain	1
15	Nottingham Forest	1
16	Fluminense	1
17	Atlético Mineiro	1
18	São Paulo	1
19	Al-Arabi	1
20	Los Angeles Galaxy	1
21	Fulham	1
22	Coritiba	1
23	Atlético Mineiro	1
24	Bayern Munich	2
25	Borussia Dortmund	2
26	Bayern Munich	2
27	Schalke 04	2
28	Bayern Munich	2
29	Real Madrid	2
30	Arsenal	2
31	Bayern Munich	2
32	Borussia Dortmund	2
33	Lazio	2
34	Chelsea	2
35	Bayern Munich	2
36	Arsenal	2
37	Borussia Dortmund	2
38	Galatasaray	2
39	Arsenal	2
40	Wolfsburg	2
41	Juventus	2
42	Borussia Dortmund	2
43	Bayer Leverkusen	2
44	Borussia Dortmund	2
45	Borussia Mönchengladbach	2
46	Hannover 96	2
47	Boca Juniors	3
48	Manchester City	3
49	Zenit	3
50	Manchester United	3
51	Barcelona	3
52	Lazio	3
53	Real Madrid	3
54	Barcelona	3
55	Napoli	3
56	Manchester City	3
57	Benfica	3
58	Newell’s Old Boys	3
59	Boca Juniors	3
60	Paris Saint-Germain	3
61	Getafe	3
62	Monterrey	3
63	Celta de Vigo	3
64	Estudiantes	3
65	Inter Milan	3
66	Inter Milan	3
67	Atlético Nacional	3
68	Fiorentina	3
69	River Plate	3
70	Ajax	4
71	Aston Villa	4
72	Lazio	4
73	Manchester United	4
74	AC Milan	4
75	Galatasaray	4
76	Fenerbahçe	4
77	Manchester United	4
78	Bayern Munich	4
79	Lyon	4
80	PSV Eindhoven	4
81	Schalke 04	4
82	Villarreal	4
83	Newcastle United	4
84	Porto	4
85	Feyenoord	4
86	Tottenham Hotspur	4
87	Ajax	4
88	Dynamo Kyiv	4
89	Norwich City	4
90	Chelsea	4
91	Feyenoord	4
92	PSV Eindhoven	4
93	Napoli	5
94	Watford	5
95	Flamengo	5
96	AC Milan	5
97	San Lorenzo	5
98	Espanyol	5
99	Deportivo Cali	5
100	Real Madrid	5
101	Junior	5
102	Fiorentina	5
103	Guangzhou Evergrande	5
104	Shanghai Shenhua	5
105	Granada	5
106	Sevilla	5
107	Nacional	5
108	PSV Eindhoven	5
109	River Plate	5
110	Deportivo Cali	5
111	Independiente Santa Fe	5
112	Cagliari	5
113	Monterrey	5
114	Rayo Vallecano	5
115	América de Cali	5
116	Tottenham Hotspur	6
117	Real Madrid	6
118	Juventus	6
119	Crystal Palace	6
120	Arsenal	6
121	Manchester United	6
122	Paris Saint-Germain	6
123	Crystal Palace	6
124	Real Madrid	6
125	AC Milan	6
126	Atlético de Madrid	6
127	Chelsea	6
128	Watford	6
129	Aston Villa	6
130	Bayern Munich	6
131	Manchester City	6
132	Marseille	6
133	Montpellier	6
134	Lille	6
135	Southampton	6
136	Saint-Étienne	6
137	Bayern Munich	6
138	AC Milan	6
139	Real Madrid	7
140	Manchester City	7
141	Tottenham Hotspur	7
142	Atlético de Madrid	7
143	Barcelona	7
144	Borussia Dortmund	7
145	Manchester City	7
146	Manchester United	7
147	Chelsea	7
148	Chelsea	7
149	Napoli	7
150	Liverpool	7
151	Tottenham Hotspur	7
152	Tottenham Hotspur	7
153	Manchester United	7
154	Bayern Munich	7
155	Liverpool	7
156	Montreal Impact	7
157	Anderlecht	7
158	Standard Liège	7
159	Borussia Mönchengladbach	7
160	Anderlecht	7
161	OH Leuven	7
162	Galatasaray	8
163	Atlético de Madrid	8
164	Atlético de Madrid	8
165	Benfica	8
166	Lazio	8
167	Independiente	8
168	Napoli	8
169	Monterrey	8
170	Liverpool	8
171	PSG	8
172	Cerezo Osaka	8
173	Sporting CP	8
174	Lazio	8
175	Nacional	8
176	Botafogo	8
177	Hull City	8
178	Southampton	8
179	Libertad	8
180	River Plate	8
181	Universidad Católica	8
182	Nacional	8
183	Genoa	8
184	Real Sociedad	9
185	Bologna	9
186	Flamengo	9
187	Universidad de Chile	9
188	Flamengo	9
189	Puebla	9
190	Bayern Munich	9
191	Internacional	9
192	Al-Wahda	9
193	Tigres UANL	9
194	Arsenal	9
195	Twente	9
196	Colo-Colo	9
197	Universidad de Chile	9
198	Querétaro	9
199	Celta Vigo	9
200	Hannover 96	9
201	Universidad de Chile	9
202	Independiente	9
203	Universidad Católica	9
204	Everton	9
205	Elche	9
206	Real Madrid	10
207	Deportivo Saprissa	10
208	Bologna	10
209	Club Brugge	10
210	Real Betis	10
211	Celtic	10
212	Fenerbahçe	10
213	Olimpiacos	10
214	Sporting CP	10
215	Arsenal	10
216	LA Galaxy	10
217	Club León	10
218	Real Salt Lake	10
219	Alajuelense	10
220	Alajuelense	10
221	Alajuelense	10
222	Real Madrid	10
223	Colorado Rapids	10
224	Flamengo	10
225	Herediano	10
226	Shenyang Dongjin	22
227	AS Monaco	22
228	FC Barcelona	22
229	Real Madrid	22
230	Liverpool	22
231	Lokomotiv Moscow	22
232	Shakhtar Donetsk	22
233	Juventus	22
234	Everton	22
235	Flamengo	22
236	Chelsea	22
237	Eintracht Frankfurt	22
238	Inter Milan	22
239	Dinamo Zagreb	22
240	Dinamo Zagreb	22
241	Hamburg	22
242	Bayern Munich	22
243	Olympiacos	22
244	Beşiktaş	22
245	Atlético Madrid	22
246	LDU Quito	20
247	Barcelona SC	20
248	Emelec	20
249	Monterrey	20
250	Gremio	20
251	Boca Juniors	20
252	El Nacional	20
253	Atlético Mineiro	20
254	Aucas	20
255	Independiente del Valle	20
256	Manchester United	20
257	Zenit St. Petersburg	20
258	Swansea City	20
259	Vélez Sarsfield	20
260	Espanyol	20
261	West Ham United	20
262	Peñarol	20
263	FC Augsburg	20
264	Independiente del Valle	20
265	Manchester City	19
266	Liverpool	19
267	Chelsea	19
268	Everton	19
269	Everton	19
270	Liverpool	19
271	Chelsea	19
272	Liverpool	19
273	Manchester United	19
274	Liverpool	19
275	Manchester City	19
276	Liverpool	19
277	Everton	19
278	Southampton	19
279	Arsenal	19
280	Manchester United	19
281	Manchester United	19
282	Manchester City	19
283	West Bromwich Albion	19
284	Liverpool	19
285	Juventus	18
286	Paris Saint-Germain	18
287	Genoa	18
288	Juventus	18
289	Juventus	18
290	Juventus	18
291	AC Milan	18
292	Manchester United	18
293	Paris Saint-Germain	18
294	Juventus	18
295	AS Roma	18
296	Juventus	18
297	Paris Saint-Germain	18
298	Inter Milan	18
299	AC Milan	18
300	Lazio	18
301	Napoli	18
302	Torino	18
303	Lazio	18
304	AC Milan	18
305	Liege	26
306	Hiroshima	26
307	Shimizu S-Pulse	26
308	Galatasaray	26
309	Schalke 04	26
310	Southampton	26
311	FC Tokyo	26
312	Olympique Marseille	26
313	Energie Cottbus	26
314	Vissel Kobe	26
315	Cerezo Osaka	26
316	Borussia Dortmund	26
317	AC Milan	26
318	Real Zaragoza	26
319	Leicester City	26
320	Cerezo Osaka	26
321	Sanfrecce Hiroshima	26
322	Stuttgart	26
323	Fulham	26
324	Sanfrecce Hiroshima	26
325	Standard Liège	11
326	Cruz Azul	11
327	Toluca	11
328	Barcelona	11
329	Real Sociedad	11
330	PSV Eindhoven	11
331	Porto	11
332	FC Porto	11
333	América	11
334	Real Betis	11
335	Porto	11
336	León	11
337	Guadalajara	11
338	Eintracht Frankfurt	11
339	LA Galaxy	11
340	Santos Laguna	11
341	Manchester United	11
342	Wolverhampton Wanderers	11
343	Guadalajara	11
344	Olympiakos	11
345	Seattle Sounders	12
346	Everton	12
347	Toronto FC	12
348	Aston Villa	12
349	Toronto FC	12
350	New England Revolution	12
351	Stoke City	12
352	Borussia Mönchengladbach	12
353	Newcastle United	12
354	Sporting Kansas City	12
355	Inter de Milán	13
356	Watford	13
357	Leicester City	13
358	FC Schalke 04	13
359	Juventus	13
360	VfB Stuttgart	13
361	Benfica	13
362	Napoli	13
363	FC Basel	13
364	Borussia Mönchengladbach	13
365	Fulham	14
366	Galatasaray	14
367	Arsenal	14
368	West Bromwich Albion	14
369	Roma	14
370	AS Roma	14
371	Schalke 04	14
372	Asteras Tripolis	14
373	Olympiacos	14
374	Olympiacos	14
375	Tianjin Teda	15
376	CSKA Moscow	15
377	Lille OSC	15
378	Stoke City	15
379	Monaco	15
380	Lazio	15
381	Fenerbahçe	15
382	Russian Premier League	15
383	Chinese Super League	15
384	Standard Liège	15
385	Leicester City	16
386	Leicester City	16
387	Bologna	16
388	Olympique de Marseille	16
389	Qatar SC	16
390	Real Madrid	16
391	Evian Thonon Gaillard	16
392	USM Alger	16
393	FC Porto	16
394	Ferencvárosi TC	16
395	Al Nassr	17
396	Fenerbahçe	17
397	FC Porto	17
398	AS Monaco	17
399	Fenerbahçe	17
400	Besiktas	17
401	FC Porto	17
402	Real Betis	17
403	Fenerbahçe	17
404	Genoa	17
405	AS Roma	21
406	Juventus	21
407	VfB Stuttgart	21
408	Lazio	21
409	Chelsea	21
410	Hertha BSC	21
411	Arsenal	21
412	FC Rostov	21
413	Everton	21
414	VfL Bochum	21
415	Chelsea	23
416	Zenit Saint Petersburg	23
417	CSKA Moscow	23
418	Zenit Saint Petersburg	23
419	CSKA Moscow	23
420	Villarreal	23
421	CSKA Moscow	23
422	FC Rostov	23
423	Arsenal	23
424	Zenit Saint Petersburg	23
425	New York City FC	24
426	Sagan Tosu	24
427	Porto	24
428	Real Madrid	24
429	Vissel Kobe	24
430	FC Barcelona	24
431	Manchester United	24
432	Chelsea	24
433	Manchester City	24
434	Manchester United	24
435	Porto	25
436	Persepolis	25
437	Al Arabi	25
438	AEK Athens	25
439	Zenit Saint Petersburg	25
440	Persepolis	25
441	Olympiacos	25
442	Foolad	25
443	Esteghlal	25
444	Standard Liège	25
445	Al Ahli	27
446	Hertha BSC	27
447	Al-Ittihad	27
448	Rubin Kazan	27
449	Juventus	27
450	Evian Thonon Gaillard	27
451	Aston Villa	27
452	Gremio	27
453	Heart of Lions	27
454	Chelsea	27
455	Sunderland	28
456	Tottenham Hotspur	28
457	Suwon Bluewings	28
458	Guangzhou Evergrande	28
459	PSV Eindhoven	28
460	Al-Jazira Club	28
461	FC Seoul	28
462	Jeonbuk Hyundai Motors	28
463	Jeonbuk Hyundai Motors	28
464	Mainz 05	28
465	New York Red Bulls	29
466	Aston Villa	29
467	FC Ingolstadt 04	29
468	Celtic	29
469	Hebei China Fortune	29
470	Notts County	29
471	Brighton & Hove Albion	29
472	Real Sociedad	29
473	Shandong Luneng	29
474	Bristol Rovers	29
475	Chelsea	30
476	FC Barcelona	30
477	Olympique Lyonnais	30
478	Beşiktaş	30
479	Galatasaray	30
480	FC Lorient	30
481	Lille OSC	30
482	Tottenham Hotspur	30
483	Paris Saint-Germain	30
484	Olympique Lyonnais	30
485	Shanghai Shenhua	31
486	Sporting Kansas City	31
487	Olympiacos	31
488	Wigan Athletic	31
489	Club Deportivo Olimpia	31
490	Monterrey	31
491	Real Betis	31
492	Fiorentina	31
493	Celtic	31
494	Aris Thessaloniki	31
495	Montreal Impact	32
496	Manchester City	32
497	Roma	32
498	Chelsea	32
499	Swansea City	32
500	FC Basel	32
501	Liverpool	32
502	Chelsea	32
503	Stade Rennais	32
504	Crystal Palace	32
\.


--
-- TOC entry 3533 (class 0 OID 16647)
-- Dependencies: 230
-- Data for Name: mundial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mundial ("año", genero_id, pais_id) FROM stdin;
2014	1	1
\.


--
-- TOC entry 3534 (class 0 OID 16650)
-- Dependencies: 231
-- Data for Name: mundial_estadio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mundial_estadio (estadio_id, mundial_genero_id, "mundial_año_id") FROM stdin;
1	1	2014
2	1	2014
3	1	2014
4	1	2014
5	1	2014
6	1	2014
7	1	2014
8	1	2014
9	1	2014
10	1	2014
11	1	2014
12	1	2014
\.


--
-- TOC entry 3556 (class 0 OID 16997)
-- Dependencies: 253
-- Data for Name: novedad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.novedad (id, minuto, partido_id, participacion_jugador_id, tipo_novedad_id) FROM stdin;
1	19	1	1	6
2	46	1	1	12
3	24	1	7	5
4	48	1	4	6
5	3	1	9	11
6	8	1	2	5
7	4	1	9	9
8	70	1	10	8
9	39	1	2	13
10	20	1	6	5
11	72	1	2	6
12	60	1	2	13
13	33	1	3	10
14	68	1	4	4
15	18	1	5	13
16	75	1	6	11
17	16	1	2	6
18	25	1	1	12
19	55	1	3	12
20	39	1	3	3
21	49	1	3	10
22	68	1	9	2
23	89	1	8	9
24	24	1	5	3
25	55	1	8	8
26	81	1	8	9
27	10	1	9	11
28	43	1	2	2
29	3	1	1	8
30	47	1	7	7
31	15	1	8	10
32	90	1	4	6
33	11	1	4	10
34	6	1	6	10
35	23	1	1	8
36	16	1	6	6
37	32	1	4	12
38	83	1	10	3
39	73	1	3	4
40	62	1	10	4
41	56	1	7	1
42	63	1	10	10
43	30	1	5	2
44	66	1	9	11
45	87	1	5	2
46	17	1	4	12
47	16	1	9	3
48	54	1	4	11
49	69	1	3	12
50	42	1	1	12
51	29	1	5	2
52	16	1	4	13
53	86	1	9	9
54	14	1	1	1
55	49	1	3	6
56	29	1	7	3
57	66	1	8	6
58	59	1	9	4
59	2	1	4	8
60	52	1	2	9
61	47	1	7	10
62	85	1	5	1
63	19	1	4	11
64	62	1	4	7
65	54	1	9	13
66	44	1	4	9
67	23	1	8	5
68	69	1	7	9
69	87	1	2	5
70	58	1	1	10
71	58	1	1	1
72	67	1	4	12
73	9	1	2	8
74	87	1	4	5
75	67	1	4	4
76	63	1	3	2
77	13	1	3	2
78	75	1	8	4
79	41	1	10	7
80	58	1	3	9
81	24	1	7	6
82	30	1	3	6
83	74	1	2	11
84	38	1	2	9
85	83	1	2	13
86	8	1	6	9
87	19	1	9	9
88	87	1	1	3
89	42	1	9	1
90	49	1	6	8
91	67	1	1	4
92	31	1	7	5
93	63	1	1	4
94	48	1	7	7
95	34	1	10	4
96	8	1	8	13
97	12	1	8	9
98	78	1	1	13
99	23	1	9	13
100	57	1	3	3
101	28	2	2	1
102	43	2	9	2
103	37	2	3	9
104	49	2	6	12
105	69	2	4	6
106	88	2	10	10
107	83	2	9	12
108	41	2	7	7
109	71	2	6	1
110	58	2	8	1
111	70	2	1	8
112	13	2	7	1
113	38	2	7	10
114	50	2	7	12
115	5	2	2	4
116	8	2	5	6
117	49	2	6	9
118	66	2	4	6
119	45	2	6	8
120	69	2	7	4
121	77	2	9	11
122	70	2	7	5
123	53	2	4	9
124	67	2	1	9
125	44	2	2	4
126	42	2	4	6
127	54	2	3	9
128	33	2	6	8
129	54	2	8	3
130	26	2	10	6
131	26	2	7	13
132	87	2	5	9
133	52	2	8	7
134	53	2	3	11
135	83	2	5	10
136	5	2	2	3
137	56	2	3	7
138	68	2	3	1
139	18	2	3	13
140	6	2	4	7
141	33	2	8	10
142	42	2	10	4
143	36	2	9	4
144	41	2	7	1
145	17	2	2	2
146	73	2	3	11
147	78	2	8	6
148	13	2	4	7
149	62	2	10	9
150	78	2	2	5
151	72	2	8	5
152	45	2	2	9
153	21	2	6	5
154	36	2	3	2
155	11	2	8	7
156	9	2	9	13
157	22	2	2	11
158	48	2	7	7
159	25	2	6	4
160	88	2	1	9
161	30	2	5	13
162	79	2	1	9
163	4	2	8	12
164	38	2	6	8
165	6	2	10	11
166	59	2	8	4
167	49	2	6	6
168	9	2	9	2
169	56	2	10	5
170	77	2	9	10
171	1	2	1	6
172	35	2	7	11
173	77	2	3	3
174	53	2	9	7
175	43	2	6	9
176	57	2	2	4
177	17	2	1	13
178	47	2	10	10
179	29	2	2	5
180	85	2	6	2
181	69	2	10	13
182	28	2	9	3
183	88	2	1	7
184	4	2	2	5
185	48	2	10	13
186	50	2	4	2
187	65	2	2	4
188	69	2	9	8
189	59	2	7	6
190	30	2	4	5
191	36	2	6	10
192	84	2	4	10
193	71	2	9	1
194	10	2	8	10
195	43	2	1	12
196	47	2	5	11
197	66	2	1	2
198	11	2	9	5
199	68	2	10	10
200	8	2	8	12
201	59	3	2	5
202	31	3	2	3
203	21	3	3	11
204	47	3	9	9
205	57	3	2	7
206	53	3	8	11
207	73	3	1	8
208	46	3	3	13
209	79	3	7	4
210	65	3	1	8
211	4	3	1	9
212	51	3	8	10
213	60	3	5	5
214	23	3	5	10
215	31	3	6	7
216	30	3	6	5
217	39	3	3	13
218	15	3	6	4
219	49	3	1	13
220	6	3	1	11
221	74	3	6	3
222	86	3	9	1
223	82	3	7	6
224	34	3	6	6
225	44	3	3	5
226	12	3	6	5
227	40	3	3	11
228	55	3	9	12
229	69	3	1	11
230	25	3	2	2
231	50	3	8	5
232	39	3	7	9
233	69	3	5	13
234	21	3	3	1
235	33	3	1	5
236	47	3	1	12
237	45	3	7	8
238	6	3	7	1
239	68	3	3	3
240	53	3	2	4
241	29	3	6	12
242	75	3	6	11
243	35	3	1	8
244	37	3	2	7
245	59	3	2	8
246	32	3	3	7
247	47	3	1	5
248	62	3	4	7
249	5	3	8	5
250	23	3	10	11
251	17	3	9	6
252	35	3	6	5
253	66	3	6	4
254	72	3	6	8
255	36	3	7	1
256	26	3	10	10
257	40	3	7	7
258	16	3	9	11
259	22	3	5	7
260	64	3	3	7
261	13	3	2	1
262	12	3	9	7
263	66	3	1	5
264	37	3	1	5
265	23	3	10	8
266	62	3	9	11
267	90	3	7	8
268	37	3	10	1
269	42	3	4	11
270	70	3	5	7
271	36	3	9	6
272	21	3	5	1
273	9	3	3	12
274	57	3	1	12
275	30	3	1	13
276	15	3	6	7
277	9	3	1	6
278	54	3	7	4
279	71	3	5	5
280	42	3	5	10
281	35	3	6	1
282	42	3	8	12
283	74	3	2	7
284	88	3	9	5
285	60	3	7	1
286	63	3	1	10
287	75	3	3	10
288	41	3	1	8
289	34	3	1	2
290	59	3	7	10
291	36	3	9	7
292	56	3	9	10
293	90	3	2	11
294	56	3	9	6
295	66	3	6	13
296	85	3	1	11
297	50	3	1	5
298	35	3	7	8
299	77	3	8	9
300	44	3	2	1
301	43	4	4	13
302	57	4	8	10
303	12	4	8	12
304	89	4	8	4
305	12	4	1	4
306	88	4	1	3
307	20	4	8	5
308	13	4	7	6
309	34	4	10	8
310	90	4	9	6
311	29	4	8	7
312	2	4	6	9
313	58	4	3	3
314	85	4	8	8
315	66	4	6	10
316	59	4	2	5
317	15	4	2	13
318	62	4	5	6
319	51	4	2	5
320	33	4	3	10
321	12	4	10	5
322	22	4	8	6
323	5	4	10	10
324	85	4	6	4
325	19	4	5	10
326	66	4	3	2
327	34	4	1	10
328	15	4	6	9
329	35	4	6	9
330	27	4	8	7
331	69	4	8	13
332	37	4	1	7
333	6	4	3	6
334	60	4	3	4
335	70	4	7	6
336	17	4	2	12
337	78	4	2	9
338	42	4	5	3
339	5	4	1	1
340	67	4	7	6
341	48	4	5	4
342	70	4	9	8
343	24	4	5	9
344	78	4	4	1
345	28	4	8	5
346	59	4	6	13
347	57	4	9	10
348	53	4	1	11
349	61	4	6	2
350	84	4	2	8
351	28	4	3	4
352	68	4	9	2
353	43	4	1	10
354	83	4	4	6
355	67	4	3	11
356	13	4	10	13
357	53	4	8	8
358	68	4	3	6
359	82	4	4	5
360	48	4	9	6
361	21	4	8	11
362	44	4	1	2
363	33	4	2	13
364	90	4	4	10
365	51	4	8	8
366	45	4	3	5
367	24	4	7	8
368	83	4	4	1
369	60	4	5	1
370	25	4	3	8
371	6	4	3	5
372	11	4	1	13
373	65	4	9	6
374	76	4	5	13
375	36	4	6	8
376	58	4	5	1
377	5	4	2	12
378	6	4	4	2
379	68	4	7	9
380	59	4	6	10
381	78	4	9	1
382	73	4	8	11
383	2	4	1	12
384	52	4	6	13
385	34	4	2	5
386	26	4	6	3
387	73	4	1	11
388	7	4	4	9
389	55	4	1	11
390	52	4	4	12
391	56	4	6	9
392	5	4	10	6
393	46	4	1	1
394	14	4	2	8
395	41	4	9	8
396	60	4	8	13
397	64	4	8	12
398	38	4	10	13
399	20	4	7	1
400	47	4	1	9
401	89	5	8	1
402	77	5	6	2
403	51	5	8	9
404	44	5	5	1
405	46	5	9	6
406	21	5	5	6
407	9	5	6	4
408	22	5	8	5
409	77	5	7	3
410	40	5	5	13
411	54	5	10	12
412	81	5	2	7
413	12	5	2	10
414	7	5	2	6
415	39	5	3	12
416	10	5	5	1
417	44	5	5	8
418	9	5	6	10
419	40	5	5	13
420	88	5	3	3
421	61	5	2	12
422	8	5	2	1
423	70	5	2	9
424	84	5	6	3
425	82	5	10	2
426	82	5	10	1
427	5	5	4	12
428	62	5	6	2
429	84	5	3	4
430	18	5	9	4
431	31	5	10	4
432	56	5	9	13
433	71	5	8	6
434	15	5	9	3
435	86	5	6	9
436	43	5	8	5
437	2	5	7	1
438	78	5	9	10
439	25	5	3	11
440	5	5	7	6
441	35	5	6	8
442	83	5	10	4
443	30	5	8	7
444	10	5	1	2
445	55	5	6	11
446	20	5	8	2
447	66	5	5	4
448	46	5	7	11
449	33	5	9	6
450	60	5	9	13
451	89	5	9	2
452	62	5	2	8
453	50	5	5	7
454	84	5	7	9
455	26	5	5	13
456	15	5	9	7
457	88	5	10	1
458	80	5	2	5
459	19	5	6	13
460	64	5	10	9
461	15	5	7	1
462	43	5	2	8
463	45	5	6	8
464	29	5	8	1
465	23	5	2	3
466	82	5	5	2
467	20	5	1	4
468	86	5	8	2
469	47	5	9	12
470	29	5	4	1
471	71	5	6	5
472	45	5	7	10
473	16	5	1	2
474	10	5	1	11
475	16	5	10	8
476	70	5	5	11
477	75	5	1	3
478	21	5	9	13
479	37	5	5	9
480	63	5	1	8
481	41	5	9	6
482	58	5	2	5
483	90	5	6	10
484	23	5	4	10
485	51	5	4	4
486	7	5	9	9
487	2	5	4	12
488	54	5	7	11
489	26	5	4	3
490	16	5	5	6
491	29	5	5	13
492	45	5	9	7
493	13	5	3	11
494	69	5	10	6
495	88	5	5	13
496	29	5	3	3
497	14	5	6	7
498	35	5	2	7
499	11	5	8	8
500	3	5	3	10
501	50	6	6	11
502	18	6	4	11
503	42	6	2	8
504	40	6	4	12
505	87	6	8	1
506	87	6	2	6
507	33	6	2	9
508	56	6	10	2
509	36	6	9	5
510	33	6	7	8
511	22	6	5	9
512	72	6	1	7
513	51	6	3	9
514	66	6	6	2
515	47	6	3	7
516	49	6	1	13
517	8	6	6	12
518	56	6	5	12
519	40	6	6	11
520	83	6	4	2
521	8	6	5	13
522	88	6	6	4
523	79	6	1	1
524	89	6	9	10
525	24	6	6	10
526	64	6	9	7
527	35	6	8	10
528	77	6	6	12
529	56	6	10	11
530	68	6	4	10
531	76	6	10	1
532	71	6	9	2
533	82	6	10	8
534	21	6	2	13
535	39	6	8	9
536	15	6	7	6
537	86	6	4	12
538	58	6	4	9
539	73	6	4	3
540	67	6	3	2
541	51	6	7	8
542	85	6	10	2
543	9	6	3	3
544	63	6	3	12
545	3	6	7	11
546	82	6	2	1
547	36	6	3	2
548	49	6	3	11
549	26	6	1	4
550	57	6	4	3
551	44	6	1	6
552	11	6	10	5
553	25	6	4	7
554	20	6	8	10
555	75	6	4	2
556	69	6	10	13
557	79	6	1	2
558	90	6	8	1
559	15	6	8	4
560	58	6	2	1
561	55	6	7	4
562	87	6	4	5
563	48	6	4	11
564	81	6	8	13
565	34	6	3	3
566	48	6	10	3
567	41	6	8	9
568	33	6	5	11
569	11	6	6	7
570	10	6	8	13
571	66	6	2	8
572	86	6	4	9
573	56	6	7	6
574	53	6	1	12
575	9	6	3	9
576	19	6	3	4
577	36	6	8	2
578	82	6	2	1
579	88	6	8	11
580	16	6	10	9
581	51	6	1	13
582	45	6	8	1
583	33	6	6	13
584	19	6	4	9
585	10	6	6	7
586	55	6	2	11
587	59	6	1	2
588	54	6	9	12
589	76	6	5	3
590	12	6	9	10
591	44	6	5	5
592	39	6	7	13
593	17	6	8	1
594	11	6	6	13
595	36	6	9	8
596	48	6	2	7
597	77	6	2	9
598	79	6	8	13
599	36	6	10	2
600	72	6	9	8
601	40	7	3	10
602	53	7	9	8
603	5	7	1	4
604	40	7	10	1
605	52	7	3	4
606	2	7	6	8
607	72	7	5	3
608	72	7	3	2
609	24	7	10	3
610	26	7	9	2
611	84	7	4	4
612	38	7	1	4
613	45	7	4	9
614	71	7	10	11
615	8	7	10	6
616	40	7	4	10
617	84	7	6	8
618	5	7	7	2
619	63	7	2	13
620	60	7	3	4
621	18	7	6	9
622	19	7	7	11
623	36	7	10	7
624	45	7	3	13
625	69	7	9	13
626	33	7	10	9
627	41	7	4	5
628	89	7	3	12
629	74	7	8	4
630	84	7	10	6
631	58	7	4	5
632	50	7	2	3
633	86	7	4	2
634	33	7	2	7
635	32	7	4	10
636	51	7	9	2
637	86	7	10	4
638	9	7	6	11
639	45	7	6	3
640	77	7	6	4
641	55	7	8	3
642	61	7	8	6
643	31	7	1	11
644	65	7	2	12
645	84	7	4	11
646	50	7	4	8
647	3	7	1	12
648	24	7	7	12
649	29	7	9	6
650	27	7	8	7
651	40	7	3	4
652	46	7	8	1
653	54	7	5	2
654	34	7	1	5
655	77	7	7	4
656	19	7	1	13
657	62	7	5	2
658	71	7	9	11
659	11	7	10	2
660	62	7	9	4
661	36	7	9	6
662	58	7	10	9
663	64	7	8	6
664	60	7	8	2
665	74	7	9	10
666	38	7	8	9
667	24	7	3	6
668	28	7	6	6
669	88	7	7	6
670	8	7	9	1
671	5	7	5	8
672	21	7	10	1
673	45	7	8	9
674	31	7	7	4
675	6	7	4	3
676	34	7	5	9
677	6	7	8	2
678	84	7	7	11
679	54	7	5	5
680	51	7	9	4
681	54	7	5	1
682	7	7	5	10
683	5	7	1	2
684	40	7	3	8
685	48	7	4	9
686	16	7	2	9
687	53	7	9	2
688	39	7	2	10
689	67	7	2	5
690	5	7	5	6
691	58	7	3	8
692	15	7	7	13
693	33	7	6	12
694	60	7	8	10
695	87	7	10	9
696	3	7	2	8
697	2	7	3	2
698	43	7	1	11
699	16	7	8	10
700	13	7	2	10
701	73	8	1	2
702	54	8	8	11
703	69	8	5	7
704	61	8	6	5
705	59	8	8	1
706	85	8	3	13
707	26	8	3	13
708	34	8	10	10
709	44	8	7	7
710	68	8	4	6
711	62	8	8	2
712	43	8	1	3
713	80	8	3	5
714	29	8	1	12
715	41	8	5	9
716	63	8	7	6
717	87	8	6	1
718	83	8	6	1
719	9	8	5	12
720	4	8	2	4
721	34	8	2	9
722	55	8	10	8
723	20	8	1	2
724	62	8	8	4
725	89	8	5	5
726	85	8	9	10
727	68	8	2	3
728	43	8	1	2
729	81	8	5	8
730	12	8	3	8
731	18	8	7	7
732	47	8	4	5
733	78	8	7	3
734	56	8	3	7
735	39	8	6	9
736	58	8	5	8
737	17	8	8	9
738	21	8	6	3
739	20	8	6	1
740	51	8	2	9
741	30	8	10	4
742	5	8	9	1
743	79	8	3	13
744	2	8	3	8
745	19	8	8	1
746	90	8	2	10
747	58	8	6	11
748	30	8	6	8
749	15	8	5	12
750	64	8	4	10
751	87	8	10	1
752	7	8	5	5
753	1	8	8	1
754	32	8	4	12
755	12	8	8	1
756	9	8	5	10
757	57	8	4	8
758	62	8	6	3
759	23	8	4	6
760	73	8	5	1
761	72	8	5	9
762	10	8	6	4
763	44	8	3	12
764	29	8	3	3
765	37	8	4	1
766	12	8	6	4
767	31	8	2	2
768	76	8	5	12
769	45	8	10	7
770	80	8	2	11
771	48	8	10	9
772	24	8	7	1
773	58	8	10	2
774	50	8	8	4
775	34	8	3	3
776	72	8	5	7
777	45	8	6	1
778	3	8	8	8
779	52	8	10	13
780	8	8	5	13
781	19	8	3	8
782	20	8	1	1
783	83	8	7	12
784	25	8	4	9
785	25	8	2	6
786	67	8	2	10
787	33	8	9	10
788	64	8	2	9
789	9	8	1	6
790	17	8	7	7
791	28	8	5	3
792	54	8	1	7
793	21	8	5	6
794	47	8	2	11
795	21	8	6	8
796	25	8	7	1
797	47	8	9	1
798	39	8	3	11
799	58	8	7	8
800	39	8	4	10
801	27	9	10	5
802	29	9	5	4
803	52	9	3	2
804	5	9	5	9
805	59	9	10	9
806	16	9	4	5
807	37	9	4	4
808	21	9	5	6
809	23	9	9	4
810	42	9	9	5
811	8	9	8	1
812	61	9	9	10
813	46	9	10	13
814	35	9	7	7
815	84	9	10	9
816	88	9	2	5
817	27	9	1	6
818	15	9	8	9
819	38	9	2	8
820	72	9	1	13
821	36	9	2	11
822	60	9	2	3
823	9	9	9	13
824	15	9	10	2
825	87	9	3	1
826	65	9	5	6
827	82	9	10	1
828	73	9	9	10
829	62	9	3	13
830	47	9	8	3
831	25	9	5	12
832	73	9	9	3
833	81	9	5	8
834	29	9	8	5
835	51	9	4	4
836	8	9	3	7
837	49	9	10	1
838	60	9	5	2
839	42	9	9	11
840	40	9	8	10
841	56	9	7	7
842	5	9	10	9
843	10	9	5	3
844	31	9	6	6
845	39	9	5	13
846	7	9	9	6
847	41	9	8	3
848	76	9	7	11
849	21	9	10	10
850	2	9	1	1
851	78	9	2	2
852	25	9	3	5
853	43	9	7	3
854	60	9	7	2
855	29	9	10	11
856	6	9	3	3
857	35	9	2	5
858	82	9	5	8
859	36	9	4	2
860	20	9	5	1
861	21	9	7	6
862	30	9	6	4
863	55	9	7	11
864	64	9	2	11
865	4	9	3	10
866	60	9	10	7
867	59	9	5	8
868	46	9	7	9
869	15	9	10	2
870	55	9	10	9
871	31	9	4	7
872	17	9	3	6
873	84	9	9	8
874	81	9	8	4
875	86	9	7	3
876	10	9	7	7
877	36	9	4	2
878	24	9	3	3
879	14	9	10	5
880	17	9	5	9
881	88	9	1	10
882	9	9	10	6
883	62	9	9	9
884	80	9	8	9
885	76	9	2	3
886	21	9	9	3
887	40	9	8	9
888	57	9	5	6
889	5	9	5	4
890	19	9	7	8
891	86	9	6	7
892	85	9	3	7
893	65	9	3	8
894	61	9	3	7
895	36	9	2	8
896	48	9	8	11
897	46	9	9	4
898	9	9	2	1
899	1	9	9	8
900	76	9	4	2
901	53	10	8	12
902	36	10	5	1
903	47	10	3	5
904	70	10	5	3
905	54	10	6	6
906	45	10	9	2
907	74	10	6	7
908	6	10	4	9
909	70	10	9	3
910	42	10	8	13
911	62	10	8	11
912	23	10	5	6
913	56	10	8	12
914	80	10	1	8
915	87	10	9	4
916	69	10	8	13
917	10	10	2	3
918	46	10	9	9
919	22	10	7	11
920	69	10	9	4
921	77	10	1	1
922	46	10	2	11
923	6	10	3	6
924	42	10	6	4
925	76	10	5	10
926	19	10	9	5
927	35	10	4	7
928	5	10	4	5
929	28	10	8	12
930	36	10	3	11
931	70	10	2	13
932	90	10	10	1
933	71	10	4	8
934	69	10	3	9
935	42	10	10	2
936	58	10	6	8
937	77	10	8	3
938	50	10	2	3
939	22	10	6	7
940	25	10	1	9
941	57	10	2	1
942	67	10	9	1
943	55	10	10	2
944	18	10	10	7
945	67	10	4	11
946	26	10	2	12
947	72	10	3	11
948	75	10	1	6
949	58	10	4	1
950	24	10	4	12
951	21	10	3	11
952	30	10	7	6
953	84	10	4	3
954	4	10	5	10
955	22	10	4	8
956	51	10	9	1
957	37	10	9	11
958	42	10	3	10
959	15	10	4	5
960	53	10	2	1
961	71	10	10	6
962	58	10	5	3
963	37	10	10	2
964	73	10	1	5
965	30	10	1	10
966	56	10	2	4
967	47	10	6	12
968	11	10	8	11
969	89	10	6	9
970	48	10	4	13
971	60	10	8	9
972	45	10	4	7
973	23	10	10	10
974	19	10	6	8
975	69	10	8	2
976	46	10	3	4
977	56	10	10	13
978	50	10	7	1
979	15	10	1	6
980	48	10	3	10
981	41	10	1	13
982	59	10	1	5
983	24	10	5	9
984	12	10	2	10
985	81	10	9	2
986	60	10	9	10
987	58	10	2	3
988	85	10	6	11
989	3	10	5	2
990	56	10	7	12
991	13	10	4	5
992	1	10	6	7
993	81	10	9	13
994	56	10	3	10
995	84	10	2	3
996	58	10	3	5
997	68	10	2	1
998	40	10	5	10
999	76	10	5	1
1000	9	10	10	6
1001	53	11	5	9
1002	47	11	2	11
1003	59	11	10	7
1004	24	11	1	1
1005	21	11	2	7
1006	12	11	4	3
1007	34	11	2	2
1008	30	11	8	13
1009	80	11	1	5
1010	25	11	9	1
1011	90	11	7	9
1012	88	11	10	8
1013	14	11	2	10
1014	31	11	10	6
1015	2	11	4	10
1016	62	11	8	11
1017	7	11	10	7
1018	11	11	6	11
1019	56	11	6	3
1020	33	11	10	9
1021	21	11	10	9
1022	71	11	2	7
1023	52	11	6	8
1024	38	11	8	4
1025	63	11	3	13
1026	66	11	4	3
1027	10	11	10	7
1028	65	11	1	3
1029	17	11	6	6
1030	71	11	6	8
1031	27	11	3	8
1032	51	11	1	10
1033	14	11	3	1
1034	40	11	3	7
1035	23	11	2	10
1036	27	11	1	8
1037	12	11	5	5
1038	88	11	6	1
1039	17	11	4	13
1040	1	11	7	13
1041	22	11	6	10
1042	10	11	10	4
1043	90	11	6	12
1044	1	11	3	5
1045	82	11	6	5
1046	84	11	10	11
1047	42	11	1	9
1048	87	11	4	13
1049	47	11	6	2
1050	63	11	10	13
1051	59	11	8	12
1052	64	11	6	12
1053	29	11	7	9
1054	18	11	10	9
1055	72	11	3	4
1056	90	11	4	2
1057	5	11	10	9
1058	23	11	6	13
1059	67	11	6	3
1060	1	11	2	13
1061	40	11	1	2
1062	46	11	2	6
1063	54	11	5	7
1064	40	11	6	1
1065	64	11	7	5
1066	4	11	5	5
1067	68	11	9	12
1068	60	11	9	6
1069	89	11	9	9
1070	50	11	3	7
1071	74	11	4	8
1072	79	11	7	13
1073	82	11	5	7
1074	75	11	8	5
1075	3	11	7	11
1076	67	11	9	4
1077	28	11	4	12
1078	41	11	2	13
1079	14	11	3	10
1080	18	11	5	8
1081	29	11	10	2
1082	84	11	6	8
1083	63	11	6	9
1084	85	11	1	13
1085	14	11	1	6
1086	22	11	9	11
1087	51	11	9	13
1088	57	11	5	7
1089	25	11	9	4
1090	16	11	8	12
1091	49	11	6	3
1092	45	11	5	6
1093	28	11	9	1
1094	52	11	9	1
1095	65	11	10	12
1096	57	11	10	13
1097	60	11	6	8
1098	51	11	2	3
1099	45	11	6	2
1100	71	11	3	9
1101	62	12	2	10
1102	6	12	2	3
1103	70	12	6	10
1104	49	12	6	11
1105	53	12	9	6
1106	56	12	5	8
1107	62	12	1	3
1108	76	12	8	13
1109	64	12	8	11
1110	77	12	6	12
1111	57	12	9	4
1112	33	12	6	13
1113	4	12	6	5
1114	36	12	2	13
1115	12	12	9	10
1116	64	12	1	9
1117	63	12	9	9
1118	26	12	3	12
1119	58	12	5	8
1120	70	12	5	8
1121	11	12	5	11
1122	86	12	2	5
1123	4	12	2	6
1124	53	12	10	4
1125	77	12	10	12
1126	38	12	1	9
1127	19	12	4	6
1128	59	12	10	3
1129	46	12	1	9
1130	71	12	4	8
1131	90	12	4	12
1132	11	12	7	11
1133	5	12	6	12
1134	55	12	8	9
1135	70	12	8	2
1136	30	12	6	10
1137	87	12	5	6
1138	66	12	8	2
1139	53	12	3	10
1140	75	12	9	9
1141	78	12	3	10
1142	8	12	9	3
1143	31	12	8	6
1144	9	12	5	13
1145	42	12	6	2
1146	11	12	5	2
1147	36	12	10	10
1148	13	12	1	8
1149	47	12	3	6
1150	86	12	10	5
1151	55	12	5	10
1152	79	12	2	12
1153	58	12	8	9
1154	31	12	7	8
1155	56	12	9	13
1156	57	12	3	6
1157	16	12	6	6
1158	36	12	1	4
1159	41	12	7	12
1160	83	12	10	9
1161	47	12	9	2
1162	58	12	2	6
1163	81	12	10	4
1164	75	12	1	4
1165	15	12	5	10
1166	42	12	7	3
1167	82	12	4	7
1168	78	12	7	2
1169	67	12	3	2
1170	31	12	8	10
1171	41	12	5	10
1172	11	12	1	13
1173	39	12	7	1
1174	15	12	7	9
1175	51	12	7	10
1176	85	12	3	13
1177	2	12	9	3
1178	52	12	5	5
1179	50	12	10	8
1180	23	12	9	4
1181	55	12	5	5
1182	83	12	8	2
1183	82	12	10	4
1184	15	12	1	2
1185	76	12	6	6
1186	16	12	5	2
1187	36	12	7	4
1188	70	12	3	2
1189	42	12	1	2
1190	85	12	1	12
1191	37	12	6	2
1192	59	12	7	7
1193	56	12	10	5
1194	50	12	1	11
1195	65	12	8	12
1196	74	12	6	7
1197	71	12	9	8
1198	83	12	6	9
1199	30	12	9	11
1200	14	12	4	2
1201	27	13	10	9
1202	57	13	3	7
1203	80	13	7	3
1204	80	13	6	10
1205	74	13	6	1
1206	74	13	10	6
1207	12	13	1	6
1208	21	13	2	2
1209	59	13	2	13
1210	18	13	10	8
1211	7	13	4	6
1212	28	13	4	6
1213	84	13	8	5
1214	75	13	3	10
1215	22	13	5	1
1216	20	13	2	3
1217	63	13	10	9
1218	14	13	5	13
1219	12	13	5	10
1220	81	13	10	4
1221	50	13	9	7
1222	89	13	8	11
1223	22	13	9	9
1224	80	13	4	11
1225	24	13	1	13
1226	40	13	10	11
1227	20	13	6	8
1228	28	13	1	5
1229	8	13	1	12
1230	70	13	3	5
1231	82	13	7	5
1232	67	13	4	10
1233	7	13	9	5
1234	74	13	1	8
1235	76	13	9	12
1236	35	13	6	8
1237	64	13	5	1
1238	41	13	10	12
1239	75	13	4	5
1240	27	13	8	10
1241	33	13	2	8
1242	56	13	9	6
1243	79	13	3	5
1244	16	13	10	7
1245	20	13	7	4
1246	37	13	8	12
1247	51	13	8	3
1248	46	13	5	4
1249	79	13	3	6
1250	14	13	2	9
1251	9	13	4	6
1252	34	13	7	8
1253	64	13	1	7
1254	31	13	5	11
1255	37	13	7	9
1256	13	13	1	11
1257	65	13	4	12
1258	83	13	10	8
1259	54	13	8	11
1260	69	13	9	1
1261	34	13	4	6
1262	8	13	7	7
1263	27	13	6	6
1264	27	13	5	11
1265	61	13	5	13
1266	22	13	4	10
1267	2	13	5	4
1268	57	13	6	9
1269	12	13	6	8
1270	7	13	5	1
1271	10	13	2	12
1272	31	13	2	13
1273	35	13	9	2
1274	48	13	10	5
1275	46	13	2	4
1276	45	13	4	4
1277	29	13	6	11
1278	11	13	10	1
1279	82	13	7	7
1280	84	13	3	5
1281	33	13	9	12
1282	22	13	2	9
1283	30	13	1	7
1284	70	13	9	2
1285	9	13	10	2
1286	79	13	4	4
1287	29	13	4	6
1288	50	13	8	6
1289	49	13	9	9
1290	20	13	2	10
1291	6	13	2	11
1292	86	13	7	3
1293	13	13	2	6
1294	32	13	10	8
1295	32	13	9	9
1296	37	13	10	8
1297	24	13	1	12
1298	64	13	1	11
1299	85	13	3	13
1300	41	13	6	2
1301	39	14	4	10
1302	8	14	2	3
1303	27	14	1	5
1304	59	14	8	6
1305	53	14	3	13
1306	35	14	5	5
1307	86	14	3	5
1308	90	14	1	10
1309	20	14	3	2
1310	18	14	9	1
1311	56	14	3	6
1312	3	14	8	3
1313	59	14	6	1
1314	14	14	4	12
1315	22	14	1	4
1316	66	14	3	2
1317	67	14	4	4
1318	38	14	4	7
1319	61	14	10	12
1320	68	14	7	6
1321	35	14	7	11
1322	36	14	2	13
1323	44	14	5	9
1324	51	14	6	12
1325	26	14	2	11
1326	28	14	3	2
1327	3	14	3	5
1328	61	14	2	5
1329	39	14	9	9
1330	51	14	8	8
1331	14	14	7	11
1332	21	14	8	12
1333	6	14	1	4
1334	62	14	6	13
1335	70	14	5	11
1336	9	14	1	2
1337	40	14	9	2
1338	65	14	8	10
1339	80	14	8	1
1340	20	14	1	9
1341	89	14	10	12
1342	10	14	8	3
1343	9	14	10	13
1344	62	14	1	12
1345	12	14	6	5
1346	11	14	10	9
1347	15	14	8	2
1348	73	14	3	1
1349	56	14	2	1
1350	34	14	1	2
1351	76	14	5	9
1352	15	14	8	12
1353	61	14	10	4
1354	18	14	7	2
1355	46	14	2	6
1356	69	14	3	8
1357	5	14	7	13
1358	46	14	6	8
1359	13	14	5	6
1360	21	14	5	5
1361	84	14	7	9
1362	41	14	5	12
1363	56	14	4	13
1364	41	14	9	12
1365	42	14	4	7
1366	46	14	8	7
1367	85	14	1	8
1368	4	14	6	3
1369	71	14	10	4
1370	68	14	2	4
1371	32	14	4	2
1372	13	14	6	7
1373	62	14	4	13
1374	55	14	1	8
1375	57	14	9	7
1376	54	14	1	11
1377	84	14	7	3
1378	76	14	10	8
1379	8	14	2	9
1380	64	14	3	7
1381	90	14	2	12
1382	6	14	3	13
1383	36	14	6	5
1384	51	14	8	6
1385	81	14	6	3
1386	83	14	2	4
1387	1	14	7	8
1388	53	14	9	11
1389	81	14	9	4
1390	26	14	4	10
1391	29	14	2	1
1392	26	14	8	8
1393	46	14	10	1
1394	37	14	5	4
1395	32	14	1	12
1396	38	14	9	1
1397	59	14	5	9
1398	78	14	6	5
1399	12	14	3	10
1400	89	14	7	12
1401	73	15	5	8
1402	7	15	8	3
1403	64	15	7	13
1404	63	15	4	1
1405	87	15	4	4
1406	66	15	9	1
1407	51	15	2	7
1408	8	15	10	3
1409	38	15	4	6
1410	52	15	8	5
1411	58	15	1	11
1412	14	15	3	5
1413	1	15	8	1
1414	11	15	3	11
1415	8	15	7	7
1416	65	15	8	7
1417	24	15	5	3
1418	7	15	6	12
1419	26	15	4	1
1420	40	15	1	7
1421	60	15	2	12
1422	54	15	1	7
1423	66	15	3	2
1424	39	15	7	2
1425	14	15	10	4
1426	14	15	3	7
1427	53	15	5	13
1428	32	15	8	8
1429	14	15	7	2
1430	52	15	8	1
1431	14	15	4	6
1432	78	15	9	7
1433	30	15	10	7
1434	23	15	4	10
1435	9	15	10	6
1436	50	15	1	2
1437	60	15	3	7
1438	34	15	6	9
1439	59	15	2	7
1440	88	15	9	7
1441	1	15	10	2
1442	4	15	2	11
1443	16	15	5	13
1444	73	15	4	2
1445	14	15	5	3
1446	44	15	2	4
1447	70	15	1	5
1448	2	15	8	6
1449	51	15	1	2
1450	39	15	8	4
1451	17	15	10	5
1452	49	15	3	8
1453	7	15	10	2
1454	45	15	3	4
1455	6	15	10	7
1456	85	15	8	13
1457	46	15	5	3
1458	24	15	7	2
1459	73	15	4	10
1460	13	15	7	9
1461	1	15	9	10
1462	13	15	1	5
1463	35	15	10	11
1464	86	15	2	10
1465	39	15	2	8
1466	74	15	8	6
1467	12	15	7	13
1468	80	15	4	9
1469	42	15	9	12
1470	69	15	1	2
1471	7	15	3	5
1472	47	15	10	11
1473	40	15	3	2
1474	40	15	9	4
1475	73	15	4	4
1476	84	15	9	7
1477	49	15	4	4
1478	7	15	5	9
1479	38	15	6	1
1480	65	15	10	8
1481	16	15	5	1
1482	2	15	1	9
1483	26	15	4	10
1484	52	15	1	7
1485	61	15	4	8
1486	89	15	4	12
1487	50	15	1	4
1488	71	15	1	9
1489	53	15	2	9
1490	7	15	5	2
1491	20	15	5	13
1492	79	15	1	7
1493	60	15	6	7
1494	83	15	1	3
1495	23	15	4	2
1496	25	15	6	2
1497	55	15	1	7
1498	26	15	8	2
1499	11	15	10	2
1500	42	15	6	5
1501	67	16	6	5
1502	44	16	7	2
1503	58	16	4	5
1504	27	16	10	5
1505	58	16	1	5
1506	15	16	8	8
1507	7	16	5	12
1508	71	16	7	1
1509	25	16	8	2
1510	4	16	10	11
1511	2	16	1	13
1512	60	16	9	8
1513	85	16	3	5
1514	16	16	8	7
1515	80	16	10	9
1516	46	16	5	5
1517	39	16	7	11
1518	85	16	2	4
1519	62	16	9	10
1520	10	16	6	8
1521	89	16	4	13
1522	59	16	4	7
1523	32	16	8	5
1524	45	16	9	1
1525	80	16	8	10
1526	53	16	4	10
1527	13	16	8	2
1528	89	16	4	8
1529	22	16	8	6
1530	25	16	5	13
1531	57	16	8	5
1532	61	16	8	11
1533	72	16	7	4
1534	27	16	4	2
1535	28	16	4	12
1536	67	16	9	13
1537	8	16	5	13
1538	68	16	6	2
1539	12	16	1	11
1540	27	16	3	3
1541	14	16	7	6
1542	60	16	9	3
1543	51	16	10	3
1544	40	16	10	10
1545	61	16	2	6
1546	36	16	6	3
1547	75	16	5	9
1548	48	16	6	13
1549	16	16	10	12
1550	25	16	5	12
1551	5	16	6	8
1552	89	16	7	7
1553	53	16	10	12
1554	67	16	6	5
1555	73	16	3	12
1556	56	16	4	5
1557	66	16	4	3
1558	39	16	6	1
1559	24	16	2	4
1560	75	16	7	11
1561	9	16	4	8
1562	20	16	5	2
1563	72	16	6	5
1564	18	16	10	8
1565	33	16	3	11
1566	36	16	8	8
1567	49	16	10	2
1568	88	16	7	4
1569	83	16	5	13
1570	28	16	7	13
1571	53	16	6	10
1572	57	16	8	7
1573	46	16	10	5
1574	32	16	5	9
1575	48	16	7	1
1576	31	16	1	12
1577	61	16	10	4
1578	82	16	4	6
1579	86	16	6	1
1580	47	16	8	12
1581	56	16	6	9
1582	30	16	9	12
1583	90	16	8	11
1584	76	16	6	6
1585	49	16	2	3
1586	3	16	9	10
1587	60	16	6	9
1588	12	16	9	7
1589	12	16	1	5
1590	87	16	3	10
1591	61	16	10	8
1592	19	16	2	10
1593	77	16	9	13
1594	64	16	3	2
1595	9	16	8	3
1596	2	16	9	6
1597	55	16	8	11
1598	81	16	1	1
1599	48	16	4	1
1600	71	16	4	2
1601	25	17	5	1
1602	44	17	7	8
1603	50	17	4	3
1604	44	17	7	12
1605	43	17	9	3
1606	72	17	3	13
1607	82	17	6	3
1608	58	17	1	7
1609	54	17	9	13
1610	53	17	9	3
1611	52	17	9	6
1612	76	17	4	8
1613	69	17	3	6
1614	25	17	2	1
1615	9	17	6	4
1616	56	17	5	11
1617	4	17	8	4
1618	51	17	1	12
1619	56	17	10	10
1620	6	17	1	6
1621	54	17	6	10
1622	50	17	10	1
1623	44	17	5	9
1624	15	17	1	1
1625	79	17	9	10
1626	71	17	5	7
1627	34	17	5	5
1628	38	17	9	2
1629	34	17	6	4
1630	47	17	5	4
1631	63	17	6	12
1632	65	17	8	11
1633	29	17	10	5
1634	35	17	7	11
1635	48	17	10	10
1636	73	17	8	1
1637	49	17	10	13
1638	50	17	1	12
1639	20	17	7	9
1640	73	17	9	12
1641	87	17	3	6
1642	59	17	8	7
1643	56	17	7	4
1644	66	17	1	7
1645	9	17	5	5
1646	43	17	1	10
1647	87	17	7	11
1648	68	17	8	8
1649	76	17	2	11
1650	23	17	5	11
1651	18	17	9	1
1652	77	17	3	11
1653	62	17	3	11
1654	14	17	7	13
1655	18	17	4	2
1656	44	17	7	12
1657	33	17	6	7
1658	50	17	8	5
1659	37	17	5	2
1660	69	17	3	8
1661	65	17	7	11
1662	9	17	10	6
1663	36	17	6	4
1664	24	17	5	4
1665	32	17	10	7
1666	14	17	6	4
1667	6	17	8	6
1668	5	17	9	8
1669	20	17	9	1
1670	85	17	3	1
1671	34	17	3	13
1672	82	17	8	13
1673	84	17	1	11
1674	11	17	10	13
1675	49	17	1	11
1676	84	17	9	8
1677	65	17	4	8
1678	45	17	3	13
1679	33	17	10	5
1680	10	17	9	1
1681	68	17	4	4
1682	62	17	2	12
1683	50	17	8	8
1684	70	17	2	2
1685	27	17	8	2
1686	45	17	4	5
1687	23	17	2	13
1688	80	17	5	5
1689	2	17	4	9
1690	70	17	3	6
1691	9	17	7	9
1692	88	17	10	10
1693	32	17	7	2
1694	7	17	4	6
1695	34	17	6	2
1696	12	17	6	6
1697	60	17	9	13
1698	1	17	5	9
1699	83	17	2	6
1700	59	17	9	3
1701	55	18	1	2
1702	56	18	3	8
1703	86	18	10	9
1704	28	18	3	12
1705	15	18	5	11
1706	40	18	8	10
1707	52	18	8	13
1708	80	18	10	13
1709	36	18	10	10
1710	13	18	9	12
1711	41	18	5	3
1712	19	18	8	13
1713	85	18	3	13
1714	88	18	9	4
1715	55	18	1	5
1716	9	18	10	2
1717	67	18	8	4
1718	64	18	8	11
1719	61	18	8	10
1720	8	18	2	1
1721	81	18	8	6
1722	3	18	5	2
1723	80	18	9	11
1724	5	18	4	4
1725	34	18	2	8
1726	53	18	1	6
1727	66	18	8	7
1728	32	18	2	4
1729	60	18	1	4
1730	13	18	10	11
1731	10	18	2	12
1732	27	18	2	8
1733	48	18	5	13
1734	80	18	1	6
1735	41	18	5	13
1736	44	18	6	6
1737	34	18	3	3
1738	50	18	2	1
1739	70	18	7	6
1740	75	18	4	10
1741	29	18	7	13
1742	15	18	4	1
1743	74	18	2	6
1744	53	18	2	9
1745	43	18	8	3
1746	51	18	4	3
1747	79	18	10	13
1748	76	18	9	10
1749	19	18	2	2
1750	80	18	5	4
1751	7	18	3	12
1752	12	18	2	1
1753	72	18	9	6
1754	40	18	10	2
1755	16	18	6	11
1756	49	18	6	6
1757	75	18	1	7
1758	49	18	4	13
1759	46	18	4	3
1760	42	18	2	8
1761	20	18	5	5
1762	81	18	9	9
1763	50	18	8	9
1764	62	18	6	6
1765	49	18	3	2
1766	9	18	3	3
1767	9	18	9	7
1768	28	18	9	2
1769	53	18	10	9
1770	77	18	6	6
1771	41	18	1	5
1772	38	18	8	2
1773	63	18	9	13
1774	30	18	8	4
1775	81	18	9	11
1776	8	18	9	6
1777	78	18	9	10
1778	80	18	10	6
1779	24	18	6	5
1780	33	18	2	2
1781	61	18	6	6
1782	52	18	9	9
1783	74	18	3	9
1784	47	18	8	9
1785	79	18	4	6
1786	67	18	2	4
1787	23	18	8	11
1788	53	18	5	3
1789	11	18	3	13
1790	27	18	1	9
1791	72	18	7	1
1792	80	18	1	4
1793	41	18	10	10
1794	77	18	9	7
1795	87	18	9	6
1796	80	18	1	6
1797	76	18	6	4
1798	1	18	5	10
1799	24	18	7	13
1800	51	18	2	5
1801	64	19	10	13
1802	5	19	1	7
1803	37	19	8	8
1804	83	19	7	6
1805	58	19	4	1
1806	3	19	2	7
1807	39	19	4	5
1808	63	19	3	10
1809	68	19	4	8
1810	50	19	4	7
1811	80	19	7	2
1812	45	19	1	12
1813	71	19	3	1
1814	50	19	9	7
1815	42	19	1	1
1816	55	19	7	9
1817	64	19	9	2
1818	49	19	9	13
1819	21	19	9	11
1820	76	19	1	1
1821	61	19	8	11
1822	8	19	1	3
1823	23	19	2	6
1824	12	19	1	7
1825	15	19	5	1
1826	49	19	9	1
1827	57	19	1	1
1828	54	19	5	6
1829	24	19	8	2
1830	83	19	7	2
1831	69	19	5	6
1832	2	19	6	4
1833	72	19	9	1
1834	5	19	3	10
1835	16	19	9	3
1836	7	19	10	10
1837	78	19	1	4
1838	21	19	9	4
1839	21	19	9	1
1840	86	19	8	5
1841	50	19	2	6
1842	13	19	9	6
1843	48	19	10	13
1844	56	19	3	7
1845	57	19	9	13
1846	59	19	1	13
1847	79	19	2	13
1848	41	19	6	5
1849	30	19	4	9
1850	8	19	5	8
1851	27	19	5	3
1852	56	19	9	8
1853	22	19	10	7
1854	56	19	9	4
1855	31	19	8	13
1856	55	19	8	11
1857	87	19	2	4
1858	33	19	4	4
1859	74	19	4	1
1860	49	19	5	9
1861	36	19	3	10
1862	10	19	3	2
1863	44	19	7	5
1864	55	19	3	11
1865	47	19	9	4
1866	59	19	9	5
1867	68	19	2	5
1868	64	19	9	7
1869	55	19	4	5
1870	27	19	1	12
1871	50	19	5	6
1872	65	19	7	9
1873	56	19	10	10
1874	72	19	4	12
1875	58	19	7	3
1876	56	19	2	4
1877	22	19	6	5
1878	87	19	7	2
1879	82	19	10	12
1880	36	19	4	1
1881	42	19	5	3
1882	77	19	3	8
1883	33	19	9	12
1884	84	19	2	4
1885	48	19	4	9
1886	81	19	7	9
1887	36	19	5	3
1888	67	19	9	12
1889	2	19	8	10
1890	66	19	10	13
1891	62	19	2	11
1892	25	19	9	12
1893	41	19	10	13
1894	32	19	6	6
1895	2	19	3	5
1896	65	19	1	1
1897	84	19	6	3
1898	35	19	8	1
1899	34	19	5	4
1900	16	19	10	4
1901	28	20	8	8
1902	54	20	7	12
1903	71	20	6	12
1904	58	20	5	5
1905	85	20	3	10
1906	49	20	3	11
1907	38	20	7	3
1908	86	20	2	6
1909	14	20	1	4
1910	15	20	10	2
1911	65	20	7	1
1912	9	20	10	7
1913	15	20	6	2
1914	71	20	8	2
1915	23	20	2	8
1916	65	20	7	11
1917	17	20	3	5
1918	61	20	10	3
1919	8	20	6	4
1920	19	20	1	13
1921	32	20	8	9
1922	54	20	4	1
1923	38	20	6	9
1924	16	20	3	12
1925	36	20	9	9
1926	69	20	2	2
1927	85	20	2	1
1928	11	20	1	13
1929	58	20	5	13
1930	13	20	3	1
1931	77	20	6	9
1932	41	20	1	4
1933	82	20	10	8
1934	79	20	4	13
1935	22	20	9	7
1936	26	20	2	1
1937	3	20	2	6
1938	17	20	8	5
1939	70	20	4	4
1940	42	20	6	9
1941	21	20	1	13
1942	57	20	7	2
1943	9	20	5	3
1944	68	20	5	11
1945	40	20	3	12
1946	10	20	8	7
1947	3	20	9	9
1948	24	20	7	6
1949	68	20	2	7
1950	52	20	5	13
1951	63	20	2	2
1952	46	20	6	10
1953	35	20	9	12
1954	34	20	5	9
1955	26	20	6	8
1956	65	20	3	8
1957	26	20	4	7
1958	74	20	6	4
1959	85	20	9	10
1960	83	20	6	8
1961	69	20	6	4
1962	25	20	10	12
1963	46	20	7	12
1964	89	20	10	6
1965	48	20	2	10
1966	30	20	9	6
1967	27	20	4	9
1968	2	20	6	7
1969	86	20	8	10
1970	24	20	5	1
1971	87	20	10	8
1972	16	20	9	5
1973	79	20	4	10
1974	34	20	1	9
1975	88	20	8	3
1976	62	20	9	5
1977	13	20	10	7
1978	67	20	8	8
1979	39	20	1	2
1980	39	20	4	12
1981	28	20	8	12
1982	29	20	9	9
1983	68	20	9	3
1984	73	20	5	11
1985	52	20	5	6
1986	6	20	5	12
1987	69	20	9	1
1988	58	20	2	2
1989	34	20	7	3
1990	8	20	2	10
1991	51	20	4	5
1992	35	20	9	1
1993	55	20	2	10
1994	73	20	6	5
1995	75	20	7	12
1996	80	20	4	13
1997	29	20	3	5
1998	84	20	10	4
1999	53	20	2	7
2000	81	20	4	9
2001	31	21	3	1
2002	67	21	3	8
2003	8	21	8	11
2004	40	21	10	6
2005	71	21	4	1
2006	2	21	4	12
2007	7	21	7	6
2008	52	21	5	10
2009	20	21	4	1
2010	58	21	1	7
2011	26	21	3	1
2012	77	21	3	9
2013	89	21	3	7
2014	24	21	5	11
2015	55	21	4	12
2016	5	21	1	6
2017	90	21	6	13
2018	55	21	8	2
2019	7	21	2	9
2020	32	21	2	6
2021	74	21	4	6
2022	23	21	3	13
2023	27	21	7	7
2024	31	21	8	4
2025	55	21	9	10
2026	41	21	8	9
2027	27	21	4	3
2028	39	21	1	13
2029	17	21	8	3
2030	73	21	5	2
2031	69	21	9	9
2032	13	21	2	10
2033	77	21	7	12
2034	8	21	10	8
2035	56	21	8	5
2036	25	21	1	2
2037	80	21	2	8
2038	89	21	9	12
2039	32	21	6	7
2040	82	21	3	3
2041	37	21	6	13
2042	2	21	2	11
2043	51	21	10	3
2044	45	21	1	11
2045	63	21	4	5
2046	87	21	7	4
2047	13	21	3	1
2048	50	21	4	6
2049	70	21	4	3
2050	36	21	1	7
2051	21	21	9	12
2052	1	21	6	3
2053	85	21	9	1
2054	76	21	2	5
2055	66	21	8	6
2056	62	21	7	8
2057	40	21	9	13
2058	36	21	3	6
2059	58	21	4	3
2060	72	21	2	8
2061	36	21	10	12
2062	36	21	3	2
2063	69	21	6	7
2064	88	21	5	5
2065	71	21	3	13
2066	40	21	7	11
2067	3	21	8	2
2068	33	21	5	8
2069	30	21	7	9
2070	37	21	1	8
2071	16	21	2	4
2072	81	21	6	5
2073	24	21	8	11
2074	10	21	10	11
2075	70	21	2	4
2076	67	21	1	12
2077	62	21	3	7
2078	90	21	5	7
2079	83	21	4	7
2080	68	21	6	6
2081	30	21	10	3
2082	56	21	3	2
2083	38	21	5	3
2084	13	21	8	9
2085	39	21	6	11
2086	63	21	5	5
2087	35	21	9	12
2088	46	21	6	3
2089	32	21	6	7
2090	28	21	8	4
2091	74	21	3	11
2092	39	21	5	8
2093	67	21	1	13
2094	35	21	1	7
2095	26	21	2	5
2096	75	21	10	11
2097	72	21	1	4
2098	11	21	4	13
2099	31	21	7	9
2100	80	21	5	2
2101	33	22	8	6
2102	13	22	8	12
2103	88	22	9	12
2104	49	22	9	10
2105	51	22	10	8
2106	86	22	8	3
2107	39	22	3	7
2108	15	22	3	11
2109	75	22	1	3
2110	13	22	10	12
2111	73	22	5	6
2112	70	22	8	1
2113	24	22	6	7
2114	73	22	9	3
2115	75	22	7	6
2116	28	22	7	10
2117	13	22	8	8
2118	1	22	1	12
2119	88	22	8	4
2120	80	22	6	10
2121	13	22	9	6
2122	36	22	9	13
2123	30	22	4	11
2124	70	22	6	4
2125	63	22	3	13
2126	53	22	3	7
2127	7	22	10	10
2128	89	22	5	8
2129	25	22	5	1
2130	25	22	9	4
2131	13	22	5	2
2132	90	22	8	3
2133	34	22	3	8
2134	13	22	5	6
2135	54	22	4	5
2136	78	22	9	1
2137	63	22	4	10
2138	70	22	1	8
2139	22	22	7	5
2140	75	22	5	8
2141	7	22	5	12
2142	24	22	3	1
2143	8	22	1	7
2144	3	22	3	1
2145	42	22	1	13
2146	16	22	7	1
2147	86	22	4	11
2148	66	22	1	6
2149	27	22	5	7
2150	30	22	5	1
2151	27	22	1	12
2152	62	22	6	7
2153	54	22	2	8
2154	44	22	7	3
2155	86	22	3	9
2156	25	22	6	13
2157	88	22	6	1
2158	62	22	1	6
2159	37	22	8	5
2160	66	22	7	2
2161	75	22	1	8
2162	63	22	6	10
2163	24	22	5	9
2164	61	22	1	6
2165	76	22	1	8
2166	33	22	4	10
2167	38	22	6	13
2168	66	22	8	7
2169	8	22	5	11
2170	5	22	2	6
2171	70	22	4	11
2172	78	22	4	2
2173	88	22	3	3
2174	42	22	5	3
2175	59	22	1	4
2176	82	22	4	8
2177	14	22	7	5
2178	84	22	1	11
2179	21	22	5	6
2180	59	22	2	11
2181	54	22	3	8
2182	37	22	9	8
2183	65	22	9	3
2184	47	22	6	1
2185	52	22	7	4
2186	1	22	5	5
2187	49	22	5	10
2188	9	22	10	2
2189	4	22	4	5
2190	9	22	10	8
2191	26	22	1	3
2192	77	22	9	2
2193	20	22	6	4
2194	43	22	10	7
2195	67	22	2	11
2196	80	22	4	2
2197	36	22	4	4
2198	82	22	6	8
2199	17	22	5	10
2200	76	22	4	6
2201	15	23	5	9
2202	75	23	6	4
2203	58	23	6	8
2204	52	23	1	9
2205	5	23	2	6
2206	41	23	1	2
2207	25	23	1	6
2208	42	23	2	6
2209	23	23	5	9
2210	41	23	6	2
2211	41	23	9	9
2212	31	23	8	9
2213	45	23	10	3
2214	71	23	7	13
2215	59	23	5	9
2216	64	23	6	7
2217	60	23	5	2
2218	87	23	7	7
2219	5	23	10	12
2220	18	23	1	7
2221	18	23	10	13
2222	36	23	9	11
2223	69	23	1	3
2224	31	23	3	6
2225	90	23	8	4
2226	16	23	6	3
2227	75	23	6	6
2228	42	23	8	11
2229	87	23	3	12
2230	34	23	1	1
2231	77	23	5	13
2232	78	23	4	9
2233	78	23	7	13
2234	27	23	10	4
2235	43	23	2	5
2236	79	23	8	7
2237	84	23	10	4
2238	87	23	5	5
2239	23	23	4	2
2240	25	23	5	9
2241	26	23	8	2
2242	51	23	3	4
2243	14	23	9	9
2244	86	23	10	8
2245	13	23	3	12
2246	33	23	5	10
2247	41	23	10	7
2248	36	23	6	1
2249	80	23	8	8
2250	19	23	3	10
2251	86	23	4	13
2252	29	23	2	4
2253	67	23	9	7
2254	65	23	9	2
2255	13	23	9	4
2256	74	23	4	1
2257	24	23	5	3
2258	68	23	4	9
2259	9	23	5	12
2260	34	23	1	4
2261	28	23	2	6
2262	69	23	8	11
2263	61	23	9	12
2264	70	23	4	9
2265	86	23	4	3
2266	62	23	1	10
2267	12	23	8	12
2268	12	23	9	6
2269	60	23	2	7
2270	37	23	3	7
2271	72	23	6	4
2272	7	23	2	1
2273	82	23	6	12
2274	3	23	4	2
2275	25	23	5	2
2276	20	23	6	9
2277	70	23	2	4
2278	87	23	5	12
2279	51	23	10	13
2280	25	23	1	5
2281	46	23	4	10
2282	60	23	8	10
2283	8	23	4	7
2284	19	23	9	4
2285	49	23	8	1
2286	17	23	1	3
2287	9	23	1	8
2288	14	23	5	9
2289	60	23	7	7
2290	59	23	4	10
2291	52	23	4	5
2292	77	23	2	6
2293	32	23	4	3
2294	89	23	1	5
2295	45	23	8	2
2296	51	23	8	8
2297	35	23	3	4
2298	47	23	10	1
2299	16	23	6	11
2300	52	23	9	12
2301	80	24	9	11
2302	65	24	2	6
2303	12	24	4	5
2304	50	24	8	12
2305	66	24	8	11
2306	66	24	2	3
2307	48	24	9	3
2308	7	24	3	3
2309	1	24	6	13
2310	12	24	6	1
2311	27	24	3	12
2312	19	24	9	3
2313	43	24	4	5
2314	90	24	7	11
2315	31	24	5	12
2316	59	24	3	8
2317	7	24	4	4
2318	36	24	2	8
2319	73	24	9	5
2320	57	24	5	11
2321	84	24	3	9
2322	42	24	6	4
2323	15	24	8	3
2324	7	24	4	13
2325	25	24	6	1
2326	25	24	6	6
2327	31	24	4	2
2328	46	24	8	2
2329	69	24	9	4
2330	22	24	7	1
2331	14	24	8	5
2332	27	24	7	12
2333	13	24	8	3
2334	45	24	1	2
2335	67	24	1	13
2336	64	24	9	7
2337	13	24	2	11
2338	84	24	9	3
2339	8	24	7	3
2340	80	24	10	12
2341	82	24	6	4
2342	80	24	3	2
2343	53	24	10	7
2344	32	24	5	7
2345	74	24	6	5
2346	20	24	4	3
2347	31	24	9	5
2348	31	24	8	11
2349	39	24	8	10
2350	28	24	3	11
2351	51	24	10	5
2352	86	24	1	12
2353	43	24	3	9
2354	47	24	2	6
2355	44	24	10	11
2356	35	24	1	5
2357	34	24	2	9
2358	5	24	9	7
2359	84	24	8	13
2360	38	24	1	11
2361	28	24	4	2
2362	16	24	5	13
2363	7	24	9	4
2364	3	24	4	10
2365	81	24	1	9
2366	2	24	10	6
2367	2	24	8	13
2368	3	24	9	6
2369	77	24	7	7
2370	57	24	5	1
2371	15	24	3	12
2372	70	24	6	11
2373	33	24	4	9
2374	40	24	6	4
2375	31	24	2	8
2376	48	24	8	5
2377	5	24	9	4
2378	64	24	10	8
2379	79	24	10	4
2380	33	24	4	8
2381	86	24	3	11
2382	79	24	6	3
2383	51	24	3	7
2384	36	24	9	5
2385	33	24	7	9
2386	57	24	10	2
2387	58	24	8	3
2388	16	24	4	9
2389	76	24	1	6
2390	32	24	7	9
2391	9	24	6	4
2392	77	24	4	5
2393	39	24	1	9
2394	57	24	1	4
2395	39	24	5	3
2396	30	24	5	3
2397	13	24	10	9
2398	45	24	2	12
2399	21	24	9	2
2400	33	24	2	1
2401	90	25	4	4
2402	21	25	8	3
2403	58	25	9	12
2404	29	25	7	4
2405	27	25	5	12
2406	3	25	9	1
2407	25	25	1	9
2408	8	25	9	2
2409	65	25	6	4
2410	81	25	8	9
2411	88	25	2	6
2412	84	25	6	5
2413	81	25	5	2
2414	40	25	4	7
2415	20	25	7	5
2416	12	25	10	1
2417	57	25	8	11
2418	5	25	4	8
2419	59	25	10	13
2420	86	25	7	1
2421	22	25	5	13
2422	24	25	10	7
2423	65	25	5	5
2424	86	25	4	5
2425	35	25	10	12
2426	37	25	3	8
2427	41	25	10	9
2428	67	25	5	8
2429	73	25	1	11
2430	29	25	7	12
2431	86	25	9	6
2432	31	25	9	12
2433	39	25	4	12
2434	43	25	5	8
2435	24	25	8	7
2436	79	25	8	10
2437	33	25	7	2
2438	62	25	1	7
2439	67	25	10	13
2440	29	25	1	8
2441	5	25	1	10
2442	60	25	8	7
2443	36	25	5	10
2444	15	25	8	5
2445	40	25	5	9
2446	60	25	2	3
2447	32	25	9	11
2448	73	25	10	8
2449	30	25	5	5
2450	46	25	7	7
2451	85	25	9	13
2452	53	25	1	9
2453	83	25	10	5
2454	13	25	4	1
2455	35	25	6	12
2456	83	25	2	9
2457	79	25	9	5
2458	21	25	10	11
2459	15	25	6	1
2460	71	25	3	7
2461	6	25	3	12
2462	27	25	9	13
2463	73	25	5	5
2464	71	25	2	9
2465	48	25	4	1
2466	66	25	10	6
2467	48	25	3	4
2468	46	25	7	7
2469	29	25	5	2
2470	65	25	1	13
2471	68	25	9	3
2472	65	25	2	5
2473	33	25	1	6
2474	8	25	4	13
2475	15	25	2	11
2476	74	25	1	10
2477	3	25	2	3
2478	28	25	8	13
2479	61	25	3	1
2480	26	25	1	3
2481	63	25	3	8
2482	24	25	4	5
2483	53	25	1	1
2484	54	25	4	2
2485	65	25	5	12
2486	82	25	10	10
2487	10	25	1	9
2488	49	25	5	4
2489	70	25	5	13
2490	86	25	4	12
2491	31	25	2	6
2492	77	25	3	3
2493	31	25	7	10
2494	55	25	10	3
2495	1	25	7	11
2496	17	25	6	7
2497	8	25	9	10
2498	23	25	7	1
2499	77	25	8	12
2500	39	25	10	8
2501	20	26	6	12
2502	55	26	4	11
2503	81	26	1	13
2504	57	26	9	13
2505	21	26	2	5
2506	67	26	3	4
2507	45	26	6	12
2508	38	26	2	6
2509	13	26	4	10
2510	38	26	8	10
2511	77	26	9	4
2512	28	26	7	6
2513	18	26	5	2
2514	67	26	10	4
2515	15	26	8	5
2516	75	26	1	13
2517	31	26	4	3
2518	40	26	3	11
2519	86	26	5	12
2520	60	26	9	2
2521	77	26	8	3
2522	37	26	3	4
2523	74	26	7	9
2524	21	26	1	5
2525	12	26	3	9
2526	58	26	10	12
2527	82	26	2	8
2528	62	26	4	5
2529	7	26	2	7
2530	49	26	2	3
2531	90	26	2	8
2532	76	26	1	3
2533	5	26	3	3
2534	19	26	8	4
2535	82	26	8	10
2536	57	26	3	8
2537	57	26	10	8
2538	7	26	4	2
2539	34	26	2	12
2540	89	26	6	1
2541	25	26	2	13
2542	60	26	10	5
2543	19	26	7	4
2544	44	26	8	5
2545	84	26	5	9
2546	49	26	2	4
2547	74	26	8	4
2548	48	26	8	7
2549	27	26	4	11
2550	26	26	6	8
2551	5	26	2	5
2552	14	26	10	8
2553	44	26	2	8
2554	74	26	3	4
2555	38	26	2	3
2556	22	26	6	2
2557	17	26	9	13
2558	32	26	5	3
2559	12	26	5	8
2560	57	26	10	3
2561	8	26	7	7
2562	22	26	7	5
2563	68	26	6	3
2564	67	26	7	4
2565	77	26	8	11
2566	50	26	10	1
2567	62	26	10	13
2568	1	26	4	10
2569	80	26	2	10
2570	4	26	1	3
2571	40	26	6	10
2572	50	26	8	5
2573	8	26	2	12
2574	53	26	5	5
2575	72	26	2	1
2576	45	26	2	5
2577	55	26	8	2
2578	54	26	9	1
2579	64	26	8	13
2580	40	26	2	8
2581	82	26	4	13
2582	16	26	8	12
2583	53	26	7	5
2584	24	26	8	8
2585	24	26	4	7
2586	14	26	2	5
2587	14	26	9	12
2588	30	26	10	1
2589	35	26	5	10
2590	28	26	9	10
2591	49	26	8	13
2592	2	26	1	11
2593	22	26	2	11
2594	12	26	2	2
2595	90	26	6	6
2596	69	26	1	2
2597	79	26	2	12
2598	12	26	8	3
2599	24	26	4	8
2600	52	26	8	5
2601	53	27	5	3
2602	14	27	3	7
2603	54	27	9	7
2604	28	27	7	6
2605	55	27	2	7
2606	76	27	7	13
2607	52	27	7	11
2608	81	27	4	12
2609	85	27	7	6
2610	19	27	6	1
2611	69	27	7	13
2612	62	27	8	5
2613	33	27	6	5
2614	72	27	7	10
2615	49	27	2	10
2616	38	27	2	11
2617	22	27	8	2
2618	46	27	10	6
2619	16	27	2	9
2620	36	27	5	5
2621	81	27	5	6
2622	49	27	5	2
2623	39	27	1	12
2624	49	27	6	13
2625	12	27	1	2
2626	30	27	9	4
2627	8	27	7	10
2628	64	27	8	4
2629	79	27	7	6
2630	1	27	8	9
2631	11	27	6	12
2632	49	27	4	13
2633	40	27	9	8
2634	69	27	2	4
2635	75	27	7	4
2636	14	27	4	13
2637	38	27	6	2
2638	30	27	7	6
2639	87	27	3	6
2640	35	27	10	3
2641	43	27	10	10
2642	22	27	4	13
2643	2	27	4	10
2644	53	27	4	1
2645	89	27	8	10
2646	64	27	2	4
2647	85	27	5	11
2648	53	27	8	5
2649	90	27	3	5
2650	54	27	6	8
2651	17	27	5	1
2652	80	27	4	3
2653	58	27	6	2
2654	81	27	8	10
2655	7	27	1	8
2656	62	27	1	8
2657	53	27	6	4
2658	80	27	3	4
2659	70	27	3	1
2660	52	27	5	10
2661	8	27	1	10
2662	18	27	5	11
2663	41	27	7	8
2664	18	27	9	4
2665	28	27	4	10
2666	11	27	8	11
2667	21	27	10	1
2668	77	27	4	2
2669	11	27	1	13
2670	46	27	4	1
2671	13	27	10	12
2672	59	27	10	10
2673	30	27	3	2
2674	46	27	4	1
2675	78	27	2	1
2676	59	27	7	3
2677	11	27	1	2
2678	22	27	2	1
2679	47	27	4	4
2680	5	27	3	6
2681	7	27	4	3
2682	43	27	4	8
2683	70	27	8	2
2684	33	27	3	12
2685	66	27	7	3
2686	13	27	6	6
2687	10	27	2	4
2688	78	27	7	13
2689	36	27	6	7
2690	10	27	10	3
2691	14	27	10	4
2692	72	27	3	9
2693	87	27	8	12
2694	19	27	8	2
2695	57	27	1	10
2696	49	27	7	1
2697	5	27	2	5
2698	1	27	1	5
2699	90	27	10	2
2700	13	27	2	8
2701	71	28	2	3
2702	36	28	7	7
2703	61	28	4	2
2704	37	28	10	3
2705	71	28	6	2
2706	65	28	3	3
2707	54	28	2	12
2708	1	28	8	11
2709	69	28	9	13
2710	60	28	4	12
2711	17	28	8	10
2712	3	28	7	6
2713	50	28	5	8
2714	47	28	9	12
2715	47	28	8	12
2716	63	28	10	12
2717	5	28	4	11
2718	41	28	6	8
2719	60	28	10	9
2720	66	28	10	3
2721	55	28	7	6
2722	4	28	2	2
2723	6	28	2	13
2724	59	28	3	4
2725	4	28	7	6
2726	58	28	7	4
2727	63	28	7	3
2728	14	28	9	13
2729	50	28	4	6
2730	65	28	8	4
2731	17	28	4	1
2732	14	28	10	1
2733	61	28	5	11
2734	74	28	7	13
2735	78	28	9	5
2736	2	28	9	1
2737	77	28	9	11
2738	88	28	10	5
2739	51	28	7	3
2740	10	28	2	4
2741	65	28	6	1
2742	3	28	2	6
2743	49	28	6	3
2744	37	28	7	7
2745	73	28	9	5
2746	90	28	6	1
2747	14	28	9	5
2748	6	28	1	7
2749	61	28	9	8
2750	73	28	1	9
2751	74	28	6	8
2752	60	28	3	13
2753	54	28	10	2
2754	6	28	5	11
2755	59	28	3	3
2756	82	28	9	4
2757	5	28	9	1
2758	29	28	4	9
2759	15	28	1	13
2760	70	28	7	4
2761	86	28	1	8
2762	63	28	8	6
2763	43	28	2	11
2764	17	28	10	1
2765	64	28	1	11
2766	77	28	8	4
2767	9	28	4	7
2768	89	28	6	6
2769	35	28	10	2
2770	62	28	5	2
2771	45	28	6	3
2772	47	28	6	10
2773	41	28	2	3
2774	42	28	7	2
2775	11	28	4	13
2776	57	28	3	13
2777	15	28	10	4
2778	20	28	9	1
2779	83	28	10	9
2780	21	28	2	9
2781	4	28	7	5
2782	53	28	2	3
2783	64	28	6	6
2784	82	28	7	10
2785	19	28	6	5
2786	34	28	8	3
2787	46	28	6	8
2788	35	28	4	7
2789	84	28	1	12
2790	27	28	4	13
2791	37	28	9	9
2792	79	28	1	13
2793	23	28	6	5
2794	54	28	1	12
2795	26	28	2	1
2796	89	28	4	2
2797	15	28	3	4
2798	16	28	1	8
2799	80	28	9	13
2800	21	28	1	12
2801	79	29	8	7
2802	20	29	3	11
2803	7	29	4	3
2804	18	29	10	10
2805	70	29	6	11
2806	7	29	10	8
2807	67	29	7	1
2808	6	29	7	13
2809	61	29	3	12
2810	86	29	10	12
2811	78	29	8	10
2812	48	29	7	3
2813	20	29	8	9
2814	23	29	8	12
2815	1	29	6	5
2816	32	29	3	5
2817	52	29	2	3
2818	87	29	2	5
2819	82	29	4	13
2820	21	29	8	9
2821	39	29	9	3
2822	19	29	8	8
2823	85	29	1	1
2824	55	29	1	6
2825	60	29	1	3
2826	59	29	1	7
2827	38	29	5	11
2828	39	29	4	1
2829	41	29	5	13
2830	45	29	8	3
2831	37	29	2	7
2832	47	29	3	2
2833	32	29	8	2
2834	54	29	2	10
2835	28	29	9	1
2836	11	29	1	9
2837	57	29	7	3
2838	81	29	2	6
2839	81	29	3	3
2840	24	29	2	11
2841	33	29	9	8
2842	14	29	1	9
2843	63	29	10	10
2844	32	29	6	12
2845	33	29	2	9
2846	30	29	5	7
2847	38	29	5	5
2848	87	29	10	9
2849	73	29	9	2
2850	67	29	1	6
2851	52	29	6	1
2852	84	29	1	8
2853	8	29	1	8
2854	37	29	1	13
2855	29	29	7	12
2856	2	29	10	3
2857	88	29	9	6
2858	1	29	2	8
2859	23	29	5	2
2860	45	29	9	7
2861	56	29	7	2
2862	84	29	2	10
2863	20	29	8	4
2864	51	29	1	11
2865	26	29	5	8
2866	27	29	10	9
2867	45	29	6	11
2868	34	29	9	11
2869	18	29	7	12
2870	50	29	10	7
2871	57	29	2	2
2872	14	29	8	4
2873	87	29	8	10
2874	4	29	8	7
2875	31	29	2	6
2876	23	29	5	11
2877	61	29	8	1
2878	68	29	7	13
2879	62	29	9	6
2880	35	29	8	13
2881	88	29	3	4
2882	38	29	1	12
2883	2	29	1	12
2884	78	29	7	4
2885	3	29	7	1
2886	53	29	7	5
2887	67	29	7	11
2888	63	29	6	5
2889	78	29	5	4
2890	7	29	7	10
2891	54	29	4	2
2892	70	29	8	6
2893	9	29	1	1
2894	77	29	5	5
2895	20	29	3	7
2896	25	29	1	4
2897	67	29	1	4
2898	66	29	9	10
2899	33	29	6	8
2900	45	29	3	2
2901	34	30	5	7
2902	59	30	10	6
2903	41	30	5	4
2904	60	30	8	12
2905	73	30	8	6
2906	73	30	8	1
2907	47	30	9	10
2908	19	30	5	12
2909	59	30	4	11
2910	8	30	8	13
2911	86	30	4	3
2912	72	30	6	12
2913	10	30	4	7
2914	81	30	7	10
2915	1	30	5	3
2916	70	30	8	8
2917	21	30	4	1
2918	56	30	1	11
2919	59	30	8	1
2920	85	30	4	2
2921	36	30	2	1
2922	56	30	4	8
2923	48	30	2	10
2924	26	30	10	5
2925	81	30	7	7
2926	47	30	3	7
2927	4	30	6	10
2928	63	30	9	1
2929	42	30	5	8
2930	2	30	7	11
2931	44	30	10	9
2932	37	30	5	13
2933	87	30	9	12
2934	24	30	3	2
2935	87	30	3	1
2936	25	30	8	4
2937	22	30	2	10
2938	62	30	7	4
2939	43	30	2	5
2940	71	30	1	11
2941	19	30	7	5
2942	43	30	9	3
2943	36	30	10	2
2944	23	30	10	2
2945	22	30	8	13
2946	58	30	7	10
2947	90	30	4	2
2948	31	30	6	7
2949	38	30	8	3
2950	90	30	4	12
2951	41	30	4	6
2952	24	30	4	4
2953	34	30	1	11
2954	11	30	10	8
2955	42	30	4	9
2956	37	30	1	7
2957	55	30	3	7
2958	16	30	9	13
2959	49	30	9	1
2960	67	30	3	11
2961	69	30	1	2
2962	76	30	6	5
2963	57	30	10	5
2964	81	30	1	7
2965	6	30	4	6
2966	13	30	10	5
2967	79	30	8	8
2968	52	30	10	8
2969	41	30	3	4
2970	1	30	5	2
2971	28	30	3	12
2972	77	30	10	1
2973	28	30	2	9
2974	6	30	3	12
2975	22	30	7	9
2976	88	30	8	8
2977	37	30	9	5
2978	63	30	1	4
2979	77	30	4	3
2980	32	30	8	8
2981	54	30	6	9
2982	18	30	10	8
2983	52	30	2	6
2984	8	30	2	3
2985	7	30	5	6
2986	37	30	1	10
2987	70	30	6	12
2988	7	30	2	3
2989	80	30	3	3
2990	72	30	4	5
2991	82	30	8	6
2992	74	30	7	3
2993	12	30	1	12
2994	63	30	3	1
2995	71	30	2	1
2996	21	30	4	10
2997	88	30	4	10
2998	32	30	5	9
2999	84	30	3	11
3000	63	30	9	13
3001	85	31	1	13
3002	46	31	10	12
3003	81	31	3	6
3004	21	31	4	4
3005	11	31	1	5
3006	87	31	7	5
3007	61	31	5	1
3008	24	31	3	9
3009	74	31	8	12
3010	64	31	1	3
3011	58	31	5	2
3012	28	31	1	6
3013	21	31	4	1
3014	8	31	6	3
3015	54	31	8	5
3016	31	31	8	1
3017	56	31	4	2
3018	27	31	1	10
3019	15	31	5	8
3020	5	31	7	2
3021	78	31	4	7
3022	9	31	4	10
3023	70	31	8	3
3024	64	31	4	1
3025	83	31	9	12
3026	9	31	6	11
3027	80	31	8	11
3028	87	31	5	7
3029	41	31	4	12
3030	29	31	4	5
3031	41	31	3	11
3032	65	31	3	2
3033	2	31	6	3
3034	81	31	1	3
3035	23	31	2	6
3036	17	31	10	2
3037	70	31	10	5
3038	67	31	7	5
3039	67	31	6	7
3040	19	31	6	4
3041	58	31	2	11
3042	26	31	8	2
3043	8	31	7	6
3044	86	31	9	3
3045	57	31	1	8
3046	45	31	1	4
3047	15	31	9	6
3048	74	31	8	13
3049	4	31	7	4
3050	51	31	6	4
3051	84	31	6	8
3052	58	31	8	3
3053	38	31	5	11
3054	38	31	7	8
3055	19	31	2	2
3056	46	31	1	13
3057	28	31	4	9
3058	1	31	7	8
3059	53	31	5	6
3060	12	31	10	9
3061	50	31	10	5
3062	57	31	8	9
3063	89	31	3	13
3064	75	31	10	1
3065	84	31	7	7
3066	68	31	7	2
3067	84	31	2	12
3068	59	31	7	9
3069	90	31	7	3
3070	14	31	10	13
3071	68	31	8	13
3072	85	31	10	9
3073	61	31	4	1
3074	58	31	7	1
3075	40	31	8	4
3076	42	31	1	12
3077	61	31	6	12
3078	61	31	9	12
3079	75	31	3	8
3080	78	31	2	12
3081	8	31	5	3
3082	18	31	1	11
3083	25	31	2	7
3084	68	31	4	6
3085	13	31	1	3
3086	3	31	2	8
3087	32	31	10	5
3088	69	31	7	7
3089	22	31	2	13
3090	62	31	9	7
3091	42	31	4	11
3092	34	31	9	6
3093	43	31	8	4
3094	6	31	3	3
3095	6	31	1	10
3096	55	31	5	6
3097	52	31	9	13
3098	46	31	2	13
3099	61	31	3	10
3100	28	31	1	11
3101	25	32	10	5
3102	73	32	6	11
3103	9	32	5	3
3104	60	32	7	8
3105	76	32	3	7
3106	89	32	9	8
3107	61	32	2	13
3108	33	32	5	5
3109	69	32	1	7
3110	63	32	10	2
3111	43	32	4	10
3112	12	32	3	2
3113	79	32	9	1
3114	16	32	2	2
3115	57	32	8	12
3116	89	32	9	12
3117	46	32	7	2
3118	86	32	10	8
3119	6	32	9	13
3120	33	32	1	5
3121	4	32	4	13
3122	53	32	10	2
3123	57	32	7	7
3124	60	32	9	2
3125	64	32	8	7
3126	90	32	4	7
3127	14	32	2	10
3128	12	32	5	5
3129	38	32	1	1
3130	23	32	8	4
3131	14	32	6	12
3132	17	32	10	5
3133	47	32	8	6
3134	80	32	6	8
3135	39	32	7	9
3136	10	32	10	3
3137	28	32	6	10
3138	79	32	9	10
3139	55	32	5	10
3140	46	32	4	6
3141	21	32	2	13
3142	69	32	3	2
3143	63	32	7	12
3144	36	32	7	2
3145	88	32	10	1
3146	3	32	6	6
3147	76	32	2	7
3148	22	32	10	10
3149	88	32	1	7
3150	43	32	8	13
3151	60	32	9	4
3152	50	32	9	8
3153	55	32	10	8
3154	17	32	6	10
3155	11	32	2	11
3156	73	32	2	11
3157	62	32	10	8
3158	56	32	7	8
3159	88	32	1	5
3160	55	32	9	2
3161	8	32	5	2
3162	73	32	3	5
3163	62	32	5	11
3164	9	32	6	4
3165	75	32	9	13
3166	26	32	2	6
3167	84	32	2	5
3168	51	32	4	5
3169	2	32	5	13
3170	50	32	6	13
3171	85	32	7	11
3172	66	32	8	11
3173	2	32	10	4
3174	11	32	3	8
3175	76	32	9	4
3176	10	32	9	6
3177	31	32	6	4
3178	21	32	6	12
3179	3	32	1	2
3180	57	32	8	5
3181	71	32	10	10
3182	51	32	6	1
3183	63	32	3	8
3184	49	32	10	1
3185	21	32	8	11
3186	38	32	7	9
3187	15	32	4	7
3188	65	32	9	2
3189	66	32	1	12
3190	88	32	10	5
3191	12	32	2	10
3192	35	32	9	1
3193	39	32	3	2
3194	22	32	7	8
3195	80	32	8	10
3196	56	32	5	9
3197	28	32	4	3
3198	5	32	3	10
3199	80	32	9	6
3200	33	32	1	1
\.


--
-- TOC entry 3535 (class 0 OID 16656)
-- Dependencies: 232
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pais (id, nombre) FROM stdin;
1	Brasil
2	Alemania
3	Argentina
4	Países Bajos
5	Colombia
6	Francia
7	Bélgica
8	Uruguay
9	Chile
10	Costa Rica
11	México
12	Estados Unidos
13	Suiza
14	Grecia
15	Nigeria
16	Argelia
17	Portugal
18	Italia
19	Inglaterra
20	Ecuador
21	Bosnia y Herzegovina
22	Croacia
23	Rusia
24	España
25	Irán
26	Japón
27	Ghana
28	Corea del Sur
29	Australia
30	Camerún
31	Honduras
32	Costa de Marfil
33	China
34	India
35	Egipto
36	Arabia Saudita
37	Nueva Zelanda
38	Paraguay
39	Venezuela
40	Kazajistán
41	Tailandia
42	Vietnam
43	Irlanda
44	Escocia
45	Noruega
46	Suecia
47	Finlandia
48	Dinamarca
49	Austria
50	Hungría
51	Polonia
52	Turquía
53	República Checa
54	Eslovaquia
55	Bulgaria
56	Rumanía
57	Serbia
58	Croacia
59	Eslovenia
60	Armenia
61	Georgia
62	Azerbaiyán
63	Uzbekistán
64	Turkmenistán
65	Malasia
66	Indonesia
67	Filipinas
68	Singapur
69	Mongolia
70	Kuwait
71	Omán
72	Bahréin
73	Qatar
74	Jordania
75	Líbano
76	Siria
77	Afganistán
78	Pakistán
79	Bangladés
80	Nepal
81	Sri Lanka
82	Madagascar
83	Etiopía
84	Kenia
85	Tanzania
86	Uganda
87	Mozambique
88	Zimbabue
89	Zambia
90	Malaui
\.


--
-- TOC entry 3537 (class 0 OID 16660)
-- Dependencies: 234
-- Data for Name: participacion_equipo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.participacion_equipo (id, n_partidos_jugados, puntos_acumulados, posicion_grupo, mundial_genero_id, "mundial_año_id", fase_alcanzada_id, equipo_id) FROM stdin;
1	7	11	1	1	2014	4	1
2	7	19	1	1	2014	5	2
3	7	16	1	1	2014	5	3
4	7	17	1	1	2014	4	4
5	5	12	1	1	2014	3	5
6	5	10	1	1	2014	3	6
7	5	12	1	1	2014	3	7
8	4	6	2	1	2014	2	8
9	4	7	2	1	2014	2	9
10	5	9	1	1	2014	3	10
11	4	7	2	1	2014	2	11
12	4	4	2	1	2014	2	12
13	4	6	2	1	2014	2	13
14	4	5	2	1	2014	2	14
15	4	4	2	1	2014	2	15
16	4	4	2	1	2014	2	16
17	3	4	3	1	2014	1	17
18	3	3	3	1	2014	1	18
19	3	1	4	1	2014	1	19
20	3	4	3	1	2014	1	20
21	3	3	3	1	2014	1	21
22	3	3	3	1	2014	1	22
23	3	2	3	1	2014	1	23
24	3	3	3	1	2014	1	24
25	3	1	4	1	2014	1	25
26	3	1	4	1	2014	1	26
27	3	1	4	1	2014	1	27
28	3	1	4	1	2014	1	28
29	3	0	4	1	2014	1	29
30	3	0	4	1	2014	1	30
31	3	0	4	1	2014	1	31
32	3	3	3	1	2014	1	32
\.


--
-- TOC entry 3555 (class 0 OID 16969)
-- Dependencies: 252
-- Data for Name: participacion_equipo_partido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.participacion_equipo_partido (participacion_equipo_1_id, participacion_equipo_2_id, partido_id, goles) FROM stdin;
1	22	1	4
11	30	2	1
24	4	3	6
9	29	4	4
5	14	5	3
32	26	6	3
8	10	7	3
19	18	8	3
13	20	9	3
6	31	10	3
3	21	11	3
25	15	12	0
2	17	13	4
27	12	14	3
7	16	15	3
23	28	16	2
1	11	17	0
30	22	18	4
24	9	19	2
29	4	20	5
5	32	21	3
26	14	22	0
8	19	23	3
18	10	24	1
13	6	25	7
31	20	26	3
3	25	27	1
15	21	28	1
2	27	29	4
12	17	30	4
7	23	31	1
28	16	32	6
30	1	33	5
22	11	34	4
29	24	35	3
4	9	36	2
26	5	37	5
14	32	38	3
18	8	39	1
10	19	40	0
31	13	41	3
20	6	42	0
15	3	43	5
21	25	44	4
12	2	45	1
17	27	46	3
28	7	47	1
16	23	48	2
1	9	49	5
5	8	50	2
4	11	51	3
10	14	52	8
6	15	53	2
2	16	54	3
3	13	55	1
7	12	56	3
1	5	57	3
6	2	58	1
4	10	59	7
3	7	60	1
1	2	61	8
4	3	62	6
1	4	63	3
2	3	64	1
\.


--
-- TOC entry 3539 (class 0 OID 16664)
-- Dependencies: 236
-- Data for Name: participacion_jugador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.participacion_jugador (id, n_min_jugados, estado_fisico_id, participacion_equipo_id, jugador_id) FROM stdin;
1	195	4	1	1
2	254	12	1	2
3	106	11	1	3
4	144	7	1	4
5	267	7	1	5
6	115	9	1	6
7	194	1	1	7
8	125	5	1	8
9	98	5	1	9
10	248	3	1	10
11	181	2	1	11
12	240	11	1	12
13	178	5	1	13
14	268	1	1	14
15	237	1	1	15
16	264	7	1	16
17	249	7	1	17
18	194	1	1	18
19	198	6	1	19
20	102	12	1	20
21	147	11	1	21
22	205	8	1	22
23	101	11	1	23
24	111	8	2	24
25	183	3	2	25
26	109	1	2	26
27	104	2	2	27
28	119	4	2	28
29	214	4	2	29
30	119	11	2	30
31	233	7	2	31
32	102	2	2	32
33	115	8	2	33
34	241	10	2	34
35	231	6	2	35
36	226	6	2	36
37	189	4	2	37
38	102	6	2	38
39	208	3	2	39
40	189	7	2	40
41	166	11	2	41
42	235	1	2	42
43	100	4	2	43
44	141	8	2	44
45	257	4	2	45
46	265	4	2	46
47	96	8	3	47
48	265	5	3	48
49	266	11	3	49
50	257	11	3	50
51	182	7	3	51
52	159	10	3	52
53	132	3	3	53
54	154	2	3	54
55	126	11	3	55
56	138	9	3	56
57	146	2	3	57
58	93	5	3	58
59	213	6	3	59
60	107	2	3	60
61	197	7	3	61
62	257	8	3	62
63	184	7	3	63
64	115	1	3	64
65	257	12	3	65
66	258	6	3	66
67	244	3	3	67
68	161	10	3	68
69	268	5	3	69
70	196	7	4	70
71	268	10	4	71
72	178	5	4	72
73	109	4	4	73
74	223	9	4	74
75	154	9	4	75
76	164	6	4	76
77	91	6	4	77
78	163	1	4	78
79	99	3	4	79
80	236	8	4	80
81	166	7	4	81
82	105	3	4	82
83	127	1	4	83
84	218	2	4	84
85	140	11	4	85
86	152	1	4	86
87	186	4	4	87
88	154	9	4	88
89	172	1	4	89
90	106	8	4	90
91	127	3	4	91
92	266	2	4	92
93	241	9	5	93
94	228	5	5	94
95	231	3	5	95
96	241	5	5	96
97	210	11	5	97
98	205	3	5	98
99	161	8	5	99
100	207	11	5	100
101	105	3	5	101
102	96	3	5	102
103	267	8	5	103
104	90	6	5	104
105	106	4	5	105
106	236	7	5	106
107	192	5	5	107
108	112	12	5	108
109	248	10	5	109
110	119	7	5	110
111	95	2	5	111
112	104	5	5	112
113	167	10	5	113
114	172	9	5	114
115	127	10	5	115
116	155	8	6	116
117	159	4	6	117
118	118	10	6	118
119	256	9	6	119
120	159	5	6	120
121	222	6	6	121
122	124	1	6	122
123	235	10	6	123
124	187	9	6	124
125	202	10	6	125
126	150	9	6	126
127	270	2	6	127
128	132	1	6	128
129	218	9	6	129
130	172	1	6	130
131	118	4	6	131
132	130	10	6	132
133	208	3	6	133
134	246	6	6	134
135	224	12	6	135
136	208	2	6	136
137	198	4	6	137
138	260	11	6	138
139	208	1	7	139
140	99	12	7	140
141	149	11	7	141
142	95	5	7	142
143	229	10	7	143
144	193	6	7	144
145	103	2	7	145
146	266	8	7	146
147	249	10	7	147
148	190	11	7	148
149	217	8	7	149
150	98	1	7	150
151	266	9	7	151
152	135	1	7	152
153	198	10	7	153
154	98	6	7	154
155	255	8	7	155
156	173	7	7	156
157	137	9	7	157
158	133	7	7	158
159	267	4	7	159
160	147	5	7	160
161	237	8	7	161
162	157	11	8	162
163	163	4	8	163
164	171	9	8	164
165	254	2	8	165
166	129	6	8	166
167	197	9	8	167
168	181	8	8	168
169	219	4	8	169
170	122	10	8	170
171	108	9	8	171
172	226	8	8	172
173	188	8	8	173
174	92	12	8	174
175	241	8	8	175
176	143	8	8	176
177	211	1	8	177
178	224	11	8	178
179	255	5	8	179
180	261	8	8	180
181	124	3	8	181
182	199	8	8	182
183	190	2	8	183
184	165	11	9	184
185	189	5	9	185
186	91	8	9	186
187	100	5	9	187
188	198	5	9	188
189	146	9	9	189
190	242	6	9	190
191	93	7	9	191
192	142	2	9	192
193	140	11	9	193
194	208	8	9	194
195	97	10	9	195
196	141	4	9	196
197	268	7	9	197
198	135	9	9	198
199	155	3	9	199
200	127	1	9	200
201	266	2	9	201
202	100	5	9	202
203	107	6	9	203
204	232	8	9	204
205	268	9	9	205
206	214	12	10	206
207	195	1	10	207
208	236	8	10	208
209	106	11	10	209
210	244	10	10	210
211	92	8	10	211
212	124	3	10	212
213	201	1	10	213
214	253	1	10	214
215	152	10	10	215
216	137	3	10	216
217	145	1	10	217
218	247	3	10	218
219	241	8	10	219
220	266	10	10	220
221	181	7	10	221
222	110	11	10	222
223	115	6	10	223
224	144	5	10	224
225	191	4	10	225
325	152	10	11	325
326	106	8	11	326
327	143	6	11	327
328	156	7	11	328
329	117	8	11	329
330	202	7	11	330
331	95	2	11	331
332	223	8	11	332
333	177	2	11	333
334	243	11	11	334
335	120	12	11	335
336	226	11	11	336
337	236	5	11	337
338	93	1	11	338
339	139	4	11	339
340	255	3	11	340
341	266	11	11	341
342	102	6	11	342
343	172	12	11	343
344	114	3	11	344
345	213	12	12	345
346	225	6	12	346
347	170	3	12	347
348	254	3	12	348
349	166	6	12	349
350	144	3	12	350
351	100	2	12	351
352	149	12	12	352
353	103	12	12	353
354	229	4	12	354
355	146	7	13	355
356	247	5	13	356
357	210	6	13	357
358	191	9	13	358
359	103	6	13	359
360	245	12	13	360
361	255	1	13	361
362	149	1	13	362
363	211	10	13	363
364	185	12	13	364
365	230	12	14	365
366	196	6	14	366
367	159	11	14	367
368	116	5	14	368
369	240	5	14	369
370	200	7	14	370
371	259	11	14	371
372	236	7	14	372
373	154	4	14	373
374	237	7	14	374
375	139	6	15	375
376	232	3	15	376
377	247	2	15	377
378	237	1	15	378
379	225	2	15	379
380	241	10	15	380
381	193	1	15	381
382	197	10	15	382
383	201	4	15	383
384	145	10	15	384
385	221	5	16	385
386	185	2	16	386
387	246	2	16	387
388	177	4	16	388
389	245	9	16	389
390	220	4	16	390
391	251	12	16	391
392	126	2	16	392
393	99	1	16	393
394	247	1	16	394
395	143	8	17	395
396	245	6	17	396
397	105	8	17	397
398	227	3	17	398
399	212	1	17	399
400	197	3	17	400
401	263	1	17	401
402	254	12	17	402
403	103	9	17	403
404	107	6	17	404
286	238	3	18	286
285	174	8	18	285
287	258	11	18	287
288	146	9	18	288
289	238	8	18	289
290	235	4	18	290
291	118	7	18	291
292	154	10	18	292
293	152	2	18	293
294	195	5	18	294
295	181	1	18	295
296	245	11	18	296
297	251	8	18	297
298	242	2	18	298
299	227	12	18	299
300	185	12	18	300
301	218	2	18	301
302	108	7	18	302
303	95	2	18	303
304	161	4	18	304
265	187	4	19	265
266	198	6	19	266
267	225	6	19	267
268	103	11	19	268
269	253	4	19	269
270	248	9	19	270
271	221	4	19	271
272	96	1	19	272
273	243	4	19	273
274	116	3	19	274
275	171	12	19	275
276	161	3	19	276
277	131	3	19	277
278	196	5	19	278
279	118	7	19	279
280	161	10	19	280
281	219	11	19	281
282	189	11	19	282
283	216	2	19	283
284	217	5	19	284
246	177	5	20	246
247	200	7	20	247
248	179	2	20	248
249	253	6	20	249
250	253	12	20	250
251	170	2	20	251
252	266	6	20	252
253	181	9	20	253
254	112	5	20	254
255	199	8	20	255
256	218	7	20	256
257	165	6	20	257
258	124	7	20	258
259	261	11	20	259
260	173	11	20	260
261	268	12	20	261
262	129	3	20	262
263	144	7	20	263
264	114	6	20	264
405	152	6	21	405
406	214	7	21	406
407	260	6	21	407
408	136	1	21	408
409	98	8	21	409
410	110	7	21	410
411	98	1	21	411
412	151	4	21	412
413	163	11	21	413
414	120	2	21	414
227	106	5	22	227
226	202	4	22	226
228	110	11	22	228
229	92	1	22	229
230	234	1	22	230
231	211	8	22	231
232	236	4	22	232
233	205	5	22	233
234	206	5	22	234
235	194	4	22	235
236	161	1	22	236
237	244	5	22	237
238	227	3	22	238
239	95	10	22	239
240	110	8	22	240
241	197	3	22	241
242	130	6	22	242
243	189	8	22	243
244	95	12	22	244
245	213	12	22	245
415	215	9	23	415
416	167	4	23	416
417	207	1	23	417
418	202	10	23	418
419	227	2	23	419
420	215	2	23	420
421	218	8	23	421
422	101	11	23	422
423	101	11	23	423
424	101	11	23	424
425	104	7	24	425
426	257	4	24	426
427	263	1	24	427
428	250	12	24	428
429	158	10	24	429
430	179	2	24	430
431	254	10	24	431
432	181	1	24	432
433	92	12	24	433
434	122	8	24	434
435	249	8	25	435
436	260	6	25	436
437	124	1	25	437
438	127	11	25	438
439	154	4	25	439
440	244	11	25	440
441	194	1	25	441
442	157	11	25	442
443	208	6	25	443
444	224	7	25	444
305	240	12	26	305
306	205	12	26	306
307	143	6	26	307
308	213	4	26	308
309	105	3	26	309
310	132	10	26	310
311	192	3	26	311
312	252	7	26	312
313	93	12	26	313
314	167	5	26	314
315	148	7	26	315
316	266	4	26	316
317	229	1	26	317
318	122	8	26	318
319	186	8	26	319
320	202	10	26	320
321	245	8	26	321
322	126	1	26	322
323	231	11	26	323
324	142	11	26	324
445	211	2	27	445
446	180	10	27	446
447	231	2	27	447
448	219	6	27	448
449	106	5	27	449
450	103	6	27	450
451	217	6	27	451
452	153	1	27	452
453	206	9	27	453
454	221	4	27	454
455	206	2	28	455
456	126	11	28	456
457	130	9	28	457
458	239	2	28	458
459	164	6	28	459
460	197	12	28	460
461	174	1	28	461
462	259	1	28	462
463	261	9	28	463
464	176	10	28	464
465	217	4	29	465
466	160	1	29	466
467	194	11	29	467
468	163	4	29	468
469	234	11	29	469
470	220	8	29	470
471	118	1	29	471
472	132	12	29	472
473	156	7	29	473
474	195	6	29	474
475	267	8	30	475
476	241	4	30	476
477	136	3	30	477
478	259	6	30	478
479	262	11	30	479
480	205	8	30	480
481	261	7	30	481
482	148	11	30	482
483	92	4	30	483
484	185	3	30	484
485	144	6	31	485
486	127	7	31	486
487	154	6	31	487
488	97	12	31	488
489	119	9	31	489
490	145	11	31	490
491	211	1	31	491
492	251	4	31	492
493	177	5	31	493
494	215	3	31	494
495	224	12	32	495
496	161	8	32	496
497	114	6	32	497
498	203	6	32	498
499	195	12	32	499
500	240	8	32	500
501	173	5	32	501
502	198	5	32	502
503	129	8	32	503
504	201	3	32	504
\.


--
-- TOC entry 3541 (class 0 OID 16668)
-- Dependencies: 238
-- Data for Name: partido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.partido (id, fecha_hora, clima, resultado, duracion, estadio_id, genero_id, fase_id, "año_id") FROM stdin;
1	2014-11-21 18:00:00	Soleado	3-1	90	1	1	1	2014
2	2014-11-21 18:00:00	Soleado	1-0	90	2	1	1	2014
3	2014-12-06 18:00:00	Soleado	1-5	90	3	1	1	2014
4	2014-11-21 18:00:00	Soleado	3-1	90	4	1	1	2014
5	2014-11-21 18:00:00	Soleado	3-0	90	5	1	1	2014
6	2014-11-21 18:00:00	Soleado	2-1	90	6	1	1	2014
7	2014-11-21 18:00:00	Soleado	1-3	90	7	1	1	2014
8	2014-11-21 18:00:00	Soleado	1-2	90	8	1	1	2014
9	2014-11-21 18:00:00	Soleado	2-1	90	1	1	1	2014
10	2014-11-21 18:00:00	Soleado	3-0	90	2	1	1	2014
11	2014-11-21 18:00:00	Soleado	2-1	90	3	1	1	2014
12	2014-11-21 18:00:00	Soleado	0-0	90	4	1	1	2014
13	2014-11-21 18:00:00	Soleado	4-0	90	5	1	1	2014
14	2014-11-21 18:00:00	Soleado	1-2	90	6	1	1	2014
15	2014-11-21 18:00:00	Soleado	2-1	90	7	1	1	2014
16	2014-11-21 18:00:00	Soleado	1-1	90	8	1	1	2014
17	2014-11-21 18:00:00	Soleado	0-0	90	1	1	1	2014
18	2014-11-21 18:00:00	Soleado	0-4	90	2	1	1	2014
19	2014-11-21 18:00:00	Soleado	0-2	90	3	1	1	2014
20	2014-11-21 18:00:00	Soleado	2-3	90	4	1	1	2014
21	2014-11-21 18:00:00	Soleado	2-1	90	5	1	1	2014
22	2014-11-21 18:00:00	Soleado	0-0	90	6	1	1	2014
23	2014-11-21 18:00:00	Soleado	2-1	90	7	1	1	2014
24	2014-11-21 18:00:00	Soleado	0-1	90	8	1	1	2014
25	2014-11-21 18:00:00	Soleado	2-5	90	1	1	1	2014
26	2014-11-21 18:00:00	Soleado	1-2	90	2	1	1	2014
27	2014-11-21 18:00:00	Soleado	1-0	90	3	1	1	2014
28	2014-11-21 18:00:00	Soleado	1-0	90	4	1	1	2014
29	2014-11-21 18:00:00	Soleado	2-2	90	5	1	1	2014
30	2014-11-21 18:00:00	Soleado	2-2	90	6	1	1	2014
31	2014-11-21 18:00:00	Soleado	1-0	90	7	1	1	2014
32	2014-11-21 18:00:00	Soleado	2-4	90	8	1	1	2014
33	2014-11-21 18:00:00	Soleado	1-4	90	1	1	1	2014
34	2014-11-21 18:00:00	Soleado	1-3	90	2	1	1	2014
35	2014-11-21 18:00:00	Soleado	0-3	90	3	1	1	2014
36	2014-11-21 18:00:00	Soleado	2-0	90	4	1	1	2014
37	2014-11-21 18:00:00	Soleado	1-4	90	5	1	1	2014
38	2014-11-21 18:00:00	Soleado	2-1	90	6	1	1	2014
39	2014-11-21 18:00:00	Soleado	0-1	90	7	1	1	2014
40	2014-11-21 18:00:00	Soleado	0-0	90	8	1	1	2014
41	2014-11-21 18:00:00	Soleado	0-3	90	1	1	1	2014
42	2014-11-21 18:00:00	Soleado	0-0	90	2	1	1	2014
43	2014-11-21 18:00:00	Soleado	2-3	90	3	1	1	2014
44	2014-11-21 18:00:00	Soleado	3-1	90	4	1	1	2014
45	2014-11-21 18:00:00	Soleado	0-1	90	5	1	1	2014
46	2014-11-21 18:00:00	Soleado	2-1	90	6	1	1	2014
47	2014-11-21 18:00:00	Soleado	0-1	90	7	1	1	2014
48	2014-11-21 18:00:00	Soleado	1-1	90	8	1	1	2014
49	2014-11-21 18:00:00	Soleado	3-2	120	1	1	2	2014
50	2014-11-21 18:00:00	Soleado	2-0	90	2	1	2	2014
51	2014-11-21 18:00:00	Soleado	2-1	90	3	1	2	2014
52	2014-11-21 18:00:00	Soleado	5-3	120	4	1	2	2014
53	2014-11-21 18:00:00	Soleado	2-0	90	5	1	2	2014
54	2014-11-21 18:00:00	Soleado	2-1	120	6	1	2	2014
55	2014-11-21 18:00:00	Soleado	1-0	120	7	1	2	2014
56	2014-11-21 18:00:00	Soleado	2-1	120	8	1	2	2014
57	2014-11-21 18:00:00	Soleado	2-1	90	1	1	3	2014
58	2014-11-21 18:00:00	Soleado	0-1	90	2	1	3	2014
59	2014-11-21 18:00:00	Soleado	4-3	120	3	1	3	2014
60	2014-11-21 18:00:00	Soleado	1-0	90	4	1	3	2014
61	2014-11-21 18:00:00	Soleado	1-7	90	5	1	4	2014
62	2014-11-21 18:00:00	Soleado	2-4	120	6	1	4	2014
63	2014-11-21 18:00:00	Soleado	0-3	90	7	1	6	2014
64	2014-11-21 18:00:00	Soleado	1-0	120	8	1	5	2014
\.


--
-- TOC entry 3542 (class 0 OID 16671)
-- Dependencies: 239
-- Data for Name: partido_arbitro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.partido_arbitro (partido_id, arbitro_id, puesto_id) FROM stdin;
1	505	1
1	506	2
1	507	3
1	508	4
2	506	1
2	507	2
2	508	3
2	509	4
3	507	1
3	508	2
3	509	3
3	510	4
4	508	1
4	509	2
4	510	3
4	511	4
5	509	1
5	510	2
5	511	3
5	512	4
6	510	1
6	511	2
6	512	3
6	513	4
7	511	1
7	512	2
7	513	3
7	514	4
8	512	1
8	513	2
8	514	3
8	515	4
9	513	1
9	514	2
9	515	3
9	516	4
10	514	1
10	515	2
10	516	3
10	517	4
11	515	1
11	516	2
11	517	3
11	518	4
12	516	1
12	517	2
12	518	3
12	519	4
13	517	1
13	518	2
13	519	3
13	520	4
14	518	1
14	519	2
14	520	3
14	521	4
15	519	1
15	520	2
15	521	3
15	522	4
16	520	1
16	521	2
16	522	3
16	523	4
17	521	1
17	522	2
17	523	3
17	524	4
18	522	1
18	523	2
18	524	3
18	525	4
19	523	1
19	524	2
19	525	3
19	526	4
20	524	1
20	525	2
20	526	3
20	527	4
21	525	1
21	526	2
21	527	3
21	528	4
22	526	1
22	527	2
22	528	3
22	529	4
23	527	1
23	528	2
23	529	3
23	530	4
24	528	1
24	529	2
24	530	3
24	531	4
25	529	1
25	530	2
25	531	3
25	532	4
26	530	1
26	531	2
26	532	3
26	533	4
27	531	1
27	532	2
27	533	3
27	534	4
28	532	1
28	533	2
28	534	3
28	535	4
29	533	1
29	534	2
29	535	3
29	505	4
30	534	1
30	535	2
30	505	3
30	506	4
31	535	1
31	505	2
31	506	3
31	507	4
32	505	1
32	506	2
32	507	3
32	508	4
33	506	1
33	507	2
33	508	3
33	509	4
34	507	1
34	508	2
34	509	3
34	510	4
35	508	1
35	509	2
35	510	3
35	511	4
36	509	1
36	510	2
36	511	3
36	512	4
37	510	1
37	511	2
37	512	3
37	513	4
38	511	1
38	512	2
38	513	3
38	514	4
39	512	1
39	513	2
39	514	3
39	515	4
40	513	1
40	514	2
40	515	3
40	516	4
41	514	1
41	515	2
41	516	3
41	517	4
42	515	1
42	516	2
42	517	3
42	518	4
43	516	1
43	517	2
43	518	3
43	519	4
44	517	1
44	518	2
44	519	3
44	520	4
45	518	1
45	519	2
45	520	3
45	521	4
46	519	1
46	520	2
46	521	3
46	522	4
47	520	1
47	521	2
47	522	3
47	523	4
48	521	1
48	522	2
48	523	3
48	524	4
49	522	1
49	523	2
49	524	3
49	525	4
50	523	1
50	524	2
50	525	3
50	526	4
51	524	1
51	525	2
51	526	3
51	527	4
52	525	1
52	526	2
52	527	3
52	528	4
53	526	1
53	527	2
53	528	3
53	529	4
54	527	1
54	528	2
54	529	3
54	530	4
55	528	1
55	529	2
55	530	3
55	531	4
56	529	1
56	530	2
56	531	3
56	532	4
57	530	1
57	531	2
57	532	3
57	533	4
58	531	1
58	532	2
58	533	3
58	534	4
59	532	1
59	533	2
59	534	3
59	535	4
60	533	1
60	534	2
60	535	3
60	505	4
61	534	1
61	535	2
61	505	3
61	506	4
62	535	1
62	505	2
62	506	3
62	507	4
63	505	1
63	506	2
63	507	3
63	508	4
64	506	1
64	507	2
64	508	3
64	509	4
\.


--
-- TOC entry 3544 (class 0 OID 16675)
-- Dependencies: 241
-- Data for Name: patrocinador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patrocinador (id, nombre, pais_id) FROM stdin;
1	Adidas	2
2	Coca-Cola	12
3	Emirates	73
4	Sony	26
5	Hyundai	28
6	Visa	12
7	McDonald\\'s	12
8	Budweiser	12
9	Castrol	24
10	Johnson & Johnson	12
11	Continental	2
12	Yingli Solar	33
13	Nike	12
14	Puma	2
15	Samsung	28
16	Toyota	26
17	PepsiCo	12
18	Red Bull	49
19	Heineken	4
20	Apple	12
21	Huawei	33
22	Amazon	12
\.


--
-- TOC entry 3546 (class 0 OID 16679)
-- Dependencies: 243
-- Data for Name: patrocinador_mundial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patrocinador_mundial (patrocinador_id, genero_id, "año") FROM stdin;
1	1	2014
2	1	2014
3	1	2014
4	1	2014
5	1	2014
6	1	2014
7	1	2014
8	1	2014
9	1	2014
10	1	2014
11	1	2014
12	1	2014
\.


--
-- TOC entry 3547 (class 0 OID 16682)
-- Dependencies: 244
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.persona (id, nombre, apellido, edad, documento, genero_id, tipo_documento_id, pais_id) FROM stdin;
1	Alisson	Becker	22	1001001	1	1	1
2	Thiago	Silva	30	1001002	1	1	1
3	David	Luiz	27	1001003	1	1	1
4	Marcelo	Vieira	26	1001004	1	1	1
5	Casemiro	Santos	22	1001005	1	1	1
6	Paulinho	Bezerra	26	1001006	1	1	1
7	Oscar	Emboaba	22	1001007	1	1	1
8	Philippe	Coutinho	22	1001008	1	1	1
9	Neymar	Santos	22	1001009	1	1	1
10	Gabriel	Jesus	17	1001010	1	1	1
11	Richarlison	Andrade	17	1001011	1	1	1
12	Ederson	Moraes	21	1001012	1	1	1
13	Danilo	Silva	23	1001013	1	1	1
14	Marquinhos	Correa	20	1001014	1	1	1
15	Renan	Lodi	21	1001015	1	1	1
16	Fred	Santos	30	1001016	1	1	1
17	Fernandinho	Rocha	29	1001017	1	1	1
18	Lucas	Moura	21	1001018	1	1	1
19	Rafinha	Alcántara	21	1001019	1	1	1
20	Douglas	Costa	23	1001020	1	1	1
21	Willian	Borges	25	1001021	1	1	1
22	João	Miranda	29	1001022	1	1	1
23	Hulk	Vieira	28	1001023	1	1	1
24	Manuel	Neuer	28	1001024	1	1	2
25	Mats	Hummels	25	1001025	1	2	2
26	Jerome	Boateng	25	1001026	1	3	2
27	Benedikt	Höwedes	26	1001027	1	4	2
28	Philipp	Lahm	30	1001028	1	5	2
29	Toni	Kroos	24	1001029	1	6	2
30	Mesut	Özil	25	1001030	1	7	2
31	Thomas	Müller	24	1001031	1	8	2
32	Mario	Götze	22	1001032	1	1	2
33	Miroslav	Klose	36	1001033	1	2	2
34	André	Schürrle	23	1001034	1	3	2
35	Bastian	Schweinsteiger	29	1001035	1	4	2
36	Per	Mertesacker	29	1001036	1	5	2
37	Kevin	Großkreutz	25	1001037	1	6	2
38	Lukas	Podolski	29	1001038	1	7	2
39	Shkodran	Mustafi	22	1001039	1	8	2
40	Julian	Draxler	20	1001040	1	1	2
41	Sami	Khedira	27	1001041	1	2	2
42	Roman	Weidenfeller	33	1001042	1	3	2
43	Christoph	Kramer	23	1001043	1	4	2
44	Erik	Durm	22	1001044	1	5	2
45	Matthias	Ginter	20	1001045	1	6	2
46	Ron-Robert	Zieler	25	1001046	1	7	2
47	Sergio	Romero	27	2001047	1	1	3
48	Pablo	Zabaleta	29	2001048	1	2	3
49	Ezequiel	Garay	27	2001049	1	3	3
50	Marcos	Rojo	24	2001050	1	4	3
51	Javier	Mascherano	30	2001051	1	5	3
52	Lucas	Biglia	28	2001052	1	6	3
53	Angel	Di María	26	2001053	1	7	3
54	Lionel	Messi	27	2001054	1	8	3
55	Gonzalo	Higuaín	26	2001055	1	1	3
56	Sergio	Agüero	26	2001056	1	2	3
57	Enzo	Pérez	28	2001057	1	3	3
58	Maximiliano	Rodríguez	33	2001058	1	4	3
59	Fernando	Gago	28	2001059	1	5	3
60	Ezequiel	Lavezzi	29	2001060	1	6	3
61	Federico	Fernández	25	2001061	1	7	3
62	José	Basanta	30	2001062	1	8	3
63	Augusto	Fernández	28	2001063	1	1	3
64	Mariano	Andújar	31	2001064	1	2	3
65	Hugo	Campagnaro	34	2001065	1	3	3
66	Ricardo	Alvarez	26	2001066	1	4	3
67	Franco	Armani	27	2001067	1	5	3
68	Facundo	Roncaglia	26	2001068	1	6	3
69	Gabriel	Mercado	27	2001069	1	7	3
70	Jasper	Cillessen	25	3001070	1	1	4
71	Ron	Vlaar	29	3001071	1	2	4
72	Stefan	de Vrij	22	3001072	1	3	4
73	Daley	Blind	24	3001073	1	4	4
74	Nigel	de Jong	29	3001074	1	5	4
75	Wesley	Sneijder	30	3001075	1	6	4
76	Dirk	Kuyt	33	3001076	1	7	4
77	Robin	van Persie	30	3001077	1	8	4
78	Arjen	Robben	30	3001078	1	1	4
79	Memphis	Depay	20	3001079	1	2	4
80	Georginio	Wijnaldum	23	3001080	1	3	4
81	Klaas-Jan	Huntelaar	30	3001081	1	4	4
82	Jonathan	de Guzmán	27	3001082	1	5	4
83	Daryl	Janmaat	24	3001083	1	6	4
84	Bruno	Martins Indi	22	3001084	1	7	4
85	Terence	Kongolo	20	3001085	1	8	4
86	Michel	Vorm	30	3001086	1	1	4
87	Joel	Veltman	22	3001087	1	2	4
88	Jeremain	Lens	26	3001088	1	3	4
89	Tim	Krul	26	3001089	1	4	4
90	Stefan	Ake	21	3001090	1	5	4
91	Kenneth	Vermeer	28	3001091	1	6	4
92	Luciano	Narsingh	23	3001092	1	7	4
93	David	Ospina	25	4001093	1	1	5
94	Camilo	Zúñiga	28	4001094	1	2	5
95	Pablo	Armero	27	4001095	1	3	5
96	Cristián	Zapata	27	4001096	1	4	5
97	Mario	Yepes	38	4001097	1	5	5
98	Carlos	Sánchez	28	4001098	1	6	5
99	Abel	Aguilar	29	4001099	1	7	5
100	James	Rodríguez	23	4001100	1	8	5
101	Teófilo	Gutiérrez	29	4001101	1	1	5
102	Juan	Cuadrado	26	4001102	1	2	5
103	Jackson	Martínez	27	4001103	1	3	5
104	Fredy	Guarín	28	4001104	1	4	5
105	Adrián	Ramos	28	4001105	1	5	5
106	Carlos	Bacca	27	4001106	1	6	5
107	Alexander	Mejía	26	4001107	1	7	5
108	Santiago	Arias	22	4001108	1	8	5
109	Éder	Álvarez Balanta	21	4001109	1	1	5
110	Faryd	Mondragón	43	4001110	1	2	5
111	Carlos	Valdés	29	4001111	1	3	5
112	Víctor	Ibarbo	24	4001112	1	4	5
113	Stefan	Medina	22	4001113	1	5	5
114	Johan	Mojica	22	4001114	1	6	5
115	Andrés	Ibargüen	22	4001115	1	7	5
116	Hugo	Lloris	27	5001116	1	1	6
117	Raphael	Varane	21	5001117	1	2	6
118	Patrice	Evra	33	5001118	1	3	6
119	Mamadou	Sakho	24	5001119	1	4	6
120	Mathieu	Debuchy	28	5001120	1	5	6
121	Paul	Pogba	21	5001121	1	6	6
122	Blaise	Matuidi	27	5001122	1	7	6
123	Yohan	Cabaye	28	5001123	1	8	6
124	Karim	Benzema	26	5001124	1	1	6
125	Olivier	Giroud	27	5001125	1	2	6
126	Antoine	Griezmann	23	5001126	1	3	6
127	Loic	Remy	27	5001127	1	4	6
128	Moussa	Sissoko	24	5001128	1	5	6
129	Lucas	Digne	20	5001129	1	6	6
130	Laurent	Koscielny	28	5001130	1	7	6
131	Bacary	Sagna	31	5001131	1	8	6
132	Steve	Mandanda	29	5001132	1	1	6
133	Rémy	Cabella	24	5001133	1	2	6
134	Rio	Mavuba	30	5001134	1	3	6
135	Morgan	Schneiderlin	24	5001135	1	4	6
136	Stéphane	Ruffier	27	5001136	1	5	6
137	Franck	Ribéry	31	5001137	1	6	6
138	Jeremy	Ménez	27	5001138	1	7	6
139	Thibaut	Courtois	22	6001139	1	1	7
140	Vincent	Kompany	28	6001140	1	2	7
141	Jan	Vertonghen	27	6001141	1	3	7
142	Toby	Alderweireld	25	6001142	1	4	7
143	Thomas	Vermaelen	28	6001143	1	5	7
144	Axel	Witsel	25	6001144	1	6	7
145	Kevin	De Bruyne	23	6001145	1	7	7
146	Marouane	Fellaini	26	6001146	1	8	7
147	Eden	Hazard	23	6001147	1	1	7
148	Romelu	Lukaku	21	6001148	1	2	7
149	Dries	Mertens	27	6001149	1	3	7
150	Divock	Origi	19	6001150	1	4	7
151	Mousa	Dembélé	27	6001151	1	5	7
152	Nacer	Chadli	24	6001152	1	6	7
153	Adnan	Januzaj	19	6001153	1	7	7
154	Daniel	Van Buyten	36	6001154	1	8	7
155	Simon	Mignolet	26	6001155	1	1	7
156	Laurent	Ciman	29	6001156	1	2	7
157	Anthony	Vanden Borre	26	6001157	1	3	7
158	Steven	Defour	26	6001158	1	4	7
159	Thorgan	Hazard	21	6001159	1	5	7
160	Guillaume	Gillet	30	6001160	1	6	7
161	Logan	Bailly	28	6001161	1	7	7
162	Fernando	Muslera	28	7001162	1	1	8
163	Diego	Godín	28	7001163	1	2	8
164	José María	Giménez	19	7001164	1	3	8
165	Maximiliano	Pereira	30	7001165	1	4	8
166	Martín	Cáceres	27	7001166	1	5	8
167	Cristian	Rodríguez	28	7001167	1	6	8
168	Walter	Gargano	29	7001168	1	7	8
169	Egidio	Arévalo Ríos	32	7001169	1	8	8
170	Luis	Suárez	27	7001170	1	1	8
171	Edinson	Cavani	27	7001171	1	2	8
172	Diego	Forlán	35	7001172	1	3	8
173	Sebastián	Coates	23	7001173	1	4	8
174	Álvaro	González	29	7001174	1	5	8
175	Jorge	Fucile	29	7001175	1	6	8
176	Nicolás	Lodeiro	25	7001176	1	7	8
177	Abel	Hernández	23	7001177	1	8	8
178	Gastón	Ramírez	23	7001178	1	1	8
179	Martín	Silva	31	7001179	1	2	8
180	Sebastián	Egidio	31	7001180	1	3	8
181	Mathías	Corujo	28	7001181	1	4	8
182	Andrés	Scottí	38	7001182	1	5	8
183	Diego	Laxalt	21	7001183	1	6	8
184	Claudio	Bravo	31	8001184	1	1	9
185	Gary	Medel	26	8001185	1	2	9
186	Mauricio	Isla	26	8001186	1	3	9
187	Eugenio	Mena	25	8001187	1	4	9
188	Gonzalo	Jara	28	8001188	1	5	9
189	Francisco	Silva	28	8001189	1	6	9
190	Arturo	Vidal	27	8001190	1	7	9
191	Charles	Aránguiz	25	8001191	1	8	9
192	Jorge	Valdivia	30	8001192	1	1	9
193	Eduardo	Vargas	24	8001193	1	2	9
194	Alexis	Sánchez	25	8001194	1	3	9
195	Felipe	Gutiérrez	23	8001195	1	4	9
196	Jean	Beausejour	30	8001196	1	5	9
197	José	Rojas	31	8001197	1	6	9
198	Esteban	Paredes	33	8001198	1	7	9
199	Fabián	Orellana	28	8001199	1	8	9
200	Miiko	Albornoz	23	8001200	1	1	9
201	Mauricio	Pinilla	30	8001201	1	2	9
202	Pablo	Hernández	27	8001202	1	3	9
203	Cristopher	Toselli	26	8001203	1	4	9
204	Johnny	Herrera	33	8001204	1	5	9
205	Enzo	Roco	22	8001205	1	6	9
206	Keylor	Navas	27	9001206	1	1	10
207	Michael	Umaña	31	9001207	1	2	10
208	Giancarlo	González	26	9001208	1	3	10
209	Oscar	Duarte	25	9001209	1	4	10
210	Júnior	Díaz	30	9001210	1	5	10
211	Christian	Gamboa	24	9001211	1	6	10
212	Celso	Borges	26	9001212	1	7	10
213	Yeltsin	Tejeda	22	9001213	1	8	10
214	Bryan	Ruiz	28	9001214	1	1	10
215	Joel	Campbell	22	9001215	1	2	10
216	Marco	Ureña	24	9001216	1	3	10
217	David	Guzmán	24	9001217	1	4	10
218	José Miguel	Cubero	27	9001218	1	5	10
219	Randall	Brenes	31	9001219	1	6	10
220	Patrick	Pemberton	32	9001220	1	7	10
221	Daniel	Cambronero	28	9001221	1	8	10
222	Waylon	Francis	23	9001222	1	1	10
223	Roy	Miller	29	9001223	1	2	10
224	Cristian	Bolaños	30	9001224	1	3	10
225	Johnny	Acosta	31	9001225	1	4	10
226	Stipe	Pletikosa	35	1001226	1	1	22
227	Danijel	Subašić	29	1001227	1	2	22
228	Ivan	Rakitić	26	1001228	1	3	22
229	Luka	Modrić	28	1001229	1	4	22
230	Dejan	Lovren	24	1001230	1	5	22
231	Vedran	Ćorluka	28	1001231	1	6	22
232	Darijo	Srna	32	1001232	1	7	22
233	Mario	Mandžukić	28	1001233	1	8	22
234	Nikica	Jelavić	28	1001234	1	1	22
235	Eduardo	da Silva	31	1001235	1	2	22
236	Mateo	Kovačić	20	1001236	1	3	22
237	Ante	Rebić	20	1001237	1	4	22
238	Ivan	Perišić	25	1001238	1	5	22
239	Jelena	Vukojević	25	1001239	1	6	22
240	Niko	Kranjčar	29	1001240	1	7	22
241	Ivica	Olić	34	1001241	1	8	22
242	Danijel	Pranjić	32	1001242	1	1	22
243	Gordon	Schildenfeld	29	1001243	1	2	22
244	Domagoj	Vida	25	1001244	1	3	22
245	Sime	Vrsaljko	22	1001245	1	4	22
246	Alexander	Domínguez	27	1101246	1	1	20
247	Adrián	Bone	25	1101247	1	2	20
248	Máximo	Banguera	28	1101248	1	3	20
249	Walter	Ayoví	34	1101249	1	4	20
250	Frickson	Erazo	26	1101250	1	5	20
251	Jorge	Guagua	33	1101251	1	6	20
252	Juan Carlos	Paredes	27	1101252	1	7	20
253	Gabriel	Achilier	29	1101253	1	8	20
254	Cristian	Ramírez	20	1101254	1	1	20
255	Oswaldo	Minda	30	1101255	1	2	20
256	Antonio	Valencia	28	1101256	1	3	20
257	Cristian	Noboa	29	1101257	1	4	20
258	Jefferson	Montero	24	1101258	1	5	20
259	Renato	Ibarra	23	1101259	1	6	20
260	Felipe	Caicedo	25	1101260	1	7	20
261	Enner	Valencia	25	1101261	1	8	20
262	Michael	Arroyo	27	1101262	1	1	20
263	Carlos	Gruezo	19	1101263	1	2	20
264	Edison	Méndez	35	1101264	1	3	20
265	Joe	Hart	27	1201265	1	1	19
266	Glen	Johnson	29	1201266	1	2	19
267	Gary	Cahill	28	1201267	1	3	19
268	Phil	Jagielka	31	1201268	1	4	19
269	Leighton	Baines	29	1201269	1	5	19
270	Steven	Gerrard	34	1201270	1	6	19
271	Frank	Lampard	36	1201271	1	7	19
272	Jordan	Henderson	24	1201272	1	8	19
273	Wayne	Rooney	28	1201273	1	1	19
274	Daniel	Sturridge	24	1201274	1	2	19
275	Raheem	Sterling	19	1201275	1	3	19
276	Adam	Lallana	26	1201276	1	4	19
277	Ross	Barkley	20	1201277	1	5	19
278	Luke	Shaw	18	1201278	1	6	19
279	Jack	Wilshere	22	1201279	1	7	19
280	Chris	Smalling	24	1201280	1	8	19
281	Phil	Jones	22	1201281	1	1	19
282	James	Milner	28	1201282	1	2	19
283	Ben	Foster	31	1201283	1	3	19
284	Rickie	Lambert	32	1201284	1	4	19
285	Gianluigi	Buffon	36	1301285	1	1	18
286	Salvatore	Sirigu	27	1301286	1	2	18
287	Mattia	Perin	21	1301287	1	3	18
288	Giorgio	Chiellini	29	1301288	1	4	18
289	Andrea	Barzagli	33	1301289	1	5	18
290	Leonardo	Bonucci	27	1301290	1	6	18
291	Ignazio	Abate	27	1301291	1	7	18
292	Matteo	Darmian	24	1301292	1	8	18
293	Marco	Verratti	21	1301293	1	1	18
294	Andrea	Pirlo	35	1301294	1	2	18
295	Daniele	De Rossi	30	1301295	1	3	18
296	Claudio	Marchisio	28	1301296	1	4	18
297	Thiago	Motta	31	1301297	1	5	18
298	Antonio	Candreva	27	1301298	1	6	18
299	Mario	Balotelli	23	1301299	1	7	18
300	Ciro	Immobile	24	1301300	1	8	18
301	Lorenzo	Insigne	23	1301301	1	1	18
302	Alessio	Cerci	26	1301302	1	2	18
303	Marco	Parolo	29	1301303	1	3	18
304	Mattia	De Sciglio	21	1301304	1	4	18
305	Eiji	Kawashima	31	1401305	1	1	26
306	Shusaku	Nishikawa	28	1401306	1	2	26
307	Shuichi	Gonda	25	1401307	1	3	26
308	Yuto	Nagatomo	27	1401308	1	4	26
309	Atsuto	Uchida	26	1401309	1	5	26
310	Maya	Yoshida	25	1401310	1	6	26
311	Masato	Morishige	26	1401311	1	7	26
312	Hiroki	Sakai	24	1401312	1	8	26
313	Makoto	Hasebe	30	1401313	1	1	26
314	Yasuhito	Endo	34	1401314	1	2	26
315	Hotaru	Yamaguchi	23	1401315	1	3	26
316	Shinji	Kagawa	25	1401316	1	4	26
317	Keisuke	Honda	28	1401317	1	5	26
318	Yoshito	Okubo	31	1401318	1	6	26
319	Shinji	Okazaki	28	1401319	1	7	26
320	Yoichiro	Kakitani	24	1401320	1	8	26
321	Manabu	Saito	24	1401321	1	1	26
322	Gotoku	Sakai	23	1401322	1	2	26
323	Junichi	Inamoto	35	1401323	1	3	26
324	Toshihiro	Aoyama	28	1401324	1	4	26
325	Guillermo	Ochoa	29	1501325	1	1	11
326	José de Jesús	Corona	33	1501326	1	2	11
327	Alfredo	Talavera	31	1501327	1	3	11
328	Rafael	Márquez	35	1501328	1	4	11
329	Héctor	Moreno	26	1501329	1	5	11
330	Francisco	Rodríguez	32	1501330	1	6	11
331	Diego	Reyes	21	1501331	1	7	11
332	Miguel	Layún	25	1501332	1	8	11
333	Paul	Aguilar	28	1501333	1	1	11
334	Andrés	Guardado	27	1501334	1	2	11
335	Héctor	Herrera	24	1501335	1	3	11
336	Carlos	Peña	24	1501336	1	4	11
337	José	Vázquez	26	1501337	1	5	11
338	Marco	Fabián	25	1501338	1	6	11
339	Giovani	dos Santos	25	1501339	1	7	11
340	Oribe	Peralta	30	1501340	1	8	11
341	Javier	Hernández	26	1501341	1	1	11
342	Raúl	Jiménez	23	1501342	1	2	11
343	Isaac	Brizuela	23	1501343	1	3	11
344	Alan	Pulido	23	1501344	1	4	11
345	Clint	Dempsey	31	123456859	1	1	12
346	Tim	Howard	35	123456860	1	1	12
347	Michael	Bradley	26	123456861	1	1	12
348	Brad	Guzan	30	123456862	1	1	12
349	Jozy	Altidore	24	123456863	1	1	12
350	Jermaine	Jones	32	123456864	1	1	12
351	Geoff	Cameron	29	123456865	1	1	12
352	Fabian	Johnson	26	123456866	1	1	12
353	DeAndre	Yedlin	21	123456867	1	1	12
354	Graham	Zusi	27	123456868	1	1	12
355	Xherdan	Shaqiri	22	123456869	1	1	13
356	Valon	Behrami	29	123456870	1	1	13
357	Gökhan	Inler	29	123456871	1	1	13
358	Tranquillo	Barnetta	29	123456872	1	1	13
359	Stephan	Lichtsteiner	30	123456873	1	1	13
360	Ricardo	Rodriguez	21	123456874	1	1	13
361	Haris	Seferović	22	123456875	1	1	13
362	Blerim	Džemaili	28	123456876	1	1	13
363	Benjamin	Huggel	32	123456877	1	1	13
364	Nico	Elvedi	22	123456878	1	1	13
365	Giorgos	Karagounis	37	123456879	1	1	14
366	Kostas	Mitroglou	26	123456880	1	1	14
367	Sokratis	Papastathopoulos	26	123456881	1	1	14
368	Georgios	Samaras	29	123456882	1	1	14
369	Vasilis	Torosidis	29	123456883	1	1	14
370	Konstantinos	Manolas	23	123456884	1	1	14
371	Kyriakos	Papadopoulos	22	123456885	1	1	14
372	Dimitris	Kompogiannis	24	123456886	1	1	14
373	Panagiotis	Kone	30	123456887	1	1	14
374	Andreas	Samaras	32	123456888	1	1	14
375	John	Obi Mikel	27	123456889	1	1	15
376	Ahmed	Musa	21	123456890	1	1	15
377	Vincent	Enyeama	32	123456891	1	1	15
378	Peter	Odemwingie	32	123456892	1	1	15
379	Elderson	Echiejile	27	123456893	1	1	15
380	Ogenyi	Onazi	21	123456894	1	1	15
381	Emmanuel	Emenike	27	123456895	1	1	15
382	Fegor	Ogude	26	123456896	1	1	15
383	Kalu	Uche	30	123456897	1	1	15
384	Uche	Agbo	23	123456898	1	1	15
385	Riyad	Mahrez	23	123456899	1	1	16
386	Islam	Slimani	26	123456900	1	1	16
387	Saphir	Taïder	22	123456901	1	1	16
388	Carl	Medjani	31	123456902	1	1	16
389	Madjid	Bouguerra	33	123456903	1	1	16
390	Brahim	Zidane	29	123456904	1	1	16
391	Mehdi	Mostefa	32	123456905	1	1	16
392	Ahmed	Fegrouche	25	123456906	1	1	16
393	Yacine	Brahimi	24	123456907	1	1	16
394	Ali	Laïdouni	28	123456908	1	1	16
395	Cristiano	Ronaldo	29	123456909	1	1	17
396	Nani	Silva	27	123456910	1	1	17
397	Pepe	Costa	31	123456911	1	1	17
398	João	Moutinho	27	123456912	1	1	17
399	Raul	Meireles	31	123456913	1	1	17
400	Hugo	Almeida	30	123456914	1	1	17
401	Ricardo	Costa	33	123456915	1	1	17
402	William	Carvalho	22	123456916	1	1	17
403	Bruno	Alves	32	123456917	1	1	17
404	Miguel	Veloso	27	123456918	1	1	17
405	Edin	Džeko	28	123456919	1	1	21
406	Miralem	Pjanić	24	123456920	1	1	21
407	Zlatan	Muslić	25	123456921	1	1	21
408	Senad	Lulić	29	123456922	1	1	21
409	Asmir	Begović	27	123456923	1	1	21
410	Vedad	Ibišević	30	123456924	1	1	21
411	Sead	Kolašinac	21	123456925	1	1	21
412	Tino	Susic	32	123456926	1	1	21
413	Muhamed	Bešić	21	123456927	1	1	21
414	Harun	Tešanović	24	123456928	1	1	21
415	Aleksei	Smertin	34	123456929	1	1	23
416	Roman	Shirokov	33	123456930	1	1	23
417	Igor	Akinfeev	28	123456931	1	1	23
418	Artem	Dzyuba	26	123456932	1	1	23
419	Sergey	Ignashevich	35	123456933	1	1	23
420	Denis	Cheryshev	23	123456934	1	1	23
421	Vasily	Berezutsky	32	123456935	1	1	23
422	Alexander	Kerk	22	123456936	1	1	23
423	Andrey	Arshavin	33	123456937	1	1	23
424	Yuri	Zhirkov	30	123456938	1	1	23
425	David	Villa	32	123456939	1	1	24
426	Fernando	Torres	30	123456940	1	1	24
427	Iker	Casillas	33	123456941	1	1	24
428	Sergio	Ramos	28	123456942	1	1	24
429	Andrés	Iniesta	30	123456943	1	1	24
430	Gerard	Piqué	27	123456944	1	1	24
431	Juan	Mata	26	123456945	1	1	24
432	Cesc	Fàbregas	27	123456946	1	1	24
433	David	Silva	28	123456947	1	1	24
434	Víctor	Valdés	32	123456948	1	1	24
435	Mehdi	Taremi	22	123456949	1	1	25
436	Alireza	Beiranvand	22	123456950	1	1	25
437	Ashkan	Dejagah	28	123456951	1	1	25
438	Masoud	Shojaei	30	123456952	1	1	25
439	Sardar	Azmoun	23	123456953	1	1	25
440	Vahid	Amiri	27	123456954	1	1	25
441	Ehsan	Haji-Safi	29	123456955	1	1	25
442	Mohammad	Panahi	25	123456956	1	1	25
443	Javad	Nekounam	34	123456957	1	1	25
444	Reza	Ghoochannejhad	27	123456958	1	1	25
445	Asamoah	Gyan	28	123456959	1	1	27
446	Kevin-Prince	Boateng	27	123456960	1	1	27
447	Sulley	Muntari	29	123456961	1	1	27
448	Mubarak	Wakaso	24	123456962	1	1	27
449	Kwadwo	Asamoah	25	123456963	1	1	27
450	Jerry	Akaminko	27	123456964	1	1	27
451	Jordan	Ayew	22	123456965	1	1	27
452	John	Boye	27	123456966	1	1	27
453	Richard	Kingson	34	123456967	1	1	27
454	Michael	Essien	31	123456968	1	1	27
455	Ki	Sung-yueng	25	123456969	1	1	28
456	Son	Heung-min	22	123456970	1	1	28
457	Lee	Keun-ho	30	123456971	1	1	28
458	Kim	Young-gwon	24	123456972	1	1	28
459	Park	Ji-sung	33	123456973	1	1	28
460	Jung	Sung-ryong	31	123456974	1	1	28
461	Hong	Myung-bo	45	123456975	1	1	28
462	Lee	Jae-sung	26	123456976	1	1	28
463	Yun	Sang-ho	23	123456977	1	1	28
464	Koo	Ja-cheol	26	123456978	1	1	28
465	Tim	Cahill	34	123456979	1	1	29
466	Mile	Jedinak	30	123456980	1	1	29
467	Matthew	Leckie	23	123456981	1	1	29
468	Tom	Rogic	21	123456982	1	1	29
469	Trent	Sainsbury	22	123456983	1	1	29
470	Jason	Cummings	23	123456984	1	1	29
471	Socceroos	Team	29	123456985	1	1	29
472	Mathew	Ryan	26	123456986	1	1	29
473	Ryan	McGowan	28	123456987	1	1	29
474	Brandon	Brockbank	28	123456988	1	1	29
475	Samuel	Etoo	33	123456989	1	1	30
476	Alexandre	Song	27	123456990	1	1	30
477	Jean	Makoun	31	123456991	1	1	30
478	Vincent	Aboubakar	22	123456992	1	1	30
479	Stephane	Mbia	29	123456993	1	1	30
480	Benjamin	Moukandjo	26	123456994	1	1	30
481	Camille	Ngando	22	123456995	1	1	30
482	Benoit	Assou-Ekotto	30	123456996	1	1	30
483	Eric	Choupo-Moting	25	123456997	1	1	30
484	Nicolas	Nkoulou	23	123456998	1	1	30
485	Carlos	Costly	31	123456999	1	1	31
486	Roger	Espinoza	29	123457000	1	1	31
487	Wilson	Palacios	32	123457001	1	1	31
488	Maynor	Figueroa	30	123457002	1	1	31
489	Javier	Moreno	23	123457003	1	1	31
490	Jerry	Bengston	29	123457004	1	1	31
491	Juan	Gómez	30	1234570055	1	1	31
492	Victor	Bernárdez	32	123457006	1	1	31
493	Emilio	Izaguirre	28	123457007	1	1	31
494	Luis	Suarez	28	123457008	1	1	31
495	Didier	Drogba	36	123457009	1	1	32
496	Yaya	Touré	31	123457010	1	1	32
497	Gervinho	Gervais	27	123457011	1	1	32
498	Salomon	Kalou	29	123457012	1	1	32
499	Wilfried	Bony	25	123457013	1	1	32
500	Serey	Die	32	123457014	1	1	32
501	Kolo	Touré	33	123457015	1	1	32
502	Jean	Drogba	25	123457016	1	1	32
503	Max-Alain	Gradel	27	123457017	1	1	32
504	Wilfried	Zaha	23	123457018	1	1	32
505	Antonio	Gomez	45	987654322	1	2	2
506	Rafael	Romero	38	987654323	1	2	3
507	Juan	Martínez	43	987654324	1	2	4
508	Luis	Fernández	40	987654325	1	2	5
509	José	Méndez	46	987654326	1	2	6
510	Miguel	Cruz	44	987654327	1	2	7
511	Pedro	López	42	987654328	1	2	8
512	Alberto	González	41	987654329	1	2	9
513	David	Torres	45	987654330	1	2	10
514	Enrique	Sánchez	39	987654331	1	2	11
515	Carlos	Ramírez	47	987654332	1	2	12
516	Andrés	Álvarez	38	987654333	1	2	13
517	José	Hernández	44	987654334	1	2	14
518	Ricardo	Pérez	39	987654335	1	2	15
519	Eduardo	Martín	42	987654336	1	2	16
520	Fernando	Soto	41	987654337	1	2	17
521	Juan	Sánchez	45	987654338	1	2	18
522	Óscar	Fernández	43	987654339	1	2	19
523	Diego	Martínez	42	987654340	1	2	20
524	Luis	González	41	987654341	1	2	21
525	Marcelo	Morales	44	987654342	1	2	22
526	Jorge	Jiménez	39	987654343	1	2	23
527	Julio	Ramírez	45	987654344	1	2	24
528	Pablo	Díaz	43	987654345	1	2	25
529	Luis	Gómez	41	987654346	1	2	26
530	Miguel	Castro	42	987654347	1	2	27
531	Carlos	Álvarez	44	987654348	1	2	28
532	Federico	González	39	987654349	1	2	29
533	Gabriel	Serrano	42	987654350	1	2	30
534	Ricardo	Suárez	41	987654351	1	2	31
535	Juan	Serrano	40	987654352	1	2	32
\.


--
-- TOC entry 3549 (class 0 OID 16686)
-- Dependencies: 246
-- Data for Name: puesto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.puesto (id, descripcion) FROM stdin;
1	Árbitro central
2	Primer asistente
3	Segundo asistente
4	Cuarto árbitro
\.


--
-- TOC entry 3551 (class 0 OID 16690)
-- Dependencies: 248
-- Data for Name: tipo_documento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_documento (id, descripcion) FROM stdin;
1	Cédula de ciudadanía
2	Cédula de extranjería
3	Pasaporte
4	Permiso de residencia
5	Tarjeta de identidad
6	Documento de identificación tributaria
7	Licencia de conducción
8	Certificado de nacimiento
\.


--
-- TOC entry 3553 (class 0 OID 16694)
-- Dependencies: 250
-- Data for Name: tipo_novedad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipo_novedad (id, descripcion) FROM stdin;
1	Gol
2	Tarjeta Amarilla
3	Tarjeta Roja
4	Lesión
5	Sustitución
6	Penalti
7	Gol anulado
8	Fuera de juego
9	Autogol
10	Tiro libre
11	Falta
12	Tiempo adicional
13	Atajada del portero
\.


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 215
-- Name: arbitro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.arbitro_id_seq', 1, false);


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 217
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 1, false);


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 219
-- Name: equipo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.equipo_id_seq', 1, false);


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 221
-- Name: estadio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estadio_id_seq', 1, false);


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 223
-- Name: estado_fisico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estado_fisico_id_seq', 1, false);


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 225
-- Name: fase_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fase_id_seq', 1, false);


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 227
-- Name: genero_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genero_id_seq', 1, false);


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 229
-- Name: jugador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jugador_id_seq', 1, false);


--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 233
-- Name: pais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pais_id_seq', 1, false);


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 235
-- Name: participacion_equipo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.participacion_equipo_id_seq', 1, false);


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 237
-- Name: participacion_jugador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.participacion_jugador_id_seq', 1, false);


--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 240
-- Name: partido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.partido_id_seq', 1, false);


--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 242
-- Name: patrocinador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patrocinador_id_seq', 1, false);


--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 245
-- Name: persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.persona_id_seq', 1, false);


--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 247
-- Name: puesto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.puesto_id_seq', 1, false);


--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 249
-- Name: tipo_documento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_documento_id_seq', 8, true);


--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 251
-- Name: tipo_novedad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_novedad_id_seq', 1, false);


--
-- TOC entry 3295 (class 2606 OID 16716)
-- Name: arbitro arbitro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.arbitro
    ADD CONSTRAINT arbitro_pkey PRIMARY KEY (id);


--
-- TOC entry 3297 (class 2606 OID 16718)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 3299 (class 2606 OID 16720)
-- Name: equipo equipo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_pkey PRIMARY KEY (id);


--
-- TOC entry 3301 (class 2606 OID 16722)
-- Name: estadio estadio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estadio
    ADD CONSTRAINT estadio_pkey PRIMARY KEY (id);


--
-- TOC entry 3303 (class 2606 OID 16724)
-- Name: estado_fisico estado_fisico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado_fisico
    ADD CONSTRAINT estado_fisico_pkey PRIMARY KEY (id);


--
-- TOC entry 3305 (class 2606 OID 16726)
-- Name: fase fase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fase
    ADD CONSTRAINT fase_pkey PRIMARY KEY (id);


--
-- TOC entry 3307 (class 2606 OID 16728)
-- Name: genero genero_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (id);


--
-- TOC entry 3309 (class 2606 OID 16730)
-- Name: jugador jugador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jugador
    ADD CONSTRAINT jugador_pkey PRIMARY KEY (id);


--
-- TOC entry 3313 (class 2606 OID 16732)
-- Name: mundial_estadio mundial_estadio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mundial_estadio
    ADD CONSTRAINT mundial_estadio_pkey PRIMARY KEY (estadio_id, mundial_genero_id, "mundial_año_id");


--
-- TOC entry 3311 (class 2606 OID 16734)
-- Name: mundial mundial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mundial
    ADD CONSTRAINT mundial_pkey PRIMARY KEY ("año", genero_id);


--
-- TOC entry 3341 (class 2606 OID 17001)
-- Name: novedad novedad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.novedad
    ADD CONSTRAINT novedad_pkey PRIMARY KEY (id);


--
-- TOC entry 3315 (class 2606 OID 16738)
-- Name: pais pais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (id);


--
-- TOC entry 3339 (class 2606 OID 16973)
-- Name: participacion_equipo_partido participacion_equipo_partido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participacion_equipo_partido
    ADD CONSTRAINT participacion_equipo_partido_pkey PRIMARY KEY (participacion_equipo_1_id, participacion_equipo_2_id, partido_id);


--
-- TOC entry 3317 (class 2606 OID 16740)
-- Name: participacion_equipo participacion_equipo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participacion_equipo
    ADD CONSTRAINT participacion_equipo_pkey PRIMARY KEY (id);


--
-- TOC entry 3319 (class 2606 OID 16742)
-- Name: participacion_jugador participacion_jugador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participacion_jugador
    ADD CONSTRAINT participacion_jugador_pkey PRIMARY KEY (id);


--
-- TOC entry 3323 (class 2606 OID 16744)
-- Name: partido_arbitro partido_arbitro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partido_arbitro
    ADD CONSTRAINT partido_arbitro_pkey PRIMARY KEY (partido_id, arbitro_id, puesto_id);


--
-- TOC entry 3321 (class 2606 OID 16746)
-- Name: partido partido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partido
    ADD CONSTRAINT partido_pkey PRIMARY KEY (id);


--
-- TOC entry 3327 (class 2606 OID 16748)
-- Name: patrocinador_mundial patrocinador_mundial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patrocinador_mundial
    ADD CONSTRAINT patrocinador_mundial_pkey PRIMARY KEY (patrocinador_id, genero_id, "año");


--
-- TOC entry 3325 (class 2606 OID 16750)
-- Name: patrocinador patrocinador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patrocinador
    ADD CONSTRAINT patrocinador_pkey PRIMARY KEY (id);


--
-- TOC entry 3329 (class 2606 OID 16752)
-- Name: persona persona_documento_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_documento_key UNIQUE (documento);


--
-- TOC entry 3331 (class 2606 OID 16754)
-- Name: persona persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id);


--
-- TOC entry 3333 (class 2606 OID 16756)
-- Name: puesto puesto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.puesto
    ADD CONSTRAINT puesto_pkey PRIMARY KEY (id);


--
-- TOC entry 3335 (class 2606 OID 16758)
-- Name: tipo_documento tipo_documento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_documento
    ADD CONSTRAINT tipo_documento_pkey PRIMARY KEY (id);


--
-- TOC entry 3337 (class 2606 OID 16760)
-- Name: tipo_novedad tipo_novedad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_novedad
    ADD CONSTRAINT tipo_novedad_pkey PRIMARY KEY (id);


--
-- TOC entry 3342 (class 2606 OID 16761)
-- Name: arbitro arbitro_categoria_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.arbitro
    ADD CONSTRAINT arbitro_categoria_id_fkey FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);


--
-- TOC entry 3343 (class 2606 OID 16766)
-- Name: equipo equipo_pais_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipo
    ADD CONSTRAINT equipo_pais_id_fkey FOREIGN KEY (pais_id) REFERENCES public.pais(id);


--
-- TOC entry 3344 (class 2606 OID 16902)
-- Name: estadio estadio_pais_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estadio
    ADD CONSTRAINT estadio_pais_fk FOREIGN KEY (pais_id) REFERENCES public.pais(id) NOT VALID;


--
-- TOC entry 3345 (class 2606 OID 16771)
-- Name: jugador jugador_equipo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jugador
    ADD CONSTRAINT jugador_equipo_id_fkey FOREIGN KEY (equipo_id) REFERENCES public.equipo(id);


--
-- TOC entry 3346 (class 2606 OID 16989)
-- Name: jugador jugador_persona_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jugador
    ADD CONSTRAINT jugador_persona_id_fk FOREIGN KEY (id) REFERENCES public.persona(id) NOT VALID;


--
-- TOC entry 3349 (class 2606 OID 16776)
-- Name: mundial_estadio mundial_estadio_estadio_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mundial_estadio
    ADD CONSTRAINT mundial_estadio_estadio_id_fkey FOREIGN KEY (estadio_id) REFERENCES public.estadio(id);


--
-- TOC entry 3350 (class 2606 OID 16781)
-- Name: mundial_estadio mundial_estadio_mundial_genero_id_mundial_año_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mundial_estadio
    ADD CONSTRAINT "mundial_estadio_mundial_genero_id_mundial_año_id_fkey" FOREIGN KEY (mundial_genero_id, "mundial_año_id") REFERENCES public.mundial(genero_id, "año");


--
-- TOC entry 3347 (class 2606 OID 16786)
-- Name: mundial mundial_genero_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mundial
    ADD CONSTRAINT mundial_genero_id_fkey FOREIGN KEY (genero_id) REFERENCES public.genero(id);


--
-- TOC entry 3348 (class 2606 OID 16791)
-- Name: mundial mundial_pais_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mundial
    ADD CONSTRAINT mundial_pais_id_fkey FOREIGN KEY (pais_id) REFERENCES public.pais(id);


--
-- TOC entry 3372 (class 2606 OID 17007)
-- Name: novedad novedad_participacion_jugador_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.novedad
    ADD CONSTRAINT novedad_participacion_jugador_fk FOREIGN KEY (participacion_jugador_id) REFERENCES public.participacion_jugador(id);


--
-- TOC entry 3373 (class 2606 OID 17002)
-- Name: novedad novedad_partido_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.novedad
    ADD CONSTRAINT novedad_partido_fk FOREIGN KEY (partido_id) REFERENCES public.partido(id);


--
-- TOC entry 3374 (class 2606 OID 17012)
-- Name: novedad novedad_tipo_novedad_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.novedad
    ADD CONSTRAINT novedad_tipo_novedad_fk FOREIGN KEY (tipo_novedad_id) REFERENCES public.tipo_novedad(id);


--
-- TOC entry 3351 (class 2606 OID 16811)
-- Name: participacion_equipo participacion_equipo_equipo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participacion_equipo
    ADD CONSTRAINT participacion_equipo_equipo_id_fkey FOREIGN KEY (equipo_id) REFERENCES public.equipo(id);


--
-- TOC entry 3352 (class 2606 OID 16816)
-- Name: participacion_equipo participacion_equipo_fase_alcanzada_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participacion_equipo
    ADD CONSTRAINT participacion_equipo_fase_alcanzada_id_fkey FOREIGN KEY (fase_alcanzada_id) REFERENCES public.fase(id);


--
-- TOC entry 3353 (class 2606 OID 16821)
-- Name: participacion_equipo participacion_equipo_mundial_genero_id_mundial_año_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participacion_equipo
    ADD CONSTRAINT "participacion_equipo_mundial_genero_id_mundial_año_id_fkey" FOREIGN KEY (mundial_genero_id, "mundial_año_id") REFERENCES public.mundial(genero_id, "año");


--
-- TOC entry 3369 (class 2606 OID 16979)
-- Name: participacion_equipo_partido participacion_equipo_partido_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participacion_equipo_partido
    ADD CONSTRAINT participacion_equipo_partido_fk FOREIGN KEY (partido_id) REFERENCES public.partido(id);


--
-- TOC entry 3370 (class 2606 OID 16974)
-- Name: participacion_equipo_partido participacion_equipo_partido_participacion_equipo_1_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participacion_equipo_partido
    ADD CONSTRAINT participacion_equipo_partido_participacion_equipo_1_fk FOREIGN KEY (participacion_equipo_1_id) REFERENCES public.participacion_equipo(id);


--
-- TOC entry 3371 (class 2606 OID 16984)
-- Name: participacion_equipo_partido participacion_equipo_partido_participacion_equipo_2_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participacion_equipo_partido
    ADD CONSTRAINT participacion_equipo_partido_participacion_equipo_2_fk FOREIGN KEY (participacion_equipo_2_id) REFERENCES public.participacion_equipo(id);


--
-- TOC entry 3354 (class 2606 OID 16826)
-- Name: participacion_jugador participacion_jugador_estado_fisico_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participacion_jugador
    ADD CONSTRAINT participacion_jugador_estado_fisico_id_fkey FOREIGN KEY (estado_fisico_id) REFERENCES public.estado_fisico(id);


--
-- TOC entry 3355 (class 2606 OID 16831)
-- Name: participacion_jugador participacion_jugador_jugador_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participacion_jugador
    ADD CONSTRAINT participacion_jugador_jugador_id_fkey FOREIGN KEY (jugador_id) REFERENCES public.jugador(id);


--
-- TOC entry 3356 (class 2606 OID 16836)
-- Name: participacion_jugador participacion_jugador_participacion_equipo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participacion_jugador
    ADD CONSTRAINT participacion_jugador_participacion_equipo_id_fkey FOREIGN KEY (participacion_equipo_id) REFERENCES public.participacion_equipo(id);


--
-- TOC entry 3360 (class 2606 OID 16841)
-- Name: partido_arbitro partido_arbitro_arbitro_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partido_arbitro
    ADD CONSTRAINT partido_arbitro_arbitro_id_fkey FOREIGN KEY (arbitro_id) REFERENCES public.arbitro(id);


--
-- TOC entry 3361 (class 2606 OID 16846)
-- Name: partido_arbitro partido_arbitro_partido_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partido_arbitro
    ADD CONSTRAINT partido_arbitro_partido_id_fkey FOREIGN KEY (partido_id) REFERENCES public.partido(id);


--
-- TOC entry 3362 (class 2606 OID 16851)
-- Name: partido_arbitro partido_arbitro_puesto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partido_arbitro
    ADD CONSTRAINT partido_arbitro_puesto_id_fkey FOREIGN KEY (puesto_id) REFERENCES public.puesto(id);


--
-- TOC entry 3357 (class 2606 OID 16856)
-- Name: partido partido_estadio_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partido
    ADD CONSTRAINT partido_estadio_id_fkey FOREIGN KEY (estadio_id) REFERENCES public.estadio(id);


--
-- TOC entry 3358 (class 2606 OID 16861)
-- Name: partido partido_fase_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partido
    ADD CONSTRAINT partido_fase_id_fkey FOREIGN KEY (fase_id) REFERENCES public.fase(id);


--
-- TOC entry 3359 (class 2606 OID 16866)
-- Name: partido partido_genero_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.partido
    ADD CONSTRAINT partido_genero_id_fkey FOREIGN KEY (genero_id) REFERENCES public.genero(id);


--
-- TOC entry 3364 (class 2606 OID 16871)
-- Name: patrocinador_mundial patrocinador_mundial_genero_id_año_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patrocinador_mundial
    ADD CONSTRAINT "patrocinador_mundial_genero_id_año_fkey" FOREIGN KEY (genero_id, "año") REFERENCES public.mundial(genero_id, "año");


--
-- TOC entry 3365 (class 2606 OID 16876)
-- Name: patrocinador_mundial patrocinador_mundial_patrocinador_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patrocinador_mundial
    ADD CONSTRAINT patrocinador_mundial_patrocinador_id_fkey FOREIGN KEY (patrocinador_id) REFERENCES public.patrocinador(id);


--
-- TOC entry 3363 (class 2606 OID 16881)
-- Name: patrocinador patrocinador_pais_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patrocinador
    ADD CONSTRAINT patrocinador_pais_id_fkey FOREIGN KEY (pais_id) REFERENCES public.pais(id);


--
-- TOC entry 3366 (class 2606 OID 16886)
-- Name: persona persona_genero_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_genero_id_fkey FOREIGN KEY (genero_id) REFERENCES public.genero(id);


--
-- TOC entry 3367 (class 2606 OID 16891)
-- Name: persona persona_pais_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pais_id_fkey FOREIGN KEY (pais_id) REFERENCES public.pais(id);


--
-- TOC entry 3368 (class 2606 OID 16896)
-- Name: persona persona_tipo_documento_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_tipo_documento_id_fkey FOREIGN KEY (tipo_documento_id) REFERENCES public.tipo_documento(id);


-- Completed on 2024-11-25 08:14:44

--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2024-11-26 19:49:44

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
-- TOC entry 228 (class 1259 OID 16519)
-- Name: aeropuerto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aeropuerto (
    id_aeropuerto integer NOT NULL,
    nombre character varying(100) NOT NULL,
    ciudad character varying(50) NOT NULL
);


ALTER TABLE public.aeropuerto OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16518)
-- Name: aeropuerto_id_aeropuerto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aeropuerto_id_aeropuerto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.aeropuerto_id_aeropuerto_seq OWNER TO postgres;

--
-- TOC entry 4944 (class 0 OID 0)
-- Dependencies: 227
-- Name: aeropuerto_id_aeropuerto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aeropuerto_id_aeropuerto_seq OWNED BY public.aeropuerto.id_aeropuerto;


--
-- TOC entry 226 (class 1259 OID 16511)
-- Name: asiento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asiento (
    id_asiento integer NOT NULL,
    numero_asiento character varying(5) NOT NULL,
    clase character varying(15) NOT NULL,
    CONSTRAINT asiento_clase_check CHECK (((clase)::text = ANY ((ARRAY['Econ¢mica'::character varying, 'Primera Clase'::character varying])::text[])))
);


ALTER TABLE public.asiento OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16510)
-- Name: asiento_id_asiento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.asiento_id_asiento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.asiento_id_asiento_seq OWNER TO postgres;

--
-- TOC entry 4945 (class 0 OID 0)
-- Dependencies: 225
-- Name: asiento_id_asiento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.asiento_id_asiento_seq OWNED BY public.asiento.id_asiento;


--
-- TOC entry 220 (class 1259 OID 16482)
-- Name: avion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.avion (
    id_avion integer NOT NULL,
    matricula character varying(20) NOT NULL,
    modelo character varying(50) NOT NULL,
    capacidad_pasajeros integer NOT NULL
);


ALTER TABLE public.avion OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16481)
-- Name: avion_id_avion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.avion_id_avion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.avion_id_avion_seq OWNER TO postgres;

--
-- TOC entry 4946 (class 0 OID 0)
-- Dependencies: 219
-- Name: avion_id_avion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.avion_id_avion_seq OWNED BY public.avion.id_avion;


--
-- TOC entry 222 (class 1259 OID 16491)
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleado (
    id_empleado integer NOT NULL,
    nombre character varying(50) NOT NULL,
    cargo character varying(30) NOT NULL,
    fecha_contratacion date NOT NULL
);


ALTER TABLE public.empleado OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16490)
-- Name: empleado_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleado_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.empleado_id_empleado_seq OWNER TO postgres;

--
-- TOC entry 4947 (class 0 OID 0)
-- Dependencies: 221
-- Name: empleado_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleado_id_empleado_seq OWNED BY public.empleado.id_empleado;


--
-- TOC entry 230 (class 1259 OID 16526)
-- Name: pago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pago (
    id_pago integer NOT NULL,
    monto numeric(10,2) NOT NULL,
    fecha_pago date NOT NULL,
    id_reserva integer NOT NULL
);


ALTER TABLE public.pago OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16525)
-- Name: pago_id_pago_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pago_id_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pago_id_pago_seq OWNER TO postgres;

--
-- TOC entry 4948 (class 0 OID 0)
-- Dependencies: 229
-- Name: pago_id_pago_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pago_id_pago_seq OWNED BY public.pago.id_pago;


--
-- TOC entry 216 (class 1259 OID 16464)
-- Name: pasajero; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pasajero (
    id_pasajero integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellido character varying(50) NOT NULL,
    numero_pasaporte character varying(20) NOT NULL,
    email character varying(100) NOT NULL
);


ALTER TABLE public.pasajero OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16463)
-- Name: pasajero_id_pasajero_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pasajero_id_pasajero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pasajero_id_pasajero_seq OWNER TO postgres;

--
-- TOC entry 4949 (class 0 OID 0)
-- Dependencies: 215
-- Name: pasajero_id_pasajero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pasajero_id_pasajero_seq OWNED BY public.pasajero.id_pasajero;


--
-- TOC entry 224 (class 1259 OID 16498)
-- Name: reserva; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva (
    id_reserva integer NOT NULL,
    fecha_reserva date NOT NULL,
    estado_reserva character varying(10) NOT NULL,
    total_pagar numeric(10,2) NOT NULL,
    id_pasajero integer NOT NULL,
    id_asiento integer,
    CONSTRAINT reserva_estado_reserva_check CHECK (((estado_reserva)::text = ANY ((ARRAY['Activa'::character varying, 'Cancelada'::character varying])::text[])))
);


ALTER TABLE public.reserva OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16497)
-- Name: reserva_id_reserva_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reserva_id_reserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reserva_id_reserva_seq OWNER TO postgres;

--
-- TOC entry 4950 (class 0 OID 0)
-- Dependencies: 223
-- Name: reserva_id_reserva_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reserva_id_reserva_seq OWNED BY public.reserva.id_reserva;


--
-- TOC entry 231 (class 1259 OID 16537)
-- Name: reserva_vuelo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva_vuelo (
    id_reserva integer NOT NULL,
    id_vuelo integer NOT NULL
);


ALTER TABLE public.reserva_vuelo OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16473)
-- Name: vuelo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vuelo (
    id_vuelo integer NOT NULL,
    codigo_vuelo character varying(10) NOT NULL,
    origen character varying(50) NOT NULL,
    destino character varying(50) NOT NULL,
    fecha_salida timestamp without time zone NOT NULL,
    fecha_llegada timestamp without time zone NOT NULL,
    id_avion integer,
    id_aeropuerto integer NOT NULL
);


ALTER TABLE public.vuelo OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16564)
-- Name: vuelo_empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vuelo_empleado (
    id_vuelo integer NOT NULL,
    id_empleado integer NOT NULL
);


ALTER TABLE public.vuelo_empleado OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16472)
-- Name: vuelo_id_vuelo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vuelo_id_vuelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vuelo_id_vuelo_seq OWNER TO postgres;

--
-- TOC entry 4951 (class 0 OID 0)
-- Dependencies: 217
-- Name: vuelo_id_vuelo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vuelo_id_vuelo_seq OWNED BY public.vuelo.id_vuelo;


--
-- TOC entry 4737 (class 2604 OID 16522)
-- Name: aeropuerto id_aeropuerto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aeropuerto ALTER COLUMN id_aeropuerto SET DEFAULT nextval('public.aeropuerto_id_aeropuerto_seq'::regclass);


--
-- TOC entry 4736 (class 2604 OID 16514)
-- Name: asiento id_asiento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asiento ALTER COLUMN id_asiento SET DEFAULT nextval('public.asiento_id_asiento_seq'::regclass);


--
-- TOC entry 4733 (class 2604 OID 16485)
-- Name: avion id_avion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avion ALTER COLUMN id_avion SET DEFAULT nextval('public.avion_id_avion_seq'::regclass);


--
-- TOC entry 4734 (class 2604 OID 16494)
-- Name: empleado id_empleado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleado_id_empleado_seq'::regclass);


--
-- TOC entry 4738 (class 2604 OID 16529)
-- Name: pago id_pago; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago ALTER COLUMN id_pago SET DEFAULT nextval('public.pago_id_pago_seq'::regclass);


--
-- TOC entry 4731 (class 2604 OID 16467)
-- Name: pasajero id_pasajero; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasajero ALTER COLUMN id_pasajero SET DEFAULT nextval('public.pasajero_id_pasajero_seq'::regclass);


--
-- TOC entry 4735 (class 2604 OID 16501)
-- Name: reserva id_reserva; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva ALTER COLUMN id_reserva SET DEFAULT nextval('public.reserva_id_reserva_seq'::regclass);


--
-- TOC entry 4732 (class 2604 OID 16476)
-- Name: vuelo id_vuelo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelo ALTER COLUMN id_vuelo SET DEFAULT nextval('public.vuelo_id_vuelo_seq'::regclass);


--
-- TOC entry 4934 (class 0 OID 16519)
-- Dependencies: 228
-- Data for Name: aeropuerto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aeropuerto (id_aeropuerto, nombre, ciudad) FROM stdin;
1	Aeropuerto El Dorado	Bogot 
2	Aeropuerto Jos‚ Mar¡a C¢rdova	Medell¡n
3	Aeropuerto Alfonso Bonilla Arag¢n	Cali
4	Aeropuerto Rafael N£¤ez	Cartagena
5	Aeropuerto Ernesto Cortissoz	Barranquilla
6	Aeropuerto Gustavo Rojas Pinilla	San Andr‚s
\.


--
-- TOC entry 4932 (class 0 OID 16511)
-- Dependencies: 226
-- Data for Name: asiento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asiento (id_asiento, numero_asiento, clase) FROM stdin;
1	1A	Econ¢mica
2	1B	Econ¢mica
3	1C	Econ¢mica
4	1D	Econ¢mica
5	1E	Econ¢mica
6	2A	Econ¢mica
7	2B	Econ¢mica
8	2C	Econ¢mica
9	2D	Econ¢mica
10	2E	Econ¢mica
11	3A	Econ¢mica
12	3B	Econ¢mica
13	3C	Econ¢mica
14	3D	Econ¢mica
15	3E	Econ¢mica
16	4A	Econ¢mica
17	4B	Econ¢mica
18	4C	Econ¢mica
19	4D	Econ¢mica
20	4E	Econ¢mica
21	5A	Econ¢mica
22	5B	Econ¢mica
23	5C	Econ¢mica
24	5D	Econ¢mica
25	5E	Econ¢mica
26	6A	Econ¢mica
27	6B	Econ¢mica
28	6C	Econ¢mica
29	6D	Econ¢mica
30	6E	Econ¢mica
31	7A	Econ¢mica
32	7B	Econ¢mica
33	7C	Econ¢mica
34	7D	Econ¢mica
35	7E	Econ¢mica
36	8A	Econ¢mica
37	8B	Econ¢mica
38	8C	Econ¢mica
39	8D	Econ¢mica
40	8E	Econ¢mica
41	9A	Econ¢mica
42	9B	Econ¢mica
43	9C	Econ¢mica
44	9D	Econ¢mica
45	9E	Econ¢mica
46	10A	Primera Clase
47	10B	Primera Clase
48	10C	Primera Clase
49	10D	Primera Clase
50	10E	Primera Clase
51	11A	Primera Clase
52	11B	Primera Clase
53	11C	Primera Clase
54	11D	Primera Clase
55	11E	Primera Clase
56	12A	Primera Clase
57	12B	Primera Clase
58	12C	Primera Clase
59	12D	Primera Clase
60	12E	Primera Clase
61	13A	Primera Clase
62	13B	Primera Clase
63	13C	Primera Clase
64	13D	Primera Clase
65	13E	Primera Clase
66	14A	Primera Clase
67	14B	Primera Clase
68	14C	Primera Clase
69	14D	Primera Clase
70	14E	Primera Clase
71	15A	Primera Clase
72	15B	Primera Clase
73	15C	Primera Clase
74	15D	Primera Clase
75	15E	Primera Clase
76	16A	Primera Clase
77	16B	Primera Clase
78	16C	Primera Clase
79	16D	Primera Clase
80	16E	Primera Clase
81	17A	Primera Clase
82	17B	Primera Clase
83	17C	Primera Clase
84	17D	Primera Clase
85	17E	Primera Clase
86	18A	Primera Clase
87	18B	Primera Clase
88	18C	Primera Clase
89	18D	Primera Clase
90	18E	Primera Clase
91	19A	Primera Clase
92	19B	Primera Clase
93	19C	Primera Clase
94	19D	Primera Clase
95	19E	Primera Clase
96	20A	Primera Clase
97	20B	Primera Clase
98	20C	Primera Clase
99	20D	Primera Clase
100	20E	Primera Clase
\.


--
-- TOC entry 4926 (class 0 OID 16482)
-- Dependencies: 220
-- Data for Name: avion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.avion (id_avion, matricula, modelo, capacidad_pasajeros) FROM stdin;
1	HK-1001	Boeing 737	160
2	HK-1002	Airbus A320	180
3	HK-1003	Embraer E190	120
4	HK-1004	Boeing 747	410
5	HK-1005	Cessna 208	14
6	PQR678	Airbus A321	220
7	STU901	Boeing 787	242
8	VWX234	Bombardier CRJ900	90
9	YZA567	Airbus A350	350
10	BCD890	Boeing 767	290
\.


--
-- TOC entry 4928 (class 0 OID 16491)
-- Dependencies: 222
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleado (id_empleado, nombre, cargo, fecha_contratacion) FROM stdin;
1	Carlos G¢mez	Piloto	2020-06-15
2	Mar¡a L¢pez	Copiloto	2021-03-10
3	Luis P‚rez	Asistente	2019-02-20
4	Ana Rodr¡guez	Piloto	2022-01-12
5	Juan Mart¡nez	Asistente	2020-11-05
6	Isabel Torres	Copiloto	2018-07-22
7	Pedro S nchez	Piloto	2020-09-15
8	Laura Herrera	Asistente	2019-12-01
9	Jos‚ µlvarez	Copiloto	2021-04-08
10	Eva D¡az	Piloto	2023-02-20
11	Fernando Garc¡a	Asistente	2021-06-18
12	Ricardo Fern ndez	Piloto	2020-10-30
13	Patricia Gonz lez	Copiloto	2019-05-14
14	Sergio Romero	Asistente	2022-09-01
15	Marta Jim‚nez	Piloto	2021-01-11
16	Francisco Ruiz	Asistente	2020-03-25
17	Claudia Vargas	Copiloto	2018-08-19
18	Gabriel Soto	Piloto	2021-11-04
19	Beatriz Mendoza	Asistente	2022-05-18
\.


--
-- TOC entry 4936 (class 0 OID 16526)
-- Dependencies: 230
-- Data for Name: pago; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pago (id_pago, monto, fecha_pago, id_reserva) FROM stdin;
1	150.00	2024-11-01	1
2	200.00	2024-11-02	2
3	180.00	2024-11-03	3
4	250.00	2024-11-04	4
5	220.00	2024-11-05	5
6	160.00	2024-11-06	6
7	210.00	2024-11-07	7
8	230.00	2024-11-08	8
9	180.00	2024-11-09	9
10	200.00	2024-11-10	10
11	170.00	2024-11-11	11
12	240.00	2024-11-12	12
13	190.00	2024-11-13	13
14	210.00	2024-11-14	14
15	250.00	2024-11-15	15
16	230.00	2024-11-16	16
17	180.00	2024-11-17	17
18	200.00	2024-11-18	18
19	210.00	2024-11-19	19
20	220.00	2024-11-20	20
21	240.00	2024-11-21	21
22	250.00	2024-11-22	22
23	230.00	2024-11-23	23
24	200.00	2024-11-24	24
25	180.00	2024-11-25	25
26	170.00	2024-11-26	26
27	210.00	2024-11-27	27
28	220.00	2024-11-28	28
29	250.00	2024-11-29	29
30	240.00	2024-11-30	30
31	230.00	2024-12-01	31
32	180.00	2024-12-02	32
33	200.00	2024-12-03	33
34	220.00	2024-12-04	34
35	240.00	2024-12-05	35
36	250.00	2024-12-06	36
37	200.00	2024-12-07	37
38	210.00	2024-12-08	38
39	180.00	2024-12-09	39
40	250.00	2024-12-10	40
41	190.00	2024-12-11	41
42	220.00	2024-12-12	42
43	200.00	2024-12-13	43
44	210.00	2024-12-14	44
45	180.00	2024-12-15	45
46	240.00	2024-12-16	46
47	250.00	2024-12-17	47
48	230.00	2024-12-18	48
49	200.00	2024-12-19	49
50	220.00	2024-12-20	50
\.


--
-- TOC entry 4922 (class 0 OID 16464)
-- Dependencies: 216
-- Data for Name: pasajero; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pasajero (id_pasajero, nombre, apellido, numero_pasaporte, email) FROM stdin;
1	Carlos	G¢mez	XG123456	carlos.gomez@example.com
2	Mar¡a	L¢pez	AB987654	maria.lopez@example.com
3	Pedro	Mart¡nez	CD345678	pedro.martinez@example.com
4	Ana	Rodr¡guez	EF876543	ana.rodriguez@example.com
5	Luisa	P‚rez	GH234567	luisa.perez@example.com
6	Juan	S nchez	IJ765432	juan.sanchez@example.com
7	Sof¡a	Garc¡a	KL456789	sofia.garcia@example.com
8	Andr‚s	Ram¡rez	MN654321	andres.ramirez@example.com
9	Catalina	Torres	OP345678	catalina.torres@example.com
10	Miguel	Morales	QR876543	miguel.morales@example.com
11	Valeria	Hern ndez	ST234567	valeria.hernandez@example.com
12	Laura	Jim‚nez	UV765432	laura.jimenez@example.com
13	Sebasti n	Ortiz	WX456789	sebastian.ortiz@example.com
14	Camila	Castro	YZ654321	camila.castro@example.com
15	David	Vargas	AA345678	david.vargas@example.com
16	Paula	Guerrero	BB876543	paula.guerrero@example.com
17	Esteban	Mendoza	CC234567	esteban.mendoza@example.com
18	Fernanda	G¢mez	DD765432	fernanda.gomez@example.com
19	Diego	L¢pez	EE456789	diego.lopez@example.com
20	Carolina	Mart¡nez	FF654321	carolina.martinez@example.com
21	Ricardo	Rodr¡guez	GG345678	ricardo.rodriguez@example.com
22	Isabella	P‚rez	HH876543	isabella.perez@example.com
23	Tom s	S nchez	II234567	tomas.sanchez@example.com
24	Gabriela	Garc¡a	JJ765432	gabriela.garcia@example.com
25	Javier	Ram¡rez	KK456789	javier.ramirez@example.com
26	Mariana	Torres	LL654321	mariana.torres@example.com
27	Daniel	Morales	MM345678	daniel.morales@example.com
28	Alejandra	Hern ndez	NN876543	alejandra.hernandez@example.com
29	Samuel	Jim‚nez	OO234567	samuel.jimenez@example.com
30	Lorena	Ortiz	PP765432	lorena.ortiz@example.com
31	Pablo	Castro	QQ456789	pablo.castro@example.com
32	Sara	Vargas	RR654321	sara.vargas@example.com
33	Felipe	Guerrero	SS345678	felipe.guerrero@example.com
34	Daniela	Mendoza	TT876543	daniela.mendoza@example.com
35	Alejandro	G¢mez	UU234567	alejandro.gomez@example.com
36	Martina	L¢pez	VV765432	martina.lopez@example.com
37	Oscar	Mart¡nez	WW456789	oscar.martinez@example.com
38	Juliana	Rodr¡guez	XX654321	juliana.rodriguez@example.com
39	Cristian	P‚rez	YY345678	cristian.perez@example.com
40	Victoria	S nchez	ZZ876543	victoria.sanchez@example.com
41	Luis	Garc¡a	AA234567	luis.garcia@example.com
42	Elena	Ram¡rez	BB765432	elena.ramirez@example.com
43	Francisco	Torres	CC456789	francisco.torres@example.com
44	Carmen	Morales	DD654321	carmen.morales@example.com
45	Manuel	Hern ndez	EE345678	manuel.hernandez@example.com
46	Claudia	Jim‚nez	FF876543	claudia.jimenez@example.com
47	Fernando	Ortiz	GG234567	fernando.ortiz@example.com
48	Natalia	Castro	HH765432	natalia.castro@example.com
49	Jorge	Vargas	II456789	jorge.vargas@example.com
\.


--
-- TOC entry 4930 (class 0 OID 16498)
-- Dependencies: 224
-- Data for Name: reserva; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva (id_reserva, fecha_reserva, estado_reserva, total_pagar, id_pasajero, id_asiento) FROM stdin;
1	2024-11-01	Activa	150.00	1	1
2	2024-11-02	Activa	200.00	2	2
3	2024-11-03	Cancelada	180.00	3	3
4	2024-11-04	Activa	250.00	4	4
5	2024-11-05	Activa	220.00	5	5
6	2024-11-06	Cancelada	160.00	6	6
7	2024-11-07	Activa	210.00	7	7
8	2024-11-08	Activa	230.00	8	8
9	2024-11-09	Activa	180.00	9	9
10	2024-11-10	Activa	200.00	10	10
11	2024-11-11	Cancelada	170.00	11	11
12	2024-11-12	Activa	240.00	12	12
13	2024-11-13	Activa	190.00	13	13
14	2024-11-14	Cancelada	210.00	14	14
15	2024-11-15	Activa	250.00	15	15
16	2024-11-16	Activa	230.00	16	16
17	2024-11-17	Cancelada	180.00	17	17
18	2024-11-18	Activa	200.00	18	18
19	2024-11-19	Activa	210.00	19	19
20	2024-11-20	Cancelada	220.00	20	20
21	2024-11-21	Activa	240.00	21	21
22	2024-11-22	Activa	250.00	22	22
23	2024-11-23	Cancelada	230.00	23	23
24	2024-11-24	Activa	200.00	24	24
25	2024-11-25	Activa	180.00	25	25
26	2024-11-26	Cancelada	170.00	26	26
27	2024-11-27	Activa	210.00	27	27
28	2024-11-28	Activa	220.00	28	28
29	2024-11-29	Cancelada	250.00	29	29
30	2024-11-30	Activa	240.00	30	30
31	2024-12-01	Activa	230.00	31	31
32	2024-12-02	Cancelada	180.00	32	32
33	2024-12-03	Activa	200.00	33	33
34	2024-12-04	Activa	220.00	34	34
35	2024-12-05	Cancelada	240.00	35	35
36	2024-12-06	Activa	250.00	36	36
37	2024-12-07	Activa	200.00	37	37
38	2024-12-08	Cancelada	210.00	38	38
39	2024-12-09	Activa	180.00	39	39
40	2024-12-10	Activa	250.00	40	40
41	2024-12-11	Cancelada	190.00	41	41
42	2024-12-12	Activa	220.00	42	42
43	2024-12-13	Activa	200.00	43	43
44	2024-12-14	Cancelada	210.00	44	44
45	2024-12-15	Activa	180.00	45	45
46	2024-12-16	Activa	240.00	46	46
47	2024-12-17	Cancelada	250.00	47	47
48	2024-12-18	Activa	230.00	48	48
49	2024-12-19	Activa	200.00	49	49
50	2024-12-20	Cancelada	220.00	1	50
\.


--
-- TOC entry 4937 (class 0 OID 16537)
-- Dependencies: 231
-- Data for Name: reserva_vuelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva_vuelo (id_reserva, id_vuelo) FROM stdin;
1	13
2	14
3	15
4	16
5	17
6	18
7	19
8	20
9	21
10	22
11	23
12	24
13	25
14	26
15	27
16	28
17	29
18	30
19	31
20	32
21	13
22	14
23	15
24	16
25	17
26	18
27	19
28	20
29	21
30	22
31	23
32	24
33	25
34	26
35	27
36	28
37	29
38	30
39	31
40	32
41	13
42	14
43	15
44	16
45	17
46	18
47	19
48	20
49	21
50	22
\.


--
-- TOC entry 4924 (class 0 OID 16473)
-- Dependencies: 218
-- Data for Name: vuelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vuelo (id_vuelo, codigo_vuelo, origen, destino, fecha_salida, fecha_llegada, id_avion, id_aeropuerto) FROM stdin;
13	VU1001	Bogot 	Medell¡n	2024-12-01 08:00:00	2024-12-01 09:30:00	1	2
14	VU1002	Cali	Cartagena	2024-12-01 10:00:00	2024-12-01 12:30:00	2	4
15	VU1003	Medell¡n	Barranquilla	2024-12-02 15:00:00	2024-12-02 17:00:00	3	5
16	VU1004	Cartagena	San Andr‚s	2024-12-03 09:00:00	2024-12-03 10:45:00	4	6
17	VU1005	Bogot 	Cali	2024-12-04 06:30:00	2024-12-04 08:00:00	1	3
18	VU1006	Barranquilla	Bogot 	2024-12-05 18:00:00	2024-12-05 19:45:00	2	1
19	VU1007	San Andr‚s	Bogot 	2024-12-06 13:00:00	2024-12-06 16:30:00	3	1
20	VU1008	Cali	Bogot 	2024-12-07 07:30:00	2024-12-07 08:45:00	4	1
21	VU1009	Medell¡n	Cali	2024-12-08 10:00:00	2024-12-08 11:15:00	5	3
22	VU1010	Bogot 	Barranquilla	2024-12-09 16:00:00	2024-12-09 17:30:00	1	5
23	VU1011	Cartagena	Bogot 	2024-12-10 08:00:00	2024-12-10 09:30:00	2	1
24	VU1012	San Andr‚s	Cartagena	2024-12-11 14:00:00	2024-12-11 15:30:00	3	4
25	VU1013	Medell¡n	Bogot 	2024-12-12 18:00:00	2024-12-12 19:45:00	4	1
26	VU1014	Barranquilla	Medell¡n	2024-12-13 08:00:00	2024-12-13 09:45:00	5	2
27	VU1015	Cali	San Andr‚s	2024-12-14 06:30:00	2024-12-14 08:15:00	1	6
28	VU1016	Bogot 	Cartagena	2024-12-15 08:00:00	2024-12-15 10:30:00	2	4
29	VU1017	Medell¡n	Cali	2024-12-16 08:00:00	2024-12-16 09:15:00	3	3
30	VU1018	Barranquilla	Cali	2024-12-17 14:00:00	2024-12-17 15:45:00	4	3
31	VU1019	San Andr‚s	Bogot 	2024-12-18 13:00:00	2024-12-18 16:00:00	5	1
32	VU1020	Cartagena	Medell¡n	2024-12-19 15:30:00	2024-12-19 17:00:00	1	2
\.


--
-- TOC entry 4938 (class 0 OID 16564)
-- Dependencies: 232
-- Data for Name: vuelo_empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vuelo_empleado (id_vuelo, id_empleado) FROM stdin;
13	1
14	2
15	3
16	4
17	5
18	6
19	7
20	8
21	9
22	10
23	11
24	12
25	13
26	14
27	15
28	16
29	17
30	18
31	19
32	19
\.


--
-- TOC entry 4952 (class 0 OID 0)
-- Dependencies: 227
-- Name: aeropuerto_id_aeropuerto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aeropuerto_id_aeropuerto_seq', 6, true);


--
-- TOC entry 4953 (class 0 OID 0)
-- Dependencies: 225
-- Name: asiento_id_asiento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.asiento_id_asiento_seq', 1, false);


--
-- TOC entry 4954 (class 0 OID 0)
-- Dependencies: 219
-- Name: avion_id_avion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.avion_id_avion_seq', 10, true);


--
-- TOC entry 4955 (class 0 OID 0)
-- Dependencies: 221
-- Name: empleado_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleado_id_empleado_seq', 19, true);


--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 229
-- Name: pago_id_pago_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pago_id_pago_seq', 1, false);


--
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 215
-- Name: pasajero_id_pasajero_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pasajero_id_pasajero_seq', 50, true);


--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 223
-- Name: reserva_id_reserva_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_id_reserva_seq', 1, false);


--
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 217
-- Name: vuelo_id_vuelo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vuelo_id_vuelo_seq', 32, true);


--
-- TOC entry 4762 (class 2606 OID 16524)
-- Name: aeropuerto aeropuerto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aeropuerto
    ADD CONSTRAINT aeropuerto_pkey PRIMARY KEY (id_aeropuerto);


--
-- TOC entry 4760 (class 2606 OID 16517)
-- Name: asiento asiento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asiento
    ADD CONSTRAINT asiento_pkey PRIMARY KEY (id_asiento);


--
-- TOC entry 4750 (class 2606 OID 16489)
-- Name: avion avion_matricula_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avion
    ADD CONSTRAINT avion_matricula_key UNIQUE (matricula);


--
-- TOC entry 4752 (class 2606 OID 16487)
-- Name: avion avion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avion
    ADD CONSTRAINT avion_pkey PRIMARY KEY (id_avion);


--
-- TOC entry 4754 (class 2606 OID 16496)
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);


--
-- TOC entry 4764 (class 2606 OID 16531)
-- Name: pago pago_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_pkey PRIMARY KEY (id_pago);


--
-- TOC entry 4742 (class 2606 OID 16471)
-- Name: pasajero pasajero_numero_pasaporte_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasajero
    ADD CONSTRAINT pasajero_numero_pasaporte_key UNIQUE (numero_pasaporte);


--
-- TOC entry 4744 (class 2606 OID 16469)
-- Name: pasajero pasajero_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasajero
    ADD CONSTRAINT pasajero_pkey PRIMARY KEY (id_pasajero);


--
-- TOC entry 4756 (class 2606 OID 16580)
-- Name: reserva reserva_id_asiento_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_id_asiento_key UNIQUE (id_asiento);


--
-- TOC entry 4758 (class 2606 OID 16504)
-- Name: reserva reserva_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (id_reserva);


--
-- TOC entry 4766 (class 2606 OID 16541)
-- Name: reserva_vuelo reserva_vuelo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_vuelo
    ADD CONSTRAINT reserva_vuelo_pkey PRIMARY KEY (id_reserva, id_vuelo);


--
-- TOC entry 4746 (class 2606 OID 16480)
-- Name: vuelo vuelo_codigo_vuelo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT vuelo_codigo_vuelo_key UNIQUE (codigo_vuelo);


--
-- TOC entry 4768 (class 2606 OID 16568)
-- Name: vuelo_empleado vuelo_empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelo_empleado
    ADD CONSTRAINT vuelo_empleado_pkey PRIMARY KEY (id_vuelo, id_empleado);


--
-- TOC entry 4748 (class 2606 OID 16478)
-- Name: vuelo vuelo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT vuelo_pkey PRIMARY KEY (id_vuelo);


--
-- TOC entry 4771 (class 2606 OID 16581)
-- Name: reserva fk_reserva_asiento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT fk_reserva_asiento FOREIGN KEY (id_asiento) REFERENCES public.asiento(id_asiento) ON DELETE SET NULL;


--
-- TOC entry 4769 (class 2606 OID 16559)
-- Name: vuelo fk_vuelo_aeropuerto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT fk_vuelo_aeropuerto FOREIGN KEY (id_aeropuerto) REFERENCES public.aeropuerto(id_aeropuerto) ON DELETE CASCADE;


--
-- TOC entry 4770 (class 2606 OID 16554)
-- Name: vuelo fk_vuelo_avion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelo
    ADD CONSTRAINT fk_vuelo_avion FOREIGN KEY (id_avion) REFERENCES public.avion(id_avion) ON DELETE CASCADE;


--
-- TOC entry 4773 (class 2606 OID 16532)
-- Name: pago pago_id_reserva_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_id_reserva_fkey FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva) ON DELETE CASCADE;


--
-- TOC entry 4772 (class 2606 OID 16505)
-- Name: reserva reserva_id_pasajero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_id_pasajero_fkey FOREIGN KEY (id_pasajero) REFERENCES public.pasajero(id_pasajero) ON DELETE CASCADE;


--
-- TOC entry 4774 (class 2606 OID 16542)
-- Name: reserva_vuelo reserva_vuelo_id_reserva_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_vuelo
    ADD CONSTRAINT reserva_vuelo_id_reserva_fkey FOREIGN KEY (id_reserva) REFERENCES public.reserva(id_reserva) ON DELETE CASCADE;


--
-- TOC entry 4775 (class 2606 OID 16547)
-- Name: reserva_vuelo reserva_vuelo_id_vuelo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_vuelo
    ADD CONSTRAINT reserva_vuelo_id_vuelo_fkey FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id_vuelo) ON DELETE CASCADE;


--
-- TOC entry 4776 (class 2606 OID 16574)
-- Name: vuelo_empleado vuelo_empleado_id_empleado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelo_empleado
    ADD CONSTRAINT vuelo_empleado_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado) ON DELETE CASCADE;


--
-- TOC entry 4777 (class 2606 OID 16569)
-- Name: vuelo_empleado vuelo_empleado_id_vuelo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vuelo_empleado
    ADD CONSTRAINT vuelo_empleado_id_vuelo_fkey FOREIGN KEY (id_vuelo) REFERENCES public.vuelo(id_vuelo) ON DELETE CASCADE;


-- Completed on 2024-11-26 19:49:45

--
-- PostgreSQL database dump complete
--


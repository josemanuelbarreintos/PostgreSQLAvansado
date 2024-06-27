--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-06-27 12:10:56

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

--
-- TOC entry 6 (class 2615 OID 32769)
-- Name: Arcos; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Arcos";


ALTER SCHEMA "Arcos" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 32771)
-- Name: personas; Type: TABLE; Schema: Arcos; Owner: postgres
--

CREATE TABLE "Arcos".personas (
    "Id_personas" integer NOT NULL,
    nombre character(50) NOT NULL,
    a_paterno character(50) NOT NULL,
    a_materno character(50) NOT NULL,
    telefono numeric NOT NULL,
    correo character(50) NOT NULL
);


ALTER TABLE "Arcos".personas OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 32770)
-- Name: Personas_Id_seq; Type: SEQUENCE; Schema: Arcos; Owner: postgres
--

CREATE SEQUENCE "Arcos"."Personas_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Arcos"."Personas_Id_seq" OWNER TO postgres;

--
-- TOC entry 4802 (class 0 OID 0)
-- Dependencies: 216
-- Name: Personas_Id_seq; Type: SEQUENCE OWNED BY; Schema: Arcos; Owner: postgres
--

ALTER SEQUENCE "Arcos"."Personas_Id_seq" OWNED BY "Arcos".personas."Id_personas";


--
-- TOC entry 221 (class 1259 OID 40968)
-- Name: arcos; Type: TABLE; Schema: Arcos; Owner: postgres
--

CREATE TABLE "Arcos".arcos (
    id_arcos integer NOT NULL,
    nombre character(50) NOT NULL,
    ubicacion character(50) NOT NULL,
    direccion_mac character(50) NOT NULL,
    id_persona integer NOT NULL
);


ALTER TABLE "Arcos".arcos OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 40967)
-- Name: arcos_id_seq; Type: SEQUENCE; Schema: Arcos; Owner: postgres
--

CREATE SEQUENCE "Arcos".arcos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Arcos".arcos_id_seq OWNER TO postgres;

--
-- TOC entry 4803 (class 0 OID 0)
-- Dependencies: 220
-- Name: arcos_id_seq; Type: SEQUENCE OWNED BY; Schema: Arcos; Owner: postgres
--

ALTER SEQUENCE "Arcos".arcos_id_seq OWNED BY "Arcos".arcos.id_arcos;


--
-- TOC entry 223 (class 1259 OID 40975)
-- Name: cat_estatus; Type: TABLE; Schema: Arcos; Owner: postgres
--

CREATE TABLE "Arcos".cat_estatus (
    id_estatus integer NOT NULL,
    estatus boolean NOT NULL
);


ALTER TABLE "Arcos".cat_estatus OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 40974)
-- Name: cat_estatus_id_estatus_seq; Type: SEQUENCE; Schema: Arcos; Owner: postgres
--

CREATE SEQUENCE "Arcos".cat_estatus_id_estatus_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Arcos".cat_estatus_id_estatus_seq OWNER TO postgres;

--
-- TOC entry 4804 (class 0 OID 0)
-- Dependencies: 222
-- Name: cat_estatus_id_estatus_seq; Type: SEQUENCE OWNED BY; Schema: Arcos; Owner: postgres
--

ALTER SEQUENCE "Arcos".cat_estatus_id_estatus_seq OWNED BY "Arcos".cat_estatus.id_estatus;


--
-- TOC entry 225 (class 1259 OID 40982)
-- Name: registro_arcos; Type: TABLE; Schema: Arcos; Owner: postgres
--

CREATE TABLE "Arcos".registro_arcos (
    id_registro_arcos integer NOT NULL,
    latitud character(50) NOT NULL,
    longitud character(50) NOT NULL,
    fecha date NOT NULL,
    id_estatus integer NOT NULL,
    id_arcos integer NOT NULL
);


ALTER TABLE "Arcos".registro_arcos OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 40981)
-- Name: registro_arcos_id_registro_arcos_seq; Type: SEQUENCE; Schema: Arcos; Owner: postgres
--

CREATE SEQUENCE "Arcos".registro_arcos_id_registro_arcos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Arcos".registro_arcos_id_registro_arcos_seq OWNER TO postgres;

--
-- TOC entry 4805 (class 0 OID 0)
-- Dependencies: 224
-- Name: registro_arcos_id_registro_arcos_seq; Type: SEQUENCE OWNED BY; Schema: Arcos; Owner: postgres
--

ALTER SEQUENCE "Arcos".registro_arcos_id_registro_arcos_seq OWNED BY "Arcos".registro_arcos.id_registro_arcos;


--
-- TOC entry 219 (class 1259 OID 40961)
-- Name: usuarios; Type: TABLE; Schema: Arcos; Owner: postgres
--

CREATE TABLE "Arcos".usuarios (
    id_usuarios integer NOT NULL,
    usuario character(50) NOT NULL,
    contrasenia character(120) NOT NULL,
    token character(200) NOT NULL,
    id_personas integer NOT NULL
);


ALTER TABLE "Arcos".usuarios OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 40960)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: Arcos; Owner: postgres
--

CREATE SEQUENCE "Arcos".usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Arcos".usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 4806 (class 0 OID 0)
-- Dependencies: 218
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: Arcos; Owner: postgres
--

ALTER SEQUENCE "Arcos".usuarios_id_seq OWNED BY "Arcos".usuarios.id_usuarios;


--
-- TOC entry 4627 (class 2604 OID 40971)
-- Name: arcos id_arcos; Type: DEFAULT; Schema: Arcos; Owner: postgres
--

ALTER TABLE ONLY "Arcos".arcos ALTER COLUMN id_arcos SET DEFAULT nextval('"Arcos".arcos_id_seq'::regclass);


--
-- TOC entry 4628 (class 2604 OID 40978)
-- Name: cat_estatus id_estatus; Type: DEFAULT; Schema: Arcos; Owner: postgres
--

ALTER TABLE ONLY "Arcos".cat_estatus ALTER COLUMN id_estatus SET DEFAULT nextval('"Arcos".cat_estatus_id_estatus_seq'::regclass);


--
-- TOC entry 4625 (class 2604 OID 32774)
-- Name: personas Id_personas; Type: DEFAULT; Schema: Arcos; Owner: postgres
--

ALTER TABLE ONLY "Arcos".personas ALTER COLUMN "Id_personas" SET DEFAULT nextval('"Arcos"."Personas_Id_seq"'::regclass);


--
-- TOC entry 4629 (class 2604 OID 40985)
-- Name: registro_arcos id_registro_arcos; Type: DEFAULT; Schema: Arcos; Owner: postgres
--

ALTER TABLE ONLY "Arcos".registro_arcos ALTER COLUMN id_registro_arcos SET DEFAULT nextval('"Arcos".registro_arcos_id_registro_arcos_seq'::regclass);


--
-- TOC entry 4626 (class 2604 OID 40964)
-- Name: usuarios id_usuarios; Type: DEFAULT; Schema: Arcos; Owner: postgres
--

ALTER TABLE ONLY "Arcos".usuarios ALTER COLUMN id_usuarios SET DEFAULT nextval('"Arcos".usuarios_id_seq'::regclass);


--
-- TOC entry 4792 (class 0 OID 40968)
-- Dependencies: 221
-- Data for Name: arcos; Type: TABLE DATA; Schema: Arcos; Owner: postgres
--

COPY "Arcos".arcos (id_arcos, nombre, ubicacion, direccion_mac, id_persona) FROM stdin;
101	Meembee                                           	PO Box 59993                                      	8B-AD-2D-C8-72-1D                                 	1
102	Kazio                                             	Apt 51                                            	CB-EF-CF-55-76-3D                                 	1
3	Vidoo                                             	PO Box 34251                                      	75-3D-D7-94-D5-27                                 	3
4	Jazzy                                             	4th Floor                                         	B6-CB-61-72-FA-02                                 	4
5	Plambee                                           	Suite 73                                          	FD-C8-40-86-44-2B                                 	5
6	Meevee                                            	Room 1061                                         	56-41-DC-0E-D4-BE                                 	6
7	Meezzy                                            	Suite 24                                          	09-DC-7E-1A-8D-74                                 	7
8	Tambee                                            	Room 1341                                         	26-E4-F1-27-64-D1                                 	8
9	Meemm                                             	9th Floor                                         	BA-F7-70-48-62-98                                 	9
10	Kazio                                             	Apt 1226                                          	A2-E8-BD-BF-77-54                                 	10
11	Blogpad                                           	PO Box 53629                                      	C0-A8-3A-C5-8B-D3                                 	11
12	Photolist                                         	PO Box 19572                                      	BF-F7-04-ED-9D-5B                                 	12
13	Einti                                             	Suite 86                                          	61-5C-4B-CB-1A-70                                 	13
14	Oyondu                                            	Apt 954                                           	36-14-1B-17-8E-4F                                 	14
15	Realbuzz                                          	Apt 1333                                          	F5-0F-E6-6A-A0-BB                                 	15
16	Topiczoom                                         	PO Box 64741                                      	6E-A6-26-CE-E2-4D                                 	16
17	Yoveo                                             	PO Box 17906                                      	8D-11-E7-85-26-9A                                 	17
18	Miboo                                             	Apt 1033                                          	FF-93-BB-3B-4A-12                                 	18
19	Digitube                                          	Suite 16                                          	9F-97-B2-86-01-13                                 	19
20	Tazzy                                             	PO Box 16090                                      	36-D5-24-F7-52-4F                                 	20
21	Viva                                              	PO Box 65588                                      	26-D3-47-D9-A2-06                                 	21
22	Skajo                                             	Room 423                                          	A0-CD-02-7B-68-63                                 	22
23	Rhycero                                           	Apt 1412                                          	63-5A-7B-78-71-20                                 	23
24	Jaxworks                                          	20th Floor                                        	56-03-D1-63-1D-7F                                 	24
25	Flipstorm                                         	Suite 96                                          	EE-6A-D9-57-D2-4C                                 	25
26	Kaymbo                                            	PO Box 48658                                      	20-58-31-FE-17-CF                                 	26
27	Vinder                                            	Suite 79                                          	D3-F4-64-95-FD-4F                                 	27
28	Feednation                                        	Apt 1985                                          	EB-74-F8-D8-84-E6                                 	28
29	Vinte                                             	Suite 64                                          	6C-E4-E4-7A-C1-BE                                 	29
30	Flashspan                                         	PO Box 86160                                      	D8-21-11-22-0B-A7                                 	30
31	Skajo                                             	Room 1928                                         	48-82-D6-06-01-90                                 	31
32	Voonix                                            	Apt 248                                           	68-3E-02-E7-1B-BA                                 	32
33	Quinu                                             	Apt 1653                                          	C3-6A-3D-B8-D9-DE                                 	33
34	Gabtune                                           	Apt 1154                                          	A6-E5-81-90-54-69                                 	34
35	Blogtags                                          	Apt 1233                                          	95-CC-D5-05-B7-AF                                 	35
36	Tagfeed                                           	Suite 74                                          	5C-34-75-1D-17-54                                 	36
37	DabZ                                              	3rd Floor                                         	96-7A-F0-7B-83-82                                 	37
38	Quinu                                             	PO Box 43447                                      	41-D0-AB-EE-4F-CB                                 	38
39	Snaptags                                          	Apt 1234                                          	DE-EB-FE-D0-75-E8                                 	39
40	Yamia                                             	10th Floor                                        	28-67-39-10-58-E7                                 	40
41	Zava                                              	PO Box 34497                                      	0F-D6-58-5B-FE-A7                                 	41
42	Yakijo                                            	6th Floor                                         	10-4F-D5-52-3F-22                                 	42
43	Voomm                                             	Apt 417                                           	FA-E1-54-57-05-23                                 	43
44	Ooba                                              	Apt 566                                           	C7-57-86-52-E3-D8                                 	44
45	Skinder                                           	11th Floor                                        	C8-BC-65-D5-EE-78                                 	45
46	Thoughtbeat                                       	Room 1631                                         	C3-8F-70-BB-73-75                                 	46
47	Meemm                                             	PO Box 42244                                      	68-2A-7F-A3-2A-98                                 	47
48	Eazzy                                             	Suite 3                                           	89-E7-7C-8B-41-1F                                 	48
49	Tagopia                                           	Room 404                                          	D3-CA-F0-43-6B-EA                                 	49
50	Eamia                                             	Apt 274                                           	91-FC-0A-CE-25-95                                 	50
51	Yata                                              	Room 335                                          	E1-16-3C-7D-B8-3B                                 	51
52	Dynabox                                           	Room 1930                                         	25-3D-8D-64-D5-08                                 	52
53	Flashdog                                          	PO Box 89203                                      	9D-18-F9-8C-D6-12                                 	53
54	Kazu                                              	13th Floor                                        	79-66-B0-E9-FF-81                                 	54
55	Buzzster                                          	Apt 876                                           	6A-B7-83-F5-E9-D8                                 	55
56	Centidel                                          	Suite 48                                          	64-5A-EC-BA-1C-FA                                 	56
57	Zoomcast                                          	Suite 80                                          	D3-12-86-2F-87-12                                 	57
58	Gabvine                                           	Room 1699                                         	86-00-6F-86-84-05                                 	58
59	Meevee                                            	Room 930                                          	0E-E1-6B-85-60-FA                                 	59
60	DabZ                                              	Suite 88                                          	03-09-09-14-A2-10                                 	60
61	Photolist                                         	Apt 1564                                          	0D-49-53-8D-36-52                                 	61
62	Wikivu                                            	Suite 23                                          	67-93-87-FA-6F-1B                                 	62
63	Wordtune                                          	Apt 1344                                          	26-01-67-B9-4C-44                                 	63
64	Realcube                                          	5th Floor                                         	F7-DA-4C-14-44-02                                 	64
65	Babbleopia                                        	Suite 97                                          	CF-AC-9A-01-8E-C3                                 	65
66	Linktype                                          	Room 76                                           	86-3C-11-3E-5E-48                                 	66
67	Katz                                              	Apt 747                                           	81-EA-53-5B-D6-2C                                 	67
68	Meezzy                                            	PO Box 62313                                      	D7-66-89-50-17-F8                                 	68
69	Devpulse                                          	Suite 60                                          	AB-30-FB-9C-07-04                                 	69
70	LiveZ                                             	Room 1799                                         	44-77-0A-45-6F-E5                                 	70
71	Brainlounge                                       	18th Floor                                        	B4-1E-71-B0-D5-D6                                 	71
72	Flipstorm                                         	Apt 155                                           	9E-9E-5D-C0-C0-66                                 	72
73	Tagcat                                            	13th Floor                                        	27-0D-8F-1C-85-33                                 	73
74	Blogtags                                          	9th Floor                                         	83-FB-16-2C-42-BB                                 	74
75	Zoomlounge                                        	Room 932                                          	85-2A-D5-C1-1E-55                                 	75
76	Divavu                                            	Apt 312                                           	D3-00-1D-06-04-32                                 	76
77	Gigabox                                           	Apt 1571                                          	B4-F6-07-3A-7B-B2                                 	77
78	Jetpulse                                          	PO Box 24561                                      	85-97-A4-87-DA-DD                                 	78
79	Eidel                                             	PO Box 77679                                      	45-0F-28-67-02-50                                 	79
80	Oozz                                              	Suite 82                                          	CC-A6-E0-82-AF-FE                                 	80
81	Dabtype                                           	Suite 69                                          	9F-06-B2-DD-3D-76                                 	81
82	Fivebridge                                        	Suite 93                                          	F5-40-D8-E0-19-B8                                 	82
83	Realbuzz                                          	4th Floor                                         	A7-89-99-11-CD-45                                 	83
84	Flashpoint                                        	Suite 32                                          	3C-B3-B3-7C-09-A8                                 	84
85	Blognation                                        	15th Floor                                        	11-49-2B-A2-49-D2                                 	85
86	Kayveo                                            	PO Box 30200                                      	35-94-2D-2C-96-E7                                 	86
87	Plajo                                             	Apt 43                                            	AA-4D-61-B1-BD-70                                 	87
88	Eadel                                             	Apt 1781                                          	D9-37-46-5D-78-8C                                 	88
89	Tagchat                                           	PO Box 89077                                      	CF-55-D5-BC-1D-FB                                 	89
90	Tavu                                              	PO Box 43628                                      	38-20-E3-49-5B-81                                 	90
91	Kwimbee                                           	Apt 33                                            	94-4C-55-F3-57-90                                 	91
92	Skinix                                            	Room 1439                                         	19-75-F5-3F-6A-9D                                 	92
93	Photobean                                         	Apt 1238                                          	18-98-04-4E-4D-39                                 	93
94	Thoughtstorm                                      	Suite 16                                          	58-A0-7E-8D-3D-E9                                 	94
95	Brainlounge                                       	Room 1935                                         	07-7A-A6-7A-1F-F1                                 	95
96	Jetwire                                           	PO Box 92877                                      	D4-12-F0-21-22-09                                 	96
97	Brainlounge                                       	Suite 59                                          	7B-2C-1E-A2-71-E3                                 	97
98	Jazzy                                             	Suite 57                                          	D9-9A-BA-BB-D6-A3                                 	98
99	Photofeed                                         	PO Box 37958                                      	42-92-C0-50-31-D9                                 	99
100	Devify                                            	Apt 287                                           	D4-3E-61-33-02-4B                                 	100
\.


--
-- TOC entry 4794 (class 0 OID 40975)
-- Dependencies: 223
-- Data for Name: cat_estatus; Type: TABLE DATA; Schema: Arcos; Owner: postgres
--

COPY "Arcos".cat_estatus (id_estatus, estatus) FROM stdin;
1	t
2	f
\.


--
-- TOC entry 4788 (class 0 OID 32771)
-- Dependencies: 217
-- Data for Name: personas; Type: TABLE DATA; Schema: Arcos; Owner: postgres
--

COPY "Arcos".personas ("Id_personas", nombre, a_paterno, a_materno, telefono, correo) FROM stdin;
1	Herta                                             	Rois                                              	Bahia                                             	5557456789	rbahia0@canalblog.com                             
3	Alethea                                           	Amos                                              	Geelan                                            	5557456789	ageelan1@bbc.co.uk                                
4	Diandra                                           	Putnam                                            	Fancott                                           	5557456789	pfancott3@nih.gov                                 
5	Martha                                            	Morton                                            	Morcombe                                          	5557456789	mmorcombe4@nyu.edu                                
6	Agnes                                             	Flore                                             	Laughlan                                          	5557456789	flaughlan5@scribd.com                             
7	Barbaraanne                                       	Jodie                                             	Haulkham                                          	5557456789	jhaulkham6@google.it                              
8	Peyter                                            	Amabelle                                          	Rowth                                             	5557456789	arowth7@foxnews.com                               
9	Edmund                                            	Barney                                            	Kestin                                            	5557456789	bkestin8@ox.ac.uk                                 
10	Cecilia                                           	Deeanne                                           	Bladder                                           	5557456789	dbladder9@census.gov                              
11	Nessy                                             	Giorgi                                            	Breckin                                           	5557456789	gbreckina@cornell.edu                             
12	Natal                                             	Muffin                                            	Switsur                                           	5557456789	mswitsurb@biglobe.ne.jp                           
13	Vivia                                             	Beryle                                            	Tidman                                            	5557456789	btidmanc@hubpages.com                             
14	Arel                                              	Fredi                                             	Chastang                                          	5557456789	fchastangd@washingtonpost.com                     
15	Tommy                                             	Tracey                                            	Heales                                            	5557456789	thealese@wordpress.org                            
16	Edlin                                             	Kim                                               	Kirkby                                            	5557456789	kkirkbyf@digg.com                                 
17	Eden                                              	Meaghan                                           	Cleeton                                           	5557456789	mcleetong@ovh.net                                 
18	Marty                                             	Ralina                                            	Eskell                                            	5557456789	reskellh@blinklist.com                            
19	Tammie                                            	Dania                                             	Persehouse                                        	5557456789	dpersehousei@clickbank.net                        
20	Minta                                             	Aurlie                                            	Jeness                                            	5557456789	ajenessj@nasa.gov                                 
21	Yanaton                                           	Daloris                                           	Lamasna                                           	5557456789	dlamasnak@jugem.jp                                
22	Stevena                                           	Gian                                              	Jancik                                            	5557456789	gjancikl@freewebs.com                             
23	Shannon                                           	Maddy                                             	Simionato                                         	5557456789	msimionatom@arizona.edu                           
24	Kamilah                                           	Catharine                                         	Brightling                                        	5557456789	cbrightlingn@mashable.com                         
25	Clem                                              	Tamas                                             	Noller                                            	5557456789	tnollero@dell.com                                 
26	Daloris                                           	Enriqueta                                         	Bleddon                                           	5557456789	ebleddonp@tiny.cc                                 
27	Elsworth                                          	Yance                                             	Pape                                              	5557456789	ypapeq@squidoo.com                                
28	Justin                                            	Sigvard                                           	Philcox                                           	5557456789	sphilcoxr@arstechnica.com                         
29	Rees                                              	Tasia                                             	Drayton                                           	5557456789	tdraytons@harvard.edu                             
30	Rhonda                                            	Brianne                                           	Budgen                                            	5557456789	bbudgent@ning.com                                 
31	Sissy                                             	Cecilia                                           	Draycott                                          	5557456789	cdraycottu@taobao.com                             
32	Theo                                              	Jobey                                             	Pound                                             	5557456789	jpoundv@nsw.gov.au                                
33	Oneida                                            	Devland                                           	Balazot                                           	5557456789	dbalazotw@pcworld.com                             
34	Elke                                              	Gerhardt                                          	Sedger                                            	5557456789	gsedgerx@adobe.com                                
35	Eveleen                                           	Keith                                             	Mowson                                            	5557456789	kmowsony@upenn.edu                                
36	Fredia                                            	Odetta                                            	Matelaitis                                        	5557456789	omatelaitisz@tumblr.com                           
37	Delcina                                           	Lorrie                                            	McMeanma                                          	5557456789	lmcmeanma10@soundcloud.com                        
38	Raeann                                            	Kaela                                             	Ewenson                                           	5557456789	kewenson11@dell.com                               
39	Giordano                                          	Reggi                                             	Waterson                                          	5557456789	rwaterson12@hp.com                                
40	Alanah                                            	Asia                                              	Cutmore                                           	5557456789	acutmore13@elpais.com                             
41	Chaunce                                           	Gisela                                            	Burnsall                                          	5557456789	gburnsall14@mediafire.com                         
42	Alexine                                           	Lucia                                             	Mordin                                            	5557456789	lmordin15@google.com.au                           
43	Pooh                                              	Carly                                             	Renshell                                          	5557456789	crenshell16@shareasale.com                        
44	Xena                                              	Patsy                                             	Awty                                              	5557456789	pawty17@4shared.com                               
45	Greer                                             	Jammal                                            	Stuchbery                                         	5557456789	jstuchbery18@samsung.com                          
46	Elroy                                             	Henry                                             	Tutchell                                          	5557456789	htutchell19@yelp.com                              
47	Laughton                                          	Cecilio                                           	Gavey                                             	5557456789	cgavey1a@arizona.edu                              
48	Rae                                               	Silvana                                           	Lorenc                                            	5557456789	slorenc1b@pen.io                                  
49	Lorin                                             	Neely                                             	Rulten                                            	5557456789	nrulten1c@answers.com                             
50	Afton                                             	Rodrick                                           	Bradbeer                                          	5557456789	rbradbeer1d@china.com.cn                          
51	Selestina                                         	Virge                                             	Kittel                                            	5557456789	vkittel1e@latimes.com                             
52	Haze                                              	Lind                                              	Fitzpatrick                                       	5557456789	lfitzpatrick1f@networkadvertising.org             
53	Cassy                                             	Phip                                              	Van Salzberger                                    	5557456789	pvansalzberger1g@oracle.com                       
54	Marcellina                                        	Dolph                                             	Poschel                                           	5557456789	dposchel1h@e-recht24.de                           
55	Verine                                            	Reggis                                            	Mellenby                                          	5557456789	rmellenby1i@friendfeed.com                        
56	Laurianne                                         	Winfred                                           	Huortic                                           	5557456789	whuortic1j@eventbrite.com                         
57	Daryle                                            	Sarina                                            	Capron                                            	5557456789	scapron1k@ning.com                                
58	Shannon                                           	Jock                                              	Sackler                                           	5557456789	jsackler1l@cornell.edu                            
59	Alyson                                            	Douglas                                           	Nipper                                            	5557456789	dnipper1m@odnoklassniki.ru                        
60	Gonzalo                                           	Margarette                                        	Ancketill                                         	5557456789	mancketill1n@wikispaces.com                       
61	Adelle                                            	Oberon                                            	Jewks                                             	5557456789	ojewks1o@goo.gl                                   
62	Ignatius                                          	Harmony                                           	Cockett                                           	5557456789	hcockett1p@oakley.com                             
63	Mina                                              	Albina                                            	Arnholtz                                          	5557456789	aarnholtz1q@alexa.com                             
64	Yvette                                            	Levi                                              	Beynke                                            	5557456789	lbeynke1r@archive.org                             
65	Harvey                                            	Edvard                                            	Gouly                                             	5557456789	egouly1s@technorati.com                           
66	Robbie                                            	Gipsy                                             	Kenrat                                            	5557456789	gkenrat1t@discuz.net                              
67	Reggis                                            	Gothart                                           	Lippiello                                         	5557456789	glippiello1u@cornell.edu                          
68	Roshelle                                          	Midge                                             	Fussey                                            	5557456789	mfussey1v@fastcompany.com                         
69	Kaleb                                             	Sallyanne                                         	Guiett                                            	5557456789	sguiett1w@w3.org                                  
70	Winni                                             	Violante                                          	Addey                                             	5557456789	vaddey1x@macromedia.com                           
71	Tymon                                             	Phillipe                                          	Tschierse                                         	5557456789	ptschierse1y@nytimes.com                          
72	Pembroke                                          	Sibilla                                           	Buckley                                           	5557456789	sbuckley1z@yelp.com                               
73	Sauncho                                           	Serene                                            	Pallesen                                          	5557456789	spallesen20@tamu.edu                              
74	Herculie                                          	Imelda                                            	Arkow                                             	5557456789	iarkow21@php.net                                  
75	Christophe                                        	Kippie                                            	Vorley                                            	5557456789	kvorley22@senate.gov                              
76	Levey                                             	Brodie                                            	Seyffert                                          	5557456789	bseyffert23@fda.gov                               
77	Sibella                                           	Barnard                                           	Attwool                                           	5557456789	battwool24@multiply.com                           
78	Markos                                            	Fredric                                           	Please                                            	5557456789	fplease25@dyndns.org                              
79	Alvina                                            	Ramon                                             	Cornick                                           	5557456789	rcornick26@de.vu                                  
80	Gerianna                                          	Isador                                            	Worters                                           	5557456789	iworters27@globo.com                              
81	Leesa                                             	Fay                                               	Lunam                                             	5557456789	flunam28@adobe.com                                
82	Darby                                             	Nell                                              	Kestin                                            	5557456789	nkestin29@ovh.net                                 
83	Deloria                                           	Antonella                                         	Boken                                             	5557456789	aboken2a@google.cn                                
84	Mahmoud                                           	Janna                                             	Bealing                                           	5557456789	jbealing2b@army.mil                               
85	Valentia                                          	Blythe                                            	Rossbrook                                         	5557456789	brossbrook2c@biblegateway.com                     
86	Silvana                                           	Herta                                             	Cowup                                             	5557456789	hcowup2d@prweb.com                                
87	Pearla                                            	Fidela                                            	Cosley                                            	5557456789	fcosley2e@yale.edu                                
88	Costa                                             	Dex                                               	Blaik                                             	5557456789	dblaik2f@hugedomains.com                          
89	Arron                                             	Tess                                              	Bonehill                                          	5557456789	tbonehill2g@wordpress.org                         
90	Care                                              	Jarrad                                            	Mowatt                                            	5557456789	jmowatt2h@posterous.com                           
91	Tarra                                             	Fritz                                             	Glavias                                           	5557456789	fglavias2i@ed.gov                                 
92	Zoe                                               	Morgana                                           	Northway                                          	5557456789	mnorthway2j@mail.ru                               
93	Frankie                                           	Rozamond                                          	Taleworth                                         	5557456789	rtaleworth2k@microsoft.com                        
94	Gianina                                           	Cesya                                             	Farge                                             	5557456789	cfarge2l@webmd.com                                
95	Hailey                                            	Randolph                                          	Stone                                             	5557456789	rstone2m@mapy.cz                                  
96	Newton                                            	Chance                                            	Dugmore                                           	5557456789	cdugmore2n@apple.com                              
97	Clarence                                          	Patrizio                                          	Breinl                                            	5557456789	pbreinl2o@slashdot.org                            
98	Robbie                                            	Felipa                                            	Kerford                                           	5557456789	fkerford2p@themeforest.net                        
99	Bobbye                                            	Lucio                                             	Riccelli                                          	5557456789	lriccelli2q@sun.com                               
100	Dulciana                                          	Byram                                             	Frankis                                           	5557456789	bfrankis2r@usnews.com                             
101	Dulciana                                          	Byram                                             	Frankis                                           	5557456789	bfrankis2r@usnews.com                             
102	Dulciana                                          	Byram                                             	Frankis                                           	5557456789	bfrankis2r@usnews.com                             
103	Dulciana                                          	Byram                                             	Frankis                                           	5557456789	bfrankis2r@usnews.com                             
\.


--
-- TOC entry 4796 (class 0 OID 40982)
-- Dependencies: 225
-- Data for Name: registro_arcos; Type: TABLE DATA; Schema: Arcos; Owner: postgres
--

COPY "Arcos".registro_arcos (id_registro_arcos, latitud, longitud, fecha, id_estatus, id_arcos) FROM stdin;
101	39.1168675                                        	-9.2011356                                        	2023-11-28	1	101
2	-6.7940161                                        	106.3287199                                       	2024-01-12	1	102
103	46.3368774                                        	48.2017123                                        	2023-10-29	1	3
4	54.7288441                                        	37.5438564                                        	2024-02-13	1	4
5	38.05106                                          	114.463347                                        	2023-08-31	1	5
6	5.082453                                          	-73.365046                                        	2023-07-06	1	6
7	-8.6603                                           	117.1735                                          	2023-12-11	1	7
8	48.9086571                                        	2.4532855                                         	2024-04-13	1	8
9	40.417902                                         	122.660538                                        	2023-10-29	1	9
10	-5.456385                                         	122.612261                                        	2024-06-09	1	10
11	-6.6656231                                        	106.3438367                                       	2024-02-06	1	11
12	41.5728211                                        	23.7282719                                        	2023-10-12	1	12
13	11.463645                                         	122.7992318                                       	2023-12-10	1	13
14	47.015529                                         	-68.1429749                                       	2023-09-09	1	14
15	47.372696                                         	132.145184                                        	2023-10-19	1	15
16	32.3118725                                        	64.811084                                         	2023-07-25	1	16
17	33.03267                                          	36.57387                                          	2023-07-19	1	17
18	53.6849853                                        	27.1325559                                        	2024-04-06	1	18
19	36.195409                                         	113.116404                                        	2023-10-02	1	19
20	-7.5699505                                        	108.932395                                        	2024-02-12	1	20
21	-8.3765619                                        	115.1918802                                       	2023-09-08	1	21
22	42.1988667                                        	26.7817371                                        	2023-10-20	1	22
23	13.1870854                                        	123.4572574                                       	2024-06-09	1	23
24	18.0736829                                        	-76.7942403                                       	2023-08-15	1	24
25	-10.1670956                                       	123.5787505                                       	2024-02-04	1	25
26	-24.912902                                        	-65.640294                                        	2023-07-31	1	26
27	32.28548                                          	35.021481                                         	2023-09-23	1	27
28	41.0084382                                        	70.074132                                         	2023-11-22	1	28
29	-6.4222                                           	106.0889                                          	2023-08-10	1	29
30	55.6583701                                        	39.8653499                                        	2023-12-24	1	30
31	27.7703677                                        	-82.6356732                                       	2024-05-09	1	31
32	9.1261664                                         	-12.9176518                                       	2023-11-30	1	32
33	51.630114                                         	5.5807167                                         	2024-06-14	1	33
34	59.8668258                                        	17.6537608                                        	2024-06-09	1	34
35	-6.921715                                         	112.054703                                        	2024-03-10	1	35
36	-20.9829904                                       	-40.9990597                                       	2023-11-10	1	36
37	40.7845262                                        	21.4131222                                        	2023-10-30	1	37
38	-13.3498444                                       	-49.284143                                        	2023-12-15	1	38
39	54.2388118                                        	17.2312846                                        	2023-10-16	1	39
40	52.2902011                                        	22.4724915                                        	2024-04-22	1	40
41	59.362551                                         	18.0343914                                        	2023-06-21	1	41
42	41.1718057                                        	44.9946631                                        	2024-05-08	1	42
43	-6.9789789                                        	111.3888358                                       	2024-01-14	1	43
44	4.9801882                                         	23.941751                                         	2023-12-31	1	44
45	40.7                                              	-111.94                                           	2024-06-18	1	45
46	-9.8975064                                        	-76.9398195                                       	2024-01-11	1	46
47	56.2533676                                        	43.1585921                                        	2023-08-29	1	47
48	-34.7932249                                       	-58.4103552                                       	2023-10-24	1	48
49	35.202503                                         	102.521807                                        	2024-05-11	1	49
50	-8.6423128                                        	120.4559258                                       	2023-10-16	1	50
51	-6.7575785                                        	38.131876                                         	2024-02-20	2	51
52	36.9549975                                        	65.1254488                                        	2024-05-08	2	52
53	48.48333                                          	124.48333                                         	2023-08-09	2	53
54	34.1672881                                        	-118.153228                                       	2023-10-14	2	54
55	57.7871116                                        	14.2369341                                        	2024-04-17	2	55
56	22.2678103                                        	114.2360778                                       	2023-10-22	2	56
57	13.5722578                                        	-15.6002024                                       	2023-11-21	2	57
58	54.5728766                                        	20.1764433                                        	2024-01-23	2	58
59	-18.9745738                                       	-49.4600885                                       	2023-09-02	2	59
60	48.0793507                                        	20.7653961                                        	2024-06-05	2	60
61	48.5347071                                        	7.6370168                                         	2023-07-09	2	61
62	45.46536                                          	-73.66585                                         	2023-10-28	2	62
63	52.0264758                                        	21.8107747                                        	2024-06-02	2	63
64	56.07458                                          	92.8703415                                        	2023-09-16	2	64
65	15.3833332                                        	120.8000031                                       	2023-08-06	2	65
66	53.6190091                                        	-1.2780726                                        	2024-02-02	2	66
67	10.6485481                                        	-61.495357                                        	2023-10-22	2	67
68	55.6383075                                        	22.938485                                         	2024-06-15	2	68
69	54.789029                                         	39.833505                                         	2024-01-22	2	69
70	24.77848                                          	110.496593                                        	2024-04-28	2	70
71	29.696323                                         	115.439898                                        	2024-03-28	2	71
72	39.932447                                         	116.430976                                        	2023-10-15	2	72
73	19.3579802                                        	-99.0806088                                       	2023-09-24	2	73
74	32.165                                            	108.8822222                                       	2024-02-01	2	74
75	16.3859953                                        	121.1079276                                       	2024-02-04	2	75
76	28.6019464                                        	-106.0244614                                      	2024-02-04	2	76
77	48.138899                                         	-1.948989                                         	2023-11-21	2	77
78	51.506437                                         	100.6714581                                       	2024-02-03	2	78
79	54.939834                                         	20.1270433                                        	2024-04-07	2	79
80	2.6715181                                         	98.8087151                                        	2024-06-10	2	80
81	-6.7076379                                        	111.3709499                                       	2023-09-07	2	81
82	14.5638721                                        	121.0327599                                       	2024-02-10	2	82
83	51.40698                                          	91.29244                                          	2023-11-04	2	83
84	43.0429124                                        	1.9038837                                         	2024-02-08	2	84
85	14.5005732                                        	120.9926908                                       	2024-01-30	2	85
86	56.0674256                                        	98.4613454                                        	2024-06-04	2	86
87	14.6921469                                        	120.9617614                                       	2023-10-15	2	87
88	15.366667                                         	43.433333                                         	2023-10-10	2	88
89	13.5192458                                        	-87.6001222                                       	2024-06-13	2	89
90	-33.4408815                                       	-70.6516913                                       	2024-05-10	2	90
91	38.7933106                                        	140.2234077                                       	2024-05-26	2	91
92	24.467141                                         	115.77735                                         	2023-11-06	2	92
93	49.3932119                                        	15.8838159                                        	2024-06-19	2	93
94	53.1210091                                        	17.9794988                                        	2024-02-15	2	94
95	0.7710308                                         	127.3695176                                       	2023-07-04	2	95
96	-7.3195036                                        	-76.7769324                                       	2023-11-25	2	96
97	9.9126704                                         	-67.3614586                                       	2023-09-07	2	97
98	63.3063621                                        	18.7067796                                        	2024-04-05	2	98
99	-6.205673                                         	106.3081194                                       	2023-08-20	2	99
100	24.908293                                         	102.650211                                        	2024-03-20	2	100
\.


--
-- TOC entry 4790 (class 0 OID 40961)
-- Dependencies: 219
-- Data for Name: usuarios; Type: TABLE DATA; Schema: Arcos; Owner: postgres
--

COPY "Arcos".usuarios (id_usuarios, usuario, contrasenia, token, id_personas) FROM stdin;
101	shearst0                                          	jO01VJlFK?                                                                                                              	$2a$04$WAUAgS1/3iDQ8/NlnFkFs.aIcirXqjprdCUcB.5.xcFMAFjpTFKBe                                                                                                                                            	101
102	spineaux1                                         	zV3!_Q/                                                                                                                 	$2a$04$4RYtevkNaaMpsOcqdl8TjuYtlgLV3nE5d4mqL7XmwuUuaxPwC1BTS                                                                                                                                            	102
3	wwagon2                                           	cK7=7vDUS~qXMc                                                                                                          	$2a$04$4aHIYE.Ux.wKYvxKXGkEBORR65jSclqer3/M8L0AYPlX5MOFJPg3a                                                                                                                                            	103
4	epeasey3                                          	mY8+yhp8=l+ZM/$>                                                                                                        	$2a$04$53F4DP2gVTMECjNIViKMFu2YnT.LWxByEwUmyyyy/G23IbXfmdInC                                                                                                                                            	4
5	rkohter4                                          	sI5@9EDJ#o6s                                                                                                            	$2a$04$GW/p1XNvyHI/NCzWbGpC2.ZcAnSUcLqZIi9aub7qPFomnc1A9F.Ra                                                                                                                                            	5
6	khammarberg5                                      	vM7&ylvJmlFa                                                                                                            	$2a$04$vkD7e.5o9MnN0CIt2.fYFuM927eXMKV83ZHRzpyEh/oYVPqgjZVii                                                                                                                                            	6
7	rglenton6                                         	hB9/ajhqr)w,D{fE                                                                                                        	$2a$04$7CTkFu/928OiClxH7YvJ5etPBdZVEEpO943KIcok5mrcWqy3fW2F.                                                                                                                                            	7
8	ccoupman7                                         	bI5_PH1ZBzsCFaAG                                                                                                        	$2a$04$A5UukqmAZQLUSNKkd4VM6Oa8iLqnsWls89svsatsrPWy34Rzufnqa                                                                                                                                            	8
9	rfeeley8                                          	yC1=i_l7}w?Bm                                                                                                           	$2a$04$aWjdW7xQy6zENEOd6dssSu.lAgoAI1u94xI9RnDmRcaKG1XMn50EK                                                                                                                                            	9
10	sfritter9                                         	oE7|~Q3TTR                                                                                                              	$2a$04$maOA1qGGQcJYYyTr4PJw5eYF1U4vhtN.SDhRfzUnGDJufn4hhBEZ6                                                                                                                                            	10
11	pyuryaeva                                         	hG9@,)PZds!\\                                                                                                            	$2a$04$IVNEwCxBvxvm5AG0/NWr9OoBZ0f5h34uTbYMaqYnAqvHYdIv529Vi                                                                                                                                            	11
12	ptookb                                            	cW5>WDEjIA                                                                                                              	$2a$04$Tz48T05rNc/eSMxbHsIhrOxnKkoTptrwarmfNBxZwLpWsElS/MkSW                                                                                                                                            	12
13	askeelsc                                          	rC9&z{#42nL4q                                                                                                           	$2a$04$5f/S6zDl7oRZ4/aDcbbgaOPhmpzV7Z0sBcUgH/DkwdJ23za0cY1na                                                                                                                                            	13
14	bfilipicd                                         	mB6,MpmO=yXC7Z                                                                                                          	$2a$04$/o/dUBGyoZgQJrmhmMqjfezZxqmSohHzlO8iHaR0EV5yRZfoi2V5C                                                                                                                                            	14
15	ecowlarde                                         	xK1,Rd4px                                                                                                               	$2a$04$dJjSf0uJSBgnXwRpiIaxK.G9KLEfwAw91UvB6qZocOmpV6M78Z1gC                                                                                                                                            	15
16	leastesf                                          	oF0`~VV~                                                                                                                	$2a$04$cQteHOP0YLhSgUllQ9VxaeDuYcSaI8Faxnl1gQYh4TcJCzADXzJFu                                                                                                                                            	16
17	aarpeg                                            	iG8~S>B!@td                                                                                                             	$2a$04$jKMAKVTgaZXl0nF4ybi2FevcE1qVz0kJE0WtsmhfxyNGav/UdCn9i                                                                                                                                            	17
18	msuttonh                                          	sC5>)x)i=~9e7$c                                                                                                         	$2a$04$e8HgMkwjxs3bjw/Fs44xxefTxBgc.1RCvM48951Pz8C1G61K2D8Tq                                                                                                                                            	18
19	gperrygoi                                         	sV2/JZ!X0ftIIbXx                                                                                                        	$2a$04$W2kzMKEIb0e55jVWjgdZL.TWdpQtHgTm/m6XHOtmedHJpnExZ6cw2                                                                                                                                            	19
20	jaaronsonj                                        	yX1*0Y1f_H\\bQni                                                                                                         	$2a$04$t3fURpH3rPCluc6OeO1OmO1z2.JTVn5oQNXTMRyWzkYro9Vn3f.vm                                                                                                                                            	20
21	jhanburybrownk                                    	dF2*L1WWv                                                                                                               	$2a$04$3WCm1g/UH0PE7G9Hw2/x0.5X/8IjRdbE50fMVjM/B0nCdArN9LuCO                                                                                                                                            	21
22	wlowtherl                                         	xL7_#jd4K                                                                                                               	$2a$04$wn28/SIBTSdCbea5uA1chuTFn1WxpA/SgQu6MY4PuT0BjMS8jYk4S                                                                                                                                            	22
23	mnozzoliim                                        	iX4#de0EP                                                                                                               	$2a$04$ZgEv6ijv1cncYeDbxIUBXOn2DEHzKSXQYhoFUFwdf4q0InLaKgicO                                                                                                                                            	23
24	sblinckon                                         	aF2)A#kd`1?Z6Z                                                                                                          	$2a$04$Tl0HWVpM9IuNKkD5GEikHOjSzPu2..xd.8eSfpSD.U8n/knqcCnK.                                                                                                                                            	24
25	acunniamo                                         	kD7<gZMs4%Kl8WB                                                                                                         	$2a$04$WDn8CRJ3TtqwD0yxJF5X1./5ZOvaSwrNKHyz8OiLB.UtvrX51V/BC                                                                                                                                            	25
26	wtegellerp                                        	dS8>S.Dmx/>dQBDr                                                                                                        	$2a$04$EkTDBa9sUkGpSWER6QyQWex7SfI7uw.2GTXhifGnkWQGA/YnV/9bu                                                                                                                                            	26
27	cspatarulq                                        	dW3#>ITdfJ?mR,TK                                                                                                        	$2a$04$hkydi1kGg/9..QR2ug2IFujkaEdx79csZ2vl.A13TZKBzVd0fQE5i                                                                                                                                            	27
28	cblakestonr                                       	gX7}iCaX?                                                                                                               	$2a$04$0YDDW5yJxtrohdU59HG5QunyHv5ngtj64CWj86KfoyedwwPHtGT.a                                                                                                                                            	28
29	trahlofs                                          	nZ1*g1N}sG                                                                                                              	$2a$04$1Id5EeTF7aYX/80UkMIRkuc/HSBIvPKP5QtlosVzueCC/Am/YVn0S                                                                                                                                            	29
30	jghidinit                                         	pD9,e(XiS1S8                                                                                                            	$2a$04$5fTYWzHTT5DxuyfBQmk8eeGzBPyG6j9GU.9Y0PGScEpvTp3k61/gW                                                                                                                                            	30
31	ahulattu                                          	uP8*3d9hbZ)Iqws\\                                                                                                        	$2a$04$v0JCXCK.YauVaLUjQcPWM.5X55zauYjmkTc8IQNs9ApaV0gcnup0m                                                                                                                                            	31
32	hseaversv                                         	zH9_@SWxztQ*SG                                                                                                          	$2a$04$M42ryTqeGdFXSWOA30BQYOv.sKEl2e7g5Jeg7Q2gxeF8Z/gHq2uU.                                                                                                                                            	32
33	kanderschw                                        	hD8#|K}3sxRY6h                                                                                                          	$2a$04$jdN.D5MxrZqKva95M6ElDuA51osewIBMR71MOLWe8qYJ1x1P5gIiW                                                                                                                                            	33
34	finsworthx                                        	jY5`kEF8pK1SbR                                                                                                          	$2a$04$q88KbtmTfBtpUWlLvF3vjuRky/1vA/u8lH0yhTP0wYAcvL26ttw3O                                                                                                                                            	34
35	ejanaky                                           	nX7+<D=B?                                                                                                               	$2a$04$pllRPJvHOuOg5gpanlPxKup9S61Jrw2KdFfAYQWTAWc6E38HL5Xnq                                                                                                                                            	35
36	dphidginz                                         	iV3`Z\\1{W                                                                                                               	$2a$04$29WwF9eDR7OaPg.8R6hwO.fo6SyvW6FUB1OreOr93d7ck.sQ0g9PS                                                                                                                                            	36
37	dtregunna10                                       	mK3>%(<8}pm11g                                                                                                          	$2a$04$f7ueGJk6Pa0RjXOF1Q.D..CT3UUO2iwtFiWHjxCay8QMh.cFDTznS                                                                                                                                            	37
38	cbourrel11                                        	jS7`_qzE2$DlX=                                                                                                          	$2a$04$Tsk058jFooUPAoecLR/sKeO/1gpFhYWPxdDAhDdyFJB9gwirMufB6                                                                                                                                            	38
39	wsteagall12                                       	xZ91d.0tMtpcXb                                                                                                          	$2a$04$0vR77nsqszqJUBVtpJP3Ies.SrSbAFPfLJip8XQtvJ4.GzXCmq9aa                                                                                                                                            	39
40	anissle13                                         	dU01i#G*.=s                                                                                                             	$2a$04$dBgnpGu/6hvV3PY0bD54CeK0yIbawgmifgt/Yug1GXJh5GqFHWA7C                                                                                                                                            	40
41	echartre14                                        	cL1.L29%Qzpjs5md                                                                                                        	$2a$04$yrNKvvZpfJvN4GF/5h2ayO/wNl/C07lZSNXsSVdBO.QxolncPnQUC                                                                                                                                            	41
42	gmarion15                                         	gG3,Lhf9|*!{B                                                                                                           	$2a$04$O63TskaXLXO1DazeH5/06et5giJcsoyjEuYh/As8N3NChdGfF.iE2                                                                                                                                            	42
43	jgentery16                                        	cG5&TiMxQG(>y*                                                                                                          	$2a$04$aqCXCn8GDUmOveau77wBZepCK4i8JrPcZLnRDSkisfBtx6NDYp6D2                                                                                                                                            	43
44	egertz17                                          	jF1(ehcm(lC11tTy                                                                                                        	$2a$04$O5g2IS64y2rxXvkq2tFW2.4d55fTPD6EmT3vyocpAZy7DFtx1qUhm                                                                                                                                            	44
45	mmcfadden18                                       	dT3#DnhkaRex&F                                                                                                          	$2a$04$5VlDXcPWyB7Fe48Su.fGKOpZ5Ouig/qkaBqOzfLOP9tszY2RRu2DS                                                                                                                                            	45
46	nsandercroft19                                    	kE0{p.OZ                                                                                                                	$2a$04$8wTS0OYHg3fYRc3dQ0tXW.fnAvOptanOyYZDwwNB2Yqk9umtTPaiq                                                                                                                                            	46
47	dyablsley1a                                       	mX6=aST?FW                                                                                                              	$2a$04$86S3P1U5zkuGlYGRrcPYjeDmOXN1Qxmb57XtYGcVQ6PClmLBQPLAS                                                                                                                                            	47
48	fjagiela1b                                        	hC2~pE(JzB                                                                                                              	$2a$04$6AgoehPJ4y8i3SQLtmZAUuqGabPK4w5PVWWZadUoq1FpgUkaa/7CK                                                                                                                                            	48
49	lakred1c                                          	mP7+sA.Q??rh6Zoh                                                                                                        	$2a$04$xzb26GYeTKKcZJvVCyB2lOCN64cMehOawuF2Q9KyMluFSVNsu6Wau                                                                                                                                            	49
50	lebsworth1d                                       	cG4(WgO@.=5Wl1mo                                                                                                        	$2a$04$kNFIv81ouXj9bnDHyL4o2OqDNrUR61uxh4bWguJIqudWdl7hZvoxq                                                                                                                                            	50
51	adescroix1e                                       	hT7(=zmK1T<y                                                                                                            	$2a$04$TeaRNQPXXA4RHjO6lEC4L.sL85dKJPhIOAJFSaNJKv2On0errMHNC                                                                                                                                            	51
52	pariss1f                                          	iS8(zk7cr                                                                                                               	$2a$04$yToeezbzwYfJBbHdJJvmzuFhJyEsBkQwrVuhhtob4bxz7ByLLBi2m                                                                                                                                            	52
53	trobbins1g                                        	yK4,VG|}$wr                                                                                                             	$2a$04$t8LY.uiY7UvxpqgCPnfcBOR8ajBOlvMxzSgvvDmzmAqmaKwo1pmUO                                                                                                                                            	53
54	fdessent1h                                        	qZ7>9R4TKb                                                                                                              	$2a$04$ifsR0RHVJG3cYT69pydTveMj5D1Sk3yYKcXHbGqlRpoV.Vtomt5TO                                                                                                                                            	54
55	rnicolls1i                                        	wH7*`$?*U.tWZ                                                                                                           	$2a$04$XaaNQbGAPfjf9XYXt3zHU.PM0bOyRu0s0ZYxs.MiKsUCcCEn1yKu.                                                                                                                                            	55
56	sackeroyd1j                                       	yC51p3vRfMM,#rE                                                                                                         	$2a$04$I/ygXwsed4D7PfEQVvLs0uVxpp5zPWCDVBKd/L2lkB6ie3Zoe2Q8a                                                                                                                                            	56
57	mdybald1k                                         	tO9*Z=<Hv                                                                                                               	$2a$04$vqLEkvYwOJJVohi/2WDft.JyU9dpgXTDC03pVToERvfl.DQY9zyHS                                                                                                                                            	57
58	ssirett1l                                         	cZ0?~=A~FMR                                                                                                             	$2a$04$G.JfC036MsrXscwQBZAHW.YY.1WD7bnWFJJM3U56ves2fbuPSWXDu                                                                                                                                            	58
59	channen1m                                         	lD0$hinTeVlFI0&v                                                                                                        	$2a$04$bcYdYe11NAyb8/TUj.28D.cEGmOqSgxQrR4VD1lkx0fnCxpLcSUyS                                                                                                                                            	59
60	mdark1n                                           	fX3?qkJcIqgb                                                                                                            	$2a$04$2CF6hlQ7fP6jnHACrMCCMe2Pht56pf6DZAsAQh/xFxiGevaUcihgG                                                                                                                                            	60
61	mbiasioni1o                                       	fD31|kGq                                                                                                                	$2a$04$lAD4LNiZZVRQoNu.x6sUme8oDYxRvk0fRSU6vtp64CqyWzgr3FaM6                                                                                                                                            	61
62	jgiraldez1p                                       	oK1,nqtQ                                                                                                                	$2a$04$OZommDH2rOu9.Z8yv33mNeImfkgk5wYxFKAGXAr0SwyedwVtYIRee                                                                                                                                            	62
63	cogilby1q                                         	yY3<yzNIN                                                                                                               	$2a$04$xp6Haaqv94xYu4s5Vis0NO5BiRDN/tBIYSdX.9kafknF2fgWUWLlG                                                                                                                                            	63
64	mjennaroy1r                                       	iM1@`U/Z|2/~                                                                                                            	$2a$04$ppqAG7wRMLSFN35E2TQRTOQBOerxa.uHunIS.2zO6Vnj/YeY5mZqa                                                                                                                                            	64
65	vmatthewson1s                                     	rQ3#wduF1E`&                                                                                                            	$2a$04$0034n3aWK2Y2feHSDZuvcu2dV56obB1GsJk1FBkveHiAkwsFtdnXe                                                                                                                                            	65
66	abaldung1t                                        	pZ4__S&4yD}U?*X                                                                                                         	$2a$04$ZwrR73y4UhIwZt.UjIV1xe3uUd8vPNp5ZPt/KY7Fz6Xj9YOYwGyBW                                                                                                                                            	66
67	glody1u                                           	wX8=TJ#D>                                                                                                               	$2a$04$OpvwkiQ8eB/6GlX1u5OXheNZbuBIxCv.wKuS8lYahrhYgOfr5Ldk6                                                                                                                                            	67
68	swathey1v                                         	yG8\\a6b2Bn>C                                                                                                            	$2a$04$rhgE7lVx8AFU36.mfoFeref3HZO.mblrjdHeRA0tc7gn5OmyDuPxC                                                                                                                                            	68
69	ceastam1w                                         	pC0)1*XS                                                                                                                	$2a$04$bYferRWy1XCYIZOCZ397WuCMdQJNUJSw1hBmBc/CX7mSc5Ar609eu                                                                                                                                            	69
70	abradnocke1x                                      	zH5%LuWGA910|(                                                                                                          	$2a$04$4qpda7rISpsUfOp8M9Z6y.MZk9F1rJjQD1JXZfonFGSG0IeOWsM06                                                                                                                                            	70
71	bkimbley1y                                        	fR7&qIF8,                                                                                                               	$2a$04$bmc88DYATDnwTgT9av7tV.AppMJUrDXJsrR4YgekOl4XBv2mHQohu                                                                                                                                            	71
72	tmount1z                                          	zS0/AtDtU%ecdY\\                                                                                                         	$2a$04$5Ij27DuftqAEhMhDFdrGpuGv9Vyb5lfEMfVEsLV76CefJYVm7S6pO                                                                                                                                            	72
73	xalessandrini20                                   	iW9)h1duVjO,Yj                                                                                                          	$2a$04$yTfWyA0aGORknZ36apihI.vapQv3krdOrDa2dt.dbDXbbLU4Px4UK                                                                                                                                            	73
74	mvandecastele21                                   	fV4+bk$9ylF                                                                                                             	$2a$04$vozg6mThGy9bUWiqQzbiUO8pRB/ujuf2COpyULhCQ1zv6cS7hI9zi                                                                                                                                            	74
75	tjirsa22                                          	iD7)?R}MFn,                                                                                                             	$2a$04$TXO7iJrQMChEjSI/TSAmie6vNGgwVwznmVnrDLWxhkVRB/U4FlcqO                                                                                                                                            	75
76	aocarrol23                                        	yU1!0.xP%O#                                                                                                             	$2a$04$hXZBV1hHtacr0mS2CKYVbe9Edxu8GnVO4q8VquVaXtrpt94r21ToG                                                                                                                                            	76
77	rgold24                                           	oE8{75Ucu\\(L>{ey                                                                                                        	$2a$04$RYJdpO9GMqGQgGQIPTmSFerApXZ2LiNYPuT726gVYxYPVxG/rYfai                                                                                                                                            	77
78	okelwaybamber25                                   	kQ3\\JMPV|@Ki.                                                                                                           	$2a$04$ieRCgVlh3ngtLD5JLWFqUeWtqzigau103gcDsdyvCQSvXqYdkuQhK                                                                                                                                            	78
79	mschlagman26                                      	dL11D#Rsv/=|E10                                                                                                         	$2a$04$M.kzAsZmhMTwDlPCw3rx8OZZcWGQgG0IIBBVmhOjZMgartUMeW/1S                                                                                                                                            	79
80	egrogor27                                         	jO3/yi1=M9)tb36                                                                                                         	$2a$04$vGzSWPu21J.yKhPBj0aTUOyGaC6Y1dE.1.erJKa4gkkLAXuCGdlfi                                                                                                                                            	80
81	oangell28                                         	lC31YF)W*81                                                                                                             	$2a$04$1MQ54CS9JDBlD0UUhpzKieiWZ0hKEWxViIsWu4XQLxLIpg.zSQln6                                                                                                                                            	81
82	aspinige29                                        	iA3#/<Iw#u                                                                                                              	$2a$04$RheD2tEtd1Xm3wP3JFGTFeoGS27fKTzaPv374ognDDeyOpKlKCQsK                                                                                                                                            	82
83	ocolliber2a                                       	bK31!(pP!5j(l                                                                                                           	$2a$04$bubWtMA9FeXheK3aUnb1w.P1ENAesjIQZqu5BTAZSJZKEj0Mr1pgO                                                                                                                                            	83
84	tmarklin2b                                        	yW3&+c82bEfRSxi                                                                                                         	$2a$04$GnWnIfKhP4VbRGLk0m4sDeO8/ofV2A7EEiOjAkyAdpx93/7q311yq                                                                                                                                            	84
85	lnorker2c                                         	gI0$rxHC6~jf+                                                                                                           	$2a$04$URFtZQP4OLGpJoXzX8hQGOd2L24IwKvG9eEoJLdLZ7zumoFCR3UjS                                                                                                                                            	85
86	mpeak2d                                           	cD3_p+i|@9,#W                                                                                                           	$2a$04$99AKbceI/Q2dCGj46PZb4.gljj4SAGZFBZ7gPWdI/aXrrkemhptSq                                                                                                                                            	86
87	mpechard2e                                        	yK6$om1Y?z|9                                                                                                            	$2a$04$ytXTFIIr6UY1y.otc8LVy.9MLwuL1v2rI4/v/0axE2IrA.eiY2zlm                                                                                                                                            	87
88	rsurpliss2f                                       	uW9|9jVmf9,1${7N                                                                                                        	$2a$04$WYL5DP8QazkfyRJVFlXhr.IG4ZkbwmPI5Hs47URnxirCRRW7QyjXe                                                                                                                                            	88
89	imcpeck2g                                         	jR2+{mGf~SX=4*                                                                                                          	$2a$04$KLduos/HOEXx7enQzSlUTOkhlBAzcm5X1j8VIgFvWDlcObSYH3Q/6                                                                                                                                            	89
90	zcarstairs2h                                      	qR0~7C5.`ChW2                                                                                                           	$2a$04$.uF9aJEdlDwlV0nbVmTIiuw0Co3cMm6uZO7wuE68twB.b.VCFKSxO                                                                                                                                            	90
91	lexrol2i                                          	qV3~z%s2e\\<VvO                                                                                                          	$2a$04$g.DaT6kNrQn6nDQmsdx4XuUw/am7P9ae6CHdLXpRCs3Xx9bavLBIa                                                                                                                                            	91
92	erelph2j                                          	iP4,lk5)                                                                                                                	$2a$04$z53dYuAWdIJNeo35QB1g.ufHb1yXSF94/beGBka9NBBp5iwJPbO1O                                                                                                                                            	92
93	mansty2k                                          	jO2{1P1J                                                                                                                	$2a$04$agBkhQlU5OcmfQ5/uYi7.OPJgvFk0e2dPMsbfuVk1ONdWTzgGu3pi                                                                                                                                            	93
94	jbrace2l                                          	hZ7}kg{>9GdwDl                                                                                                          	$2a$04$ffs6WI2FpzazVrwuxXokcOtuoJaznyWHRqeGIW7NsB30CRQf.ISDy                                                                                                                                            	94
95	ecouzens2m                                        	uG3.>t1`rI8H                                                                                                            	$2a$04$nSq8pC5ZbCEC5fzO6fZHXOGUdlAgiNtqeQCDj3XU24QGQnf5eeR6m                                                                                                                                            	95
96	wdowne2n                                          	iO6/M5eW$B7                                                                                                             	$2a$04$8SM6H9oHnc/QDXI667ReAOCMQyCD7z31E9furp00wJtDO4SylZOba                                                                                                                                            	96
97	bmcnabb2o                                         	cV0)@pp,Jo}XliKC                                                                                                        	$2a$04$wsxSD..V9s4yNlUy/eIP0ufxZhn.p3MBccHHaEX.4hVkPuIgXRIY.                                                                                                                                            	97
98	dbiasioni2p                                       	cT3&JbBBZ                                                                                                               	$2a$04$iwByRGSN2wl2jdNBARkaKeQpcNebdPHnUSnhVGg.8QE8XxmVtLzCK                                                                                                                                            	98
99	dsyrie2q                                          	oB6(`2sKeJl?L1                                                                                                          	$2a$04$REpO8vcTJW24H0DlGv0oHu0KxEYftPpVPWQsOlJifaJfz/PtdrPle                                                                                                                                            	99
100	cvasnev2r                                         	vG0/=aA6QQlW5                                                                                                           	$2a$04$/XLuLGYd4vREYkwDLwx5peujTS/l4ZzR39U.zvnmjrR6fsptjIBc.                                                                                                                                            	100
\.


--
-- TOC entry 4807 (class 0 OID 0)
-- Dependencies: 216
-- Name: Personas_Id_seq; Type: SEQUENCE SET; Schema: Arcos; Owner: postgres
--

SELECT pg_catalog.setval('"Arcos"."Personas_Id_seq"', 3, true);


--
-- TOC entry 4808 (class 0 OID 0)
-- Dependencies: 220
-- Name: arcos_id_seq; Type: SEQUENCE SET; Schema: Arcos; Owner: postgres
--

SELECT pg_catalog.setval('"Arcos".arcos_id_seq', 2, true);


--
-- TOC entry 4809 (class 0 OID 0)
-- Dependencies: 222
-- Name: cat_estatus_id_estatus_seq; Type: SEQUENCE SET; Schema: Arcos; Owner: postgres
--

SELECT pg_catalog.setval('"Arcos".cat_estatus_id_estatus_seq', 2, true);


--
-- TOC entry 4810 (class 0 OID 0)
-- Dependencies: 224
-- Name: registro_arcos_id_registro_arcos_seq; Type: SEQUENCE SET; Schema: Arcos; Owner: postgres
--

SELECT pg_catalog.setval('"Arcos".registro_arcos_id_registro_arcos_seq', 3, true);


--
-- TOC entry 4811 (class 0 OID 0)
-- Dependencies: 218
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: Arcos; Owner: postgres
--

SELECT pg_catalog.setval('"Arcos".usuarios_id_seq', 2, true);


--
-- TOC entry 4631 (class 2606 OID 32776)
-- Name: personas Personas_pkey; Type: CONSTRAINT; Schema: Arcos; Owner: postgres
--

ALTER TABLE ONLY "Arcos".personas
    ADD CONSTRAINT "Personas_pkey" PRIMARY KEY ("Id_personas");


--
-- TOC entry 4635 (class 2606 OID 40973)
-- Name: arcos arcos_pkey; Type: CONSTRAINT; Schema: Arcos; Owner: postgres
--

ALTER TABLE ONLY "Arcos".arcos
    ADD CONSTRAINT arcos_pkey PRIMARY KEY (id_arcos);


--
-- TOC entry 4637 (class 2606 OID 40980)
-- Name: cat_estatus cat_estatus_pkey; Type: CONSTRAINT; Schema: Arcos; Owner: postgres
--

ALTER TABLE ONLY "Arcos".cat_estatus
    ADD CONSTRAINT cat_estatus_pkey PRIMARY KEY (id_estatus);


--
-- TOC entry 4639 (class 2606 OID 40987)
-- Name: registro_arcos registro_arcos_pkey; Type: CONSTRAINT; Schema: Arcos; Owner: postgres
--

ALTER TABLE ONLY "Arcos".registro_arcos
    ADD CONSTRAINT registro_arcos_pkey PRIMARY KEY (id_registro_arcos);


--
-- TOC entry 4633 (class 2606 OID 40966)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: Arcos; Owner: postgres
--

ALTER TABLE ONLY "Arcos".usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuarios);


--
-- TOC entry 4641 (class 2606 OID 40993)
-- Name: arcos id_fk_arcos_perosnas; Type: FK CONSTRAINT; Schema: Arcos; Owner: postgres
--

ALTER TABLE ONLY "Arcos".arcos
    ADD CONSTRAINT id_fk_arcos_perosnas FOREIGN KEY (id_persona) REFERENCES "Arcos".personas("Id_personas") NOT VALID;


--
-- TOC entry 4642 (class 2606 OID 41003)
-- Name: registro_arcos id_fk_registro_arcos_arcos; Type: FK CONSTRAINT; Schema: Arcos; Owner: postgres
--

ALTER TABLE ONLY "Arcos".registro_arcos
    ADD CONSTRAINT id_fk_registro_arcos_arcos FOREIGN KEY (id_arcos) REFERENCES "Arcos".arcos(id_arcos) NOT VALID;


--
-- TOC entry 4643 (class 2606 OID 40998)
-- Name: registro_arcos id_fk_registro_arcos_cat_estatus; Type: FK CONSTRAINT; Schema: Arcos; Owner: postgres
--

ALTER TABLE ONLY "Arcos".registro_arcos
    ADD CONSTRAINT id_fk_registro_arcos_cat_estatus FOREIGN KEY (id_estatus) REFERENCES "Arcos".cat_estatus(id_estatus) NOT VALID;


--
-- TOC entry 4640 (class 2606 OID 40988)
-- Name: usuarios id_fk_usuarios_personas; Type: FK CONSTRAINT; Schema: Arcos; Owner: postgres
--

ALTER TABLE ONLY "Arcos".usuarios
    ADD CONSTRAINT id_fk_usuarios_personas FOREIGN KEY (id_personas) REFERENCES "Arcos".personas("Id_personas") NOT VALID;


-- Completed on 2024-06-27 12:10:56

--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

\restrict RzgohoISIN1BB0vkc9Il19fx1Oyej46qsa8lzhnf3Jh4JgJGkgINJZAOi3Ri8zC

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-01-16 10:35:15 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE norm_ejerc_sql;
--
-- TOC entry 4011 (class 1262 OID 17761)
-- Name: norm_ejerc_sql; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE norm_ejerc_sql WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE norm_ejerc_sql OWNER TO postgres;

\unrestrict RzgohoISIN1BB0vkc9Il19fx1Oyej46qsa8lzhnf3Jh4JgJGkgINJZAOi3Ri8zC
\connect norm_ejerc_sql
\restrict RzgohoISIN1BB0vkc9Il19fx1Oyej46qsa8lzhnf3Jh4JgJGkgINJZAOi3Ri8zC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 10 (class 2615 OID 18162)
-- Name: biblioteca_ej6; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA biblioteca_ej6;


ALTER SCHEMA biblioteca_ej6 OWNER TO postgres;

--
-- TOC entry 5 (class 2615 OID 17762)
-- Name: colombian_systems_ej1; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA colombian_systems_ej1;


ALTER SCHEMA colombian_systems_ej1 OWNER TO postgres;

--
-- TOC entry 6 (class 2615 OID 17763)
-- Name: emp_envios_ej2; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA emp_envios_ej2;


ALTER SCHEMA emp_envios_ej2 OWNER TO postgres;

--
-- TOC entry 8 (class 2615 OID 17980)
-- Name: prestamo_libro_ej4; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA prestamo_libro_ej4;


ALTER SCHEMA prestamo_libro_ej4 OWNER TO postgres;

--
-- TOC entry 9 (class 2615 OID 18068)
-- Name: reporte_matricula_ej5; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA reporte_matricula_ej5;


ALTER SCHEMA reporte_matricula_ej5 OWNER TO postgres;

--
-- TOC entry 7 (class 2615 OID 17887)
-- Name: video_club_ej3; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA video_club_ej3;


ALTER SCHEMA video_club_ej3 OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 267 (class 1259 OID 18173)
-- Name: autor; Type: TABLE; Schema: biblioteca_ej6; Owner: postgres
--

CREATE TABLE biblioteca_ej6.autor (
    id_autor integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE biblioteca_ej6.autor OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 18172)
-- Name: autor_id_autor_seq; Type: SEQUENCE; Schema: biblioteca_ej6; Owner: postgres
--

CREATE SEQUENCE biblioteca_ej6.autor_id_autor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE biblioteca_ej6.autor_id_autor_seq OWNER TO postgres;

--
-- TOC entry 4012 (class 0 OID 0)
-- Dependencies: 266
-- Name: autor_id_autor_seq; Type: SEQUENCE OWNED BY; Schema: biblioteca_ej6; Owner: postgres
--

ALTER SEQUENCE biblioteca_ej6.autor_id_autor_seq OWNED BY biblioteca_ej6.autor.id_autor;


--
-- TOC entry 265 (class 1259 OID 18164)
-- Name: editorial; Type: TABLE; Schema: biblioteca_ej6; Owner: postgres
--

CREATE TABLE biblioteca_ej6.editorial (
    id_editorial integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE biblioteca_ej6.editorial OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 18163)
-- Name: editorial_id_editorial_seq; Type: SEQUENCE; Schema: biblioteca_ej6; Owner: postgres
--

CREATE SEQUENCE biblioteca_ej6.editorial_id_editorial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE biblioteca_ej6.editorial_id_editorial_seq OWNER TO postgres;

--
-- TOC entry 4013 (class 0 OID 0)
-- Dependencies: 264
-- Name: editorial_id_editorial_seq; Type: SEQUENCE OWNED BY; Schema: biblioteca_ej6; Owner: postgres
--

ALTER SEQUENCE biblioteca_ej6.editorial_id_editorial_seq OWNED BY biblioteca_ej6.editorial.id_editorial;


--
-- TOC entry 270 (class 1259 OID 18201)
-- Name: lector; Type: TABLE; Schema: biblioteca_ej6; Owner: postgres
--

CREATE TABLE biblioteca_ej6.lector (
    id_lector integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE biblioteca_ej6.lector OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 18200)
-- Name: lector_id_lector_seq; Type: SEQUENCE; Schema: biblioteca_ej6; Owner: postgres
--

CREATE SEQUENCE biblioteca_ej6.lector_id_lector_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE biblioteca_ej6.lector_id_lector_seq OWNER TO postgres;

--
-- TOC entry 4014 (class 0 OID 0)
-- Dependencies: 269
-- Name: lector_id_lector_seq; Type: SEQUENCE OWNED BY; Schema: biblioteca_ej6; Owner: postgres
--

ALTER SEQUENCE biblioteca_ej6.lector_id_lector_seq OWNED BY biblioteca_ej6.lector.id_lector;


--
-- TOC entry 268 (class 1259 OID 18181)
-- Name: libro; Type: TABLE; Schema: biblioteca_ej6; Owner: postgres
--

CREATE TABLE biblioteca_ej6.libro (
    cod_libro integer NOT NULL,
    titulo character varying(50) NOT NULL,
    id_editorial integer NOT NULL,
    id_autor integer NOT NULL
);


ALTER TABLE biblioteca_ej6.libro OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 18242)
-- Name: prestamo; Type: TABLE; Schema: biblioteca_ej6; Owner: postgres
--

CREATE TABLE biblioteca_ej6.prestamo (
    id_prestamo integer NOT NULL,
    cod_libro integer NOT NULL,
    id_lector integer NOT NULL,
    fecha_devolucion date NOT NULL
);


ALTER TABLE biblioteca_ej6.prestamo OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 18241)
-- Name: prestamo_id_prestamo_seq; Type: SEQUENCE; Schema: biblioteca_ej6; Owner: postgres
--

CREATE SEQUENCE biblioteca_ej6.prestamo_id_prestamo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE biblioteca_ej6.prestamo_id_prestamo_seq OWNER TO postgres;

--
-- TOC entry 4015 (class 0 OID 0)
-- Dependencies: 271
-- Name: prestamo_id_prestamo_seq; Type: SEQUENCE OWNED BY; Schema: biblioteca_ej6; Owner: postgres
--

ALTER SEQUENCE biblioteca_ej6.prestamo_id_prestamo_seq OWNED BY biblioteca_ej6.prestamo.id_prestamo;


--
-- TOC entry 224 (class 1259 OID 17764)
-- Name: cliente; Type: TABLE; Schema: colombian_systems_ej1; Owner: postgres
--

CREATE TABLE colombian_systems_ej1.cliente (
    rif_cliente character varying(20) NOT NULL,
    nom_cliente character varying(100) NOT NULL,
    dir_cliente character varying(150),
    ciudad_cliente character varying(50),
    telef_cliente character varying(20)
);


ALTER TABLE colombian_systems_ej1.cliente OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 17811)
-- Name: detalle_factura; Type: TABLE; Schema: colombian_systems_ej1; Owner: postgres
--

CREATE TABLE colombian_systems_ej1.detalle_factura (
    num_fact integer NOT NULL,
    cod_prod character varying(20) NOT NULL,
    cant_prod integer NOT NULL
);


ALTER TABLE colombian_systems_ej1.detalle_factura OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17779)
-- Name: factura; Type: TABLE; Schema: colombian_systems_ej1; Owner: postgres
--

CREATE TABLE colombian_systems_ej1.factura (
    num_fac integer NOT NULL,
    fecha_fac date NOT NULL,
    rif_cliente character varying(20) NOT NULL
);


ALTER TABLE colombian_systems_ej1.factura OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17778)
-- Name: factura_num_fac_seq; Type: SEQUENCE; Schema: colombian_systems_ej1; Owner: postgres
--

CREATE SEQUENCE colombian_systems_ej1.factura_num_fac_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE colombian_systems_ej1.factura_num_fac_seq OWNER TO postgres;

--
-- TOC entry 4016 (class 0 OID 0)
-- Dependencies: 226
-- Name: factura_num_fac_seq; Type: SEQUENCE OWNED BY; Schema: colombian_systems_ej1; Owner: postgres
--

ALTER SEQUENCE colombian_systems_ej1.factura_num_fac_seq OWNED BY colombian_systems_ej1.factura.num_fac;


--
-- TOC entry 225 (class 1259 OID 17771)
-- Name: producto; Type: TABLE; Schema: colombian_systems_ej1; Owner: postgres
--

CREATE TABLE colombian_systems_ej1.producto (
    cod_prod character varying(20) NOT NULL,
    desp_prod character varying(100) NOT NULL,
    categoria character varying(50),
    valor_unit numeric(10,2)
);


ALTER TABLE colombian_systems_ej1.producto OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 17836)
-- Name: destinatario; Type: TABLE; Schema: emp_envios_ej2; Owner: postgres
--

CREATE TABLE emp_envios_ej2.destinatario (
    dest_id character varying(20) NOT NULL,
    dest_nom character varying(100) NOT NULL,
    dest_cod_ciudad character varying(10),
    dest_ciudad character varying(60),
    dest_dir character varying(150),
    dest_tel character varying(60),
    dest_km integer
);


ALTER TABLE emp_envios_ej2.destinatario OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 17870)
-- Name: detalle_guia; Type: TABLE; Schema: emp_envios_ej2; Owner: postgres
--

CREATE TABLE emp_envios_ej2.detalle_guia (
    guia_no character varying(20) NOT NULL,
    codigo character varying(20) NOT NULL
);


ALTER TABLE emp_envios_ej2.detalle_guia OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17829)
-- Name: empresa_origen; Type: TABLE; Schema: emp_envios_ej2; Owner: postgres
--

CREATE TABLE emp_envios_ej2.empresa_origen (
    orgn_rif character varying(20) NOT NULL,
    orgn_nom character varying(100) NOT NULL,
    orgn_act character varying(100),
    orgn_ciudad character varying(60),
    orgn_dir character varying(150),
    orgn_tel character varying(20),
    orgn_cel character varying(20)
);


ALTER TABLE emp_envios_ej2.empresa_origen OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 17852)
-- Name: guia; Type: TABLE; Schema: emp_envios_ej2; Owner: postgres
--

CREATE TABLE emp_envios_ej2.guia (
    guia_no character varying(20) NOT NULL,
    guia_fecha date NOT NULL,
    guia_hora time without time zone NOT NULL,
    orgn_rif character varying(20),
    dest_id character varying(20)
);


ALTER TABLE emp_envios_ej2.guia OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17843)
-- Name: paquete; Type: TABLE; Schema: emp_envios_ej2; Owner: postgres
--

CREATE TABLE emp_envios_ej2.paquete (
    codigo character varying(20) NOT NULL,
    tipo character varying(50),
    nombre character varying(100),
    descripcion text,
    valr_flete numeric(10,2) NOT NULL
);


ALTER TABLE emp_envios_ej2.paquete OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 18008)
-- Name: asignatura; Type: TABLE; Schema: prestamo_libro_ej4; Owner: postgres
--

CREATE TABLE prestamo_libro_ej4.asignatura (
    cod_asignatura integer NOT NULL,
    nom_asignatura character varying(100) NOT NULL
);


ALTER TABLE prestamo_libro_ej4.asignatura OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 18007)
-- Name: asignatura_cod_asignatura_seq; Type: SEQUENCE; Schema: prestamo_libro_ej4; Owner: postgres
--

CREATE SEQUENCE prestamo_libro_ej4.asignatura_cod_asignatura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE prestamo_libro_ej4.asignatura_cod_asignatura_seq OWNER TO postgres;

--
-- TOC entry 4017 (class 0 OID 0)
-- Dependencies: 250
-- Name: asignatura_cod_asignatura_seq; Type: SEQUENCE OWNED BY; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER SEQUENCE prestamo_libro_ej4.asignatura_cod_asignatura_seq OWNED BY prestamo_libro_ej4.asignatura.cod_asignatura;


--
-- TOC entry 247 (class 1259 OID 17982)
-- Name: colegio; Type: TABLE; Schema: prestamo_libro_ej4; Owner: postgres
--

CREATE TABLE prestamo_libro_ej4.colegio (
    cod_colegio integer NOT NULL,
    nom_colegio character varying(150) NOT NULL
);


ALTER TABLE prestamo_libro_ej4.colegio OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 17981)
-- Name: colegio_cod_colegio_seq; Type: SEQUENCE; Schema: prestamo_libro_ej4; Owner: postgres
--

CREATE SEQUENCE prestamo_libro_ej4.colegio_cod_colegio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE prestamo_libro_ej4.colegio_cod_colegio_seq OWNER TO postgres;

--
-- TOC entry 4018 (class 0 OID 0)
-- Dependencies: 246
-- Name: colegio_cod_colegio_seq; Type: SEQUENCE OWNED BY; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER SEQUENCE prestamo_libro_ej4.colegio_cod_colegio_seq OWNED BY prestamo_libro_ej4.colegio.cod_colegio;


--
-- TOC entry 253 (class 1259 OID 18017)
-- Name: curso; Type: TABLE; Schema: prestamo_libro_ej4; Owner: postgres
--

CREATE TABLE prestamo_libro_ej4.curso (
    cod_curso integer NOT NULL,
    nom_curso character varying(50) NOT NULL,
    aula character varying(20)
);


ALTER TABLE prestamo_libro_ej4.curso OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 18016)
-- Name: curso_cod_curso_seq; Type: SEQUENCE; Schema: prestamo_libro_ej4; Owner: postgres
--

CREATE SEQUENCE prestamo_libro_ej4.curso_cod_curso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE prestamo_libro_ej4.curso_cod_curso_seq OWNER TO postgres;

--
-- TOC entry 4019 (class 0 OID 0)
-- Dependencies: 252
-- Name: curso_cod_curso_seq; Type: SEQUENCE OWNED BY; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER SEQUENCE prestamo_libro_ej4.curso_cod_curso_seq OWNED BY prestamo_libro_ej4.curso.cod_curso;


--
-- TOC entry 255 (class 1259 OID 18026)
-- Name: libro; Type: TABLE; Schema: prestamo_libro_ej4; Owner: postgres
--

CREATE TABLE prestamo_libro_ej4.libro (
    cod_libro integer NOT NULL,
    titulo character varying(50) NOT NULL,
    editorial character varying(100)
);


ALTER TABLE prestamo_libro_ej4.libro OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 18025)
-- Name: libro_cod_libro_seq; Type: SEQUENCE; Schema: prestamo_libro_ej4; Owner: postgres
--

CREATE SEQUENCE prestamo_libro_ej4.libro_cod_libro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE prestamo_libro_ej4.libro_cod_libro_seq OWNER TO postgres;

--
-- TOC entry 4020 (class 0 OID 0)
-- Dependencies: 254
-- Name: libro_cod_libro_seq; Type: SEQUENCE OWNED BY; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER SEQUENCE prestamo_libro_ej4.libro_cod_libro_seq OWNED BY prestamo_libro_ej4.libro.cod_libro;


--
-- TOC entry 257 (class 1259 OID 18036)
-- Name: prestamo; Type: TABLE; Schema: prestamo_libro_ej4; Owner: postgres
--

CREATE TABLE prestamo_libro_ej4.prestamo (
    cod_prestamo integer NOT NULL,
    cod_profesor integer NOT NULL,
    cod_libro integer NOT NULL,
    cod_asignatura integer NOT NULL,
    cod_curso integer NOT NULL,
    fecha_prestamo date NOT NULL
);


ALTER TABLE prestamo_libro_ej4.prestamo OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 18035)
-- Name: prestamo_cod_prestamo_seq; Type: SEQUENCE; Schema: prestamo_libro_ej4; Owner: postgres
--

CREATE SEQUENCE prestamo_libro_ej4.prestamo_cod_prestamo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE prestamo_libro_ej4.prestamo_cod_prestamo_seq OWNER TO postgres;

--
-- TOC entry 4021 (class 0 OID 0)
-- Dependencies: 256
-- Name: prestamo_cod_prestamo_seq; Type: SEQUENCE OWNED BY; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER SEQUENCE prestamo_libro_ej4.prestamo_cod_prestamo_seq OWNED BY prestamo_libro_ej4.prestamo.cod_prestamo;


--
-- TOC entry 249 (class 1259 OID 17993)
-- Name: profesor; Type: TABLE; Schema: prestamo_libro_ej4; Owner: postgres
--

CREATE TABLE prestamo_libro_ej4.profesor (
    cod_profesor integer NOT NULL,
    nom_profesor character varying(150) NOT NULL,
    cod_colegio integer NOT NULL
);


ALTER TABLE prestamo_libro_ej4.profesor OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 17992)
-- Name: profesor_cod_profesor_seq; Type: SEQUENCE; Schema: prestamo_libro_ej4; Owner: postgres
--

CREATE SEQUENCE prestamo_libro_ej4.profesor_cod_profesor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE prestamo_libro_ej4.profesor_cod_profesor_seq OWNER TO postgres;

--
-- TOC entry 4022 (class 0 OID 0)
-- Dependencies: 248
-- Name: profesor_cod_profesor_seq; Type: SEQUENCE OWNED BY; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER SEQUENCE prestamo_libro_ej4.profesor_cod_profesor_seq OWNED BY prestamo_libro_ej4.profesor.cod_profesor;


--
-- TOC entry 259 (class 1259 OID 18070)
-- Name: alumno; Type: TABLE; Schema: reporte_matricula_ej5; Owner: postgres
--

CREATE TABLE reporte_matricula_ej5.alumno (
    cod_alumno integer NOT NULL,
    nom_alumno character varying(100) NOT NULL,
    especialidad character varying(100) NOT NULL
);


ALTER TABLE reporte_matricula_ej5.alumno OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 18069)
-- Name: alumno_cod_alumno_seq; Type: SEQUENCE; Schema: reporte_matricula_ej5; Owner: postgres
--

CREATE SEQUENCE reporte_matricula_ej5.alumno_cod_alumno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reporte_matricula_ej5.alumno_cod_alumno_seq OWNER TO postgres;

--
-- TOC entry 4023 (class 0 OID 0)
-- Dependencies: 258
-- Name: alumno_cod_alumno_seq; Type: SEQUENCE OWNED BY; Schema: reporte_matricula_ej5; Owner: postgres
--

ALTER SEQUENCE reporte_matricula_ej5.alumno_cod_alumno_seq OWNED BY reporte_matricula_ej5.alumno.cod_alumno;


--
-- TOC entry 260 (class 1259 OID 18079)
-- Name: curso; Type: TABLE; Schema: reporte_matricula_ej5; Owner: postgres
--

CREATE TABLE reporte_matricula_ej5.curso (
    cod_curso character varying(20) NOT NULL,
    nom_curso character varying(100) NOT NULL,
    seccion character varying(50) NOT NULL
);


ALTER TABLE reporte_matricula_ej5.curso OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 18089)
-- Name: docente; Type: TABLE; Schema: reporte_matricula_ej5; Owner: postgres
--

CREATE TABLE reporte_matricula_ej5.docente (
    cod_docente integer NOT NULL,
    nom_docente character varying(100) NOT NULL,
    oficina character varying(50)
);


ALTER TABLE reporte_matricula_ej5.docente OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 18088)
-- Name: docente_cod_docente_seq; Type: SEQUENCE; Schema: reporte_matricula_ej5; Owner: postgres
--

CREATE SEQUENCE reporte_matricula_ej5.docente_cod_docente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reporte_matricula_ej5.docente_cod_docente_seq OWNER TO postgres;

--
-- TOC entry 4024 (class 0 OID 0)
-- Dependencies: 261
-- Name: docente_cod_docente_seq; Type: SEQUENCE OWNED BY; Schema: reporte_matricula_ej5; Owner: postgres
--

ALTER SEQUENCE reporte_matricula_ej5.docente_cod_docente_seq OWNED BY reporte_matricula_ej5.docente.cod_docente;


--
-- TOC entry 263 (class 1259 OID 18139)
-- Name: matricula; Type: TABLE; Schema: reporte_matricula_ej5; Owner: postgres
--

CREATE TABLE reporte_matricula_ej5.matricula (
    cod_alumno integer NOT NULL,
    cod_curso character varying(20) NOT NULL,
    cod_docente integer NOT NULL
);


ALTER TABLE reporte_matricula_ej5.matricula OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 17908)
-- Name: actor; Type: TABLE; Schema: video_club_ej3; Owner: postgres
--

CREATE TABLE video_club_ej3.actor (
    cod_actor integer NOT NULL,
    nom_actor character varying(200) NOT NULL,
    fechanac_actor date
);


ALTER TABLE video_club_ej3.actor OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 17907)
-- Name: actor_cod_actor_seq; Type: SEQUENCE; Schema: video_club_ej3; Owner: postgres
--

CREATE SEQUENCE video_club_ej3.actor_cod_actor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE video_club_ej3.actor_cod_actor_seq OWNER TO postgres;

--
-- TOC entry 4025 (class 0 OID 0)
-- Dependencies: 238
-- Name: actor_cod_actor_seq; Type: SEQUENCE OWNED BY; Schema: video_club_ej3; Owner: postgres
--

ALTER SEQUENCE video_club_ej3.actor_cod_actor_seq OWNED BY video_club_ej3.actor.cod_actor;


--
-- TOC entry 244 (class 1259 OID 17948)
-- Name: alquiler; Type: TABLE; Schema: video_club_ej3; Owner: postgres
--

CREATE TABLE video_club_ej3.alquiler (
    cod_alquiler integer NOT NULL,
    cod_cliente integer NOT NULL,
    fecha_alquiler date NOT NULL,
    fecha_dev date,
    valor_alquiler numeric(10,2)
);


ALTER TABLE video_club_ej3.alquiler OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 17947)
-- Name: alquiler_cod_alquiler_seq; Type: SEQUENCE; Schema: video_club_ej3; Owner: postgres
--

CREATE SEQUENCE video_club_ej3.alquiler_cod_alquiler_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE video_club_ej3.alquiler_cod_alquiler_seq OWNER TO postgres;

--
-- TOC entry 4026 (class 0 OID 0)
-- Dependencies: 243
-- Name: alquiler_cod_alquiler_seq; Type: SEQUENCE OWNED BY; Schema: video_club_ej3; Owner: postgres
--

ALTER SEQUENCE video_club_ej3.alquiler_cod_alquiler_seq OWNED BY video_club_ej3.alquiler.cod_alquiler;


--
-- TOC entry 242 (class 1259 OID 17934)
-- Name: cassette; Type: TABLE; Schema: video_club_ej3; Owner: postgres
--

CREATE TABLE video_club_ej3.cassette (
    cod_cassette integer NOT NULL,
    formato character varying(30),
    num_copias integer,
    cod_pelicula integer NOT NULL
);


ALTER TABLE video_club_ej3.cassette OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 17933)
-- Name: cassette_cod_cassette_seq; Type: SEQUENCE; Schema: video_club_ej3; Owner: postgres
--

CREATE SEQUENCE video_club_ej3.cassette_cod_cassette_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE video_club_ej3.cassette_cod_cassette_seq OWNER TO postgres;

--
-- TOC entry 4027 (class 0 OID 0)
-- Dependencies: 241
-- Name: cassette_cod_cassette_seq; Type: SEQUENCE OWNED BY; Schema: video_club_ej3; Owner: postgres
--

ALTER SEQUENCE video_club_ej3.cassette_cod_cassette_seq OWNED BY video_club_ej3.cassette.cod_cassette;


--
-- TOC entry 235 (class 1259 OID 17889)
-- Name: cliente; Type: TABLE; Schema: video_club_ej3; Owner: postgres
--

CREATE TABLE video_club_ej3.cliente (
    cod_cliente integer NOT NULL,
    num_membresia character varying(20) NOT NULL,
    nom_cliente character varying(100) NOT NULL,
    dir_cliente character varying(150),
    telef_cliente character varying(20)
);


ALTER TABLE video_club_ej3.cliente OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 17888)
-- Name: cliente_cod_cliente_seq; Type: SEQUENCE; Schema: video_club_ej3; Owner: postgres
--

CREATE SEQUENCE video_club_ej3.cliente_cod_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE video_club_ej3.cliente_cod_cliente_seq OWNER TO postgres;

--
-- TOC entry 4028 (class 0 OID 0)
-- Dependencies: 234
-- Name: cliente_cod_cliente_seq; Type: SEQUENCE OWNED BY; Schema: video_club_ej3; Owner: postgres
--

ALTER SEQUENCE video_club_ej3.cliente_cod_cliente_seq OWNED BY video_club_ej3.cliente.cod_cliente;


--
-- TOC entry 245 (class 1259 OID 17962)
-- Name: detalle_alquiler; Type: TABLE; Schema: video_club_ej3; Owner: postgres
--

CREATE TABLE video_club_ej3.detalle_alquiler (
    cod_alquiler integer NOT NULL,
    cod_cassette integer NOT NULL,
    cod_cant integer NOT NULL
);


ALTER TABLE video_club_ej3.detalle_alquiler OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 17899)
-- Name: pelicula; Type: TABLE; Schema: video_club_ej3; Owner: postgres
--

CREATE TABLE video_club_ej3.pelicula (
    cod_pelicula integer NOT NULL,
    titulo character varying(150) NOT NULL,
    categoria character varying(50),
    cod_tipo character varying(20)
);


ALTER TABLE video_club_ej3.pelicula OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 17916)
-- Name: pelicula_actor; Type: TABLE; Schema: video_club_ej3; Owner: postgres
--

CREATE TABLE video_club_ej3.pelicula_actor (
    cod_pelicula integer NOT NULL,
    cod_actor integer NOT NULL
);


ALTER TABLE video_club_ej3.pelicula_actor OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 17898)
-- Name: pelicula_cod_pelicula_seq; Type: SEQUENCE; Schema: video_club_ej3; Owner: postgres
--

CREATE SEQUENCE video_club_ej3.pelicula_cod_pelicula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE video_club_ej3.pelicula_cod_pelicula_seq OWNER TO postgres;

--
-- TOC entry 4029 (class 0 OID 0)
-- Dependencies: 236
-- Name: pelicula_cod_pelicula_seq; Type: SEQUENCE OWNED BY; Schema: video_club_ej3; Owner: postgres
--

ALTER SEQUENCE video_club_ej3.pelicula_cod_pelicula_seq OWNED BY video_club_ej3.pelicula.cod_pelicula;


--
-- TOC entry 3720 (class 2604 OID 18176)
-- Name: autor id_autor; Type: DEFAULT; Schema: biblioteca_ej6; Owner: postgres
--

ALTER TABLE ONLY biblioteca_ej6.autor ALTER COLUMN id_autor SET DEFAULT nextval('biblioteca_ej6.autor_id_autor_seq'::regclass);


--
-- TOC entry 3719 (class 2604 OID 18167)
-- Name: editorial id_editorial; Type: DEFAULT; Schema: biblioteca_ej6; Owner: postgres
--

ALTER TABLE ONLY biblioteca_ej6.editorial ALTER COLUMN id_editorial SET DEFAULT nextval('biblioteca_ej6.editorial_id_editorial_seq'::regclass);


--
-- TOC entry 3721 (class 2604 OID 18204)
-- Name: lector id_lector; Type: DEFAULT; Schema: biblioteca_ej6; Owner: postgres
--

ALTER TABLE ONLY biblioteca_ej6.lector ALTER COLUMN id_lector SET DEFAULT nextval('biblioteca_ej6.lector_id_lector_seq'::regclass);


--
-- TOC entry 3722 (class 2604 OID 18245)
-- Name: prestamo id_prestamo; Type: DEFAULT; Schema: biblioteca_ej6; Owner: postgres
--

ALTER TABLE ONLY biblioteca_ej6.prestamo ALTER COLUMN id_prestamo SET DEFAULT nextval('biblioteca_ej6.prestamo_id_prestamo_seq'::regclass);


--
-- TOC entry 3705 (class 2604 OID 17782)
-- Name: factura num_fac; Type: DEFAULT; Schema: colombian_systems_ej1; Owner: postgres
--

ALTER TABLE ONLY colombian_systems_ej1.factura ALTER COLUMN num_fac SET DEFAULT nextval('colombian_systems_ej1.factura_num_fac_seq'::regclass);


--
-- TOC entry 3713 (class 2604 OID 18011)
-- Name: asignatura cod_asignatura; Type: DEFAULT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.asignatura ALTER COLUMN cod_asignatura SET DEFAULT nextval('prestamo_libro_ej4.asignatura_cod_asignatura_seq'::regclass);


--
-- TOC entry 3711 (class 2604 OID 17985)
-- Name: colegio cod_colegio; Type: DEFAULT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.colegio ALTER COLUMN cod_colegio SET DEFAULT nextval('prestamo_libro_ej4.colegio_cod_colegio_seq'::regclass);


--
-- TOC entry 3714 (class 2604 OID 18020)
-- Name: curso cod_curso; Type: DEFAULT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.curso ALTER COLUMN cod_curso SET DEFAULT nextval('prestamo_libro_ej4.curso_cod_curso_seq'::regclass);


--
-- TOC entry 3715 (class 2604 OID 18029)
-- Name: libro cod_libro; Type: DEFAULT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.libro ALTER COLUMN cod_libro SET DEFAULT nextval('prestamo_libro_ej4.libro_cod_libro_seq'::regclass);


--
-- TOC entry 3716 (class 2604 OID 18039)
-- Name: prestamo cod_prestamo; Type: DEFAULT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.prestamo ALTER COLUMN cod_prestamo SET DEFAULT nextval('prestamo_libro_ej4.prestamo_cod_prestamo_seq'::regclass);


--
-- TOC entry 3712 (class 2604 OID 17996)
-- Name: profesor cod_profesor; Type: DEFAULT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.profesor ALTER COLUMN cod_profesor SET DEFAULT nextval('prestamo_libro_ej4.profesor_cod_profesor_seq'::regclass);


--
-- TOC entry 3717 (class 2604 OID 18073)
-- Name: alumno cod_alumno; Type: DEFAULT; Schema: reporte_matricula_ej5; Owner: postgres
--

ALTER TABLE ONLY reporte_matricula_ej5.alumno ALTER COLUMN cod_alumno SET DEFAULT nextval('reporte_matricula_ej5.alumno_cod_alumno_seq'::regclass);


--
-- TOC entry 3718 (class 2604 OID 18092)
-- Name: docente cod_docente; Type: DEFAULT; Schema: reporte_matricula_ej5; Owner: postgres
--

ALTER TABLE ONLY reporte_matricula_ej5.docente ALTER COLUMN cod_docente SET DEFAULT nextval('reporte_matricula_ej5.docente_cod_docente_seq'::regclass);


--
-- TOC entry 3708 (class 2604 OID 17911)
-- Name: actor cod_actor; Type: DEFAULT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.actor ALTER COLUMN cod_actor SET DEFAULT nextval('video_club_ej3.actor_cod_actor_seq'::regclass);


--
-- TOC entry 3710 (class 2604 OID 17951)
-- Name: alquiler cod_alquiler; Type: DEFAULT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.alquiler ALTER COLUMN cod_alquiler SET DEFAULT nextval('video_club_ej3.alquiler_cod_alquiler_seq'::regclass);


--
-- TOC entry 3709 (class 2604 OID 17937)
-- Name: cassette cod_cassette; Type: DEFAULT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.cassette ALTER COLUMN cod_cassette SET DEFAULT nextval('video_club_ej3.cassette_cod_cassette_seq'::regclass);


--
-- TOC entry 3706 (class 2604 OID 17892)
-- Name: cliente cod_cliente; Type: DEFAULT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.cliente ALTER COLUMN cod_cliente SET DEFAULT nextval('video_club_ej3.cliente_cod_cliente_seq'::regclass);


--
-- TOC entry 3707 (class 2604 OID 17902)
-- Name: pelicula cod_pelicula; Type: DEFAULT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.pelicula ALTER COLUMN cod_pelicula SET DEFAULT nextval('video_club_ej3.pelicula_cod_pelicula_seq'::regclass);


--
-- TOC entry 4000 (class 0 OID 18173)
-- Dependencies: 267
-- Data for Name: autor; Type: TABLE DATA; Schema: biblioteca_ej6; Owner: postgres
--



--
-- TOC entry 3998 (class 0 OID 18164)
-- Dependencies: 265
-- Data for Name: editorial; Type: TABLE DATA; Schema: biblioteca_ej6; Owner: postgres
--



--
-- TOC entry 4003 (class 0 OID 18201)
-- Dependencies: 270
-- Data for Name: lector; Type: TABLE DATA; Schema: biblioteca_ej6; Owner: postgres
--



--
-- TOC entry 4001 (class 0 OID 18181)
-- Dependencies: 268
-- Data for Name: libro; Type: TABLE DATA; Schema: biblioteca_ej6; Owner: postgres
--



--
-- TOC entry 4005 (class 0 OID 18242)
-- Dependencies: 272
-- Data for Name: prestamo; Type: TABLE DATA; Schema: biblioteca_ej6; Owner: postgres
--



--
-- TOC entry 3957 (class 0 OID 17764)
-- Dependencies: 224
-- Data for Name: cliente; Type: TABLE DATA; Schema: colombian_systems_ej1; Owner: postgres
--

INSERT INTO colombian_systems_ej1.cliente VALUES ('j123456', 'Juan Perez', 'Cruz del Chaco', 'Asuncion', '0976454182');
INSERT INTO colombian_systems_ej1.cliente VALUES ('e123456', 'Elias', 'Cnel Sivio Garay', 'Fernando de la mora', '0976424534');
INSERT INTO colombian_systems_ej1.cliente VALUES ('m654321', 'Maria', 'Av. España', 'Luque', '0981122334');


--
-- TOC entry 3961 (class 0 OID 17811)
-- Dependencies: 228
-- Data for Name: detalle_factura; Type: TABLE DATA; Schema: colombian_systems_ej1; Owner: postgres
--

INSERT INTO colombian_systems_ej1.detalle_factura VALUES (1, 'P001', 2);


--
-- TOC entry 3960 (class 0 OID 17779)
-- Dependencies: 227
-- Data for Name: factura; Type: TABLE DATA; Schema: colombian_systems_ej1; Owner: postgres
--

INSERT INTO colombian_systems_ej1.factura VALUES (1, '2026-01-14', 'j123456');


--
-- TOC entry 3958 (class 0 OID 17771)
-- Dependencies: 225
-- Data for Name: producto; Type: TABLE DATA; Schema: colombian_systems_ej1; Owner: postgres
--

INSERT INTO colombian_systems_ej1.producto VALUES ('P001', 'Mouse Logitech', 'Perifericos', 120000.00);
INSERT INTO colombian_systems_ej1.producto VALUES ('P002', 'Teclado Redragon', 'Perifericos', 180000.00);


--
-- TOC entry 3963 (class 0 OID 17836)
-- Dependencies: 230
-- Data for Name: destinatario; Type: TABLE DATA; Schema: emp_envios_ej2; Owner: postgres
--

INSERT INTO emp_envios_ej2.destinatario VALUES ('1', 'Elias', '47', 'Fernando de la mora', 'Cnel Silvio Garay', '0976424534', 74);
INSERT INTO emp_envios_ej2.destinatario VALUES ('2', 'Juan', '49', 'Fernando de la mora', 'Mbuyapey', '0976567897', 77);
INSERT INTO emp_envios_ej2.destinatario VALUES ('D01', 'Elias', '47', 'Fernando de la Mora', 'Cnel Silvio Garay', '0976424534', 74);
INSERT INTO emp_envios_ej2.destinatario VALUES ('D02', 'Juan', '49', 'Fernando de la Mora', 'Mbuyapey', '0976567897', 77);


--
-- TOC entry 3966 (class 0 OID 17870)
-- Dependencies: 233
-- Data for Name: detalle_guia; Type: TABLE DATA; Schema: emp_envios_ej2; Owner: postgres
--

INSERT INTO emp_envios_ej2.detalle_guia VALUES ('G01', 'PK01');
INSERT INTO emp_envios_ej2.detalle_guia VALUES ('G02', 'PK02');


--
-- TOC entry 3962 (class 0 OID 17829)
-- Dependencies: 229
-- Data for Name: empresa_origen; Type: TABLE DATA; Schema: emp_envios_ej2; Owner: postgres
--

INSERT INTO emp_envios_ej2.empresa_origen VALUES ('OR01', 'FastShip', 'Envios', 'Asuncion', 'Av Central', '021123456', '0981111111');
INSERT INTO emp_envios_ej2.empresa_origen VALUES ('OR02', 'RapidEx', 'Logistica', 'Luque', 'Ruta 2', '021654321', '0982222222');


--
-- TOC entry 3965 (class 0 OID 17852)
-- Dependencies: 232
-- Data for Name: guia; Type: TABLE DATA; Schema: emp_envios_ej2; Owner: postgres
--

INSERT INTO emp_envios_ej2.guia VALUES ('G01', '2026-01-15', '10:30:00', 'OR01', 'D01');
INSERT INTO emp_envios_ej2.guia VALUES ('G02', '2026-01-16', '14:00:00', 'OR02', 'D02');


--
-- TOC entry 3964 (class 0 OID 17843)
-- Dependencies: 231
-- Data for Name: paquete; Type: TABLE DATA; Schema: emp_envios_ej2; Owner: postgres
--

INSERT INTO emp_envios_ej2.paquete VALUES ('PK01', 'Caja', 'Documentos', 'Sobres y papeles', 50000.00);
INSERT INTO emp_envios_ej2.paquete VALUES ('PK02', 'Caja', 'Electronica', 'Notebook', 120000.00);


--
-- TOC entry 3984 (class 0 OID 18008)
-- Dependencies: 251
-- Data for Name: asignatura; Type: TABLE DATA; Schema: prestamo_libro_ej4; Owner: postgres
--



--
-- TOC entry 3980 (class 0 OID 17982)
-- Dependencies: 247
-- Data for Name: colegio; Type: TABLE DATA; Schema: prestamo_libro_ej4; Owner: postgres
--



--
-- TOC entry 3986 (class 0 OID 18017)
-- Dependencies: 253
-- Data for Name: curso; Type: TABLE DATA; Schema: prestamo_libro_ej4; Owner: postgres
--



--
-- TOC entry 3988 (class 0 OID 18026)
-- Dependencies: 255
-- Data for Name: libro; Type: TABLE DATA; Schema: prestamo_libro_ej4; Owner: postgres
--



--
-- TOC entry 3990 (class 0 OID 18036)
-- Dependencies: 257
-- Data for Name: prestamo; Type: TABLE DATA; Schema: prestamo_libro_ej4; Owner: postgres
--



--
-- TOC entry 3982 (class 0 OID 17993)
-- Dependencies: 249
-- Data for Name: profesor; Type: TABLE DATA; Schema: prestamo_libro_ej4; Owner: postgres
--



--
-- TOC entry 3992 (class 0 OID 18070)
-- Dependencies: 259
-- Data for Name: alumno; Type: TABLE DATA; Schema: reporte_matricula_ej5; Owner: postgres
--



--
-- TOC entry 3993 (class 0 OID 18079)
-- Dependencies: 260
-- Data for Name: curso; Type: TABLE DATA; Schema: reporte_matricula_ej5; Owner: postgres
--



--
-- TOC entry 3995 (class 0 OID 18089)
-- Dependencies: 262
-- Data for Name: docente; Type: TABLE DATA; Schema: reporte_matricula_ej5; Owner: postgres
--



--
-- TOC entry 3996 (class 0 OID 18139)
-- Dependencies: 263
-- Data for Name: matricula; Type: TABLE DATA; Schema: reporte_matricula_ej5; Owner: postgres
--



--
-- TOC entry 3972 (class 0 OID 17908)
-- Dependencies: 239
-- Data for Name: actor; Type: TABLE DATA; Schema: video_club_ej3; Owner: postgres
--

INSERT INTO video_club_ej3.actor VALUES (1, 'Keanu Reeves', '1964-09-02');
INSERT INTO video_club_ej3.actor VALUES (2, 'Leonardo DiCaprio', '1974-11-11');


--
-- TOC entry 3977 (class 0 OID 17948)
-- Dependencies: 244
-- Data for Name: alquiler; Type: TABLE DATA; Schema: video_club_ej3; Owner: postgres
--

INSERT INTO video_club_ej3.alquiler VALUES (1, 1, '2026-01-10', '2026-01-12', 20000.00);
INSERT INTO video_club_ej3.alquiler VALUES (2, 2, '2026-01-11', NULL, 20000.00);


--
-- TOC entry 3975 (class 0 OID 17934)
-- Dependencies: 242
-- Data for Name: cassette; Type: TABLE DATA; Schema: video_club_ej3; Owner: postgres
--

INSERT INTO video_club_ej3.cassette VALUES (1, 'DVD', 5, 1);
INSERT INTO video_club_ej3.cassette VALUES (2, 'VHS', 3, 2);


--
-- TOC entry 3968 (class 0 OID 17889)
-- Dependencies: 235
-- Data for Name: cliente; Type: TABLE DATA; Schema: video_club_ej3; Owner: postgres
--

INSERT INTO video_club_ej3.cliente VALUES (1, 'M001', 'Elias Ortiz', 'Fernando de la Mora', '0976424534');
INSERT INTO video_club_ej3.cliente VALUES (2, 'M002', 'Juan Perez', 'San Lorenzo', '0981122334');
INSERT INTO video_club_ej3.cliente VALUES (3, 'M001', 'Elias Ortiz', 'Fernando de la Mora', '0976424534');
INSERT INTO video_club_ej3.cliente VALUES (4, 'M002', 'Juan Perez', 'San Lorenzo', '0981122334');


--
-- TOC entry 3978 (class 0 OID 17962)
-- Dependencies: 245
-- Data for Name: detalle_alquiler; Type: TABLE DATA; Schema: video_club_ej3; Owner: postgres
--

INSERT INTO video_club_ej3.detalle_alquiler VALUES (1, 1, 1);
INSERT INTO video_club_ej3.detalle_alquiler VALUES (2, 2, 1);


--
-- TOC entry 3970 (class 0 OID 17899)
-- Dependencies: 237
-- Data for Name: pelicula; Type: TABLE DATA; Schema: video_club_ej3; Owner: postgres
--

INSERT INTO video_club_ej3.pelicula VALUES (1, 'Matrix', 'Accion', 'DVD');
INSERT INTO video_club_ej3.pelicula VALUES (2, 'Titanic', 'Drama', 'VHS');


--
-- TOC entry 3973 (class 0 OID 17916)
-- Dependencies: 240
-- Data for Name: pelicula_actor; Type: TABLE DATA; Schema: video_club_ej3; Owner: postgres
--

INSERT INTO video_club_ej3.pelicula_actor VALUES (1, 1);
INSERT INTO video_club_ej3.pelicula_actor VALUES (2, 2);


--
-- TOC entry 4030 (class 0 OID 0)
-- Dependencies: 266
-- Name: autor_id_autor_seq; Type: SEQUENCE SET; Schema: biblioteca_ej6; Owner: postgres
--

SELECT pg_catalog.setval('biblioteca_ej6.autor_id_autor_seq', 1, false);


--
-- TOC entry 4031 (class 0 OID 0)
-- Dependencies: 264
-- Name: editorial_id_editorial_seq; Type: SEQUENCE SET; Schema: biblioteca_ej6; Owner: postgres
--

SELECT pg_catalog.setval('biblioteca_ej6.editorial_id_editorial_seq', 1, false);


--
-- TOC entry 4032 (class 0 OID 0)
-- Dependencies: 269
-- Name: lector_id_lector_seq; Type: SEQUENCE SET; Schema: biblioteca_ej6; Owner: postgres
--

SELECT pg_catalog.setval('biblioteca_ej6.lector_id_lector_seq', 1, false);


--
-- TOC entry 4033 (class 0 OID 0)
-- Dependencies: 271
-- Name: prestamo_id_prestamo_seq; Type: SEQUENCE SET; Schema: biblioteca_ej6; Owner: postgres
--

SELECT pg_catalog.setval('biblioteca_ej6.prestamo_id_prestamo_seq', 1, false);


--
-- TOC entry 4034 (class 0 OID 0)
-- Dependencies: 226
-- Name: factura_num_fac_seq; Type: SEQUENCE SET; Schema: colombian_systems_ej1; Owner: postgres
--

SELECT pg_catalog.setval('colombian_systems_ej1.factura_num_fac_seq', 1, true);


--
-- TOC entry 4035 (class 0 OID 0)
-- Dependencies: 250
-- Name: asignatura_cod_asignatura_seq; Type: SEQUENCE SET; Schema: prestamo_libro_ej4; Owner: postgres
--

SELECT pg_catalog.setval('prestamo_libro_ej4.asignatura_cod_asignatura_seq', 1, false);


--
-- TOC entry 4036 (class 0 OID 0)
-- Dependencies: 246
-- Name: colegio_cod_colegio_seq; Type: SEQUENCE SET; Schema: prestamo_libro_ej4; Owner: postgres
--

SELECT pg_catalog.setval('prestamo_libro_ej4.colegio_cod_colegio_seq', 1, false);


--
-- TOC entry 4037 (class 0 OID 0)
-- Dependencies: 252
-- Name: curso_cod_curso_seq; Type: SEQUENCE SET; Schema: prestamo_libro_ej4; Owner: postgres
--

SELECT pg_catalog.setval('prestamo_libro_ej4.curso_cod_curso_seq', 1, false);


--
-- TOC entry 4038 (class 0 OID 0)
-- Dependencies: 254
-- Name: libro_cod_libro_seq; Type: SEQUENCE SET; Schema: prestamo_libro_ej4; Owner: postgres
--

SELECT pg_catalog.setval('prestamo_libro_ej4.libro_cod_libro_seq', 1, false);


--
-- TOC entry 4039 (class 0 OID 0)
-- Dependencies: 256
-- Name: prestamo_cod_prestamo_seq; Type: SEQUENCE SET; Schema: prestamo_libro_ej4; Owner: postgres
--

SELECT pg_catalog.setval('prestamo_libro_ej4.prestamo_cod_prestamo_seq', 1, false);


--
-- TOC entry 4040 (class 0 OID 0)
-- Dependencies: 248
-- Name: profesor_cod_profesor_seq; Type: SEQUENCE SET; Schema: prestamo_libro_ej4; Owner: postgres
--

SELECT pg_catalog.setval('prestamo_libro_ej4.profesor_cod_profesor_seq', 1, false);


--
-- TOC entry 4041 (class 0 OID 0)
-- Dependencies: 258
-- Name: alumno_cod_alumno_seq; Type: SEQUENCE SET; Schema: reporte_matricula_ej5; Owner: postgres
--

SELECT pg_catalog.setval('reporte_matricula_ej5.alumno_cod_alumno_seq', 1, false);


--
-- TOC entry 4042 (class 0 OID 0)
-- Dependencies: 261
-- Name: docente_cod_docente_seq; Type: SEQUENCE SET; Schema: reporte_matricula_ej5; Owner: postgres
--

SELECT pg_catalog.setval('reporte_matricula_ej5.docente_cod_docente_seq', 1, false);


--
-- TOC entry 4043 (class 0 OID 0)
-- Dependencies: 238
-- Name: actor_cod_actor_seq; Type: SEQUENCE SET; Schema: video_club_ej3; Owner: postgres
--

SELECT pg_catalog.setval('video_club_ej3.actor_cod_actor_seq', 2, true);


--
-- TOC entry 4044 (class 0 OID 0)
-- Dependencies: 243
-- Name: alquiler_cod_alquiler_seq; Type: SEQUENCE SET; Schema: video_club_ej3; Owner: postgres
--

SELECT pg_catalog.setval('video_club_ej3.alquiler_cod_alquiler_seq', 2, true);


--
-- TOC entry 4045 (class 0 OID 0)
-- Dependencies: 241
-- Name: cassette_cod_cassette_seq; Type: SEQUENCE SET; Schema: video_club_ej3; Owner: postgres
--

SELECT pg_catalog.setval('video_club_ej3.cassette_cod_cassette_seq', 2, true);


--
-- TOC entry 4046 (class 0 OID 0)
-- Dependencies: 234
-- Name: cliente_cod_cliente_seq; Type: SEQUENCE SET; Schema: video_club_ej3; Owner: postgres
--

SELECT pg_catalog.setval('video_club_ej3.cliente_cod_cliente_seq', 4, true);


--
-- TOC entry 4047 (class 0 OID 0)
-- Dependencies: 236
-- Name: pelicula_cod_pelicula_seq; Type: SEQUENCE SET; Schema: video_club_ej3; Owner: postgres
--

SELECT pg_catalog.setval('video_club_ej3.pelicula_cod_pelicula_seq', 2, true);


--
-- TOC entry 3778 (class 2606 OID 18180)
-- Name: autor autor_pkey; Type: CONSTRAINT; Schema: biblioteca_ej6; Owner: postgres
--

ALTER TABLE ONLY biblioteca_ej6.autor
    ADD CONSTRAINT autor_pkey PRIMARY KEY (id_autor);


--
-- TOC entry 3776 (class 2606 OID 18171)
-- Name: editorial editorial_pkey; Type: CONSTRAINT; Schema: biblioteca_ej6; Owner: postgres
--

ALTER TABLE ONLY biblioteca_ej6.editorial
    ADD CONSTRAINT editorial_pkey PRIMARY KEY (id_editorial);


--
-- TOC entry 3782 (class 2606 OID 18208)
-- Name: lector lector_pkey; Type: CONSTRAINT; Schema: biblioteca_ej6; Owner: postgres
--

ALTER TABLE ONLY biblioteca_ej6.lector
    ADD CONSTRAINT lector_pkey PRIMARY KEY (id_lector);


--
-- TOC entry 3780 (class 2606 OID 18189)
-- Name: libro libro_pkey; Type: CONSTRAINT; Schema: biblioteca_ej6; Owner: postgres
--

ALTER TABLE ONLY biblioteca_ej6.libro
    ADD CONSTRAINT libro_pkey PRIMARY KEY (cod_libro);


--
-- TOC entry 3784 (class 2606 OID 18251)
-- Name: prestamo prestamo_pkey; Type: CONSTRAINT; Schema: biblioteca_ej6; Owner: postgres
--

ALTER TABLE ONLY biblioteca_ej6.prestamo
    ADD CONSTRAINT prestamo_pkey PRIMARY KEY (id_prestamo);


--
-- TOC entry 3724 (class 2606 OID 17770)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: colombian_systems_ej1; Owner: postgres
--

ALTER TABLE ONLY colombian_systems_ej1.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (rif_cliente);


--
-- TOC entry 3730 (class 2606 OID 17818)
-- Name: detalle_factura detalle_factura_pkey; Type: CONSTRAINT; Schema: colombian_systems_ej1; Owner: postgres
--

ALTER TABLE ONLY colombian_systems_ej1.detalle_factura
    ADD CONSTRAINT detalle_factura_pkey PRIMARY KEY (num_fact, cod_prod);


--
-- TOC entry 3728 (class 2606 OID 17787)
-- Name: factura factura_pkey; Type: CONSTRAINT; Schema: colombian_systems_ej1; Owner: postgres
--

ALTER TABLE ONLY colombian_systems_ej1.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (num_fac);


--
-- TOC entry 3726 (class 2606 OID 17777)
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: colombian_systems_ej1; Owner: postgres
--

ALTER TABLE ONLY colombian_systems_ej1.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (cod_prod);


--
-- TOC entry 3734 (class 2606 OID 17842)
-- Name: destinatario destinatario_pkey; Type: CONSTRAINT; Schema: emp_envios_ej2; Owner: postgres
--

ALTER TABLE ONLY emp_envios_ej2.destinatario
    ADD CONSTRAINT destinatario_pkey PRIMARY KEY (dest_id);


--
-- TOC entry 3740 (class 2606 OID 17876)
-- Name: detalle_guia detalle_guia_pkey; Type: CONSTRAINT; Schema: emp_envios_ej2; Owner: postgres
--

ALTER TABLE ONLY emp_envios_ej2.detalle_guia
    ADD CONSTRAINT detalle_guia_pkey PRIMARY KEY (guia_no, codigo);


--
-- TOC entry 3732 (class 2606 OID 17835)
-- Name: empresa_origen empresa_origen_pkey; Type: CONSTRAINT; Schema: emp_envios_ej2; Owner: postgres
--

ALTER TABLE ONLY emp_envios_ej2.empresa_origen
    ADD CONSTRAINT empresa_origen_pkey PRIMARY KEY (orgn_rif);


--
-- TOC entry 3738 (class 2606 OID 17859)
-- Name: guia guia_pkey; Type: CONSTRAINT; Schema: emp_envios_ej2; Owner: postgres
--

ALTER TABLE ONLY emp_envios_ej2.guia
    ADD CONSTRAINT guia_pkey PRIMARY KEY (guia_no);


--
-- TOC entry 3736 (class 2606 OID 17851)
-- Name: paquete paquete_pkey; Type: CONSTRAINT; Schema: emp_envios_ej2; Owner: postgres
--

ALTER TABLE ONLY emp_envios_ej2.paquete
    ADD CONSTRAINT paquete_pkey PRIMARY KEY (codigo);


--
-- TOC entry 3760 (class 2606 OID 18015)
-- Name: asignatura asignatura_pkey; Type: CONSTRAINT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.asignatura
    ADD CONSTRAINT asignatura_pkey PRIMARY KEY (cod_asignatura);


--
-- TOC entry 3756 (class 2606 OID 17989)
-- Name: colegio colegio_pkey; Type: CONSTRAINT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.colegio
    ADD CONSTRAINT colegio_pkey PRIMARY KEY (cod_colegio);


--
-- TOC entry 3762 (class 2606 OID 18024)
-- Name: curso curso_pkey; Type: CONSTRAINT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (cod_curso);


--
-- TOC entry 3764 (class 2606 OID 18033)
-- Name: libro libro_pkey; Type: CONSTRAINT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.libro
    ADD CONSTRAINT libro_pkey PRIMARY KEY (cod_libro);


--
-- TOC entry 3766 (class 2606 OID 18047)
-- Name: prestamo prestamo_pkey; Type: CONSTRAINT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.prestamo
    ADD CONSTRAINT prestamo_pkey PRIMARY KEY (cod_prestamo);


--
-- TOC entry 3758 (class 2606 OID 18001)
-- Name: profesor profesor_pkey; Type: CONSTRAINT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.profesor
    ADD CONSTRAINT profesor_pkey PRIMARY KEY (cod_profesor);


--
-- TOC entry 3768 (class 2606 OID 18078)
-- Name: alumno alumno_pkey; Type: CONSTRAINT; Schema: reporte_matricula_ej5; Owner: postgres
--

ALTER TABLE ONLY reporte_matricula_ej5.alumno
    ADD CONSTRAINT alumno_pkey PRIMARY KEY (cod_alumno);


--
-- TOC entry 3770 (class 2606 OID 18086)
-- Name: curso curso_pkey; Type: CONSTRAINT; Schema: reporte_matricula_ej5; Owner: postgres
--

ALTER TABLE ONLY reporte_matricula_ej5.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (cod_curso);


--
-- TOC entry 3772 (class 2606 OID 18096)
-- Name: docente docente_pkey; Type: CONSTRAINT; Schema: reporte_matricula_ej5; Owner: postgres
--

ALTER TABLE ONLY reporte_matricula_ej5.docente
    ADD CONSTRAINT docente_pkey PRIMARY KEY (cod_docente);


--
-- TOC entry 3774 (class 2606 OID 18146)
-- Name: matricula matricula_pkey; Type: CONSTRAINT; Schema: reporte_matricula_ej5; Owner: postgres
--

ALTER TABLE ONLY reporte_matricula_ej5.matricula
    ADD CONSTRAINT matricula_pkey PRIMARY KEY (cod_alumno, cod_curso);


--
-- TOC entry 3746 (class 2606 OID 17915)
-- Name: actor actor_pkey; Type: CONSTRAINT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (cod_actor);


--
-- TOC entry 3752 (class 2606 OID 17956)
-- Name: alquiler alquiler_pkey; Type: CONSTRAINT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.alquiler
    ADD CONSTRAINT alquiler_pkey PRIMARY KEY (cod_alquiler);


--
-- TOC entry 3750 (class 2606 OID 17941)
-- Name: cassette cassette_pkey; Type: CONSTRAINT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.cassette
    ADD CONSTRAINT cassette_pkey PRIMARY KEY (cod_cassette);


--
-- TOC entry 3742 (class 2606 OID 17897)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (cod_cliente);


--
-- TOC entry 3754 (class 2606 OID 17969)
-- Name: detalle_alquiler detalle_alquiler_pkey; Type: CONSTRAINT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.detalle_alquiler
    ADD CONSTRAINT detalle_alquiler_pkey PRIMARY KEY (cod_alquiler, cod_cassette);


--
-- TOC entry 3748 (class 2606 OID 17922)
-- Name: pelicula_actor pelicula_actor_pkey; Type: CONSTRAINT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.pelicula_actor
    ADD CONSTRAINT pelicula_actor_pkey PRIMARY KEY (cod_pelicula, cod_actor);


--
-- TOC entry 3744 (class 2606 OID 17906)
-- Name: pelicula pelicula_pkey; Type: CONSTRAINT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (cod_pelicula);


--
-- TOC entry 3806 (class 2606 OID 18190)
-- Name: libro libro_id_autor_fkey; Type: FK CONSTRAINT; Schema: biblioteca_ej6; Owner: postgres
--

ALTER TABLE ONLY biblioteca_ej6.libro
    ADD CONSTRAINT libro_id_autor_fkey FOREIGN KEY (id_autor) REFERENCES biblioteca_ej6.autor(id_autor);


--
-- TOC entry 3807 (class 2606 OID 18195)
-- Name: libro libro_id_editorial_fkey; Type: FK CONSTRAINT; Schema: biblioteca_ej6; Owner: postgres
--

ALTER TABLE ONLY biblioteca_ej6.libro
    ADD CONSTRAINT libro_id_editorial_fkey FOREIGN KEY (id_editorial) REFERENCES biblioteca_ej6.editorial(id_editorial);


--
-- TOC entry 3808 (class 2606 OID 18252)
-- Name: prestamo prestamo_cod_libro_fkey; Type: FK CONSTRAINT; Schema: biblioteca_ej6; Owner: postgres
--

ALTER TABLE ONLY biblioteca_ej6.prestamo
    ADD CONSTRAINT prestamo_cod_libro_fkey FOREIGN KEY (cod_libro) REFERENCES biblioteca_ej6.libro(cod_libro);


--
-- TOC entry 3809 (class 2606 OID 18257)
-- Name: prestamo prestamo_id_lector_fkey; Type: FK CONSTRAINT; Schema: biblioteca_ej6; Owner: postgres
--

ALTER TABLE ONLY biblioteca_ej6.prestamo
    ADD CONSTRAINT prestamo_id_lector_fkey FOREIGN KEY (id_lector) REFERENCES biblioteca_ej6.lector(id_lector);


--
-- TOC entry 3786 (class 2606 OID 17819)
-- Name: detalle_factura fk_detalle_factura; Type: FK CONSTRAINT; Schema: colombian_systems_ej1; Owner: postgres
--

ALTER TABLE ONLY colombian_systems_ej1.detalle_factura
    ADD CONSTRAINT fk_detalle_factura FOREIGN KEY (num_fact) REFERENCES colombian_systems_ej1.factura(num_fac);


--
-- TOC entry 3787 (class 2606 OID 17824)
-- Name: detalle_factura fk_detalle_producto; Type: FK CONSTRAINT; Schema: colombian_systems_ej1; Owner: postgres
--

ALTER TABLE ONLY colombian_systems_ej1.detalle_factura
    ADD CONSTRAINT fk_detalle_producto FOREIGN KEY (cod_prod) REFERENCES colombian_systems_ej1.producto(cod_prod);


--
-- TOC entry 3785 (class 2606 OID 17788)
-- Name: factura fk_factura_cliente; Type: FK CONSTRAINT; Schema: colombian_systems_ej1; Owner: postgres
--

ALTER TABLE ONLY colombian_systems_ej1.factura
    ADD CONSTRAINT fk_factura_cliente FOREIGN KEY (rif_cliente) REFERENCES colombian_systems_ej1.cliente(rif_cliente);


--
-- TOC entry 3790 (class 2606 OID 17877)
-- Name: detalle_guia fk_detalle_guia; Type: FK CONSTRAINT; Schema: emp_envios_ej2; Owner: postgres
--

ALTER TABLE ONLY emp_envios_ej2.detalle_guia
    ADD CONSTRAINT fk_detalle_guia FOREIGN KEY (guia_no) REFERENCES emp_envios_ej2.guia(guia_no);


--
-- TOC entry 3791 (class 2606 OID 17882)
-- Name: detalle_guia fk_detalle_paquete; Type: FK CONSTRAINT; Schema: emp_envios_ej2; Owner: postgres
--

ALTER TABLE ONLY emp_envios_ej2.detalle_guia
    ADD CONSTRAINT fk_detalle_paquete FOREIGN KEY (codigo) REFERENCES emp_envios_ej2.paquete(codigo);


--
-- TOC entry 3788 (class 2606 OID 17865)
-- Name: guia fk_guia_destinatario; Type: FK CONSTRAINT; Schema: emp_envios_ej2; Owner: postgres
--

ALTER TABLE ONLY emp_envios_ej2.guia
    ADD CONSTRAINT fk_guia_destinatario FOREIGN KEY (dest_id) REFERENCES emp_envios_ej2.destinatario(dest_id);


--
-- TOC entry 3789 (class 2606 OID 17860)
-- Name: guia fk_guia_origen; Type: FK CONSTRAINT; Schema: emp_envios_ej2; Owner: postgres
--

ALTER TABLE ONLY emp_envios_ej2.guia
    ADD CONSTRAINT fk_guia_origen FOREIGN KEY (orgn_rif) REFERENCES emp_envios_ej2.empresa_origen(orgn_rif);


--
-- TOC entry 3799 (class 2606 OID 18058)
-- Name: prestamo prestamo_cod_asignatura_fkey; Type: FK CONSTRAINT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.prestamo
    ADD CONSTRAINT prestamo_cod_asignatura_fkey FOREIGN KEY (cod_asignatura) REFERENCES prestamo_libro_ej4.asignatura(cod_asignatura);


--
-- TOC entry 3800 (class 2606 OID 18063)
-- Name: prestamo prestamo_cod_curso_fkey; Type: FK CONSTRAINT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.prestamo
    ADD CONSTRAINT prestamo_cod_curso_fkey FOREIGN KEY (cod_curso) REFERENCES prestamo_libro_ej4.curso(cod_curso);


--
-- TOC entry 3801 (class 2606 OID 18053)
-- Name: prestamo prestamo_cod_libro_fkey; Type: FK CONSTRAINT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.prestamo
    ADD CONSTRAINT prestamo_cod_libro_fkey FOREIGN KEY (cod_libro) REFERENCES prestamo_libro_ej4.libro(cod_libro);


--
-- TOC entry 3802 (class 2606 OID 18048)
-- Name: prestamo prestamo_cod_profesor_fkey; Type: FK CONSTRAINT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.prestamo
    ADD CONSTRAINT prestamo_cod_profesor_fkey FOREIGN KEY (cod_profesor) REFERENCES prestamo_libro_ej4.profesor(cod_profesor);


--
-- TOC entry 3798 (class 2606 OID 18002)
-- Name: profesor profesor_cod_colegio_fkey; Type: FK CONSTRAINT; Schema: prestamo_libro_ej4; Owner: postgres
--

ALTER TABLE ONLY prestamo_libro_ej4.profesor
    ADD CONSTRAINT profesor_cod_colegio_fkey FOREIGN KEY (cod_colegio) REFERENCES prestamo_libro_ej4.colegio(cod_colegio);


--
-- TOC entry 3803 (class 2606 OID 18147)
-- Name: matricula matricula_cod_alumno_fkey; Type: FK CONSTRAINT; Schema: reporte_matricula_ej5; Owner: postgres
--

ALTER TABLE ONLY reporte_matricula_ej5.matricula
    ADD CONSTRAINT matricula_cod_alumno_fkey FOREIGN KEY (cod_alumno) REFERENCES reporte_matricula_ej5.alumno(cod_alumno);


--
-- TOC entry 3804 (class 2606 OID 18152)
-- Name: matricula matricula_cod_curso_fkey; Type: FK CONSTRAINT; Schema: reporte_matricula_ej5; Owner: postgres
--

ALTER TABLE ONLY reporte_matricula_ej5.matricula
    ADD CONSTRAINT matricula_cod_curso_fkey FOREIGN KEY (cod_curso) REFERENCES reporte_matricula_ej5.curso(cod_curso);


--
-- TOC entry 3805 (class 2606 OID 18157)
-- Name: matricula matricula_cod_docente_fkey; Type: FK CONSTRAINT; Schema: reporte_matricula_ej5; Owner: postgres
--

ALTER TABLE ONLY reporte_matricula_ej5.matricula
    ADD CONSTRAINT matricula_cod_docente_fkey FOREIGN KEY (cod_docente) REFERENCES reporte_matricula_ej5.docente(cod_docente);


--
-- TOC entry 3795 (class 2606 OID 17957)
-- Name: alquiler alquiler_cod_cliente_fkey; Type: FK CONSTRAINT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.alquiler
    ADD CONSTRAINT alquiler_cod_cliente_fkey FOREIGN KEY (cod_cliente) REFERENCES video_club_ej3.cliente(cod_cliente);


--
-- TOC entry 3794 (class 2606 OID 17942)
-- Name: cassette cassette_cod_pelicula_fkey; Type: FK CONSTRAINT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.cassette
    ADD CONSTRAINT cassette_cod_pelicula_fkey FOREIGN KEY (cod_pelicula) REFERENCES video_club_ej3.pelicula(cod_pelicula);


--
-- TOC entry 3796 (class 2606 OID 17970)
-- Name: detalle_alquiler detalle_alquiler_cod_alquiler_fkey; Type: FK CONSTRAINT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.detalle_alquiler
    ADD CONSTRAINT detalle_alquiler_cod_alquiler_fkey FOREIGN KEY (cod_alquiler) REFERENCES video_club_ej3.alquiler(cod_alquiler);


--
-- TOC entry 3797 (class 2606 OID 17975)
-- Name: detalle_alquiler detalle_alquiler_cod_cassette_fkey; Type: FK CONSTRAINT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.detalle_alquiler
    ADD CONSTRAINT detalle_alquiler_cod_cassette_fkey FOREIGN KEY (cod_cassette) REFERENCES video_club_ej3.cassette(cod_cassette);


--
-- TOC entry 3792 (class 2606 OID 17928)
-- Name: pelicula_actor pelicula_actor_cod_actor_fkey; Type: FK CONSTRAINT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.pelicula_actor
    ADD CONSTRAINT pelicula_actor_cod_actor_fkey FOREIGN KEY (cod_actor) REFERENCES video_club_ej3.actor(cod_actor);


--
-- TOC entry 3793 (class 2606 OID 17923)
-- Name: pelicula_actor pelicula_actor_cod_pelicula_fkey; Type: FK CONSTRAINT; Schema: video_club_ej3; Owner: postgres
--

ALTER TABLE ONLY video_club_ej3.pelicula_actor
    ADD CONSTRAINT pelicula_actor_cod_pelicula_fkey FOREIGN KEY (cod_pelicula) REFERENCES video_club_ej3.pelicula(cod_pelicula);


-- Completed on 2026-01-16 10:35:16 -03

--
-- PostgreSQL database dump complete
--

\unrestrict RzgohoISIN1BB0vkc9Il19fx1Oyej46qsa8lzhnf3Jh4JgJGkgINJZAOi3Ri8zC


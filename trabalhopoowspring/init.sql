--
-- PostgreSQL database dump
--

-- Dumped from database version 15.5
-- Dumped by pg_dump version 15.5

-- Started on 2025-06-29 00:20:47

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
-- TOC entry 219 (class 1259 OID 41039)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id integer NOT NULL,
    nome character varying(30),
    cpf character varying(15),
    telefone character varying(15),
    endereco character varying(50)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 41038)
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_id_seq OWNER TO postgres;

--
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 218
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- TOC entry 221 (class 1259 OID 41060)
-- Name: emprestimo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emprestimo (
    id integer NOT NULL,
    data_emprestimo date NOT NULL,
    data_devolucao date,
    id_funcionario integer,
    id_cliente integer,
    id_livro integer
);


ALTER TABLE public.emprestimo OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 41059)
-- Name: emprestimo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.emprestimo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.emprestimo_id_seq OWNER TO postgres;

--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 220
-- Name: emprestimo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.emprestimo_id_seq OWNED BY public.emprestimo.id;


--
-- TOC entry 215 (class 1259 OID 41025)
-- Name: funcionario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionario (
    id integer NOT NULL,
    nome character varying(30),
    email character varying(30),
    senha character varying(30),
    ativo boolean
);


ALTER TABLE public.funcionario OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 41024)
-- Name: funcionario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.funcionario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.funcionario_id_seq OWNER TO postgres;

--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 214
-- Name: funcionario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.funcionario_id_seq OWNED BY public.funcionario.id;


--
-- TOC entry 217 (class 1259 OID 41032)
-- Name: livro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.livro (
    id integer NOT NULL,
    titulo character varying(30),
    autor character varying(30),
    ano_publicacao integer,
    disponivel boolean
);


ALTER TABLE public.livro OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 41031)
-- Name: livro_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.livro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.livro_id_seq OWNER TO postgres;

--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 216
-- Name: livro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.livro_id_seq OWNED BY public.livro.id;


--
-- TOC entry 3190 (class 2604 OID 41042)
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- TOC entry 3191 (class 2604 OID 41063)
-- Name: emprestimo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emprestimo ALTER COLUMN id SET DEFAULT nextval('public.emprestimo_id_seq'::regclass);


--
-- TOC entry 3188 (class 2604 OID 41028)
-- Name: funcionario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario ALTER COLUMN id SET DEFAULT nextval('public.funcionario_id_seq'::regclass);


--
-- TOC entry 3189 (class 2604 OID 41035)
-- Name: livro id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livro ALTER COLUMN id SET DEFAULT nextval('public.livro_id_seq'::regclass);


--
-- TOC entry 3350 (class 0 OID 41039)
-- Dependencies: 219
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cliente (id, nome, cpf, telefone, endereco) VALUES (1, 'JULIANO DA SILVA ROCHA', '037.882.470-88', '55991790931', 'Bairro Minuano');
INSERT INTO public.cliente (id, nome, cpf, telefone, endereco) VALUES (3, 'Teste ', '12345678910', '98989898', 'Por ai');


--
-- TOC entry 3352 (class 0 OID 41060)
-- Dependencies: 221
-- Data for Name: emprestimo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.emprestimo (id, data_emprestimo, data_devolucao, id_funcionario, id_cliente, id_livro) VALUES (1, '2024-06-20', NULL, 1, 1, 1);
INSERT INTO public.emprestimo (id, data_emprestimo, data_devolucao, id_funcionario, id_cliente, id_livro) VALUES (2, '2025-06-22', NULL, 1, 3, 1);


--
-- TOC entry 3346 (class 0 OID 41025)
-- Dependencies: 215
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.funcionario (id, nome, email, senha, ativo) VALUES (1, 'juliano', 'email@gmail.com', '123', true);
INSERT INTO public.funcionario (id, nome, email, senha, ativo) VALUES (13, 'Juliano Rocha', 'julianoblw12@gmail.com', '123', true);


--
-- TOC entry 3348 (class 0 OID 41032)
-- Dependencies: 217
-- Data for Name: livro; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.livro (id, titulo, autor, ano_publicacao, disponivel) VALUES (1, 'Diario de um Banana', 'Douglas ', 2025, true);


--
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 218
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_seq', 3, true);


--
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 220
-- Name: emprestimo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.emprestimo_id_seq', 2, true);


--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 214
-- Name: funcionario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.funcionario_id_seq', 13, true);


--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 216
-- Name: livro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.livro_id_seq', 2, true);


--
-- TOC entry 3197 (class 2606 OID 41044)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- TOC entry 3199 (class 2606 OID 41065)
-- Name: emprestimo emprestimo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emprestimo
    ADD CONSTRAINT emprestimo_pkey PRIMARY KEY (id);


--
-- TOC entry 3193 (class 2606 OID 41030)
-- Name: funcionario funcionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id);


--
-- TOC entry 3195 (class 2606 OID 41037)
-- Name: livro livro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livro
    ADD CONSTRAINT livro_pkey PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 41071)
-- Name: emprestimo emprestimo_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emprestimo
    ADD CONSTRAINT emprestimo_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id);


--
-- TOC entry 3201 (class 2606 OID 41066)
-- Name: emprestimo emprestimo_id_funcionario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emprestimo
    ADD CONSTRAINT emprestimo_id_funcionario_fkey FOREIGN KEY (id_funcionario) REFERENCES public.funcionario(id);


--
-- TOC entry 3202 (class 2606 OID 41076)
-- Name: emprestimo emprestimo_id_livro_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.emprestimo
    ADD CONSTRAINT emprestimo_id_livro_fkey FOREIGN KEY (id_livro) REFERENCES public.livro(id);


-- Completed on 2025-06-29 00:20:48

--
-- PostgreSQL database dump complete
--


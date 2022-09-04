--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7 (Ubuntu 13.7-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.3

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
-- Name: heroku_ext; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA heroku_ext;


ALTER SCHEMA heroku_ext OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO lywnmczfrpvejj;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO lywnmczfrpvejj;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lywnmczfrpvejj
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO lywnmczfrpvejj;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO lywnmczfrpvejj;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lywnmczfrpvejj
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO lywnmczfrpvejj;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO lywnmczfrpvejj;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lywnmczfrpvejj
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO lywnmczfrpvejj;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO lywnmczfrpvejj;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO lywnmczfrpvejj;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lywnmczfrpvejj
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO lywnmczfrpvejj;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lywnmczfrpvejj
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO lywnmczfrpvejj;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO lywnmczfrpvejj;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lywnmczfrpvejj
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO lywnmczfrpvejj;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO lywnmczfrpvejj;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lywnmczfrpvejj
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO lywnmczfrpvejj;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO lywnmczfrpvejj;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lywnmczfrpvejj
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO lywnmczfrpvejj;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO lywnmczfrpvejj;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lywnmczfrpvejj
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO lywnmczfrpvejj;

--
-- Name: shoppies_awards; Type: TABLE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE TABLE public.shoppies_awards (
    id integer NOT NULL,
    "userID" character varying(30) NOT NULL,
    "Title" character varying(200) NOT NULL,
    "Year" character varying(10) NOT NULL,
    "Poster" text NOT NULL,
    "imdbID" character varying(20) NOT NULL,
    "Type" character varying(20) NOT NULL
);


ALTER TABLE public.shoppies_awards OWNER TO lywnmczfrpvejj;

--
-- Name: shoppies_awards_id_seq; Type: SEQUENCE; Schema: public; Owner: lywnmczfrpvejj
--

CREATE SEQUENCE public.shoppies_awards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shoppies_awards_id_seq OWNER TO lywnmczfrpvejj;

--
-- Name: shoppies_awards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lywnmczfrpvejj
--

ALTER SEQUENCE public.shoppies_awards_id_seq OWNED BY public.shoppies_awards.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: shoppies_awards id; Type: DEFAULT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.shoppies_awards ALTER COLUMN id SET DEFAULT nextval('public.shoppies_awards_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: lywnmczfrpvejj
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: lywnmczfrpvejj
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: lywnmczfrpvejj
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add awards	1	add_awards
2	Can change awards	1	change_awards
3	Can delete awards	1	delete_awards
4	Can view awards	1	view_awards
5	Can add log entry	2	add_logentry
6	Can change log entry	2	change_logentry
7	Can delete log entry	2	delete_logentry
8	Can view log entry	2	view_logentry
9	Can add permission	3	add_permission
10	Can change permission	3	change_permission
11	Can delete permission	3	delete_permission
12	Can view permission	3	view_permission
13	Can add group	4	add_group
14	Can change group	4	change_group
15	Can delete group	4	delete_group
16	Can view group	4	view_group
17	Can add user	5	add_user
18	Can change user	5	change_user
19	Can delete user	5	delete_user
20	Can view user	5	view_user
21	Can add content type	6	add_contenttype
22	Can change content type	6	change_contenttype
23	Can delete content type	6	delete_contenttype
24	Can view content type	6	view_contenttype
25	Can add session	7	add_session
26	Can change session	7	change_session
27	Can delete session	7	delete_session
28	Can view session	7	view_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: lywnmczfrpvejj
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: lywnmczfrpvejj
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: lywnmczfrpvejj
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: lywnmczfrpvejj
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: lywnmczfrpvejj
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	shoppies	awards
2	admin	logentry
3	auth	permission
4	auth	group
5	auth	user
6	contenttypes	contenttype
7	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: lywnmczfrpvejj
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-10-29 00:20:54.959504+00
2	auth	0001_initial	2020-10-29 00:20:55.069801+00
3	admin	0001_initial	2020-10-29 00:20:55.218174+00
4	admin	0002_logentry_remove_auto_add	2020-10-29 00:20:55.254886+00
5	admin	0003_logentry_add_action_flag_choices	2020-10-29 00:20:55.280017+00
6	contenttypes	0002_remove_content_type_name	2020-10-29 00:20:55.334432+00
7	auth	0002_alter_permission_name_max_length	2020-10-29 00:20:55.371017+00
8	auth	0003_alter_user_email_max_length	2020-10-29 00:20:55.472989+00
9	auth	0004_alter_user_username_opts	2020-10-29 00:20:55.517549+00
10	auth	0005_alter_user_last_login_null	2020-10-29 00:20:55.543812+00
11	auth	0006_require_contenttypes_0002	2020-10-29 00:20:55.552528+00
12	auth	0007_alter_validators_add_error_messages	2020-10-29 00:20:55.583386+00
13	auth	0008_alter_user_username_max_length	2020-10-29 00:20:55.61052+00
14	auth	0009_alter_user_last_name_max_length	2020-10-29 00:20:55.634004+00
15	auth	0010_alter_group_name_max_length	2020-10-29 00:20:55.661631+00
16	auth	0011_update_proxy_permissions	2020-10-29 00:20:55.685772+00
17	sessions	0001_initial	2020-10-29 00:20:55.701455+00
18	shoppies	0001_initial	2020-10-29 00:20:55.742874+00
19	shoppies	0002_auto_20200904_0822	2020-10-29 00:20:55.88009+00
20	shoppies	0003_auto_20200904_0840	2020-10-29 00:20:55.982914+00
21	shoppies	0004_auto_20201029_0220	2020-10-29 02:32:36.732988+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: lywnmczfrpvejj
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: shoppies_awards; Type: TABLE DATA; Schema: public; Owner: lywnmczfrpvejj
--

COPY public.shoppies_awards (id, "userID", "Title", "Year", "Poster", "imdbID", "Type") FROM stdin;
85	5f4fd936146161006d25b262	Deja Vu	2006	https://m.media-amazon.com/images/M/MV5BMzEwNTAwNjEwMV5BMl5BanBnXkFtZTYwMzgzMjA3._V1_SX300.jpg	tt0453467	movie
88	5f4fd936146161006d25b262	The Lake House	2006	https://m.media-amazon.com/images/M/MV5BMTYxMTgxNDI3MV5BMl5BanBnXkFtZTcwMzIxMTIzMw@@._V1_SX300.jpg	tt0410297	movie
90	609702f79201390068ed02c9	In Search of the Titanic	2004	https://m.media-amazon.com/images/M/MV5BMTAzNjY0NDA2NzdeQTJeQWpwZ15BbWU4MDIwMzc1MzEx._V1_SX300.jpg	tt1719665	movie
91	609702f79201390068ed02c9	The Legend of the Titanic	1999	https://m.media-amazon.com/images/M/MV5BMjMxNDU5MTk1MV5BMl5BanBnXkFtZTgwMDk5NDUyMTE@._V1_SX300.jpg	tt1623780	movie
94	609702f79201390068ed02c9	The Chambermaid on the Titanic	1997	https://m.media-amazon.com/images/M/MV5BMWUzYjgyNDEtNTAyMi00M2JjLTlhMzMtMDJmOGM1ZmYzNzY4XkEyXkFqcGdeQXVyMTA0MjU0Ng@@._V1_SX300.jpg	tt0129923	movie
25	5f56cc7b2076a700678fcbdc	The Magnificent Seven	2016	https://m.media-amazon.com/images/M/MV5BMTUzNTc0NTAyM15BMl5BanBnXkFtZTgwMTk1ODA5OTE@._V1_SX300.jpg	tt2404435	movie
26	5f56cc7b2076a700678fcbdc	The Lion King	1994	https://m.media-amazon.com/images/M/MV5BYTYxNGMyZTYtMjE3MS00MzNjLWFjNmYtMDk3N2FmM2JiM2M1XkEyXkFqcGdeQXVyNjY5NDU4NzI@._V1_SX300.jpg	tt0110357	movie
30	5f4fd936146161006d25b262	The Magnificent Seven	2016	https://m.media-amazon.com/images/M/MV5BMTUzNTc0NTAyM15BMl5BanBnXkFtZTgwMTk1ODA5OTE@._V1_SX300.jpg	tt2404435	movie
34	5f56cc7b2076a700678fcbdc	Deja Vu	2006	https://m.media-amazon.com/images/M/MV5BMzEwNTAwNjEwMV5BMl5BanBnXkFtZTYwMzgzMjA3._V1_SX300.jpg	tt0453467	movie
35	5f56cc7b2076a700678fcbdc	The Lake House	2006	https://m.media-amazon.com/images/M/MV5BMTYxMTgxNDI3MV5BMl5BanBnXkFtZTcwMzIxMTIzMw@@._V1_SX300.jpg	tt0410297	movie
37	5f9b8b975dda650077beaf20	Deja Vu	2006	https://m.media-amazon.com/images/M/MV5BMzEwNTAwNjEwMV5BMl5BanBnXkFtZTYwMzgzMjA3._V1_SX300.jpg	tt0453467	movie
38	5f9b8b975dda650077beaf20	The Magnificent Seven	2016	https://m.media-amazon.com/images/M/MV5BMTUzNTc0NTAyM15BMl5BanBnXkFtZTgwMTk1ODA5OTE@._V1_SX300.jpg	tt2404435	movie
40	5f9b8b975dda650077beaf20	Groundhog Day	1993	https://m.media-amazon.com/images/M/MV5BZWIxNzM5YzQtY2FmMS00Yjc3LWI1ZjUtNGVjMjMzZTIxZTIxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg	tt0107048	movie
41	5f9b8b975dda650077beaf20	Back to the Future	1985	https://m.media-amazon.com/images/M/MV5BZmU0M2Y1OGUtZjIxNi00ZjBkLTg1MjgtOWIyNThiZWIwYjRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg	tt0088763	movie
42	5f9b8d3073ef490070343a2e	Deja Vu	2006	https://m.media-amazon.com/images/M/MV5BMzEwNTAwNjEwMV5BMl5BanBnXkFtZTYwMzgzMjA3._V1_SX300.jpg	tt0453467	movie
43	5f9b8d3073ef490070343a2e	Toy Story	1995	https://m.media-amazon.com/images/M/MV5BMDU2ZWJlMjktMTRhMy00ZTA5LWEzNDgtYmNmZTEwZTViZWJkXkEyXkFqcGdeQXVyNDQ2OTk4MzI@._V1_SX300.jpg	tt0114709	movie
44	5f9b8d3073ef490070343a2e	Star Wars: Episode IV - A New Hope	1977	https://m.media-amazon.com/images/M/MV5BNzVlY2MwMjktM2E4OS00Y2Y3LWE3ZjctYzhkZGM3YzA1ZWM2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg	tt0076759	movie
45	5f9b8d3073ef490070343a2e	Inception	2010	https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SX300.jpg	tt1375666	movie
46	5f9b8d3073ef490070343a2e	The Avengers	2012	https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg	tt0848228	movie
51	5f4fd936146161006d25b262	Spider-Man: Far from Home	2019	https://m.media-amazon.com/images/M/MV5BMGZlNTY1ZWUtYTMzNC00ZjUyLWE0MjQtMTMxN2E3ODYxMWVmXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_SX300.jpg	tt6320628	movie
53	5f9b8b975dda650077beaf20	The Hunger Games: Catching Fire	2013	https://m.media-amazon.com/images/M/MV5BMTAyMjQ3OTAxMzNeQTJeQWpwZ15BbWU4MDU0NzA1MzAx._V1_SX300.jpg	tt1951264	movie
55	5fdc15e86e0ffe0075db39f1	The Sear	2018	N/A	tt8851040	movie
56	5fdc15e86e0ffe0075db39f1	KO ft Sëar Lui Même: Mon rap	2011	N/A	tt3917156	movie
57	5fdc15e86e0ffe0075db39f1	Dapper Laughs Live: The Res-Erection	2015	https://m.media-amazon.com/images/M/MV5BMDEwZjhlZWYtM2EzYi00ODM5LThkZDgtYTVlZTFmZTc4YjBlXkEyXkFqcGdeQXVyNjQwMTM0NTc@._V1_SX300.jpg	tt5224452	movie
58	5fdc15e86e0ffe0075db39f1	In Medias Res	2011	https://m.media-amazon.com/images/M/MV5BMjA5NDA3OTI5OF5BMl5BanBnXkFtZTcwMTYyNjEwNg@@._V1_SX300.jpg	tt1954538	movie
60	5fdc15e86e0ffe0075db39f1	Groundhog Day	1993	https://m.media-amazon.com/images/M/MV5BZWIxNzM5YzQtY2FmMS00Yjc3LWI1ZjUtNGVjMjMzZTIxZTIxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg	tt0107048	movie
63	5feb6b3b81637b00685cfa55	A Test Movie	2014	https://m.media-amazon.com/images/M/MV5BMTQ4NzYyNjE0MF5BMl5BanBnXkFtZTgwOTA3Nzc3NTE@._V1_SX300.jpg	tt4242990	movie
64	5feb6b3b81637b00685cfa55	The Matrix	1999	https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg	tt0133093	movie
65	5feb6b3b81637b00685cfa55	The Matrix Reloaded	2003	https://m.media-amazon.com/images/M/MV5BODE0MzZhZTgtYzkwYi00YmI5LThlZWYtOWRmNWE5ODk0NzMxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg	tt0234215	movie
66	5feb6b3b81637b00685cfa55	The Matrix Revolutions	2003	https://m.media-amazon.com/images/M/MV5BNzNlZTZjMDctZjYwNi00NzljLWIwN2QtZWZmYmJiYzQ0MTk2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg	tt0242653	movie
67	5feb6b3b81637b00685cfa55	The Matrix Revisited	2001	https://m.media-amazon.com/images/M/MV5BMTIzMTA4NDI4NF5BMl5BanBnXkFtZTYwNjg5Nzg4._V1_SX300.jpg	tt0295432	movie
71	5ffd3ba2567b1200761c5ea9	Captain America: Civil War	2016	https://m.media-amazon.com/images/M/MV5BMjQ0MTgyNjAxMV5BMl5BanBnXkFtZTgwNjUzMDkyODE@._V1_SX300.jpg	tt3498820	movie
72	5ffd3ba2567b1200761c5ea9	Captain America: The Winter Soldier	2014	https://m.media-amazon.com/images/M/MV5BMzA2NDkwODAwM15BMl5BanBnXkFtZTgwODk5MTgzMTE@._V1_SX300.jpg	tt1843866	movie
73	5ffd3ba2567b1200761c5ea9	Captain Marvel	2019	https://m.media-amazon.com/images/M/MV5BMTE0YWFmOTMtYTU2ZS00ZTIxLWE3OTEtYTNiYzBkZjViZThiXkEyXkFqcGdeQXVyODMzMzQ4OTI@._V1_SX300.jpg	tt4154664	movie
74	5ffd3ba2567b1200761c5ea9	Captain America: The First Avenger	2011	https://m.media-amazon.com/images/M/MV5BMTYzOTc2NzU3N15BMl5BanBnXkFtZTcwNjY3MDE3NQ@@._V1_SX300.jpg	tt0458339	movie
75	5ffd3ba2567b1200761c5ea9	Captain Phillips	2013	https://m.media-amazon.com/images/M/MV5BODhiZWRhMjctNDUyMS00NmUwLTgwYmItMjJhOWNkZWQ3ZTQxXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg	tt1535109	movie
89	5f4fd936146161006d25b262	Gold	2016	https://m.media-amazon.com/images/M/MV5BNjEwNzMzMDI4Nl5BMl5BanBnXkFtZTgwMTM2ODkwMTI@._V1_SX300.jpg	tt1800302	movie
80	5ff72eebea3fc7007877dedb	The Bat	1959	https://m.media-amazon.com/images/M/MV5BYWY3N2M0MzktZjkxNi00MjNlLTg2ZjctZGVjZTZhNzZiMDc4XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_SX300.jpg	tt0052602	movie
92	609702f79201390068ed02c9	Raise the Titanic	1980	https://m.media-amazon.com/images/M/MV5BNTQyZGI0NDgtYTM0ZC00NTdkLTk2OTItYTgwYmYwNjZlNDRlXkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_SX300.jpg	tt0081400	movie
93	609702f79201390068ed02c9	Titanic	1943	https://m.media-amazon.com/images/M/MV5BNDk4Yzc2MmItMDVhMy00Yjg1LTliNmYtOTUzZDg0ZDMyZDhhXkEyXkFqcGdeQXVyNjQzNDI3NzY@._V1_SX300.jpg	tt0036443	movie
95	609702f79201390068ed02c9	S.O.S. Titanic	1979	https://m.media-amazon.com/images/M/MV5BZDdkYjQ1YTgtYjQ0My00ZWQwLTgyZjktNDI4NzkzOTg5NTdlXkEyXkFqcGdeQXVyNjMzMDgxMzk@._V1_SX300.jpg	tt0079836	movie
96	60973751b743a9006a0a1dcd	The Bubble	2006	https://m.media-amazon.com/images/M/MV5BNjJhYjg5YzUtYTY2ZC00OTljLTkxNDAtM2Y4ZGIzZDlkZjlkXkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_SX300.jpg	tt0476643	movie
97	60973751b743a9006a0a1dcd	The Bubble	2006	https://m.media-amazon.com/images/M/MV5BNjJhYjg5YzUtYTY2ZC00OTljLTkxNDAtM2Y4ZGIzZDlkZjlkXkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_SX300.jpg	tt0476643	movie
98	60973751b743a9006a0a1dcd	The Bubble	2006	https://m.media-amazon.com/images/M/MV5BNjJhYjg5YzUtYTY2ZC00OTljLTkxNDAtM2Y4ZGIzZDlkZjlkXkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_SX300.jpg	tt0476643	movie
100	60973751b743a9006a0a1dcd	The Sporting Bubble	2020	https://m.media-amazon.com/images/M/MV5BZjk3OGY1NjktMDdjZC00NjdhLTg3NWUtNTAzNDI5ZDdmNjI1XkEyXkFqcGdeQXVyNjAzNjExNzg@._V1_SX300.jpg	tt13516124	movie
114	609af3dd808804006961de34	Star Wars: Episode VI - Return of the Jedi	1983	https://m.media-amazon.com/images/M/MV5BOWZlMjFiYzgtMTUzNC00Y2IzLTk1NTMtZmNhMTczNTk0ODk1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg	tt0086190	movie
115	609af3dd808804006961de34	Star Wars: Episode V - The Empire Strikes Back	1980	https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg	tt0080684	movie
116	609af3dd808804006961de34	Star Wars: Episode IV - A New Hope	1977	https://m.media-amazon.com/images/M/MV5BNzVlY2MwMjktM2E4OS00Y2Y3LWE3ZjctYzhkZGM3YzA1ZWM2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg	tt0076759	movie
117	609af3dd808804006961de34	Star Wars: Episode VII - The Force Awakens	2015	https://m.media-amazon.com/images/M/MV5BOTAzODEzNDAzMl5BMl5BanBnXkFtZTgwMDU1MTgzNzE@._V1_SX300.jpg	tt2488496	movie
118	609af3dd808804006961de34	Star Wars: Episode I - The Phantom Menace	1999	https://m.media-amazon.com/images/M/MV5BYTRhNjcwNWQtMGJmMi00NmQyLWE2YzItODVmMTdjNWI0ZDA2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg	tt0120915	movie
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lywnmczfrpvejj
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lywnmczfrpvejj
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lywnmczfrpvejj
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lywnmczfrpvejj
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lywnmczfrpvejj
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lywnmczfrpvejj
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lywnmczfrpvejj
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lywnmczfrpvejj
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lywnmczfrpvejj
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- Name: shoppies_awards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lywnmczfrpvejj
--

SELECT pg_catalog.setval('public.shoppies_awards_id_seq', 120, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: shoppies_awards shoppies_awards_pkey; Type: CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.shoppies_awards
    ADD CONSTRAINT shoppies_awards_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: lywnmczfrpvejj
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: lywnmczfrpvejj
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: lywnmczfrpvejj
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: lywnmczfrpvejj
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: lywnmczfrpvejj
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: lywnmczfrpvejj
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: lywnmczfrpvejj
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: lywnmczfrpvejj
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: lywnmczfrpvejj
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: lywnmczfrpvejj
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: lywnmczfrpvejj
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: lywnmczfrpvejj
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: lywnmczfrpvejj
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: lywnmczfrpvejj
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA heroku_ext; Type: ACL; Schema: -; Owner: postgres
--

GRANT USAGE ON SCHEMA heroku_ext TO lywnmczfrpvejj WITH GRANT OPTION;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: lywnmczfrpvejj
--

REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO lywnmczfrpvejj;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO lywnmczfrpvejj;


--
-- PostgreSQL database dump complete
--


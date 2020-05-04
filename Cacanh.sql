--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: home_author; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_author (
    id integer NOT NULL,
    profile_picture character varying(100) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.home_author OWNER TO postgres;

--
-- Name: home_author_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_author_id_seq OWNER TO postgres;

--
-- Name: home_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_author_id_seq OWNED BY public.home_author.id;


--
-- Name: home_categorybl; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_categorybl (
    id integer NOT NULL,
    title character varying(20) NOT NULL
);


ALTER TABLE public.home_categorybl OWNER TO postgres;

--
-- Name: home_categorybl_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_categorybl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_categorybl_id_seq OWNER TO postgres;

--
-- Name: home_categorybl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_categorybl_id_seq OWNED BY public.home_categorybl.id;


--
-- Name: home_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_comment (
    id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    content text NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.home_comment OWNER TO postgres;

--
-- Name: home_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_comment_id_seq OWNER TO postgres;

--
-- Name: home_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_comment_id_seq OWNED BY public.home_comment.id;


--
-- Name: home_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_post (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    overview text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    content text NOT NULL,
    thumbnail character varying(100) NOT NULL,
    featured boolean NOT NULL,
    author_id integer NOT NULL,
    next_post_id integer,
    previous_post_id integer
);


ALTER TABLE public.home_post OWNER TO postgres;

--
-- Name: home_post_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_post_categories (
    id integer NOT NULL,
    post_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.home_post_categories OWNER TO postgres;

--
-- Name: home_post_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_post_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_post_categories_id_seq OWNER TO postgres;

--
-- Name: home_post_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_post_categories_id_seq OWNED BY public.home_post_categories.id;


--
-- Name: home_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_post_id_seq OWNER TO postgres;

--
-- Name: home_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_post_id_seq OWNED BY public.home_post.id;


--
-- Name: home_postview; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.home_postview (
    id integer NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.home_postview OWNER TO postgres;

--
-- Name: home_postview_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.home_postview_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_postview_id_seq OWNER TO postgres;

--
-- Name: home_postview_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.home_postview_id_seq OWNED BY public.home_postview.id;


--
-- Name: maketing_signup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.maketing_signup (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);


ALTER TABLE public.maketing_signup OWNER TO postgres;

--
-- Name: maketing_signup_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.maketing_signup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.maketing_signup_id_seq OWNER TO postgres;

--
-- Name: maketing_signup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.maketing_signup_id_seq OWNED BY public.maketing_signup.id;


--
-- Name: tbl_Blog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tbl_Blog" (
    blo_id integer NOT NULL,
    blo_image1 character varying(255) NOT NULL,
    blo_image2 character varying(255) NOT NULL,
    blo_slxem integer NOT NULL,
    blo_td text NOT NULL,
    blo_nd text NOT NULL,
    blo_tt text NOT NULL,
    blo_tg character varying(255) NOT NULL,
    tag_id integer NOT NULL,
    date_create date NOT NULL
);


ALTER TABLE public."tbl_Blog" OWNER TO postgres;

--
-- Name: tbl_Blog_blo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_Blog_blo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_Blog_blo_id_seq" OWNER TO postgres;

--
-- Name: tbl_Blog_blo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_Blog_blo_id_seq" OWNED BY public."tbl_Blog".blo_id;


--
-- Name: tbl_Category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tbl_Category" (
    cat_id integer NOT NULL,
    cat_name character varying(50) NOT NULL,
    cat_image character varying(255) NOT NULL,
    status smallint NOT NULL,
    date_create date NOT NULL
);


ALTER TABLE public."tbl_Category" OWNER TO postgres;

--
-- Name: tbl_Category_cat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_Category_cat_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_Category_cat_id_seq" OWNER TO postgres;

--
-- Name: tbl_Category_cat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_Category_cat_id_seq" OWNED BY public."tbl_Category".cat_id;


--
-- Name: tbl_LienHe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tbl_LienHe" (
    co_id integer NOT NULL,
    co_name character varying(255) NOT NULL,
    co_phone character varying(10) NOT NULL,
    co_email character varying(255) NOT NULL,
    co_adress character varying(255) NOT NULL,
    co_nd text NOT NULL
);


ALTER TABLE public."tbl_LienHe" OWNER TO postgres;

--
-- Name: tbl_LienHe_co_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_LienHe_co_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_LienHe_co_id_seq" OWNER TO postgres;

--
-- Name: tbl_LienHe_co_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_LienHe_co_id_seq" OWNED BY public."tbl_LienHe".co_id;


--
-- Name: tbl_Order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tbl_Order" (
    order_id integer NOT NULL,
    user_id integer NOT NULL,
    total double precision NOT NULL,
    status smallint NOT NULL,
    date_create timestamp with time zone
);


ALTER TABLE public."tbl_Order" OWNER TO postgres;

--
-- Name: tbl_OrderDetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tbl_OrderDetail" (
    detail_id integer NOT NULL,
    order_id integer NOT NULL,
    pro_id integer NOT NULL,
    pro_price integer NOT NULL,
    pro_image integer NOT NULL,
    "Quanlity" integer NOT NULL,
    status smallint NOT NULL,
    date_create timestamp with time zone
);


ALTER TABLE public."tbl_OrderDetail" OWNER TO postgres;

--
-- Name: tbl_OrderDetail_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_OrderDetail_detail_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_OrderDetail_detail_id_seq" OWNER TO postgres;

--
-- Name: tbl_OrderDetail_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_OrderDetail_detail_id_seq" OWNED BY public."tbl_OrderDetail".detail_id;


--
-- Name: tbl_Order_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_Order_order_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_Order_order_id_seq" OWNER TO postgres;

--
-- Name: tbl_Order_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_Order_order_id_seq" OWNED BY public."tbl_Order".order_id;


--
-- Name: tbl_Product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tbl_Product" (
    pro_id integer NOT NULL,
    pro_name character varying(50) NOT NULL,
    cat_id integer NOT NULL,
    pri_image character varying(255) NOT NULL,
    pro_price double precision NOT NULL,
    description text NOT NULL,
    status smallint NOT NULL,
    date_create date NOT NULL
);


ALTER TABLE public."tbl_Product" OWNER TO postgres;

--
-- Name: tbl_Product_pro_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_Product_pro_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_Product_pro_id_seq" OWNER TO postgres;

--
-- Name: tbl_Product_pro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_Product_pro_id_seq" OWNED BY public."tbl_Product".pro_id;


--
-- Name: tbl_Tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tbl_Tag" (
    tag_id integer NOT NULL,
    tag_name character varying(255) NOT NULL,
    date_create date NOT NULL
);


ALTER TABLE public."tbl_Tag" OWNER TO postgres;

--
-- Name: tbl_Tag_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_Tag_tag_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_Tag_tag_id_seq" OWNER TO postgres;

--
-- Name: tbl_Tag_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_Tag_tag_id_seq" OWNED BY public."tbl_Tag".tag_id;


--
-- Name: tbl_ThuVien; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."tbl_ThuVien" (
    lib_id integer NOT NULL,
    lib_td text NOT NULL,
    lib_nd text NOT NULL,
    lib_image character varying(255) NOT NULL
);


ALTER TABLE public."tbl_ThuVien" OWNER TO postgres;

--
-- Name: tbl_ThuVien_lib_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."tbl_ThuVien_lib_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tbl_ThuVien_lib_id_seq" OWNER TO postgres;

--
-- Name: tbl_ThuVien_lib_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."tbl_ThuVien_lib_id_seq" OWNED BY public."tbl_ThuVien".lib_id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: home_author id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_author ALTER COLUMN id SET DEFAULT nextval('public.home_author_id_seq'::regclass);


--
-- Name: home_categorybl id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_categorybl ALTER COLUMN id SET DEFAULT nextval('public.home_categorybl_id_seq'::regclass);


--
-- Name: home_comment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_comment ALTER COLUMN id SET DEFAULT nextval('public.home_comment_id_seq'::regclass);


--
-- Name: home_post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_post ALTER COLUMN id SET DEFAULT nextval('public.home_post_id_seq'::regclass);


--
-- Name: home_post_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_post_categories ALTER COLUMN id SET DEFAULT nextval('public.home_post_categories_id_seq'::regclass);


--
-- Name: home_postview id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_postview ALTER COLUMN id SET DEFAULT nextval('public.home_postview_id_seq'::regclass);


--
-- Name: maketing_signup id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maketing_signup ALTER COLUMN id SET DEFAULT nextval('public.maketing_signup_id_seq'::regclass);


--
-- Name: tbl_Blog blo_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_Blog" ALTER COLUMN blo_id SET DEFAULT nextval('public."tbl_Blog_blo_id_seq"'::regclass);


--
-- Name: tbl_Category cat_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_Category" ALTER COLUMN cat_id SET DEFAULT nextval('public."tbl_Category_cat_id_seq"'::regclass);


--
-- Name: tbl_LienHe co_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_LienHe" ALTER COLUMN co_id SET DEFAULT nextval('public."tbl_LienHe_co_id_seq"'::regclass);


--
-- Name: tbl_Order order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_Order" ALTER COLUMN order_id SET DEFAULT nextval('public."tbl_Order_order_id_seq"'::regclass);


--
-- Name: tbl_OrderDetail detail_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_OrderDetail" ALTER COLUMN detail_id SET DEFAULT nextval('public."tbl_OrderDetail_detail_id_seq"'::regclass);


--
-- Name: tbl_Product pro_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_Product" ALTER COLUMN pro_id SET DEFAULT nextval('public."tbl_Product_pro_id_seq"'::regclass);


--
-- Name: tbl_Tag tag_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_Tag" ALTER COLUMN tag_id SET DEFAULT nextval('public."tbl_Tag_tag_id_seq"'::regclass);


--
-- Name: tbl_ThuVien lib_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_ThuVien" ALTER COLUMN lib_id SET DEFAULT nextval('public."tbl_ThuVien_lib_id_seq"'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add blog	7	add_blog
26	Can change blog	7	change_blog
27	Can delete blog	7	delete_blog
28	Can view blog	7	view_blog
29	Can add category	8	add_category
30	Can change category	8	change_category
31	Can delete category	8	delete_category
32	Can view category	8	view_category
33	Can add lien he	9	add_lienhe
34	Can change lien he	9	change_lienhe
35	Can delete lien he	9	delete_lienhe
36	Can view lien he	9	view_lienhe
37	Can add tag	10	add_tag
38	Can change tag	10	change_tag
39	Can delete tag	10	delete_tag
40	Can view tag	10	view_tag
41	Can add thu vien	11	add_thuvien
42	Can change thu vien	11	change_thuvien
43	Can delete thu vien	11	delete_thuvien
44	Can view thu vien	11	view_thuvien
45	Can add author	12	add_author
46	Can change author	12	change_author
47	Can delete author	12	delete_author
48	Can view author	12	view_author
49	Can add post	13	add_post
50	Can change post	13	change_post
51	Can delete post	13	delete_post
52	Can view post	13	view_post
53	Can add signup	14	add_signup
54	Can change signup	14	change_signup
55	Can delete signup	14	delete_signup
56	Can view signup	14	view_signup
57	Can add category bl	15	add_categorybl
58	Can change category bl	15	change_categorybl
59	Can delete category bl	15	delete_categorybl
60	Can view category bl	15	view_categorybl
61	Can add order	16	add_order
62	Can change order	16	change_order
63	Can delete order	16	delete_order
64	Can view order	16	view_order
65	Can add order detail	17	add_orderdetail
66	Can change order detail	17	change_orderdetail
67	Can delete order detail	17	delete_orderdetail
68	Can view order detail	17	view_orderdetail
69	Can add product	18	add_product
70	Can change product	18	change_product
71	Can delete product	18	delete_product
72	Can view product	18	view_product
73	Can add post view	19	add_postview
74	Can change post view	19	change_postview
75	Can delete post view	19	delete_postview
76	Can view post view	19	view_postview
77	Can add comment	20	add_comment
78	Can change comment	20	change_comment
79	Can delete comment	20	delete_comment
80	Can view comment	20	view_comment
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$5zmQ5GglolBx$p93vKy7CMAh0IjRYHDrZQ2B8U5fD7qYGsrwWdUuo0iQ=	2020-04-29 15:02:48.219339+07	t	admin			sieuanhhung98@gmail.com	t	t	2020-04-29 14:42:32.077772+07
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-04-29 14:46:47.270721+07	1	Category object (1)	1	[{"added": {}}]	8	1
2	2020-04-29 14:50:52.568607+07	1	admin	1	[{"added": {}}]	12	1
3	2020-04-29 15:05:54.651565+07	1	Product object (1)	1	[{"added": {}}]	18	1
4	2020-04-29 15:11:10.125398+07	1	Tag object (1)	1	[{"added": {}}]	10	1
5	2020-04-29 15:11:45.20292+07	1	Blog object (1)	1	[{"added": {}}]	7	1
6	2020-04-29 15:15:56.528581+07	1	Nghỉ lễ	1	[{"added": {}}]	13	1
7	2020-04-29 15:17:39.174408+07	1	admin	1	[{"added": {}}]	20	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	home	blog
8	home	category
9	home	lienhe
10	home	tag
11	home	thuvien
12	home	author
13	home	post
14	maketing	signup
15	home	categorybl
16	home	order
17	home	orderdetail
18	home	product
19	home	postview
20	home	comment
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-04-29 14:41:03.873121+07
2	auth	0001_initial	2020-04-29 14:41:04.207195+07
3	admin	0001_initial	2020-04-29 14:41:04.715254+07
4	admin	0002_logentry_remove_auto_add	2020-04-29 14:41:04.791357+07
5	admin	0003_logentry_add_action_flag_choices	2020-04-29 14:41:04.810724+07
6	contenttypes	0002_remove_content_type_name	2020-04-29 14:41:04.854502+07
7	auth	0002_alter_permission_name_max_length	2020-04-29 14:41:04.861758+07
8	auth	0003_alter_user_email_max_length	2020-04-29 14:41:04.871599+07
9	auth	0004_alter_user_username_opts	2020-04-29 14:41:04.898044+07
10	auth	0005_alter_user_last_login_null	2020-04-29 14:41:04.913865+07
11	auth	0006_require_contenttypes_0002	2020-04-29 14:41:04.916975+07
12	auth	0007_alter_validators_add_error_messages	2020-04-29 14:41:04.934886+07
13	auth	0008_alter_user_username_max_length	2020-04-29 14:41:04.977499+07
14	auth	0009_alter_user_last_name_max_length	2020-04-29 14:41:04.987865+07
15	auth	0010_alter_group_name_max_length	2020-04-29 14:41:05.01225+07
16	auth	0011_update_proxy_permissions	2020-04-29 14:41:05.022071+07
17	home	0001_initial	2020-04-29 14:41:05.486889+07
18	home	0002_auto_20200429_0740	2020-04-29 14:41:05.726836+07
19	maketing	0001_initial	2020-04-29 14:41:05.987883+07
20	sessions	0001_initial	2020-04-29 14:41:06.110466+07
21	home	0003_categorybl_comment_order_orderdetail_postview_product	2020-04-29 14:57:22.438345+07
22	home	0004_auto_20200429_0814	2020-04-29 15:14:30.566046+07
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
s1ch0oelt1s2p2e4xrw1g4nxm4pm3u35	NWVlZjhlMDZjYjhkMDUyZDhiZjJjZjZhZGM3ZTQ2ODY2NzFkMTRhNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMmVjYjA4NDFhOGI3YWZhNjFlZjQzMzUwMjAwZmQ5OTRkYTg3NmYzIn0=	2020-05-13 15:02:48.221606+07
\.


--
-- Data for Name: home_author; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_author (id, profile_picture, user_id) FROM stdin;
1	91235227_226694928697549_2872665064630910976_n.jpg	1
\.


--
-- Data for Name: home_categorybl; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_categorybl (id, title) FROM stdin;
\.


--
-- Data for Name: home_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_comment (id, "timestamp", content, post_id, user_id) FROM stdin;
1	2020-04-29 15:17:39.159241+07	admin	1	1
\.


--
-- Data for Name: home_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_post (id, title, overview, "timestamp", content, thumbnail, featured, author_id, next_post_id, previous_post_id) FROM stdin;
1	Nghỉ lễ		2020-04-29 15:15:56.502893+07		anh-bia-1.jpg	f	1	\N	\N
\.


--
-- Data for Name: home_post_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_post_categories (id, post_id, category_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: home_postview; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.home_postview (id, post_id, user_id) FROM stdin;
\.


--
-- Data for Name: maketing_signup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.maketing_signup (id, email, "timestamp") FROM stdin;
\.


--
-- Data for Name: tbl_Blog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tbl_Blog" (blo_id, blo_image1, blo_image2, blo_slxem, blo_td, blo_nd, blo_tt, blo_tg, tag_id, date_create) FROM stdin;
1	image_PQ1.jpg	image_PQ2.jpg	2	Phóng sự	Admin	Duy Do	hihi	1	2020-04-29
\.


--
-- Data for Name: tbl_Category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tbl_Category" (cat_id, cat_name, cat_image, status, date_create) FROM stdin;
1	Cây trong nhà	TongThe.png	1	2020-04-29
\.


--
-- Data for Name: tbl_LienHe; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tbl_LienHe" (co_id, co_name, co_phone, co_email, co_adress, co_nd) FROM stdin;
\.


--
-- Data for Name: tbl_Order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tbl_Order" (order_id, user_id, total, status, date_create) FROM stdin;
\.


--
-- Data for Name: tbl_OrderDetail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tbl_OrderDetail" (detail_id, order_id, pro_id, pro_price, pro_image, "Quanlity", status, date_create) FROM stdin;
\.


--
-- Data for Name: tbl_Product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tbl_Product" (pro_id, pro_name, cat_id, pri_image, pro_price, description, status, date_create) FROM stdin;
1	Cây lan	1	cach-trong-lan-rung-vao-chau.jpg	45000	Cây phong lan vàng	1	2020-04-29
\.


--
-- Data for Name: tbl_Tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tbl_Tag" (tag_id, tag_name, date_create) FROM stdin;
1	Phóng sự	2020-04-29
\.


--
-- Data for Name: tbl_ThuVien; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."tbl_ThuVien" (lib_id, lib_td, lib_nd, lib_image) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 7, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- Name: home_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_author_id_seq', 1, true);


--
-- Name: home_categorybl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_categorybl_id_seq', 1, false);


--
-- Name: home_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_comment_id_seq', 1, true);


--
-- Name: home_post_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_post_categories_id_seq', 1, true);


--
-- Name: home_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_post_id_seq', 1, true);


--
-- Name: home_postview_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.home_postview_id_seq', 1, false);


--
-- Name: maketing_signup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.maketing_signup_id_seq', 1, false);


--
-- Name: tbl_Blog_blo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_Blog_blo_id_seq"', 1, true);


--
-- Name: tbl_Category_cat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_Category_cat_id_seq"', 1, true);


--
-- Name: tbl_LienHe_co_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_LienHe_co_id_seq"', 1, false);


--
-- Name: tbl_OrderDetail_detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_OrderDetail_detail_id_seq"', 1, false);


--
-- Name: tbl_Order_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_Order_order_id_seq"', 1, false);


--
-- Name: tbl_Product_pro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_Product_pro_id_seq"', 1, true);


--
-- Name: tbl_Tag_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_Tag_tag_id_seq"', 1, true);


--
-- Name: tbl_ThuVien_lib_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."tbl_ThuVien_lib_id_seq"', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: home_author home_author_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_author
    ADD CONSTRAINT home_author_pkey PRIMARY KEY (id);


--
-- Name: home_author home_author_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_author
    ADD CONSTRAINT home_author_user_id_key UNIQUE (user_id);


--
-- Name: home_categorybl home_categorybl_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_categorybl
    ADD CONSTRAINT home_categorybl_pkey PRIMARY KEY (id);


--
-- Name: home_comment home_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_comment
    ADD CONSTRAINT home_comment_pkey PRIMARY KEY (id);


--
-- Name: home_post_categories home_post_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_post_categories
    ADD CONSTRAINT home_post_categories_pkey PRIMARY KEY (id);


--
-- Name: home_post_categories home_post_categories_post_id_category_id_2b76b9fa_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_post_categories
    ADD CONSTRAINT home_post_categories_post_id_category_id_2b76b9fa_uniq UNIQUE (post_id, category_id);


--
-- Name: home_post home_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_post
    ADD CONSTRAINT home_post_pkey PRIMARY KEY (id);


--
-- Name: home_postview home_postview_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_postview
    ADD CONSTRAINT home_postview_pkey PRIMARY KEY (id);


--
-- Name: maketing_signup maketing_signup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.maketing_signup
    ADD CONSTRAINT maketing_signup_pkey PRIMARY KEY (id);


--
-- Name: tbl_Blog tbl_Blog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_Blog"
    ADD CONSTRAINT "tbl_Blog_pkey" PRIMARY KEY (blo_id);


--
-- Name: tbl_Category tbl_Category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_Category"
    ADD CONSTRAINT "tbl_Category_pkey" PRIMARY KEY (cat_id);


--
-- Name: tbl_LienHe tbl_LienHe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_LienHe"
    ADD CONSTRAINT "tbl_LienHe_pkey" PRIMARY KEY (co_id);


--
-- Name: tbl_OrderDetail tbl_OrderDetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_OrderDetail"
    ADD CONSTRAINT "tbl_OrderDetail_pkey" PRIMARY KEY (detail_id);


--
-- Name: tbl_Order tbl_Order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_Order"
    ADD CONSTRAINT "tbl_Order_pkey" PRIMARY KEY (order_id);


--
-- Name: tbl_Product tbl_Product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_Product"
    ADD CONSTRAINT "tbl_Product_pkey" PRIMARY KEY (pro_id);


--
-- Name: tbl_Tag tbl_Tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_Tag"
    ADD CONSTRAINT "tbl_Tag_pkey" PRIMARY KEY (tag_id);


--
-- Name: tbl_ThuVien tbl_ThuVien_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."tbl_ThuVien"
    ADD CONSTRAINT "tbl_ThuVien_pkey" PRIMARY KEY (lib_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: home_comment_post_id_11f2e780; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_comment_post_id_11f2e780 ON public.home_comment USING btree (post_id);


--
-- Name: home_comment_user_id_842649c8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_comment_user_id_842649c8 ON public.home_comment USING btree (user_id);


--
-- Name: home_post_author_id_1cb7f871; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_post_author_id_1cb7f871 ON public.home_post USING btree (author_id);


--
-- Name: home_post_categories_category_id_cdf619ba; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_post_categories_category_id_cdf619ba ON public.home_post_categories USING btree (category_id);


--
-- Name: home_post_categories_post_id_7f496ab3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_post_categories_post_id_7f496ab3 ON public.home_post_categories USING btree (post_id);


--
-- Name: home_post_next_post_id_3c75b6bf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_post_next_post_id_3c75b6bf ON public.home_post USING btree (next_post_id);


--
-- Name: home_post_previous_post_id_2499e603; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_post_previous_post_id_2499e603 ON public.home_post USING btree (previous_post_id);


--
-- Name: home_postview_post_id_967d4564; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_postview_post_id_967d4564 ON public.home_postview USING btree (post_id);


--
-- Name: home_postview_user_id_67e96d49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX home_postview_user_id_67e96d49 ON public.home_postview USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_author home_author_user_id_1182c1ab_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_author
    ADD CONSTRAINT home_author_user_id_1182c1ab_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_comment home_comment_post_id_11f2e780_fk_home_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_comment
    ADD CONSTRAINT home_comment_post_id_11f2e780_fk_home_post_id FOREIGN KEY (post_id) REFERENCES public.home_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_comment home_comment_user_id_842649c8_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_comment
    ADD CONSTRAINT home_comment_user_id_842649c8_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_post home_post_author_id_1cb7f871_fk_home_author_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_post
    ADD CONSTRAINT home_post_author_id_1cb7f871_fk_home_author_id FOREIGN KEY (author_id) REFERENCES public.home_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_post_categories home_post_categories_category_id_cdf619ba_fk_tbl_Categ; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_post_categories
    ADD CONSTRAINT "home_post_categories_category_id_cdf619ba_fk_tbl_Categ" FOREIGN KEY (category_id) REFERENCES public."tbl_Category"(cat_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_post_categories home_post_categories_post_id_7f496ab3_fk_home_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_post_categories
    ADD CONSTRAINT home_post_categories_post_id_7f496ab3_fk_home_post_id FOREIGN KEY (post_id) REFERENCES public.home_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_post home_post_next_post_id_3c75b6bf_fk_home_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_post
    ADD CONSTRAINT home_post_next_post_id_3c75b6bf_fk_home_post_id FOREIGN KEY (next_post_id) REFERENCES public.home_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_post home_post_previous_post_id_2499e603_fk_home_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_post
    ADD CONSTRAINT home_post_previous_post_id_2499e603_fk_home_post_id FOREIGN KEY (previous_post_id) REFERENCES public.home_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_postview home_postview_post_id_967d4564_fk_home_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_postview
    ADD CONSTRAINT home_postview_post_id_967d4564_fk_home_post_id FOREIGN KEY (post_id) REFERENCES public.home_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_postview home_postview_user_id_67e96d49_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.home_postview
    ADD CONSTRAINT home_postview_user_id_67e96d49_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--


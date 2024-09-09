--
-- PostgreSQL database dump
--

-- Dumped from database version 12.20 (Ubuntu 12.20-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.20 (Ubuntu 12.20-0ubuntu0.20.04.1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO maxcreative;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO maxcreative;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO maxcreative;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO maxcreative;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO maxcreative;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO maxcreative;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO maxcreative;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO maxcreative;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO maxcreative;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO maxcreative;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO maxcreative;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO maxcreative;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: maxcreative
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


ALTER TABLE public.django_admin_log OWNER TO maxcreative;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO maxcreative;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO maxcreative;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO maxcreative;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO maxcreative;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO maxcreative;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO maxcreative;

--
-- Name: django_summernote_attachment; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.django_summernote_attachment (
    id bigint NOT NULL,
    name character varying(255),
    file character varying(100) NOT NULL,
    uploaded timestamp with time zone NOT NULL
);


ALTER TABLE public.django_summernote_attachment OWNER TO maxcreative;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.django_summernote_attachment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_summernote_attachment_id_seq OWNER TO maxcreative;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.django_summernote_attachment_id_seq OWNED BY public.django_summernote_attachment.id;


--
-- Name: home_client; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.home_client (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.home_client OWNER TO maxcreative;

--
-- Name: home_client_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.home_client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_client_id_seq OWNER TO maxcreative;

--
-- Name: home_client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.home_client_id_seq OWNED BY public.home_client.id;


--
-- Name: home_contact; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.home_contact (
    id bigint NOT NULL,
    ad character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    elaqe character varying(255),
    text text NOT NULL
);


ALTER TABLE public.home_contact OWNER TO maxcreative;

--
-- Name: home_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.home_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_contact_id_seq OWNER TO maxcreative;

--
-- Name: home_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.home_contact_id_seq OWNED BY public.home_contact.id;


--
-- Name: home_gallery; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.home_gallery (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    project_id bigint NOT NULL
);


ALTER TABLE public.home_gallery OWNER TO maxcreative;

--
-- Name: home_gallery_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.home_gallery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_gallery_id_seq OWNER TO maxcreative;

--
-- Name: home_gallery_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.home_gallery_id_seq OWNED BY public.home_gallery.id;


--
-- Name: home_general; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.home_general (
    id bigint NOT NULL,
    logo character varying(100) NOT NULL,
    copyright character varying(255) NOT NULL,
    powered_by_logo character varying(100) NOT NULL,
    powered_by_url character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    map_embed character varying(1000) NOT NULL,
    map_url character varying(1000) NOT NULL,
    our_mission text NOT NULL,
    deyerlerimiz text NOT NULL,
    korporativ_medeniyyet text NOT NULL,
    sirketimiz text NOT NULL,
    favicon character varying(100) NOT NULL,
    meta_description character varying(255) NOT NULL,
    meta_keywords character varying(255) NOT NULL,
    meta_title character varying(255) NOT NULL,
    logo_white character varying(100) NOT NULL,
    deyerlerimiz_title_text character varying(255) NOT NULL,
    korporativ_medeniyyet_title_text character varying(255) NOT NULL,
    our_mission_title_text character varying(255) NOT NULL,
    sirketimiz_title_text character varying(255) NOT NULL,
    address_az character varying(255),
    address_en character varying(255),
    address_ru character varying(255),
    sirketimiz_az text,
    sirketimiz_en text,
    sirketimiz_ru text,
    copyright_az character varying(255),
    copyright_en character varying(255),
    copyright_ru character varying(255),
    deyerlerimiz_az text,
    deyerlerimiz_en text,
    deyerlerimiz_ru text,
    deyerlerimiz_title_text_az character varying(255),
    deyerlerimiz_title_text_en character varying(255),
    deyerlerimiz_title_text_ru character varying(255),
    korporativ_medeniyyet_az text,
    korporativ_medeniyyet_en text,
    korporativ_medeniyyet_ru text,
    korporativ_medeniyyet_title_text_az character varying(255),
    korporativ_medeniyyet_title_text_en character varying(255),
    korporativ_medeniyyet_title_text_ru character varying(255),
    our_mission_az text,
    our_mission_en text,
    our_mission_ru text,
    our_mission_title_text_az character varying(255),
    our_mission_title_text_en character varying(255),
    our_mission_title_text_ru character varying(255),
    sirketimiz_title_text_az character varying(255),
    sirketimiz_title_text_en character varying(255),
    sirketimiz_title_text_ru character varying(255)
);


ALTER TABLE public.home_general OWNER TO maxcreative;

--
-- Name: home_general_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.home_general_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_general_id_seq OWNER TO maxcreative;

--
-- Name: home_general_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.home_general_id_seq OWNED BY public.home_general.id;


--
-- Name: home_ofisunvanlar; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.home_ofisunvanlar (
    id bigint NOT NULL,
    link character varying(256) NOT NULL,
    address character varying(256) NOT NULL,
    sort integer NOT NULL,
    address_az character varying(256),
    address_en character varying(256),
    address_ru character varying(256)
);


ALTER TABLE public.home_ofisunvanlar OWNER TO maxcreative;

--
-- Name: home_ofisunvanlar_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.home_ofisunvanlar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_ofisunvanlar_id_seq OWNER TO maxcreative;

--
-- Name: home_ofisunvanlar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.home_ofisunvanlar_id_seq OWNED BY public.home_ofisunvanlar.id;


--
-- Name: home_partner; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.home_partner (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.home_partner OWNER TO maxcreative;

--
-- Name: home_partner_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.home_partner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_partner_id_seq OWNER TO maxcreative;

--
-- Name: home_partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.home_partner_id_seq OWNED BY public.home_partner.id;


--
-- Name: home_project; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.home_project (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    image character varying(100) NOT NULL,
    subtitle character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    veziyyeti character varying(255) NOT NULL,
    tip character varying(255) NOT NULL,
    sahe character varying(255) NOT NULL,
    muddet character varying(255) NOT NULL,
    yer character varying(255) NOT NULL,
    musteri character varying(255) NOT NULL,
    product_category_id bigint,
    description_az character varying(255),
    description_en character varying(255),
    description_ru character varying(255),
    muddet_az character varying(255),
    muddet_en character varying(255),
    muddet_ru character varying(255),
    musteri_az character varying(255),
    musteri_en character varying(255),
    musteri_ru character varying(255),
    sahe_az character varying(255),
    sahe_en character varying(255),
    sahe_ru character varying(255),
    subtitle_az character varying(255),
    subtitle_en character varying(255),
    subtitle_ru character varying(255),
    tip_az character varying(255),
    tip_en character varying(255),
    tip_ru character varying(255),
    title_az character varying(255),
    title_en character varying(255),
    title_ru character varying(255),
    veziyyeti_az character varying(255),
    veziyyeti_en character varying(255),
    veziyyeti_ru character varying(255),
    yer_az character varying(255),
    yer_en character varying(255),
    yer_ru character varying(255)
);


ALTER TABLE public.home_project OWNER TO maxcreative;

--
-- Name: home_project_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.home_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_project_id_seq OWNER TO maxcreative;

--
-- Name: home_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.home_project_id_seq OWNED BY public.home_project.id;


--
-- Name: home_service; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.home_service (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    image character varying(100) NOT NULL,
    description character varying(255) NOT NULL,
    description_az character varying(255),
    description_en character varying(255),
    description_ru character varying(255),
    title_az character varying(255),
    title_en character varying(255),
    title_ru character varying(255)
);


ALTER TABLE public.home_service OWNER TO maxcreative;

--
-- Name: home_service_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.home_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_service_id_seq OWNER TO maxcreative;

--
-- Name: home_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.home_service_id_seq OWNED BY public.home_service.id;


--
-- Name: home_social; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.home_social (
    id bigint NOT NULL,
    icon character varying(100) NOT NULL,
    url character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    icon_font_tag character varying(255) NOT NULL
);


ALTER TABLE public.home_social OWNER TO maxcreative;

--
-- Name: home_social_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.home_social_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_social_id_seq OWNER TO maxcreative;

--
-- Name: home_social_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.home_social_id_seq OWNED BY public.home_social.id;


--
-- Name: home_team; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.home_team (
    id bigint NOT NULL,
    full_name character varying(255) NOT NULL,
    image character varying(100),
    "position" character varying(255) NOT NULL,
    category_id bigint NOT NULL,
    position_az character varying(255),
    position_en character varying(255),
    position_ru character varying(255)
);


ALTER TABLE public.home_team OWNER TO maxcreative;

--
-- Name: home_team_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.home_team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_team_id_seq OWNER TO maxcreative;

--
-- Name: home_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.home_team_id_seq OWNED BY public.home_team.id;


--
-- Name: home_teamcategory; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.home_teamcategory (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    tag character varying(255) NOT NULL,
    name_az character varying(255),
    name_en character varying(255),
    name_ru character varying(255)
);


ALTER TABLE public.home_teamcategory OWNER TO maxcreative;

--
-- Name: home_teamcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.home_teamcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.home_teamcategory_id_seq OWNER TO maxcreative;

--
-- Name: home_teamcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.home_teamcategory_id_seq OWNED BY public.home_teamcategory.id;


--
-- Name: offer_offer; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.offer_offer (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    excerpt text NOT NULL,
    main_image character varying(100) NOT NULL,
    description text NOT NULL,
    description_az text,
    description_en text,
    description_ru text,
    excerpt_az text,
    excerpt_en text,
    excerpt_ru text,
    name_az character varying(256),
    name_en character varying(256),
    name_ru character varying(256)
);


ALTER TABLE public.offer_offer OWNER TO maxcreative;

--
-- Name: offer_offer_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.offer_offer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.offer_offer_id_seq OWNER TO maxcreative;

--
-- Name: offer_offer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.offer_offer_id_seq OWNED BY public.offer_offer.id;


--
-- Name: offer_offerimage; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.offer_offerimage (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    offer_id bigint NOT NULL
);


ALTER TABLE public.offer_offerimage OWNER TO maxcreative;

--
-- Name: offer_offerimage_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.offer_offerimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.offer_offerimage_id_seq OWNER TO maxcreative;

--
-- Name: offer_offerimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.offer_offerimage_id_seq OWNED BY public.offer_offerimage.id;


--
-- Name: offer_offerspage; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.offer_offerspage (
    id bigint NOT NULL,
    page_header character varying(256) NOT NULL,
    page_header_text text NOT NULL,
    page_header_az character varying(256),
    page_header_en character varying(256),
    page_header_ru character varying(256),
    page_header_text_az text,
    page_header_text_en text,
    page_header_text_ru text
);


ALTER TABLE public.offer_offerspage OWNER TO maxcreative;

--
-- Name: offer_offerspage_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.offer_offerspage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.offer_offerspage_id_seq OWNER TO maxcreative;

--
-- Name: offer_offerspage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.offer_offerspage_id_seq OWNED BY public.offer_offerspage.id;


--
-- Name: product_attribute; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.product_attribute (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    name_az character varying(256),
    name_en character varying(256),
    name_ru character varying(256)
);


ALTER TABLE public.product_attribute OWNER TO maxcreative;

--
-- Name: product_attribute_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.product_attribute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_attribute_id_seq OWNER TO maxcreative;

--
-- Name: product_attribute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.product_attribute_id_seq OWNED BY public.product_attribute.id;


--
-- Name: product_attributevalue; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.product_attributevalue (
    id bigint NOT NULL,
    value character varying(256) NOT NULL,
    attribute_id bigint NOT NULL,
    model_id bigint NOT NULL,
    product_id bigint NOT NULL,
    value_az character varying(256),
    value_en character varying(256),
    value_ru character varying(256)
);


ALTER TABLE public.product_attributevalue OWNER TO maxcreative;

--
-- Name: product_attributevalue_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.product_attributevalue_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_attributevalue_id_seq OWNER TO maxcreative;

--
-- Name: product_attributevalue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.product_attributevalue_id_seq OWNED BY public.product_attributevalue.id;


--
-- Name: product_categoriespage; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.product_categoriespage (
    id bigint NOT NULL,
    page_header character varying(256) NOT NULL,
    page_header_text text NOT NULL,
    page_header_az character varying(256),
    page_header_en character varying(256),
    page_header_ru character varying(256),
    page_header_text_az text,
    page_header_text_en text,
    page_header_text_ru text
);


ALTER TABLE public.product_categoriespage OWNER TO maxcreative;

--
-- Name: product_category; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.product_category (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    excerpt text NOT NULL,
    main_image character varying(100) NOT NULL,
    excerpt_az text,
    excerpt_en text,
    excerpt_ru text,
    name_az character varying(256),
    name_en character varying(256),
    name_ru character varying(256)
);


ALTER TABLE public.product_category OWNER TO maxcreative;

--
-- Name: product_model; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.product_model (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    file character varying(100),
    product_id bigint NOT NULL,
    name_az character varying(256),
    name_en character varying(256),
    name_ru character varying(256)
);


ALTER TABLE public.product_model OWNER TO maxcreative;

--
-- Name: product_model_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.product_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_model_id_seq OWNER TO maxcreative;

--
-- Name: product_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.product_model_id_seq OWNED BY public.product_model.id;


--
-- Name: product_product; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.product_product (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    excerpt text NOT NULL,
    main_image character varying(100) NOT NULL,
    description text NOT NULL,
    category_id bigint NOT NULL,
    dark_section_text text NOT NULL,
    dark_section_title character varying(256) NOT NULL,
    sub_models_text text NOT NULL,
    sub_models_title character varying(256) NOT NULL,
    dark_section_text_az text,
    dark_section_text_en text,
    dark_section_text_ru text,
    dark_section_title_az character varying(256),
    dark_section_title_en character varying(256),
    dark_section_title_ru character varying(256),
    description_az text,
    description_en text,
    description_ru text,
    excerpt_az text,
    excerpt_en text,
    excerpt_ru text,
    name_az character varying(256),
    name_en character varying(256),
    name_ru character varying(256),
    sub_models_text_az text,
    sub_models_text_en text,
    sub_models_text_ru text,
    sub_models_title_az character varying(256),
    sub_models_title_en character varying(256),
    sub_models_title_ru character varying(256)
);


ALTER TABLE public.product_product OWNER TO maxcreative;

--
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_product_id_seq OWNER TO maxcreative;

--
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product_category.id;


--
-- Name: product_product_id_seq1; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.product_product_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_product_id_seq1 OWNER TO maxcreative;

--
-- Name: product_product_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.product_product_id_seq1 OWNED BY public.product_product.id;


--
-- Name: product_productsimage; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.product_productsimage (
    id bigint NOT NULL,
    image character varying(100) NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE public.product_productsimage OWNER TO maxcreative;

--
-- Name: product_productsimage_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.product_productsimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_productsimage_id_seq OWNER TO maxcreative;

--
-- Name: product_productsimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.product_productsimage_id_seq OWNED BY public.product_productsimage.id;


--
-- Name: product_productspage_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.product_productspage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_productspage_id_seq OWNER TO maxcreative;

--
-- Name: product_productspage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.product_productspage_id_seq OWNED BY public.product_categoriespage.id;


--
-- Name: statik_about; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.statik_about (
    id bigint NOT NULL,
    main_title character varying(255) NOT NULL,
    main_description character varying(255) NOT NULL,
    main_image character varying(100) NOT NULL,
    missiya_image character varying(100) NOT NULL,
    korporativ_medeniyyet_image character varying(100) NOT NULL,
    main_description_az character varying(255),
    main_description_en character varying(255),
    main_description_ru character varying(255),
    main_title_az character varying(255),
    main_title_en character varying(255),
    main_title_ru character varying(255)
);


ALTER TABLE public.statik_about OWNER TO maxcreative;

--
-- Name: statik_about_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.statik_about_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statik_about_id_seq OWNER TO maxcreative;

--
-- Name: statik_about_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.statik_about_id_seq OWNED BY public.statik_about.id;


--
-- Name: statik_contact; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.statik_contact (
    id bigint NOT NULL,
    main_title character varying(255) NOT NULL,
    map_button_text character varying(255) NOT NULL,
    success_text character varying(255) NOT NULL,
    main_title_az character varying(255),
    main_title_en character varying(255),
    main_title_ru character varying(255),
    map_button_text_az character varying(255),
    map_button_text_en character varying(255),
    map_button_text_ru character varying(255),
    success_text_az character varying(255),
    success_text_en character varying(255),
    success_text_ru character varying(255)
);


ALTER TABLE public.statik_contact OWNER TO maxcreative;

--
-- Name: statik_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.statik_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statik_contact_id_seq OWNER TO maxcreative;

--
-- Name: statik_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.statik_contact_id_seq OWNED BY public.statik_contact.id;


--
-- Name: statik_home; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.statik_home (
    id bigint NOT NULL,
    cover_title character varying(255) NOT NULL,
    cover_description character varying(255) NOT NULL,
    cover_image character varying(100) NOT NULL,
    niye_biz_title character varying(255) NOT NULL,
    niye_biz_description character varying(255) NOT NULL,
    mehsullar_title character varying(255) NOT NULL,
    mehsullar_description character varying(255) NOT NULL,
    mehsullar_image character varying(100) NOT NULL,
    layiheler_title character varying(255) NOT NULL,
    layiheler_description character varying(255) NOT NULL,
    layiheler_image character varying(100) NOT NULL,
    musteriler_title character varying(255) NOT NULL,
    musteriler_description character varying(255) NOT NULL,
    musteriler_image character varying(100) NOT NULL,
    main_video_back character varying(100),
    cover_description_az character varying(255),
    cover_description_en character varying(255),
    cover_description_ru character varying(255),
    cover_title_az character varying(255),
    cover_title_en character varying(255),
    cover_title_ru character varying(255),
    layiheler_description_az character varying(255),
    layiheler_description_en character varying(255),
    layiheler_description_ru character varying(255),
    layiheler_title_az character varying(255),
    layiheler_title_en character varying(255),
    layiheler_title_ru character varying(255),
    mehsullar_description_az character varying(255),
    mehsullar_description_en character varying(255),
    mehsullar_description_ru character varying(255),
    mehsullar_title_az character varying(255),
    mehsullar_title_en character varying(255),
    mehsullar_title_ru character varying(255),
    musteriler_description_az character varying(255),
    musteriler_description_en character varying(255),
    musteriler_description_ru character varying(255),
    musteriler_title_az character varying(255),
    musteriler_title_en character varying(255),
    musteriler_title_ru character varying(255),
    niye_biz_description_az character varying(255),
    niye_biz_description_en character varying(255),
    niye_biz_description_ru character varying(255),
    niye_biz_title_az character varying(255),
    niye_biz_title_en character varying(255),
    niye_biz_title_ru character varying(255)
);


ALTER TABLE public.statik_home OWNER TO maxcreative;

--
-- Name: statik_home_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.statik_home_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statik_home_id_seq OWNER TO maxcreative;

--
-- Name: statik_home_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.statik_home_id_seq OWNED BY public.statik_home.id;


--
-- Name: statik_partners; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.statik_partners (
    id bigint NOT NULL,
    main_title character varying(255) NOT NULL,
    main_description character varying(255) NOT NULL,
    main_image character varying(100) NOT NULL,
    main_description_az character varying(255),
    main_description_en character varying(255),
    main_description_ru character varying(255),
    main_title_az character varying(255),
    main_title_en character varying(255),
    main_title_ru character varying(255)
);


ALTER TABLE public.statik_partners OWNER TO maxcreative;

--
-- Name: statik_partners_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.statik_partners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statik_partners_id_seq OWNER TO maxcreative;

--
-- Name: statik_partners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.statik_partners_id_seq OWNED BY public.statik_partners.id;


--
-- Name: statik_projectstatik; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.statik_projectstatik (
    id bigint NOT NULL,
    main_title character varying(255) NOT NULL,
    main_description character varying(255) NOT NULL,
    main_description_az character varying(255),
    main_description_en character varying(255),
    main_description_ru character varying(255),
    main_title_az character varying(255),
    main_title_en character varying(255),
    main_title_ru character varying(255)
);


ALTER TABLE public.statik_projectstatik OWNER TO maxcreative;

--
-- Name: statik_project_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.statik_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statik_project_id_seq OWNER TO maxcreative;

--
-- Name: statik_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.statik_project_id_seq OWNED BY public.statik_projectstatik.id;


--
-- Name: statik_servicestatik; Type: TABLE; Schema: public; Owner: maxcreative
--

CREATE TABLE public.statik_servicestatik (
    id bigint NOT NULL,
    main_title character varying(255) NOT NULL,
    main_description character varying(255) NOT NULL,
    main_description_az character varying(255),
    main_description_en character varying(255),
    main_description_ru character varying(255),
    main_title_az character varying(255),
    main_title_en character varying(255),
    main_title_ru character varying(255)
);


ALTER TABLE public.statik_servicestatik OWNER TO maxcreative;

--
-- Name: statik_service_id_seq; Type: SEQUENCE; Schema: public; Owner: maxcreative
--

CREATE SEQUENCE public.statik_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statik_service_id_seq OWNER TO maxcreative;

--
-- Name: statik_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: maxcreative
--

ALTER SEQUENCE public.statik_service_id_seq OWNED BY public.statik_servicestatik.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_summernote_attachment id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.django_summernote_attachment ALTER COLUMN id SET DEFAULT nextval('public.django_summernote_attachment_id_seq'::regclass);


--
-- Name: home_client id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_client ALTER COLUMN id SET DEFAULT nextval('public.home_client_id_seq'::regclass);


--
-- Name: home_contact id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_contact ALTER COLUMN id SET DEFAULT nextval('public.home_contact_id_seq'::regclass);


--
-- Name: home_gallery id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_gallery ALTER COLUMN id SET DEFAULT nextval('public.home_gallery_id_seq'::regclass);


--
-- Name: home_general id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_general ALTER COLUMN id SET DEFAULT nextval('public.home_general_id_seq'::regclass);


--
-- Name: home_ofisunvanlar id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_ofisunvanlar ALTER COLUMN id SET DEFAULT nextval('public.home_ofisunvanlar_id_seq'::regclass);


--
-- Name: home_partner id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_partner ALTER COLUMN id SET DEFAULT nextval('public.home_partner_id_seq'::regclass);


--
-- Name: home_project id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_project ALTER COLUMN id SET DEFAULT nextval('public.home_project_id_seq'::regclass);


--
-- Name: home_service id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_service ALTER COLUMN id SET DEFAULT nextval('public.home_service_id_seq'::regclass);


--
-- Name: home_social id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_social ALTER COLUMN id SET DEFAULT nextval('public.home_social_id_seq'::regclass);


--
-- Name: home_team id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_team ALTER COLUMN id SET DEFAULT nextval('public.home_team_id_seq'::regclass);


--
-- Name: home_teamcategory id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_teamcategory ALTER COLUMN id SET DEFAULT nextval('public.home_teamcategory_id_seq'::regclass);


--
-- Name: offer_offer id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.offer_offer ALTER COLUMN id SET DEFAULT nextval('public.offer_offer_id_seq'::regclass);


--
-- Name: offer_offerimage id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.offer_offerimage ALTER COLUMN id SET DEFAULT nextval('public.offer_offerimage_id_seq'::regclass);


--
-- Name: offer_offerspage id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.offer_offerspage ALTER COLUMN id SET DEFAULT nextval('public.offer_offerspage_id_seq'::regclass);


--
-- Name: product_attribute id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_attribute ALTER COLUMN id SET DEFAULT nextval('public.product_attribute_id_seq'::regclass);


--
-- Name: product_attributevalue id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_attributevalue ALTER COLUMN id SET DEFAULT nextval('public.product_attributevalue_id_seq'::regclass);


--
-- Name: product_categoriespage id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_categoriespage ALTER COLUMN id SET DEFAULT nextval('public.product_productspage_id_seq'::regclass);


--
-- Name: product_category id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_category ALTER COLUMN id SET DEFAULT nextval('public.product_product_id_seq'::regclass);


--
-- Name: product_model id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_model ALTER COLUMN id SET DEFAULT nextval('public.product_model_id_seq'::regclass);


--
-- Name: product_product id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_product ALTER COLUMN id SET DEFAULT nextval('public.product_product_id_seq1'::regclass);


--
-- Name: product_productsimage id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_productsimage ALTER COLUMN id SET DEFAULT nextval('public.product_productsimage_id_seq'::regclass);


--
-- Name: statik_about id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.statik_about ALTER COLUMN id SET DEFAULT nextval('public.statik_about_id_seq'::regclass);


--
-- Name: statik_contact id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.statik_contact ALTER COLUMN id SET DEFAULT nextval('public.statik_contact_id_seq'::regclass);


--
-- Name: statik_home id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.statik_home ALTER COLUMN id SET DEFAULT nextval('public.statik_home_id_seq'::regclass);


--
-- Name: statik_partners id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.statik_partners ALTER COLUMN id SET DEFAULT nextval('public.statik_partners_id_seq'::regclass);


--
-- Name: statik_projectstatik id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.statik_projectstatik ALTER COLUMN id SET DEFAULT nextval('public.statik_project_id_seq'::regclass);


--
-- Name: statik_servicestatik id; Type: DEFAULT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.statik_servicestatik ALTER COLUMN id SET DEFAULT nextval('public.statik_service_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: maxcreative
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
25	Can add Ümumi məlumatlar	7	add_general
26	Can change Ümumi məlumatlar	7	change_general
27	Can delete Ümumi məlumatlar	7	delete_general
28	Can view Ümumi məlumatlar	7	view_general
29	Can add Müştərilər	8	add_client
30	Can change Müştərilər	8	change_client
31	Can delete Müştərilər	8	delete_client
32	Can view Müştərilər	8	view_client
33	Can add Yazılan Mesajlar	9	add_contact
34	Can change Yazılan Mesajlar	9	change_contact
35	Can delete Yazılan Mesajlar	9	delete_contact
36	Can view Yazılan Mesajlar	9	view_contact
37	Can add Tərəfdaşlar	10	add_partner
38	Can change Tərəfdaşlar	10	change_partner
39	Can delete Tərəfdaşlar	10	delete_partner
40	Can view Tərəfdaşlar	10	view_partner
41	Can add Layihələr	11	add_project
42	Can change Layihələr	11	change_project
43	Can delete Layihələr	11	delete_project
44	Can view Layihələr	11	view_project
45	Can add Xidmətlər	12	add_service
46	Can change Xidmətlər	12	change_service
47	Can delete Xidmətlər	12	delete_service
48	Can view Xidmətlər	12	view_service
49	Can add Sosial Media Linkləri	13	add_social
50	Can change Sosial Media Linkləri	13	change_social
51	Can delete Sosial Media Linkləri	13	delete_social
52	Can view Sosial Media Linkləri	13	view_social
53	Can add Komanda	14	add_team
54	Can change Komanda	14	change_team
55	Can delete Komanda	14	delete_team
56	Can view Komanda	14	view_team
57	Can add Komanda Kateqoriyalar	15	add_teamcategory
58	Can change Komanda Kateqoriyalar	15	change_teamcategory
59	Can delete Komanda Kateqoriyalar	15	delete_teamcategory
60	Can view Komanda Kateqoriyalar	15	view_teamcategory
61	Can add gallery	16	add_gallery
62	Can change gallery	16	change_gallery
63	Can delete gallery	16	delete_gallery
64	Can view gallery	16	view_gallery
65	Can add Haqqında	17	add_about
66	Can change Haqqında	17	change_about
67	Can delete Haqqında	17	delete_about
68	Can view Haqqında	17	view_about
69	Can add Əlaqə Səhifəsi	18	add_contact
70	Can change Əlaqə Səhifəsi	18	change_contact
71	Can delete Əlaqə Səhifəsi	18	delete_contact
72	Can view Əlaqə Səhifəsi	18	view_contact
73	Can add Ana Səhifə	19	add_home
74	Can change Ana Səhifə	19	change_home
75	Can delete Ana Səhifə	19	delete_home
76	Can view Ana Səhifə	19	view_home
77	Can add Tərəfdaşlar	20	add_partners
78	Can change Tərəfdaşlar	20	change_partners
79	Can delete Tərəfdaşlar	20	delete_partners
80	Can view Tərəfdaşlar	20	view_partners
81	Can add Xidmətlər	21	add_servicestatik
82	Can change Xidmətlər	21	change_servicestatik
83	Can delete Xidmətlər	21	delete_servicestatik
84	Can view Xidmətlər	21	view_servicestatik
85	Can add Layihələr	22	add_projectstatik
86	Can change Layihələr	22	change_projectstatik
87	Can delete Layihələr	22	delete_projectstatik
88	Can view Layihələr	22	view_projectstatik
89	Can add attachment	23	add_attachment
90	Can change attachment	23	change_attachment
91	Can delete attachment	23	delete_attachment
92	Can view attachment	23	view_attachment
93	Can add product	24	add_product
94	Can change product	24	change_product
95	Can delete product	24	delete_product
96	Can view product	24	view_product
97	Can add product image	25	add_productimage
98	Can change product image	25	change_productimage
99	Can delete product image	25	delete_productimage
100	Can view product image	25	view_productimage
101	Can add products page	26	add_productspage
102	Can change products page	26	change_productspage
103	Can delete products page	26	delete_productspage
104	Can view products page	26	view_productspage
105	Can add offer	27	add_offer
106	Can change offer	27	change_offer
107	Can delete offer	27	delete_offer
108	Can view offer	27	view_offer
109	Can add offers page	28	add_offerspage
110	Can change offers page	28	change_offerspage
111	Can delete offers page	28	delete_offerspage
112	Can view offers page	28	view_offerspage
113	Can add offer image	29	add_offerimage
114	Can change offer image	29	change_offerimage
115	Can delete offer image	29	delete_offerimage
116	Can view offer image	29	view_offerimage
117	Can add categories page	26	add_categoriespage
118	Can change categories page	26	change_categoriespage
119	Can delete categories page	26	delete_categoriespage
120	Can view categories page	26	view_categoriespage
121	Can add category	24	add_category
122	Can change category	24	change_category
123	Can delete category	24	delete_category
124	Can view category	24	view_category
125	Can add category image	25	add_categoryimage
126	Can change category image	25	change_categoryimage
127	Can delete category image	25	delete_categoryimage
128	Can view category image	25	view_categoryimage
129	Can add product	30	add_product
130	Can change product	30	change_product
131	Can delete product	30	delete_product
132	Can view product	30	view_product
133	Can add products image	31	add_productsimage
134	Can change products image	31	change_productsimage
135	Can delete products image	31	delete_productsimage
136	Can view products image	31	view_productsimage
137	Can add model	32	add_model
138	Can change model	32	change_model
139	Can delete model	32	delete_model
140	Can view model	32	view_model
141	Can add attribute value	33	add_attributevalue
142	Can change attribute value	33	change_attributevalue
143	Can delete attribute value	33	delete_attributevalue
144	Can view attribute value	33	view_attributevalue
145	Can add attribute	34	add_attribute
146	Can change attribute	34	change_attribute
147	Can delete attribute	34	delete_attribute
148	Can view attribute	34	view_attribute
149	Can add ofis unvanlar	35	add_ofisunvanlar
150	Can change ofis unvanlar	35	change_ofisunvanlar
151	Can delete ofis unvanlar	35	delete_ofisunvanlar
152	Can view ofis unvanlar	35	view_ofisunvanlar
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$IiMwqMJUBlAzjBvQ1KHlIl$VxT2992JLjVsWBanCsZigt0G7pfVR3nYiOlEPdS+AUo=	2023-10-07 09:46:58.152797+00	t	alvinseyidov				t	t	2023-09-20 19:33:39.149774+00
3	pbkdf2_sha256$260000$JTajOswzzpOm6NFidrAD1V$3jw0fWh8t5/NmSVus9CQgxpfAPJMA/gADKUGcvYZWMk=	\N	f	Gulnara				f	t	2024-01-23 06:04:36+00
2	pbkdf2_sha256$260000$RDPW6webLz5uiDtQ19qAfx$fptcyKUxUr5EDQLZYsaeOg7usdPEsTk/OLBMn/6wnXY=	2024-08-31 07:06:18.394966+00	t	maxcreative				t	t	2023-09-20 19:33:54.496381+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2023-09-21 10:55:25.98311+00	1	Ümumi məlumatlar	1	[{"added": {}}]	7	1
2	2023-09-21 10:58:05.307271+00	1	Ana səhifə statik tekstlər və şəkillər	1	[{"added": {}}]	19	1
3	2023-09-21 10:59:08.469993+00	1	Ana səhifə statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Cover image"]}}]	19	1
4	2023-09-21 10:59:28.008089+00	1	Ana səhifə statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Cover title", "Cover description"]}}]	19	1
5	2023-09-21 11:00:56.979909+00	1	Ana səhifə statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Niye biz description", "Mehsullar image", "Layiheler image"]}}]	19	1
6	2023-09-21 11:01:49.949195+00	1	Ana səhifə statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Layiheler title"]}}]	19	1
7	2023-09-21 11:02:56.851812+00	1	Facebook	1	[{"added": {}}]	13	1
8	2023-09-21 11:03:12.006005+00	2	instagram	1	[{"added": {}}]	13	1
9	2023-09-21 11:05:08.708991+00	1	Haqqında statik tekstlər və şəkillər	1	[{"added": {}}]	17	1
10	2023-09-21 11:27:37.704214+00	1	Əsas	1	[{"added": {}}]	15	1
11	2023-09-21 11:28:46.717448+00	2	Böyük heyət	1	[{"added": {}}]	15	1
12	2023-09-21 11:29:45.683862+00	1	Jesus Gerlach	1	[{"added": {}}]	14	1
13	2023-09-21 11:30:02.369706+00	2	Douglas Luettgen	1	[{"added": {}}]	14	1
14	2023-09-21 11:30:23.148643+00	3	Bob Weissnat	1	[{"added": {}}]	14	1
15	2023-09-21 12:07:35.378288+00	1	Layihələr statik tekstlər	1	[{"added": {}}]	22	1
16	2023-09-21 12:08:25.554778+00	1	Tərəfdaşlar statik tekstlər və şəkillər	1	[{"added": {}}]	20	1
17	2023-09-21 12:13:15.290767+00	1	Lorem ipsum doler sit amet	1	[{"added": {}}]	11	1
18	2023-09-21 12:13:17.850596+00	2	Lorem ipsum doler sit amet	1	[{"added": {}}]	11	1
19	2023-09-21 12:13:20.253676+00	3	Lorem ipsum doler sit amet	1	[{"added": {}}]	11	1
20	2023-09-21 12:15:57.690023+00	3	Lorem ipsum doler sit amet	2	[{"added": {"name": "gallery", "object": "Gallery object (1)"}}, {"added": {"name": "gallery", "object": "Gallery object (2)"}}, {"added": {"name": "gallery", "object": "Gallery object (3)"}}, {"added": {"name": "gallery", "object": "Gallery object (4)"}}]	11	1
21	2023-09-21 12:16:15.449649+00	2	Lorem ipsum doler sit amet	2	[{"added": {"name": "gallery", "object": "Gallery object (5)"}}, {"added": {"name": "gallery", "object": "Gallery object (6)"}}, {"added": {"name": "gallery", "object": "Gallery object (7)"}}, {"added": {"name": "gallery", "object": "Gallery object (8)"}}]	11	1
22	2023-09-21 12:16:37.520386+00	1	Lorem ipsum doler sit amet	2	[{"added": {"name": "gallery", "object": "Gallery object (9)"}}, {"added": {"name": "gallery", "object": "Gallery object (10)"}}, {"added": {"name": "gallery", "object": "Gallery object (11)"}}, {"added": {"name": "gallery", "object": "Gallery object (12)"}}]	11	1
23	2023-09-21 12:17:59.961088+00	1	Əlaqə Səhifəsi statik tekstlər	1	[{"added": {}}]	18	1
24	2023-09-21 12:18:44.951617+00	1	Əlaqə Səhifəsi statik tekstlər	2	[{"changed": {"fields": ["Success text"]}}]	18	1
25	2023-09-21 12:22:29.803232+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Map embed"]}}]	7	1
26	2023-09-21 12:32:16.931515+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Map embed"]}}]	7	1
27	2023-09-21 12:33:02.547213+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Map embed"]}}]	7	1
28	2023-09-21 12:33:28.529621+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Map embed"]}}]	7	1
29	2023-09-21 12:34:05.919681+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Map embed"]}}]	7	1
30	2023-09-21 12:36:49.977427+00	1	Archi	1	[{"added": {}}]	8	1
31	2023-09-21 12:37:00.013783+00	2	Urban	1	[{"added": {}}]	8	1
32	2023-09-21 12:37:13.925931+00	3	Mcdonalds	1	[{"added": {}}]	8	1
33	2023-09-21 12:37:32.603435+00	4	Binadari	1	[{"added": {}}]	8	1
34	2023-09-21 12:37:42.974805+00	5	Kartveli	1	[{"added": {}}]	8	1
35	2023-09-21 12:37:53.8325+00	6	Belastorti	1	[{"added": {}}]	8	1
36	2023-09-21 12:38:27.82117+00	1	Geosteel	1	[{"added": {}}]	10	1
37	2023-09-21 12:38:37.303581+00	2	Wurth	1	[{"added": {}}]	10	1
38	2023-09-21 12:38:47.944876+00	3	Caparol	1	[{"added": {}}]	10	1
39	2023-09-21 12:38:59.240098+00	4	Grc	1	[{"added": {}}]	10	1
40	2023-09-21 12:39:09.417279+00	5	Steelhouse	1	[{"added": {}}]	10	1
41	2023-09-21 12:45:09.171381+00	1	Təkliflər səhifəsi	1	[{"added": {}}]	28	1
42	2023-09-21 12:45:44.940921+00	1	Məhsullar səhifəsi	1	[{"added": {}}]	26	1
43	2023-09-21 12:48:01.766771+00	1	Texniki Xidmət	1	[{"added": {}}, {"added": {"name": "offer image", "object": "1"}}, {"added": {"name": "offer image", "object": "2"}}, {"added": {"name": "offer image", "object": "3"}}, {"added": {"name": "offer image", "object": "4"}}]	27	1
44	2023-09-21 12:48:15.802457+00	2	Ehtiyat Hissələri	1	[{"added": {}}, {"added": {"name": "offer image", "object": "5"}}, {"added": {"name": "offer image", "object": "6"}}, {"added": {"name": "offer image", "object": "7"}}, {"added": {"name": "offer image", "object": "8"}}]	27	1
45	2023-09-21 12:48:33.679409+00	3	Təmir və Yeniləmə	1	[{"added": {}}, {"added": {"name": "offer image", "object": "9"}}, {"added": {"name": "offer image", "object": "10"}}, {"added": {"name": "offer image", "object": "11"}}, {"added": {"name": "offer image", "object": "12"}}]	27	1
46	2023-09-21 20:06:21.597618+00	1	Lift	1	[{"added": {}}]	24	1
47	2023-09-21 20:06:40.249484+00	2	Eskalator	1	[{"added": {}}]	24	1
48	2023-09-21 20:07:10.612734+00	3	Elektrikli Moped	1	[{"added": {}}]	24	1
49	2023-09-21 20:07:48.786491+00	4	Avtomatlaşdırılmış Qapılar	1	[{"added": {}}]	24	1
50	2023-09-21 20:08:11.328643+00	5	Paking və Turniket sistemləri	1	[{"added": {}}]	24	1
51	2023-09-21 20:40:03.411056+00	1	Lorem ipsum doler sit amet	2	[{"changed": {"fields": ["Product category"]}}]	11	1
52	2023-09-21 20:40:08.686121+00	3	Lorem ipsum doler sit amet	2	[{"changed": {"fields": ["Product category"]}}]	11	1
53	2023-09-21 20:40:13.84104+00	2	Lorem ipsum doler sit amet	2	[{"changed": {"fields": ["Product category"]}}]	11	1
54	2023-09-21 20:41:33.533117+00	1	Sərnişin Lifti	1	[{"added": {}}]	30	1
55	2023-09-21 20:41:58.605039+00	2	Yük Lifti	1	[{"added": {}}]	30	1
56	2023-09-21 20:42:18.796024+00	3	Panoramik Lifti	1	[{"added": {}}]	30	1
57	2023-09-22 06:08:36.601325+00	1	MAX TRAVEL	1	[{"added": {}}]	34	1
58	2023-09-22 06:08:57.228991+00	2	MAX LOAD	1	[{"added": {}}]	34	1
59	2023-09-22 06:09:02.752714+00	3	MAX SPEED	1	[{"added": {}}]	34	1
60	2023-09-22 06:10:18.340078+00	1	Model 1	1	[{"added": {}}]	32	1
61	2023-09-22 06:10:30.071578+00	2	Model 2	1	[{"added": {}}]	32	1
62	2023-09-22 06:10:56.660032+00	3	Model 3	1	[{"added": {}}]	32	1
63	2023-09-22 06:11:47.388021+00	1	MAX TRAVEL - Sərnişin Lifti - 590'	1	[{"added": {}}]	33	1
64	2023-09-22 06:22:23.069095+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Map embed"]}}]	7	1
65	2023-09-22 06:44:02.256606+00	1	ul.Bukowinska 22. lok. 53 02-73 Warszawa, Poland	1	[{"added": {}}]	35	1
66	2023-09-22 06:44:13.982051+00	2	Sport Plaza, H.Aliyev 115, Baku, Azerbaijan +994 51 240 49 88	1	[{"added": {}}]	35	1
67	2023-09-22 06:44:23.216021+00	3	JV group Regus, N.Muhammad 5/5 +992 90 02 00 333	1	[{"added": {}}]	35	1
68	2023-09-22 06:44:34.451958+00	4	46 A. Kokhkhar st. Yakkasaray dist, Daşkənd, Özbəkistan	1	[{"added": {}}]	35	1
69	2023-09-22 06:54:07.351813+00	1	Ana səhifə statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Musteriler title"]}}]	19	1
70	2023-09-22 06:55:28.046742+00	1	Ana səhifə statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Musteriler title"]}}]	19	1
71	2023-09-22 07:04:10.22715+00	6	Belastorti	3		8	1
72	2023-09-22 07:04:10.520124+00	5	Kartveli	3		8	1
73	2023-09-22 07:04:10.530301+00	4	Binadari	3		8	1
74	2023-09-22 07:04:10.537379+00	3	Mcdonalds	3		8	1
75	2023-09-22 07:04:10.545623+00	2	Urban	3		8	1
76	2023-09-22 07:04:10.780439+00	1	Archi	3		8	1
77	2023-09-22 07:04:24.797614+00	7	1	1	[{"added": {}}]	8	1
78	2023-09-22 07:04:33.205081+00	8	2	1	[{"added": {}}]	8	1
79	2023-09-22 07:04:39.395244+00	9	3	1	[{"added": {}}]	8	1
80	2023-09-22 07:04:46.580633+00	10	4	1	[{"added": {}}]	8	1
81	2023-09-22 07:04:53.849166+00	11	5	1	[{"added": {}}]	8	1
82	2023-09-22 07:05:00.993651+00	12	6	1	[{"added": {}}]	8	1
83	2023-09-22 07:46:07.005731+00	5	Steelhouse	3		10	1
84	2023-09-22 07:46:07.028221+00	4	Grc	3		10	1
85	2023-09-22 07:46:07.037593+00	3	Caparol	3		10	1
86	2023-09-22 07:46:07.043707+00	2	Wurth	3		10	1
87	2023-09-22 07:46:07.074205+00	1	Geosteel	3		10	1
88	2023-09-22 07:46:16.080292+00	6	1	1	[{"added": {}}]	10	1
89	2023-09-22 07:46:23.050197+00	7	2	1	[{"added": {}}]	10	1
90	2023-09-22 07:46:29.849842+00	8	3	1	[{"added": {}}]	10	1
91	2023-09-22 07:46:36.78307+00	9	4	1	[{"added": {}}]	10	1
92	2023-09-22 07:46:42.379369+00	10	5	1	[{"added": {}}]	10	1
93	2023-09-29 06:02:12.775042+00	1	Facebook	2	[{"changed": {"fields": ["Url"]}}]	13	2
94	2023-09-29 06:05:12.614902+00	2	instagram	2	[{"changed": {"fields": ["Url"]}}]	13	2
95	2023-09-29 06:26:33.893391+00	7	vulcan industries	2	[{"changed": {"fields": ["Name", "Image"]}}]	10	2
96	2023-09-29 06:27:08.189747+00	8	metallschnieder	2	[{"changed": {"fields": ["Name", "Image"]}}]	10	2
97	2023-09-29 06:27:26.99756+00	10	kohler	2	[{"changed": {"fields": ["Name", "Image"]}}]	10	2
98	2023-09-29 06:30:34.094073+00	1	Texniki Xidmət	2	[{"changed": {"fields": ["Excerpt", "Description"]}}]	27	2
99	2023-09-29 06:32:29.885021+00	2	Ehtiyat Hissələri	2	[{"changed": {"fields": ["Excerpt", "Description"]}}]	27	2
100	2023-09-29 06:33:29.621702+00	3	Təmir və Yeniləmə	2	[{"changed": {"fields": ["Excerpt", "Description"]}}]	27	2
101	2023-09-29 06:36:05.25446+00	1	Sərnişin Lifti	2	[{"changed": {"fields": ["Excerpt", "Description"]}}]	30	2
102	2023-09-29 06:38:25.583897+00	1	Sərnişin Lifti	2	[{"added": {"name": "products image", "object": "1"}}]	30	2
103	2023-09-29 06:47:42.821802+00	1	Sərnişin Lifti	2	[{"added": {"name": "products image", "object": "2"}}, {"added": {"name": "products image", "object": "3"}}, {"added": {"name": "products image", "object": "4"}}, {"added": {"name": "products image", "object": "5"}}]	30	2
104	2023-09-29 06:51:07.40481+00	2	Yük Lifti	2	[{"changed": {"fields": ["Excerpt", "Description"]}}]	30	2
105	2023-09-29 06:53:51.908234+00	2	Yük Lifti	2	[{"added": {"name": "products image", "object": "6"}}, {"added": {"name": "products image", "object": "7"}}, {"added": {"name": "products image", "object": "8"}}]	30	2
106	2023-09-29 06:57:42.466726+00	3	Panoramik Lifti	2	[{"changed": {"fields": ["Excerpt", "Description"]}}, {"added": {"name": "products image", "object": "9"}}, {"added": {"name": "products image", "object": "10"}}, {"added": {"name": "products image", "object": "11"}}, {"added": {"name": "products image", "object": "12"}}]	30	2
107	2023-09-29 06:58:31.957253+00	3	Panoramik Lifti	2	[{"changed": {"fields": ["Excerpt", "Description"]}}, {"added": {"name": "products image", "object": "13"}}, {"added": {"name": "products image", "object": "14"}}, {"added": {"name": "products image", "object": "15"}}, {"added": {"name": "products image", "object": "16"}}]	30	2
108	2023-09-29 06:58:33.299378+00	3	Panoramik Lifti	2	[{"changed": {"fields": ["Excerpt", "Description"]}}, {"added": {"name": "products image", "object": "17"}}, {"added": {"name": "products image", "object": "18"}}, {"added": {"name": "products image", "object": "19"}}, {"added": {"name": "products image", "object": "20"}}]	30	2
109	2023-09-29 06:59:35.43387+00	3	Panoramik Lifti	2	[{"deleted": {"name": "products image", "object": "None"}}, {"deleted": {"name": "products image", "object": "None"}}, {"deleted": {"name": "products image", "object": "None"}}, {"deleted": {"name": "products image", "object": "None"}}, {"deleted": {"name": "products image", "object": "None"}}, {"deleted": {"name": "products image", "object": "None"}}, {"deleted": {"name": "products image", "object": "None"}}, {"deleted": {"name": "products image", "object": "None"}}]	30	2
110	2023-09-29 07:00:11.69322+00	3	Panoramik Lifti	2	[]	30	2
111	2023-09-29 07:24:15.098348+00	1	Ana səhifə statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Cover title", "Cover description"]}}]	19	2
112	2023-09-29 07:27:09.18006+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Sirketimiz"]}}]	7	2
113	2023-09-29 12:55:46.439129+00	1	Sərnişin Lifti	2	[{"changed": {"fields": ["Dark section title", "Dark section text"]}}]	30	2
114	2023-09-29 13:06:06.051263+00	1	Sərnişin Lifti	2	[{"changed": {"fields": ["Sub models title", "Sub models text"]}}]	30	2
115	2023-10-02 05:56:38.875601+00	3	Panoramik Lifti	2	[{"changed": {"fields": ["Dark section text", "Sub models title", "Sub models text"]}}]	30	2
116	2023-10-02 05:57:00.171009+00	4	Daxili məkan eskalatorlar	1	[{"added": {}}]	30	2
117	2023-10-02 06:02:32.68415+00	4	Daxili məkan eskalatorlar	2	[{"added": {"name": "products image", "object": "21"}}, {"added": {"name": "products image", "object": "22"}}, {"added": {"name": "products image", "object": "23"}}]	30	2
118	2023-10-02 06:03:42.632172+00	4	Daxili məkan eskalatorlar	2	[{"changed": {"fields": ["Main image"]}}]	30	2
119	2023-10-02 06:11:42.194429+00	5	Açıq hava eskalatorlar	1	[{"added": {}}, {"added": {"name": "products image", "object": "24"}}, {"added": {"name": "products image", "object": "25"}}, {"added": {"name": "products image", "object": "26"}}]	30	2
120	2023-10-02 06:15:35.742082+00	4	Daxili məkan eskalatorlar	2	[{"changed": {"fields": ["Main image"]}}, {"added": {"name": "products image", "object": "27"}}]	30	2
121	2023-10-02 06:26:49.554555+00	4	Daxili məkan eskalatorlar	2	[{"changed": {"fields": ["Main image"]}}, {"changed": {"name": "products image", "object": "27", "fields": ["Image"]}}]	30	2
122	2023-10-02 06:30:21.90724+00	6	Ticarət mərkəzləri eskalatorları	1	[{"added": {}}, {"added": {"name": "products image", "object": "28"}}, {"added": {"name": "products image", "object": "29"}}, {"added": {"name": "products image", "object": "30"}}, {"added": {"name": "products image", "object": "31"}}]	30	2
123	2023-10-02 07:00:47.861498+00	7	İctimai Nəqliyyat Eskalatorları	1	[{"added": {}}, {"added": {"name": "products image", "object": "32"}}, {"added": {"name": "products image", "object": "33"}}, {"added": {"name": "products image", "object": "34"}}, {"added": {"name": "products image", "object": "35"}}]	30	2
124	2023-10-02 13:17:03.768347+00	8	Parkinq sistemləri	1	[{"added": {}}, {"added": {"name": "products image", "object": "36"}}, {"added": {"name": "products image", "object": "37"}}, {"added": {"name": "products image", "object": "38"}}, {"added": {"name": "products image", "object": "39"}}]	30	2
125	2023-10-02 13:33:20.446031+00	9	Turniket sistemləri	1	[{"added": {}}, {"added": {"name": "products image", "object": "40"}}, {"added": {"name": "products image", "object": "41"}}, {"added": {"name": "products image", "object": "42"}}, {"added": {"name": "products image", "object": "43"}}, {"added": {"name": "products image", "object": "44"}}, {"added": {"name": "products image", "object": "45"}}]	30	2
126	2023-10-02 13:34:39.843953+00	8	Parkinq sistemləri	2	[{"added": {"name": "products image", "object": "46"}}]	30	2
127	2023-10-02 13:35:05.92944+00	8	Parkinq sistemləri	2	[{"added": {"name": "products image", "object": "47"}}]	30	2
128	2023-10-02 13:35:25.320729+00	8	Parkinq sistemləri	2	[{"added": {"name": "products image", "object": "48"}}]	30	2
129	2023-10-02 14:33:03.09127+00	10	Avtomatik Sürüşən Qapılar	1	[{"added": {}}, {"added": {"name": "products image", "object": "49"}}, {"added": {"name": "products image", "object": "50"}}, {"added": {"name": "products image", "object": "51"}}, {"added": {"name": "products image", "object": "52"}}]	30	2
130	2023-10-02 14:37:56.66046+00	10	Avtomatik Sürüşən Qapılar	2	[{"changed": {"fields": ["Dark section title", "Dark section text", "Sub models title", "Sub models text"]}}]	30	2
131	2023-10-02 15:23:38.309711+00	11	Fırlanan Qapılar	1	[{"added": {}}, {"added": {"name": "products image", "object": "53"}}, {"added": {"name": "products image", "object": "54"}}, {"added": {"name": "products image", "object": "55"}}, {"added": {"name": "products image", "object": "56"}}]	30	2
132	2023-10-02 15:24:05.694677+00	12	Fırlanan Qapılar	1	[{"added": {}}, {"added": {"name": "products image", "object": "57"}}, {"added": {"name": "products image", "object": "58"}}, {"added": {"name": "products image", "object": "59"}}, {"added": {"name": "products image", "object": "60"}}]	30	2
133	2023-10-02 15:24:31.306286+00	11	Fırlanan Qapılar	3		30	2
134	2023-10-02 16:59:24.517962+00	13	Elektrikli Skuterlər	1	[{"added": {}}, {"added": {"name": "products image", "object": "61"}}, {"added": {"name": "products image", "object": "62"}}, {"added": {"name": "products image", "object": "63"}}, {"added": {"name": "products image", "object": "64"}}]	30	2
135	2023-10-07 09:49:35.692066+00	1	Ana səhifə statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Main video back"]}}]	19	1
136	2023-10-09 18:54:03.531389+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Copyright", "Address", "Sirketimiz", "Our mission", "Deyerlerimiz", "Korporativ medeniyyet", "Sirketimiz title text", "Our mission title text", "Deyerlerimiz title text", "Korporativ medeniyyet title text"]}}]	7	1
137	2023-10-09 18:58:49.295777+00	2	Böyük heyət	2	[{"changed": {"fields": ["Name"]}}]	15	1
138	2023-10-09 18:58:58.428363+00	1	Əsas	2	[{"changed": {"fields": ["Name"]}}]	15	1
139	2023-10-09 18:59:09.324751+00	3	Bob Weissnat	2	[{"changed": {"fields": ["Position"]}}]	14	1
140	2023-10-09 18:59:14.820481+00	2	Douglas Luettgen	2	[{"changed": {"fields": ["Position"]}}]	14	1
141	2023-10-09 18:59:22.924621+00	1	Jesus Gerlach	2	[{"changed": {"fields": ["Position"]}}]	14	1
142	2023-10-09 19:04:10.453376+00	3	Lorem ipsum doler sit amet	2	[{"changed": {"fields": ["Title", "Subtitle", "Description", "Veziyyeti", "Tip", "Sahe", "Muddet", "Yer", "Musteri"]}}]	11	1
143	2023-10-09 19:04:12.173475+00	2	Lorem ipsum doler sit amet	2	[{"changed": {"fields": ["Title", "Subtitle", "Description", "Veziyyeti", "Tip", "Sahe", "Muddet", "Yer", "Musteri"]}}]	11	1
144	2023-10-09 19:04:14.483146+00	1	Lorem ipsum doler sit amet	2	[{"changed": {"fields": ["Title", "Subtitle", "Description", "Veziyyeti", "Tip", "Sahe", "Muddet", "Yer", "Musteri"]}}]	11	1
145	2023-10-09 19:06:17.728226+00	4	46 A. Kokhkhar st. Yakkasaray dist, Daşkənd, Özbəkistan	2	[{"changed": {"fields": ["Address"]}}]	35	1
146	2023-10-09 19:06:23.435156+00	1	ul.Bukowinska 22. lok. 53 02-73 Warszawa, Poland	2	[{"changed": {"fields": ["Address"]}}]	35	1
147	2023-10-09 19:06:29.958108+00	2	Sport Plaza, H.Aliyev 115, Baku, Azerbaijan +994 51 240 49 88	2	[{"changed": {"fields": ["Address"]}}]	35	1
148	2023-10-09 19:06:40.722844+00	3	JV group Regus, N.Muhammad 5/5 +992 90 02 00 333	2	[{"changed": {"fields": ["Address"]}}]	35	1
149	2023-10-09 19:07:16.174939+00	1	ul.Bukowinska 22. lok. 53 02-73 Warszawa, Poland	2	[{"changed": {"fields": ["Address"]}}]	35	1
150	2023-10-09 19:07:43.783856+00	2	Sport Plaza, H.Aliyev 115, Baku, Azerbaijan +994 51 240 49 88	2	[{"changed": {"fields": ["Address [en]"]}}]	35	1
151	2023-10-09 19:07:48.472991+00	3	JV group Regus, N.Muhammad 5/5 +992 90 02 00 333	2	[{"changed": {"fields": ["Address [en]"]}}]	35	1
152	2023-10-09 19:13:23.387464+00	1	Texniki Xidmət	2	[{"changed": {"fields": ["Name", "Excerpt", "Description"]}}]	27	1
153	2023-10-09 19:13:43.877808+00	2	Ehtiyat Hissələri	2	[{"changed": {"fields": ["Name", "Excerpt", "Description"]}}]	27	1
154	2023-10-09 19:14:01.147736+00	3	Təmir və Yeniləmə	2	[{"changed": {"fields": ["Name", "Excerpt", "Description"]}}]	27	1
155	2023-10-09 19:14:12.710444+00	1	Təkliflər səhifəsi	2	[{"changed": {"fields": ["Page header", "Page header text"]}}]	28	1
156	2023-10-09 19:16:28.208496+00	1	 - Sərnişin Lifti - 590'	2	[{"changed": {"fields": ["Value"]}}]	33	1
157	2023-10-09 19:16:34.788426+00	3	MAX SPEED	2	[{"changed": {"fields": ["Name"]}}]	34	1
158	2023-10-09 19:16:40.014845+00	2	MAX LOAD	2	[{"changed": {"fields": ["Name"]}}]	34	1
159	2023-10-09 19:16:45.261953+00	1	MAX TRAVEL	2	[{"changed": {"fields": ["Name"]}}]	34	1
160	2023-10-09 19:19:10.857732+00	1	Lift	2	[{"changed": {"fields": ["Name", "Excerpt"]}}]	24	1
161	2023-10-09 19:19:29.087983+00	2	Eskalator	2	[{"changed": {"fields": ["Name", "Excerpt"]}}]	24	1
162	2023-10-09 19:19:40.804491+00	3	Elektrikli Moped	2	[{"changed": {"fields": ["Name", "Excerpt"]}}]	24	1
163	2023-10-09 19:19:52.93974+00	4	Avtomatlaşdırılmış Qapılar	2	[{"changed": {"fields": ["Name", "Excerpt"]}}]	24	1
164	2023-10-09 19:20:05.162087+00	5	Paking və Turniket sistemləri	2	[{"changed": {"fields": ["Name", "Excerpt"]}}]	24	1
165	2023-10-09 19:20:16.381699+00	1	Kateqoriyalar səhifəsi	2	[{"changed": {"fields": ["Page header", "Page header text"]}}]	26	1
166	2023-10-09 19:23:21.807689+00	1	Model 1	2	[{"changed": {"fields": ["Name"]}}]	32	1
167	2023-10-09 19:23:29.332803+00	3	Model 3	2	[{"changed": {"fields": ["Name"]}}]	32	1
168	2023-10-09 19:23:34.657638+00	2	Model 2	2	[{"changed": {"fields": ["Name"]}}]	32	1
169	2023-10-09 19:24:20.297805+00	2	Yük Lifti	2	[{"changed": {"fields": ["Dark section title", "Dark section text", "Sub models title", "Sub models text", "Name", "Excerpt", "Description"]}}]	30	1
170	2023-10-09 19:25:04.30329+00	3	Panoramik Lifti	2	[{"changed": {"fields": ["Dark section title", "Dark section text", "Sub models title", "Sub models text", "Name", "Excerpt", "Description"]}}]	30	1
171	2023-10-09 19:25:43.043933+00	4	Daxili məkan eskalatorlar	2	[{"changed": {"fields": ["Dark section title", "Dark section text", "Sub models title", "Sub models text", "Name", "Excerpt", "Description"]}}]	30	1
172	2023-10-09 19:26:36.82869+00	5	Açıq hava eskalatorlar	2	[{"changed": {"fields": ["Dark section title", "Dark section text", "Sub models title", "Sub models text", "Name", "Excerpt", "Description"]}}]	30	1
173	2023-10-09 19:27:14.744393+00	6	Ticarət mərkəzləri eskalatorları	2	[{"changed": {"fields": ["Dark section title", "Dark section text", "Sub models title", "Sub models text", "Name", "Excerpt", "Description"]}}]	30	1
174	2023-10-09 19:27:51.126033+00	7	İctimai Nəqliyyat Eskalatorları	2	[{"changed": {"fields": ["Dark section title", "Dark section text", "Sub models title", "Sub models text", "Name", "Excerpt", "Description"]}}]	30	1
175	2023-10-09 19:28:30.063632+00	8	Parkinq sistemləri	2	[{"changed": {"fields": ["Dark section title", "Dark section text", "Sub models title", "Sub models text", "Name", "Excerpt", "Description"]}}]	30	1
176	2023-10-09 19:29:42.920083+00	9	Turniket sistemləri	2	[{"changed": {"fields": ["Dark section title", "Dark section text", "Sub models title", "Sub models text", "Name", "Excerpt", "Description"]}}]	30	1
177	2023-10-09 19:30:37.013904+00	10	Avtomatik Sürüşən Qapılar	2	[{"changed": {"fields": ["Dark section title", "Dark section text", "Sub models title", "Sub models text", "Name", "Excerpt", "Description"]}}]	30	1
178	2023-10-09 19:31:16.995686+00	12	Fırlanan Qapılar	2	[{"changed": {"fields": ["Dark section title", "Dark section text", "Sub models title", "Sub models text", "Name", "Excerpt", "Description"]}}]	30	1
179	2023-10-09 19:31:58.05496+00	13	Elektrikli Skuterlər	2	[{"changed": {"fields": ["Dark section title", "Dark section text", "Sub models title", "Sub models text", "Name", "Excerpt", "Description"]}}]	30	1
180	2023-10-09 19:32:41.53477+00	1	Sərnişin Lifti	2	[{"changed": {"fields": ["Dark section title", "Dark section text", "Sub models title", "Sub models text", "Name", "Excerpt", "Description"]}}]	30	1
181	2023-10-09 19:39:10.668942+00	1	Tərəfdaşlar statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Main title", "Main description"]}}]	20	1
182	2023-10-09 19:39:22.771731+00	1	Layihələr statik tekstlər	2	[{"changed": {"fields": ["Main title", "Main description"]}}]	22	1
183	2023-10-09 19:39:37.408822+00	1	Haqqında statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Main title", "Main description"]}}]	17	1
184	2023-10-09 19:39:52.231227+00	1	Əlaqə Səhifəsi statik tekstlər	2	[{"changed": {"fields": ["Main title", "Map button text", "Success text"]}}]	18	1
185	2023-10-09 19:40:42.176874+00	1	Ana səhifə statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Cover title", "Cover description", "Niye biz title", "Niye biz description", "Mehsullar title", "Mehsullar description", "Layiheler title", "Layiheler description", "Musteriler title", "Musteriler description"]}}]	19	1
186	2023-10-11 06:35:24.97715+00	1	Ana səhifə statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Cover title [az]", "Cover title [en]", "Cover description [az]", "Cover description [en]", "Niye biz title [az]", "Niye biz title [en]", "Niye biz description [az]", "Niye biz description [en]", "Mehsullar title [az]", "Mehsullar title [en]", "Mehsullar description [az]", "Mehsullar description [en]", "Layiheler title [az]", "Layiheler title [en]", "Layiheler description [az]", "Layiheler description [en]", "Musteriler title [az]", "Musteriler title [en]", "Musteriler description [az]", "Musteriler description [en]"]}}]	19	2
187	2023-10-11 06:38:14.293229+00	1	Haqqında statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Main title", "Main title [az]", "Main title [en]", "Main description", "Main description [az]", "Main description [en]"]}}]	17	2
188	2023-10-11 06:39:34.042139+00	1	Layihələr statik tekstlər	2	[{"changed": {"fields": ["Main title", "Main title [az]", "Main title [en]", "Main description", "Main description [az]", "Main description [en]"]}}]	22	2
189	2023-10-11 06:40:11.182563+00	1	Tərəfdaşlar statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Main title", "Main title [az]", "Main title [en]", "Main description", "Main description [az]", "Main description [en]"]}}]	20	2
190	2023-10-11 06:41:15.407818+00	1	Ana səhifə statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Main video back"]}}]	19	2
191	2023-10-11 06:43:38.716938+00	3	Main staff	1	[{"added": {}}]	15	2
192	2023-10-11 06:45:10.570915+00	2	Technical staff	2	[{"changed": {"fields": ["Name", "Name [az]", "Name [en]", "Tag"]}}]	15	2
193	2023-10-11 06:45:30.20939+00	1	Əsas	3		15	2
194	2023-10-11 06:46:17.889948+00	4	46 A. Kokhkhar st. Yakkasaray dist, Tashkent, Uzbekistan	2	[{"changed": {"fields": ["Address [az]", "Address [en]"]}}]	35	2
195	2023-10-11 06:46:35.6179+00	3	JV group Regus, N.Muhammad 5/5 +992 90 02 00 333	2	[{"changed": {"fields": ["Address [az]"]}}]	35	2
196	2023-10-11 06:47:20.958565+00	2	Sport Plaza, H.Aliyev 115, Baku, Azerbaijan +994 51 240 49 88	2	[{"changed": {"fields": ["Address [az]"]}}]	35	2
197	2023-10-11 06:47:57.157793+00	1	ul.Bukowinska 22. lok. 53 02-73 Warszawa, Poland	2	[{"changed": {"fields": ["Address [az]"]}}]	35	2
198	2023-10-11 07:00:01.900471+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Copyright [az]", "Copyright [en]", "Address [az]", "Address [en]", "Sirketimiz [az]", "Sirketimiz [en]", "Our mission [az]", "Our mission [en]", "Deyerlerimiz [az]", "Deyerlerimiz [en]", "Korporativ medeniyyet [az]", "Korporativ medeniyyet [en]", "Sirketimiz title text [az]", "Sirketimiz title text [en]", "Our mission title text", "Our mission title text [az]", "Our mission title text [en]", "Deyerlerimiz title text [az]", "Deyerlerimiz title text [en]", "Korporativ medeniyyet title text [az]", "Korporativ medeniyyet title text [en]"]}}]	7	2
199	2023-10-11 07:05:12.361717+00	13	Electric Scooters	2	[{"changed": {"fields": ["Dark section title [az]", "Dark section title [en]", "Dark section text [az]", "Dark section text [en]", "Sub models title [az]", "Sub models title [en]", "Sub models text [az]", "Sub models text [en]", "Name [az]", "Name [en]", "Excerpt [az]", "Excerpt [en]", "Description [az]", "Description [en]"]}}]	30	2
200	2023-10-11 07:06:46.399724+00	3	Electric Scooter	2	[{"changed": {"fields": ["Name [az]", "Name [en]", "Excerpt [az]", "Excerpt [en]"]}}]	24	2
201	2023-10-11 07:07:16.691732+00	1	Elevator	2	[{"changed": {"fields": ["Name [az]", "Name [en]", "Excerpt [az]", "Excerpt [en]"]}}]	24	2
202	2023-10-11 07:07:55.339908+00	5	Paking and Tourniquet systems	2	[{"changed": {"fields": ["Name [az]", "Name [en]", "Excerpt [az]", "Excerpt [en]"]}}]	24	2
203	2023-10-11 07:08:21.122487+00	4	Automated Doors	2	[{"changed": {"fields": ["Name [az]", "Name [en]", "Excerpt [az]", "Excerpt [en]"]}}]	24	2
204	2023-10-11 07:08:25.138501+00	3	Electric Scooter	2	[]	24	2
205	2023-10-11 07:08:48.854608+00	2	Escalator	2	[{"changed": {"fields": ["Name [az]", "Name [en]", "Excerpt [az]", "Excerpt [en]"]}}]	24	2
206	2023-10-11 07:08:53.982921+00	1	Elevator	2	[]	24	2
207	2023-10-11 13:44:20.88202+00	3	Repair and Update	2	[{"changed": {"fields": ["Name [az]", "Name [en]", "Excerpt [az]", "Excerpt [en]", "Description [az]", "Description [en]"]}}]	27	2
208	2023-10-11 14:18:08.517118+00	2	Spare Parts	2	[{"changed": {"fields": ["Name [az]", "Name [en]", "Excerpt [az]", "Excerpt [en]", "Description [az]", "Description [en]"]}}]	27	2
209	2023-10-11 14:19:26.966595+00	1	Technical servise	2	[{"changed": {"fields": ["Name [az]", "Name [en]", "Excerpt [az]", "Excerpt [en]", "Description [az]", "Description [en]"]}}]	27	2
210	2023-10-11 14:29:07.869877+00	1	Əlaqə Səhifəsi statik tekstlər	2	[{"changed": {"fields": ["Main title [az]", "Main title [en]", "Map button text [az]", "Map button text [en]", "Success text [az]", "Success text [en]"]}}]	18	2
211	2023-10-11 14:30:43.073081+00	1	Kateqoriyalar səhifəsi	2	[{"changed": {"fields": ["Page header text [az]", "Page header text [en]"]}}]	26	2
212	2023-10-11 14:31:46.486906+00	1	Təkliflər səhifəsi	2	[{"changed": {"fields": ["Page header [az]", "Page header [en]", "Page header text [az]", "Page header text [en]"]}}]	28	2
213	2023-10-11 14:35:08.025564+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Meta title", "Meta description", "Meta keywords"]}}]	7	2
214	2023-10-11 14:36:25.290951+00	1	Technical servise	2	[{"changed": {"fields": ["Excerpt [en]", "Description [en]"]}}]	27	2
215	2023-10-11 14:37:34.90654+00	1	Kateqoriyalar səhifəsi	2	[{"changed": {"fields": ["Page header [az]", "Page header [en]"]}}]	26	2
216	2023-10-11 14:44:02.885836+00	12	Revolving Doors	2	[{"changed": {"fields": ["Dark section title [az]", "Dark section title [en]", "Dark section text [az]", "Dark section text [en]", "Sub models title [az]", "Sub models title [en]", "Sub models text [az]", "Sub models text [en]", "Name [az]", "Name [en]", "Excerpt [az]", "Excerpt [en]", "Description [az]", "Description [en]"]}}]	30	2
217	2023-10-11 14:46:24.379016+00	10	Automatic Sliding Doors	2	[{"changed": {"fields": ["Dark section title", "Dark section title [az]", "Dark section title [en]", "Dark section text [az]", "Dark section text [en]", "Sub models title [az]", "Sub models title [en]", "Sub models text [az]", "Sub models text [en]", "Name [az]", "Name [en]", "Excerpt [az]", "Excerpt [en]", "Description [az]", "Description [en]"]}}]	30	2
218	2023-10-11 14:48:03.916676+00	9	Turnstile systems	2	[{"changed": {"fields": ["Dark section title [az]", "Dark section title [en]", "Dark section text [az]", "Dark section text [en]", "Sub models title [az]", "Sub models title [en]", "Sub models text [az]", "Sub models text [en]", "Name [az]", "Name [en]", "Excerpt [az]", "Excerpt [en]", "Description [az]", "Description [en]"]}}]	30	2
219	2023-10-11 14:50:31.439991+00	8	Parking systems	2	[{"changed": {"fields": ["Dark section title [az]", "Dark section title [en]", "Dark section text [az]", "Dark section text [en]", "Sub models title [az]", "Sub models title [en]", "Sub models text [az]", "Sub models text [en]", "Name [az]", "Name [en]", "Excerpt [az]", "Excerpt [en]", "Description [az]", "Description [en]"]}}]	30	2
220	2023-10-11 14:52:33.975617+00	7	Public Transport Escalators	2	[{"changed": {"fields": ["Dark section title [az]", "Dark section title [en]", "Dark section text [az]", "Dark section text [en]", "Sub models title [az]", "Sub models title [en]", "Sub models text [az]", "Sub models text [en]", "Name [az]", "Name [en]", "Excerpt [az]", "Excerpt [en]", "Description [az]", "Description [en]"]}}]	30	2
221	2023-10-11 14:54:49.940785+00	6	Shopping mall escalators	2	[{"changed": {"fields": ["Dark section title [az]", "Dark section title [en]", "Dark section text [az]", "Dark section text [en]", "Sub models title [az]", "Sub models title [en]", "Sub models text [az]", "Sub models text [en]", "Name [az]", "Name [en]", "Excerpt [az]", "Excerpt [en]", "Description [az]", "Description [en]"]}}]	30	2
222	2023-10-11 15:44:48.685969+00	1	Ana səhifə statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Main video back"]}}]	19	2
223	2023-10-19 08:22:29.417875+00	3	Tacikistan, Düşənbə,JV group Regus, N.Muhammad 5/5 +992 90 02 00 333	2	[{"changed": {"fields": ["Address", "Address [az]", "Address [en]"]}}]	35	2
224	2023-10-19 08:29:19.603732+00	5	Varşava, Polşa, Bukovinska küçəsi 22. lok. 53 02-73	1	[{"added": {}}]	35	2
225	2023-10-19 08:30:11.29681+00	1	Bukowinska küçəsi 22. lok. 53 02-73 Varşava, Polşa	3		35	2
226	2023-10-19 08:37:15.643279+00	4	Bakı, Azərbaycan, H. Əliyev prospekti, 187 B, Sport Plaza, Blok B, 404 A-C, AZ 1029	2	[{"changed": {"fields": ["Address", "Address [az]", "Address [en]"]}}]	35	2
227	2023-10-19 08:41:38.132286+00	2	Daşkənd, Özbəkistan, 46 A. Kokhkhar küç. Yakkasaray qəs.,	2	[{"changed": {"fields": ["Address", "Address [az]", "Address [en]"]}}]	35	2
228	2023-10-23 12:47:46.960466+00	3	Bob Weissnat	2	[{"changed": {"fields": ["Image", "Position"]}}]	14	2
229	2023-10-23 12:53:36.869268+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Powered by url"]}}]	7	2
230	2023-10-23 12:54:55.668041+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Powered by logo"]}}]	7	2
231	2023-10-23 12:55:35.139138+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Powered by logo"]}}]	7	2
232	2023-12-22 09:45:50.261931+00	4	Əsas Heyyət	1	[{"added": {}}]	14	2
233	2023-12-22 09:50:15.136679+00	5	Abdul Kazımov	1	[{"added": {}}]	14	2
234	2023-12-22 09:52:04.284665+00	6	Araz Bəkirov	1	[{"added": {}}]	14	2
235	2023-12-22 09:53:04.411724+00	6	Araz Bəkirov	2	[]	14	2
236	2023-12-22 09:53:36.867893+00	6	Araz Bəkirov	3		14	2
237	2023-12-22 09:53:50.598878+00	5	Abdul Kazımov	3		14	2
238	2023-12-22 09:54:15.671787+00	4	Əsas Heyyət	2	[]	14	2
239	2023-12-22 09:54:46.306005+00	4	Əsas Heyyət	3		14	2
240	2023-12-23 06:23:25.606296+00	3	Nəsibov Anar	2	[{"changed": {"fields": ["Full name", "Position", "Position [az]"]}}]	14	2
241	2023-12-23 06:24:32.369012+00	3	Nəsibov Anar	3		14	2
242	2023-12-23 06:27:49.398528+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Powered by logo"]}}]	7	2
243	2024-01-12 09:27:14.258554+00	5	Açıq hava eskalatorlar	2	[{"changed": {"fields": ["Dark section title", "Dark section title [az]", "Dark section text", "Dark section text [az]", "Sub models title", "Sub models title [az]", "Sub models text", "Sub models text [az]", "Name", "Name [az]", "Excerpt", "Excerpt [az]", "Description", "Description [az]"]}}]	30	2
244	2024-01-12 09:27:54.752266+00	4	Daxili məkan eskalatorlar	2	[{"changed": {"fields": ["Dark section title", "Dark section title [az]", "Dark section text", "Dark section text [az]", "Sub models title", "Sub models title [az]", "Sub models text", "Sub models text [az]", "Name", "Name [az]", "Excerpt", "Excerpt [az]", "Description", "Description [az]"]}}]	30	2
245	2024-01-12 09:28:27.166141+00	3	Panoramik Lifti	2	[{"changed": {"fields": ["Dark section title", "Dark section title [az]", "Dark section text", "Dark section text [az]", "Sub models title", "Sub models title [az]", "Sub models text", "Sub models text [az]", "Name", "Name [az]", "Excerpt", "Excerpt [az]", "Description", "Description [az]"]}}]	30	2
246	2024-01-12 09:29:07.25786+00	2	Yük Lifti	2	[{"changed": {"fields": ["Dark section title", "Dark section title [az]", "Dark section text", "Sub models title", "Sub models text", "Name", "Excerpt", "Description"]}}]	30	2
247	2024-01-12 09:29:51.914463+00	1	Sərnişin Lifti	2	[{"changed": {"fields": ["Dark section title", "Dark section text", "Sub models title", "Sub models text", "Name", "Excerpt", "Description"]}}]	30	2
248	2024-01-12 09:31:14.28647+00	1	Lorem ipsum doler sit amet	2	[{"changed": {"fields": ["Title", "Subtitle", "Description", "Veziyyeti", "Tip", "Sahe", "Muddet", "Yer", "Musteri"]}}]	11	2
249	2024-01-12 09:31:44.143141+00	2	Lorem ipsum	2	[{"changed": {"fields": ["Title", "Subtitle", "Description", "Veziyyeti", "Tip", "Sahe", "Muddet", "Yer", "Musteri"]}}]	11	2
250	2024-01-12 09:32:09.313452+00	3	Lorem ipsum doler sit amet	2	[{"changed": {"fields": ["Title", "Subtitle", "Description", "Veziyyeti", "Tip", "Sahe", "Muddet", "Yer", "Musteri"]}}]	11	2
251	2024-01-12 15:21:52.091193+00	7	Test	1	[{"added": {}}]	14	2
252	2024-01-23 04:45:49.88341+00	7	Test	3		14	2
253	2024-01-23 04:48:16.863528+00	8	Anar Nəsibov	1	[{"added": {}}]	14	2
254	2024-01-23 04:49:52.845066+00	3	Lorem ipsum doler sit amet	3		11	2
255	2024-01-23 04:50:08.016957+00	2	Lorem ipsum	3		11	2
256	2024-01-23 04:50:18.124656+00	1	Lorem ipsum doler sit amet	3		11	2
258	2024-01-23 04:51:19.591053+00	1	Lorem ipsum doler sit amet	3		11	2
259	2024-01-23 04:57:33.604691+00	12	Buta Construction	2	[{"changed": {"fields": ["Name"]}}]	8	2
260	2024-01-23 04:58:44.912403+00	11	Bravo	2	[{"changed": {"fields": ["Name"]}}]	8	2
261	2024-01-23 04:59:08.589225+00	10	North West	2	[{"changed": {"fields": ["Name"]}}]	8	2
262	2024-01-23 04:59:20.305472+00	9	Pasha Construction	2	[{"changed": {"fields": ["Name"]}}]	8	2
263	2024-01-23 04:59:48.2199+00	8	SOCAR	2	[{"changed": {"fields": ["Name"]}}]	8	2
264	2024-01-23 05:00:00.618584+00	7	AzerSun	2	[{"changed": {"fields": ["Name"]}}]	8	2
265	2024-01-23 05:03:52.243034+00	13	Coca-Cola	1	[{"added": {}}]	8	2
266	2024-01-23 05:04:48.645641+00	14	gfgfgdg	1	[{"added": {}}]	8	2
267	2024-01-23 05:05:33.088358+00	14	Azerbaijan Central Bank	2	[{"changed": {"fields": ["Name", "Image"]}}]	8	2
268	2024-01-23 05:05:51.259449+00	15	ATS Food	1	[{"added": {}}]	8	2
269	2024-01-23 05:06:04.130058+00	16	PASHA Malls	1	[{"added": {}}]	8	2
270	2024-01-23 05:07:12.479534+00	17	Sport Plaza	1	[{"added": {}}]	8	2
271	2024-01-23 05:07:25.600216+00	18	SHINKAR	1	[{"added": {}}]	8	2
272	2024-01-23 05:07:39.728035+00	19	SIRAB	1	[{"added": {}}]	8	2
273	2024-01-23 05:08:18.021246+00	20	SIRAB	1	[{"added": {}}]	8	2
274	2024-01-23 05:09:04.026338+00	20	Vefa Clinic	2	[{"changed": {"fields": ["Name", "Image"]}}]	8	2
275	2024-01-23 05:09:43.675912+00	20	Vefa Clinic	3		8	2
276	2024-01-23 05:10:45.375643+00	19	SIRAB	2	[]	8	2
277	2024-01-23 05:13:07.088232+00	9	LEHNER	2	[{"changed": {"fields": ["Name"]}}]	10	2
278	2024-01-23 05:13:12.954039+00	6	CNYD	2	[{"changed": {"fields": ["Name"]}}]	10	2
279	2024-01-23 05:13:54.307946+00	1	fgf	1	[{"added": {}}]	12	2
280	2024-01-23 05:19:36.060859+00	58	fg - fgf@gmail.com	3		9	2
281	2024-01-23 05:29:49.054511+00	4	Quraşdırma - EDIT REQUIRED	1	[{"added": {}}]	27	2
282	2024-01-23 05:31:09.880742+00	1	Təkliflər səhifəsi	2	[{"changed": {"fields": ["Page header text", "Page header text [az]"]}}]	28	2
283	2024-01-23 05:50:22.308855+00	1	Ana səhifə statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Mehsullar image"]}}]	19	2
284	2024-01-23 05:54:24.502936+00	1	Haqqında statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Main image"]}}]	17	2
285	2024-01-23 05:55:08.07489+00	1	Haqqında statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Main image"]}}]	17	2
286	2024-01-23 05:56:09.49534+00	1	Layihələr statik tekstlər	2	[{"changed": {"fields": ["Main description"]}}]	22	2
287	2024-01-23 05:56:49.758855+00	1	Layihələr statik tekstlər	2	[{"changed": {"fields": ["Main description", "Main description [az]"]}}]	22	2
288	2024-01-23 05:57:48.98713+00	1	Tərəfdaşlar statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Main description", "Main description [az]"]}}]	20	2
289	2024-01-23 05:58:46.438288+00	1	Xidmətlər statik tekstlər	1	[{"added": {}}]	21	2
290	2024-01-23 05:59:37.448815+00	1	Xidmətlər statik tekstlər	3		21	2
291	2024-01-23 06:00:33.176349+00	1	Əlaqə Səhifəsi statik tekstlər	2	[{"changed": {"fields": ["Success text [en]"]}}]	18	2
292	2024-01-23 06:04:36.874376+00	3	Gulnara	1	[{"added": {}}]	4	2
293	2024-01-23 06:05:12.052338+00	3	Gulnara	2	[]	4	2
294	2024-01-23 08:39:06.330892+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Powered by logo"]}}]	7	2
295	2024-01-23 10:12:09.815471+00	9	Araz Bakirov	1	[{"added": {}}]	14	2
296	2024-01-23 10:12:43.854485+00	10	Araz Bakirov	1	[{"added": {}}]	14	2
297	2024-01-23 10:13:06.165049+00	9	Araz Bakirov	3		14	2
298	2024-01-23 10:14:01.30151+00	10	Araz Bəkirov	2	[{"changed": {"fields": ["Full name"]}}]	14	2
299	2024-01-23 10:16:50.269115+00	11	Seymur Əlibəyev	1	[{"added": {}}]	14	2
300	2024-01-23 10:18:07.141966+00	12	Abdul Kazımov	1	[{"added": {}}]	14	2
301	2024-01-23 10:18:51.517209+00	13	Gülnarə Qarayeva	1	[{"added": {}}]	14	2
302	2024-01-23 10:20:32.942151+00	14	Nərminə Dadaşova	1	[{"added": {}}]	14	2
303	2024-01-23 10:30:36.744466+00	4	Heydar Aliyev adina Neft Emali Zavodu Ofisi Liftləri	1	[{"added": {}}]	11	2
304	2024-01-23 10:39:23.910758+00	5	H. Aliyev adına Neft Emal Zavodu	1	[{"added": {}}]	11	2
305	2024-01-23 10:39:23.942718+00	6	H. Aliyev adına Neft Emal Zavodu	1	[{"added": {}}]	11	2
306	2024-01-23 10:39:24.386958+00	7	H. Aliyev adına Neft Emal Zavodu	1	[{"added": {}}]	11	2
307	2024-01-23 10:39:40.670336+00	8	H. Aliyev adına Neft Emal Zavodu	1	[{"added": {}}]	11	2
308	2024-01-23 10:41:34.256169+00	5	H. Aliyev adına Neft Emal Zavodu	3		11	2
309	2024-01-23 10:41:44.465117+00	7	H. Aliyev adına Neft Emal Zavodu	3		11	2
310	2024-01-23 10:41:55.146938+00	8	H. Aliyev adına Neft Emal Zavodu	3		11	2
311	2024-01-23 10:42:57.086621+00	6	SOCAR HAOR	2	[{"changed": {"fields": ["Title", "Title [az]", "Title [en]", "Musteri", "Musteri [az]", "Musteri [en]"]}}]	11	2
312	2024-01-23 10:43:30.472474+00	4	H. Əliyev adina Neft Emali Zavodu	2	[{"changed": {"fields": ["Title", "Title [az]", "Title [en]"]}}]	11	2
313	2024-01-23 10:48:17.168121+00	9	KINDERLAND	1	[{"added": {}}]	11	2
314	2024-01-23 10:49:13.117852+00	9	KINDERLAND	2	[{"changed": {"fields": ["Image"]}}]	11	2
315	2024-01-23 10:50:45.492254+00	9	KINDERLAND	2	[{"changed": {"fields": ["Image"]}}]	11	2
316	2024-01-23 10:51:44.937345+00	9	KINDERLAND	2	[{"changed": {"fields": ["Image"]}}]	11	2
317	2024-01-23 10:52:40.770873+00	9	KINDERLAND	2	[{"changed": {"fields": ["Image"]}}]	11	2
318	2024-01-23 10:59:39.808189+00	10	Bravo Supermarketlər Şəbəkəsi	1	[{"added": {}}]	11	2
319	2024-01-23 11:00:31.925344+00	10	Bravo Supermarketlər Şəbəkəsi	2	[{"changed": {"fields": ["Image"]}}]	11	2
320	2024-01-23 11:02:03.119219+00	10	Bravo Supermarketlər Şəbəkəsi	2	[{"changed": {"fields": ["Image"]}}]	11	2
321	2024-01-23 11:02:38.717272+00	10	Bravo Supermarketlər Şəbəkəsi	2	[{"changed": {"fields": ["Image"]}}]	11	2
322	2024-01-23 11:03:09.566061+00	10	Bravo Supermarketlər Şəbəkəsi	2	[{"changed": {"fields": ["Image"]}}]	11	2
323	2024-01-23 11:09:16.793392+00	11	Buta Üstkeçid	1	[{"added": {}}]	11	2
324	2024-01-23 11:14:38.043194+00	12	Coca-Cola Azərbaycan	1	[{"added": {}}]	11	2
325	2024-01-23 11:18:28.096419+00	13	North West	1	[{"added": {}}]	11	2
326	2024-01-23 11:19:24.953379+00	13	North West	2	[{"changed": {"fields": ["Image"]}}]	11	2
327	2024-01-23 11:20:07.789514+00	13	North West	2	[{"changed": {"fields": ["Image"]}}]	11	2
328	2024-01-23 11:24:30.733493+00	14	East Residence	1	[{"added": {}}]	11	2
329	2024-01-23 11:25:48.223883+00	14	East Residence	2	[{"changed": {"fields": ["Image"]}}]	11	2
330	2024-01-23 11:27:10.295965+00	14	East Residence	2	[{"changed": {"fields": ["Image"]}}]	11	2
331	2024-01-23 11:27:26.964454+00	13	North West	2	[]	11	2
332	2024-01-23 11:28:44.423323+00	14	East Residence	2	[{"changed": {"fields": ["Image"]}}]	11	2
333	2024-01-23 12:13:45.786809+00	14	East Residence	2	[{"changed": {"fields": ["Yer", "Yer [az]", "Yer [en]"]}}]	11	2
334	2024-01-23 12:14:21.740578+00	13	North West	2	[{"changed": {"fields": ["Muddet", "Muddet [az]", "Muddet [en]"]}}]	11	2
335	2024-01-23 12:15:14.034754+00	12	Coca-Cola Azərbaycan	2	[{"changed": {"fields": ["Muddet", "Muddet [az]", "Muddet [en]"]}}]	11	2
336	2024-01-23 12:16:49.411623+00	11	Buta Construction	2	[{"changed": {"fields": ["Title", "Title [az]", "Title [en]", "Veziyyeti", "Veziyyeti [az]", "Veziyyeti [en]", "Muddet", "Muddet [az]", "Muddet [en]"]}}]	11	2
337	2024-01-23 12:17:47.015358+00	10	Bravo Supermarketlər Şəbəkəsi	2	[{"changed": {"fields": ["Veziyyeti", "Veziyyeti [az]", "Veziyyeti [en]", "Muddet", "Muddet [az]", "Muddet [en]"]}}]	11	2
338	2024-01-23 12:18:50.88712+00	10	Bravo Supermarketlər Şəbəkəsi	2	[{"changed": {"fields": ["Veziyyeti", "Veziyyeti [az]", "Veziyyeti [en]", "Muddet", "Muddet [az]", "Muddet [en]"]}}]	11	2
339	2024-01-23 12:28:33.999288+00	9	KINDERLAND	2	[{"changed": {"fields": ["Muddet", "Muddet [az]", "Muddet [en]"]}}]	11	2
340	2024-01-23 12:38:39.525248+00	15	Şinkar ofisi	1	[{"added": {}}]	11	2
341	2024-01-23 12:39:57.007017+00	15	Şinkar ofisi	2	[{"changed": {"fields": ["Image"]}}]	11	2
342	2024-01-23 12:41:19.057649+00	15	Şinkar ofisi	2	[{"changed": {"fields": ["Image"]}}]	11	2
343	2024-01-23 12:44:42.799074+00	16	Sport Plaza	1	[{"added": {}}]	11	2
344	2024-01-23 12:45:17.613632+00	16	Sport Plaza	2	[{"changed": {"fields": ["Image"]}}]	11	2
345	2024-01-23 12:49:52.885072+00	6	Kranlar və kranlar	1	[{"added": {}}]	24	2
346	2024-01-23 12:58:52.166472+00	17	Grand-Agro	1	[{"added": {}}]	11	2
347	2024-01-23 12:59:32.75643+00	17	Grand-Agro	2	[{"changed": {"fields": ["Image"]}}]	11	2
348	2024-01-23 13:00:37.62314+00	17	Grand-Agro	2	[{"changed": {"fields": ["Image"]}}]	11	2
349	2024-01-23 13:01:06.191509+00	17	Grand-Agro	2	[{"changed": {"fields": ["Image"]}}]	11	2
350	2024-01-23 13:04:34.662934+00	18	Vəfa Klinik	1	[{"added": {}}]	11	2
351	2024-01-23 14:44:43.896108+00	1	Ümumi məlumatlar	2	[]	7	2
352	2024-01-23 14:45:11.263257+00	1	Ümumi məlumatlar	2	[]	7	2
353	2024-01-23 14:45:13.251383+00	1	Ümumi məlumatlar	2	[]	7	2
354	2024-01-24 05:14:33.341532+00	1	Əlaqə Səhifəsi statik tekstlər	2	[{"changed": {"fields": ["Map button text", "Map button text [en]"]}}]	18	2
355	2024-01-24 05:17:49.791371+00	1	Tərəfdaşlar statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Main description", "Main description [en]", "Main image"]}}]	20	2
356	2024-01-24 05:24:25.577096+00	1	Tərəfdaşlar statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Main image"]}}]	20	2
357	2024-01-24 05:31:00.363463+00	1	Tərəfdaşlar statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Main image"]}}]	20	2
358	2024-01-24 05:44:24.08313+00	1	Layihələr statik tekstlər	2	[{"changed": {"fields": ["Main description", "Main description [en]"]}}]	22	2
359	2024-01-24 05:47:13.378988+00	18	Vəfa Clinic	2	[{"changed": {"fields": ["Subtitle", "Subtitle [en]", "Description", "Description [az]", "Description [en]"]}}]	11	2
360	2024-01-24 05:51:41.595176+00	17	Grand-Agro	2	[{"changed": {"fields": ["Veziyyeti", "Veziyyeti [en]", "Muddet", "Muddet [en]"]}}]	11	2
361	2024-01-24 05:52:31.373325+00	15	Şinkar office	2	[{"changed": {"fields": ["Subtitle", "Subtitle [en]", "Description", "Description [en]", "Sahe", "Sahe [en]", "Yer", "Yer [en]"]}}]	11	2
362	2024-01-24 05:52:57.234343+00	17	Grand-Agro	2	[{"changed": {"fields": ["Sahe", "Sahe [en]", "Yer", "Yer [en]"]}}]	11	2
363	2024-01-24 05:53:38.998668+00	18	Vəfa Clinic	2	[{"changed": {"fields": ["Sahe", "Sahe [en]", "Yer", "Yer [en]"]}}]	11	2
364	2024-01-24 05:56:01.939583+00	14	East Residence	2	[{"changed": {"fields": ["Subtitle", "Subtitle [en]", "Description", "Description [en]", "Sahe", "Sahe [en]", "Muddet", "Muddet [az]", "Muddet [en]", "Yer", "Yer [az]", "Yer [en]"]}}]	11	2
365	2024-01-24 05:57:06.988428+00	13	North West	2	[{"changed": {"fields": ["Product category", "Sahe", "Sahe [en]"]}}]	11	2
366	2024-01-24 05:57:41.60426+00	12	Coca-Cola Azerbaijan	2	[{"changed": {"fields": ["Sahe", "Sahe [en]", "Yer", "Yer [en]"]}}]	11	2
367	2024-01-24 05:58:34.204538+00	11	Buta Construction	2	[{"changed": {"fields": ["Subtitle", "Subtitle [en]", "Description", "Description [en]", "Sahe", "Sahe [en]", "Yer", "Yer [en]"]}}]	11	2
368	2024-01-24 06:00:13.694675+00	10	Bravo Supermarketlər Şəbəkəsi	2	[{"changed": {"fields": ["Description", "Description [en]", "Sahe", "Sahe [en]", "Yer", "Yer [en]"]}}]	11	2
369	2024-01-24 06:00:53.897968+00	9	KINDERLAND	2	[{"changed": {"fields": ["Description", "Description [en]", "Sahe", "Sahe [en]"]}}]	11	2
370	2024-01-24 06:01:50.926497+00	6	SOCAR HAOR	2	[{"changed": {"fields": ["Subtitle", "Subtitle [en]", "Description", "Description [en]", "Sahe", "Sahe [en]", "Muddet", "Muddet [en]"]}}]	11	2
371	2024-01-24 06:02:28.424432+00	4	H. Əliyev adina Neft Emali Zavodu	2	[{"changed": {"fields": ["Subtitle", "Subtitle [en]", "Description", "Description [en]"]}}]	11	2
372	2024-01-24 06:04:59.503918+00	2	Instagram	2	[{"changed": {"fields": ["Icon font tag", "Name"]}}]	13	2
373	2024-01-24 06:12:58.404665+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Meta description", "Meta keywords"]}}]	7	2
374	2024-01-24 06:13:36.691965+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Powered by url"]}}]	7	2
375	2024-01-24 06:14:49.999863+00	1	Ümumi məlumatlar	2	[]	7	2
376	2024-01-24 06:17:08.250152+00	3	Max speed	2	[{"changed": {"fields": ["Name", "Name [az]", "Name [en]"]}}]	34	2
377	2024-01-24 06:17:47.515702+00	2	Max load capasity	2	[{"changed": {"fields": ["Name", "Name [az]", "Name [en]"]}}]	34	2
378	2024-01-24 06:19:24.224869+00	1	The number of maximal people	2	[{"changed": {"fields": ["Name", "Name [az]", "Name [en]"]}}]	34	2
379	2024-01-24 06:21:35.181919+00	4	Area	1	[{"added": {}}]	34	2
380	2024-01-24 06:21:44.819424+00	5	En	1	[{"added": {}}]	34	2
381	2024-01-24 06:21:52.196518+00	6	Uzun	1	[{"added": {}}]	34	2
382	2024-01-24 06:22:27.893753+00	5	Width	2	[{"changed": {"fields": ["Name", "Name [az]", "Name [en]"]}}]	34	2
383	2024-01-24 06:23:09.533294+00	6	Length	2	[{"changed": {"fields": ["Name", "Name [az]", "Name [en]"]}}]	34	2
384	2024-01-24 06:23:51.626178+00	7	Height	1	[{"added": {}}]	34	2
385	2024-01-24 06:24:47.759103+00	8	Brend	1	[{"added": {}}]	34	2
386	2024-01-24 06:25:32.021906+00	8	Brend	3		34	2
387	2024-01-24 06:25:52.631044+00	9	Model	1	[{"added": {}}]	34	2
388	2024-01-24 06:26:12.813726+00	10	Brend	1	[{"added": {}}]	34	2
389	2024-01-24 06:26:33.169165+00	11	Brand	1	[{"added": {}}]	34	2
390	2024-01-24 06:26:44.418633+00	10	Brend	3		34	2
391	2024-01-24 06:27:44.885318+00	1	Kateqoriyalar səhifəsi	3		26	2
392	2024-01-24 06:56:47.029627+00	11	Marka	3		34	2
393	2024-01-24 06:56:54.254256+00	11	Marka	3		34	2
394	2024-01-24 06:56:55.747118+00	11	Marka	3		34	2
395	2024-01-24 06:56:55.776307+00	9	Model	3		34	2
396	2024-01-24 06:56:59.063207+00	9	Model	3		34	2
397	2024-01-24 06:56:59.058347+00	9	Model	3		34	2
398	2024-01-24 06:57:57.346889+00	12	Kabin Tavanı	1	[{"added": {}}]	34	2
399	2024-01-24 06:58:15.948079+00	13	Kabin ön divarı	1	[{"added": {}}]	34	2
400	2024-01-24 06:58:31.785428+00	14	Kabin kapısı	1	[{"added": {}}]	34	2
401	2024-01-24 06:58:52.193931+00	15	Kabin üç tərəf divarı	1	[{"added": {}}]	34	2
402	2024-01-24 06:59:28.404913+00	16	Döşəmə	1	[{"added": {}}]	34	2
403	2024-01-24 07:00:21.975797+00	17	Başqa	1	[{"added": {}}]	34	2
404	2024-01-24 07:00:32.294681+00	18	Model	1	[{"added": {}}]	34	2
405	2024-01-24 07:00:49.014603+00	19	Marka	1	[{"added": {}}]	34	2
406	2024-01-24 07:02:13.624336+00	2	Kateqoriyalar səhifəsi	1	[{"added": {}}]	26	2
407	2024-01-24 07:06:45.128661+00	2	Kateqoriyalar səhifəsi	2	[{"changed": {"fields": ["Page header text", "Page header text [az]", "Page header text [en]"]}}]	26	2
408	2024-01-24 07:08:09.916347+00	6	Kranlar və kranlar	2	[{"changed": {"fields": ["Name [en]", "Excerpt", "Excerpt [az]", "Excerpt [en]"]}}]	24	2
409	2024-01-24 07:14:41.358988+00	6	Kranlar və qaldırıcı qurğular	2	[{"changed": {"fields": ["Name", "Name [az]", "Name [en]", "Excerpt", "Excerpt [az]", "Excerpt [en]", "Main image"]}}]	24	2
410	2024-01-24 07:15:42.747496+00	6	Kranlar və qaldırıcı qurğular	2	[{"changed": {"fields": ["Main image"]}}]	24	2
411	2024-01-24 07:19:22.39061+00	6	Kranlar və qaldırıcı qurğular	2	[{"changed": {"fields": ["Main image"]}}]	24	2
412	2024-01-24 07:19:35.419921+00	6	Kranlar və qaldırıcı qurğular	2	[{"changed": {"fields": ["Main image"]}}]	24	2
413	2024-01-24 07:45:56.530971+00	3		3		32	2
414	2024-01-24 07:46:20.221243+00	2		3		32	2
415	2024-01-24 07:46:20.356859+00	1		3		32	2
416	2024-01-24 07:46:55.883436+00	4	sdsd	1	[{"added": {}}]	32	2
417	2024-01-24 08:26:18.101904+00	4	Brilliant K272	2	[{"changed": {"fields": ["Product", "Name", "Name [az]", "Name [en]", "Name [ru]", "File"]}}]	32	2
418	2024-01-24 08:32:30.847054+00	5	Brilliant K276	1	[{"added": {}}]	32	2
419	2024-01-24 08:36:52.607788+00	6	Brilliant K282	1	[{"added": {}}]	32	2
420	2024-01-24 08:46:40.637605+00	19	ATS Food/Delta	1	[{"added": {}}]	11	2
421	2024-01-24 08:50:03.621583+00	19	ATS Food/Delta	2	[{"changed": {"fields": ["Image"]}}]	11	2
422	2024-01-24 08:57:44.446741+00	9	KINDERLAND	2	[{"changed": {"fields": ["Image"]}}]	11	2
423	2024-01-24 10:12:37.984838+00	20	Dəniz Mall	1	[{"added": {}}]	11	2
424	2024-01-24 10:13:28.810403+00	20	Dəniz Mall	2	[{"changed": {"fields": ["Image"]}}]	11	2
425	2024-01-24 10:13:56.854357+00	20	Dəniz Mall	2	[{"changed": {"fields": ["Image"]}}]	11	2
426	2024-01-24 10:14:42.844308+00	20	Dəniz Mall	2	[{"changed": {"fields": ["Image"]}}]	11	2
427	2024-01-24 10:14:59.167466+00	20	Dəniz Mall	2	[{"changed": {"fields": ["Image"]}}]	11	2
428	2024-01-24 10:35:02.461277+00	1	Təkliflər səhifəsi	2	[{"changed": {"fields": ["Page header", "Page header [az]", "Page header [en]"]}}]	28	2
429	2024-01-24 10:43:33.695338+00	1	Texniki Xidmət	2	[{"changed": {"fields": ["Main image"]}}]	27	2
430	2024-01-24 10:44:38.53937+00	4	Quraşdırma - EDIT REQUIRED	2	[{"changed": {"fields": ["Main image"]}}]	27	2
431	2024-01-24 10:44:49.678867+00	3	Təmir və Yeniləmə	2	[{"changed": {"fields": ["Main image"]}}]	27	2
432	2024-01-24 10:47:24.892359+00	2	Ehtiyat Hissələri	2	[{"changed": {"fields": ["Main image"]}}]	27	2
433	2024-01-24 10:48:31.784527+00	2	Ehtiyat Hissələri	2	[{"changed": {"fields": ["Main image"]}}]	27	2
434	2024-01-24 10:50:33.06314+00	2	Ehtiyat Hissələri	2	[{"changed": {"fields": ["Main image"]}}]	27	2
435	2024-01-24 10:51:34.768901+00	2	Ehtiyat Hissələri	2	[{"changed": {"fields": ["Main image"]}}]	27	2
436	2024-01-24 10:55:36.511234+00	4	Quraşdırma - EDIT REQUIRED	2	[{"changed": {"fields": ["Main image"]}}]	27	2
437	2024-01-24 10:56:11.87399+00	4	Quraşdırma - EDIT REQUIRED	2	[{"changed": {"fields": ["Main image"]}}]	27	2
438	2024-01-24 10:56:30.738164+00	3	Təmir və Yeniləmə	2	[{"changed": {"fields": ["Main image"]}}]	27	2
439	2024-01-24 10:56:38.15633+00	1	Texniki Xidmət	2	[{"changed": {"fields": ["Main image"]}}]	27	2
440	2024-01-24 11:02:52.730408+00	4	Quraşdırma	2	[{"changed": {"fields": ["Name", "Name [az]", "Name [en]", "Excerpt", "Excerpt [az]", "Excerpt [en]", "Excerpt [ru]", "Description", "Description [az]", "Description [en]"]}}]	27	2
441	2024-01-24 11:10:33.741947+00	4	Quraşdırma & Tikinti	2	[{"changed": {"fields": ["Name", "Name [az]", "Name [en]", "Excerpt", "Excerpt [az]", "Excerpt [en]", "Excerpt [ru]", "Description", "Description [az]", "Description [en]"]}}]	27	2
442	2024-01-24 11:14:10.781295+00	20	Dəniz Mall	2	[{"changed": {"fields": ["Image"]}}]	11	2
443	2024-01-24 11:15:09.061488+00	19	ATS Food/Delta	2	[{"changed": {"fields": ["Image"]}}]	11	2
444	2024-01-24 11:16:22.132691+00	18	Vəfa Klinik	2	[{"changed": {"fields": ["Image"]}}]	11	2
445	2024-01-24 11:18:33.731234+00	17	Grand-Agro	2	[{"changed": {"fields": ["Image"]}}]	11	2
446	2024-01-24 11:19:35.402646+00	16	Sport Plaza	2	[{"changed": {"fields": ["Image"]}}]	11	2
447	2024-01-24 11:20:50.831959+00	16	Sport Plaza	2	[{"changed": {"fields": ["Image"]}}]	11	2
448	2024-01-24 11:22:13.641927+00	15	Şinkar ofisi	2	[{"changed": {"fields": ["Image"]}}]	11	2
449	2024-01-24 11:24:10.321268+00	14	East Residence	2	[{"changed": {"fields": ["Image"]}}]	11	2
450	2024-01-24 11:24:44.215166+00	13	North West	2	[{"changed": {"fields": ["Image"]}}]	11	2
451	2024-01-24 11:25:18.176165+00	12	Coca-Cola Azərbaycan	2	[{"changed": {"fields": ["Image"]}}]	11	2
452	2024-01-24 11:26:00.702362+00	11	Buta Construction	2	[{"changed": {"fields": ["Image"]}}]	11	2
453	2024-01-24 11:26:40.484564+00	10	Bravo Supermarketlər Şəbəkəsi	2	[{"changed": {"fields": ["Image"]}}]	11	2
454	2024-01-24 12:30:09.397543+00	9	KINDERLAND	2	[{"changed": {"fields": ["Image"]}}]	11	2
455	2024-01-24 12:32:46.975839+00	6	SOCAR HAOR	2	[{"changed": {"fields": ["Image"]}}]	11	2
456	2024-01-24 12:44:43.786405+00	21	A.R Mərkəzi Bank	1	[{"added": {}}]	11	2
457	2024-01-24 12:46:37.442804+00	21	A.R Mərkəzi Bank	2	[{"changed": {"fields": ["Image"]}}]	11	2
458	2024-01-24 12:50:42.143294+00	22	Zümrüd Residence	1	[{"added": {}}]	11	2
459	2024-01-27 07:03:21.541536+00	12	Coca-Cola Azərbaycan	2	[{"changed": {"fields": ["Image"]}}]	11	2
460	2024-01-27 07:04:08.904522+00	12	Coca-Cola Azərbaycan	2	[{"changed": {"fields": ["Image"]}}]	11	2
461	2024-01-27 07:06:47.615336+00	10	Bravo Supermarketlər Şəbəkəsi	2	[{"changed": {"fields": ["Image"]}}]	11	2
462	2024-01-27 07:10:33.156648+00	19	ATS Food/Delta	2	[{"changed": {"fields": ["Image"]}}]	11	2
463	2024-01-27 07:10:50.0336+00	13	North West	2	[{"changed": {"fields": ["Image"]}}]	11	2
464	2024-01-27 08:02:44.161307+00	10	Bravo Supermarketlər Şəbəkəsi	2	[{"added": {"name": "gallery", "object": "Gallery object (13)"}}]	11	2
465	2024-01-27 08:04:11.364092+00	10	Bravo Supermarketlər Şəbəkəsi	2	[{"changed": {"name": "gallery", "object": "Gallery object (13)", "fields": ["Image"]}}]	11	2
466	2024-01-27 08:08:52.885334+00	10	Bravo Supermarketlər Şəbəkəsi	2	[{"deleted": {"name": "gallery", "object": "Gallery object (None)"}}]	11	2
467	2024-01-27 08:09:35.009651+00	10	Bravo Supermarketlər Şəbəkəsi	2	[{"added": {"name": "gallery", "object": "Gallery object (14)"}}]	11	2
468	2024-01-27 08:12:49.405778+00	6	SOCAR HAOR	2	[{"changed": {"fields": ["Image"]}}]	11	2
469	2024-01-27 08:15:15.812668+00	17	Grand-Agro	2	[{"changed": {"fields": ["Image"]}}]	11	2
470	2024-01-27 08:16:07.62429+00	17	Grand-Agro	2	[{"changed": {"fields": ["Image"]}}]	11	2
471	2024-01-27 08:21:37.404393+00	11	Buta Construction	2	[{"changed": {"fields": ["Image"]}}]	11	2
472	2024-01-27 08:25:10.496628+00	11	Buta Construction	2	[{"changed": {"fields": ["Image"]}}]	11	2
473	2024-01-27 08:26:59.326367+00	14	East Residence	2	[{"changed": {"fields": ["Image"]}}]	11	2
474	2024-01-27 08:28:23.08812+00	19	ATS Food/Delta	2	[{"changed": {"fields": ["Image"]}}]	11	2
475	2024-01-27 08:31:25.65418+00	15	Şinkar ofisi	2	[{"changed": {"fields": ["Image"]}}]	11	2
476	2024-01-27 08:33:03.715873+00	21	A.R Mərkəzi Bank	2	[{"changed": {"fields": ["Image"]}}]	11	2
477	2024-01-27 08:34:37.6223+00	9	KINDERLAND	2	[{"changed": {"fields": ["Image"]}}]	11	2
478	2024-01-29 10:03:56.428131+00	3	Elektrikli Skuter	3		24	2
479	2024-01-29 10:04:22.766163+00	6	Kranlar və qaldırıcı qurğular	3		24	2
480	2024-01-29 10:07:26.82105+00	7	Alova və Partlamaya qarşı qapılar	1	[{"added": {}}]	24	2
481	2024-01-29 10:08:42.656149+00	7	Alova və Partlamaya qarşı qapılar	2	[{"changed": {"fields": ["Main image"]}}]	24	2
482	2024-01-29 10:09:18.841822+00	7	Alova və Partlamaya qarşı qapılar	2	[{"changed": {"fields": ["Main image"]}}]	24	2
483	2024-01-29 10:10:12.037189+00	7	Alova və Partlamaya qarşı qapılar	2	[{"changed": {"fields": ["Main image"]}}]	24	2
484	2024-01-29 10:10:49.518046+00	7	Alova və Partlamaya qarşı qapılar	2	[{"changed": {"fields": ["Main image"]}}]	24	2
485	2024-01-29 10:11:38.724108+00	7	Alova və Partlamaya qarşı qapılar	2	[{"changed": {"fields": ["Main image"]}}]	24	2
486	2024-01-29 11:24:05.020214+00	1	Technical service	2	[{"changed": {"fields": ["Name", "Name [en]"]}}]	27	2
487	2024-01-29 11:24:25.239527+00	5	Paking and Turnstile systems	2	[{"changed": {"fields": ["Name", "Name [en]"]}}]	24	2
488	2024-01-29 11:25:03.404673+00	5	Paking and Turnstile systems	2	[{"changed": {"fields": ["Name", "Name [en]"]}}]	24	2
489	2024-01-29 11:28:23.536605+00	3	Managing Staff	2	[{"changed": {"fields": ["Name", "Name [az]", "Name [en]"]}}]	15	2
490	2024-01-29 11:38:21.108939+00	15	Mirilham Həsənov	1	[{"added": {}}]	14	2
491	2024-01-29 11:40:43.176131+00	16	Royal Lorem	1	[{"added": {}}]	14	2
492	2024-01-29 11:41:35.665411+00	17	Elvin Lorem	1	[{"added": {}}]	14	2
493	2024-01-29 11:42:01.476821+00	18	Mətin Lorem	1	[{"added": {}}]	14	2
494	2024-01-29 11:44:18.328571+00	19	Emil Lorem	1	[{"added": {}}]	14	2
495	2024-01-29 11:45:56.59628+00	20	Turqay Lorem	1	[{"added": {}}]	14	2
496	2024-01-29 11:46:32.407443+00	21	Həsən Lorem	1	[{"added": {}}]	14	2
497	2024-01-29 11:47:08.032096+00	22	Əlican Lorem	1	[{"added": {}}]	14	2
498	2024-01-29 11:47:38.830779+00	23	Vahid Lorem	1	[{"added": {}}]	14	2
499	2024-01-29 12:19:52.377859+00	2	Max load capasity - Sərnişin Lifti - 400 kg	1	[{"added": {}}]	33	2
500	2024-01-29 12:20:50.698261+00	3	Max speed - Sərnişin Lifti - 1.3 m/s	1	[{"added": {}}]	33	2
501	2024-01-29 12:21:17.836228+00	4	The number of maximal people - Sərnişin Lifti - 5	1	[{"added": {}}]	33	2
502	2024-01-29 12:21:45.72232+00	5	Floor - Sərnişin Lifti - 2-24	1	[{"added": {}}]	33	2
503	2024-01-29 12:22:27.990762+00	6	Car ceiling - Sərnişin Lifti - Brushed Steel Color	1	[{"added": {}}]	33	2
504	2024-01-29 12:22:46.396512+00	7	Car front wall - Sərnişin Lifti - Brushed Steel Color	1	[{"added": {}}]	33	2
505	2024-01-29 12:23:13.377654+00	8	Car door - Sərnişin Lifti - Bulletproof Glass	1	[{"added": {}}]	33	2
506	2024-01-29 12:23:35.878664+00	9	Car three-side wall - Sərnişin Lifti - Brushed Steel Color	1	[{"added": {}}]	33	2
507	2024-01-29 12:24:40.835618+00	9	Car three-side wall - Sərnişin Lifti - Brushed Steel Color	3		33	2
508	2024-01-29 12:24:40.842819+00	8	Car door - Sərnişin Lifti - Bulletproof Glass	3		33	2
509	2024-01-29 12:24:40.845355+00	7	Car front wall - Sərnişin Lifti - Brushed Steel Color	3		33	2
510	2024-01-29 12:24:40.849053+00	6	Car ceiling - Sərnişin Lifti - Brushed Steel Color	3		33	2
511	2024-01-29 12:24:40.851487+00	5	Floor - Sərnişin Lifti - 2-24	3		33	2
512	2024-02-01 13:03:04.95685+00	21	Sport Plaza	1	[{"added": {}}]	8	2
513	2024-02-01 13:04:12.568143+00	22	Vefa Clinic	1	[{"added": {}}]	8	2
514	2024-02-01 13:05:02.000505+00	22	Vefa Clinic	2	[{"changed": {"fields": ["Image"]}}]	8	2
515	2024-02-01 13:05:55.985695+00	23	KINDERLAND	1	[{"added": {}}]	8	2
516	2024-02-02 07:31:32.225392+00	1	Salam	1	[{"added": {}}]	23	2
517	2024-02-03 05:05:01.574295+00	17	Elvin Məmmədov	2	[{"changed": {"fields": ["Full name"]}}]	14	2
518	2024-02-03 05:05:21.063438+00	16	Royal Xəlilov	2	[{"changed": {"fields": ["Full name"]}}]	14	2
519	2024-02-03 05:05:36.532945+00	18	Mətin Ələfsərli	2	[{"changed": {"fields": ["Full name"]}}]	14	2
520	2024-02-03 05:05:56.052995+00	20	Turqay Abdullayev	2	[{"changed": {"fields": ["Full name"]}}]	14	2
521	2024-02-03 05:06:10.676398+00	19	Emil Tahirov	2	[{"changed": {"fields": ["Full name"]}}]	14	2
522	2024-02-03 05:06:51.681207+00	23	Vahid Hacıyev	2	[{"changed": {"fields": ["Full name"]}}]	14	2
523	2024-02-03 05:07:07.248055+00	22	Əlican Mirzəyev	2	[{"changed": {"fields": ["Full name"]}}]	14	2
524	2024-02-03 05:09:02.157088+00	21	Durasan Hüseyinov	2	[{"changed": {"fields": ["Full name"]}}]	14	2
525	2024-02-03 05:11:23.105727+00	2	Eskalator	2	[{"changed": {"fields": ["Excerpt [ru]"]}}]	24	2
526	2024-02-03 05:11:35.442663+00	1	Lift	2	[{"changed": {"fields": ["Excerpt [ru]"]}}]	24	2
527	2024-02-03 05:11:47.782804+00	4	Avtomatlaşdırılmış Qapılar	2	[{"changed": {"fields": ["Excerpt [ru]"]}}]	24	2
528	2024-02-03 05:12:01.401176+00	5	Paking və Turniket sistemləri	2	[{"changed": {"fields": ["Excerpt [ru]"]}}]	24	2
529	2024-02-03 05:30:08.023275+00	7	Alova və Partlamaya qarşı qapılar	2	[{"changed": {"fields": ["Name [ru]", "Excerpt", "Excerpt [az]", "Excerpt [en]", "Excerpt [ru]"]}}]	24	2
530	2024-02-03 05:34:19.750552+00	21	Azərbaycan Respublikasının Mərkəzi Bankı	2	[{"changed": {"fields": ["Title", "Title [az]", "Title [en]", "Title [ru]", "Subtitle [ru]", "Description [ru]", "Veziyyeti [ru]", "Tip [ru]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [ru]"]}}]	11	2
531	2024-02-03 05:36:04.463587+00	22	Zümrüd Residence	2	[{"changed": {"fields": ["Title [ru]", "Subtitle [en]", "Subtitle [ru]", "Description [ru]", "Veziyyeti [ru]", "Tip [ru]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [en]", "Musteri [ru]"]}}]	11	2
532	2024-02-03 05:38:13.115198+00	20	Dəniz Mall	2	[{"changed": {"fields": ["Title [ru]", "Subtitle [ru]", "Description [ru]", "Veziyyeti [ru]", "Tip [ru]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [ru]"]}}]	11	2
533	2024-02-03 05:39:23.582686+00	19	ATS Food/Delta	2	[{"changed": {"fields": ["Title [ru]", "Subtitle [ru]", "Description [ru]", "Veziyyeti [ru]", "Tip [ru]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [ru]"]}}]	11	2
534	2024-02-03 05:41:57.922712+00	18	Vəfa Estetik Klinikası	2	[{"changed": {"fields": ["Title", "Title [az]", "Title [en]", "Title [ru]", "Subtitle [ru]", "Description [ru]", "Veziyyeti [ru]", "Tip [ru]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [ru]"]}}]	11	2
535	2024-02-03 05:42:27.827526+00	18	Vəfa Estetik Klinikası	2	[{"changed": {"fields": ["Title", "Title [az]", "Title [en]", "Title [ru]", "Subtitle [ru]", "Description [ru]", "Veziyyeti [ru]", "Tip [ru]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [ru]"]}}]	11	2
536	2024-02-03 05:42:28.261759+00	18	Vəfa Estetik Klinikası	2	[{"changed": {"fields": ["Product category", "Title", "Title [az]", "Title [en]", "Title [ru]", "Subtitle [ru]", "Description [ru]", "Veziyyeti [ru]", "Tip [ru]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [ru]"]}}]	11	2
537	2024-02-03 05:44:24.704871+00	17	Grand-Agro MMC	2	[{"changed": {"fields": ["Title", "Title [az]", "Title [en]", "Title [ru]", "Subtitle [ru]", "Description [ru]", "Veziyyeti [ru]", "Tip [ru]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [ru]"]}}]	11	2
538	2024-02-03 05:45:53.415756+00	16	Sport Plaza Hotel & Apartments	2	[{"changed": {"fields": ["Title", "Title [az]", "Title [en]", "Title [ru]", "Subtitle [ru]", "Description [ru]", "Veziyyeti [ru]", "Tip [ru]", "Sahe [en]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [ru]"]}}]	11	2
539	2024-02-03 05:49:07.855618+00	15	Şinkar Holding, Mərkəzi ofis	2	[{"changed": {"fields": ["Title", "Title [az]", "Title [en]", "Title [ru]", "Subtitle [ru]", "Description [ru]", "Veziyyeti [ru]", "Tip [ru]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [ru]"]}}]	11	2
540	2024-02-03 05:51:31.433972+00	14	East Residence	2	[{"changed": {"fields": ["Title [ru]", "Subtitle [ru]", "Description [ru]", "Veziyyeti [ru]", "Tip [ru]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [ru]"]}}]	11	2
541	2024-02-03 05:52:37.944843+00	13	North West Company	2	[{"changed": {"fields": ["Title", "Title [az]", "Title [en]", "Title [ru]", "Subtitle [ru]", "Description [ru]", "Veziyyeti [ru]", "Tip [ru]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [ru]"]}}]	11	2
542	2024-02-03 05:54:16.168943+00	11	Buta Construction	2	[{"changed": {"fields": ["Product category", "Title [ru]", "Subtitle [ru]", "Description [ru]", "Veziyyeti [ru]", "Tip [ru]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [ru]"]}}]	11	2
543	2024-02-03 05:57:25.395538+00	4	H. Əliyev adina Neft Emali Zavodu Ofisi	2	[{"changed": {"fields": ["Title", "Title [az]", "Title [en]", "Title [ru]", "Subtitle [ru]", "Description [ru]", "Tip [ru]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [ru]"]}}]	11	2
544	2024-02-03 05:59:29.045925+00	4	H. Əliyev adina Neft Emali Zavodu Ofisi	2	[{"changed": {"fields": ["Image"]}}]	11	2
545	2024-02-03 06:02:37.269992+00	6	SOCAR HAOR	2	[{"changed": {"fields": ["Title [ru]", "Image", "Subtitle [ru]", "Description [ru]", "Veziyyeti [ru]", "Tip [ru]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [ru]"]}}]	11	2
546	2024-02-03 06:03:44.659925+00	15	SHINKAR Central Office	2	[{"changed": {"fields": ["Title", "Title [az]", "Title [en]", "Title [ru]", "Subtitle", "Description", "Veziyyeti", "Tip", "Sahe", "Muddet", "Yer"]}}]	11	2
547	2024-02-03 06:07:50.414701+00	1	Ana səhifə statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Cover title [ru]", "Cover description [ru]", "Niye biz title [ru]", "Niye biz description [ru]", "Mehsullar title [ru]", "Mehsullar description [ru]", "Layiheler title [ru]", "Layiheler description [ru]", "Musteriler title [ru]", "Musteriler description [ru]"]}}]	19	2
548	2024-02-03 06:13:10.250447+00	1	Haqqında statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Main title [ru]", "Main description [ru]"]}}]	17	2
549	2024-02-03 06:17:14.751176+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Copyright [ru]", "Address [ru]", "Sirketimiz [ru]", "Our mission [ru]", "Deyerlerimiz [ru]", "Korporativ medeniyyet [ru]", "Sirketimiz title text [ru]", "Our mission title text [ru]", "Deyerlerimiz title text [ru]", "Korporativ medeniyyet title text [ru]"]}}]	7	2
550	2024-02-03 06:20:11.652472+00	1	Ümumi məlumatlar	2	[{"changed": {"fields": ["Korporativ medeniyyet [ru]"]}}]	7	2
551	2024-02-03 06:22:07.988702+00	2	Kateqoriyalar səhifəsi	2	[{"changed": {"fields": ["Page header [ru]", "Page header text [ru]"]}}]	26	2
552	2024-02-03 06:22:28.926407+00	5	Системы укладки и турникетов	2	[{"changed": {"fields": ["Name [ru]"]}}]	24	2
553	2024-02-03 06:22:37.703351+00	4	Автоматические двери	2	[{"changed": {"fields": ["Name [ru]"]}}]	24	2
554	2024-02-03 06:22:49.11896+00	2	Эскалатор	2	[{"changed": {"fields": ["Name [ru]"]}}]	24	2
555	2024-02-03 06:22:58.484441+00	1	Лифт	2	[{"changed": {"fields": ["Name [ru]"]}}]	24	2
556	2024-02-03 06:23:27.243961+00	1	Layihələr statik tekstlər	2	[{"changed": {"fields": ["Main title [ru]", "Main description [ru]"]}}]	22	2
557	2024-02-03 06:24:02.890619+00	1	Layihələr statik tekstlər	2	[{"changed": {"fields": ["Main title", "Main description"]}}]	22	2
558	2024-02-03 06:24:46.282874+00	1	Təkliflər səhifəsi	2	[{"changed": {"fields": ["Page header [ru]", "Page header text [ru]"]}}]	28	2
559	2024-02-03 06:25:40.411766+00	4	Монтаж и строительство	2	[{"changed": {"fields": ["Name [ru]", "Excerpt [en]", "Excerpt [ru]", "Description [en]", "Description [ru]"]}}]	27	2
560	2024-02-03 06:26:29.083734+00	4	Монтаж и строительство	2	[{"changed": {"fields": ["Name [ru]", "Excerpt [en]", "Excerpt [ru]", "Description [en]", "Description [ru]"]}}]	27	2
561	2024-02-03 06:27:10.890228+00	3	Ремонт и обновление	2	[{"changed": {"fields": ["Name [ru]", "Excerpt [ru]", "Description [ru]"]}}]	27	2
562	2024-02-03 06:29:17.974203+00	2	Ehtiyat Hissələri	2	[{"changed": {"fields": ["Excerpt [ru]", "Description [ru]"]}}]	27	2
563	2024-02-03 06:30:18.640763+00	2	Запчасти	2	[{"changed": {"fields": ["Name [ru]", "Excerpt", "Description"]}}]	27	2
564	2024-02-03 06:30:27.897705+00	2	Запчасти	2	[{"changed": {"fields": ["Name [ru]", "Excerpt", "Description"]}}]	27	2
565	2024-02-03 06:31:03.271468+00	1	Техническое обслуживание	2	[{"changed": {"fields": ["Name [ru]", "Excerpt [ru]", "Description [ru]"]}}]	27	2
566	2024-02-03 06:32:31.95628+00	1	Tərəfdaşlar statik tekstlər və şəkillər	2	[{"changed": {"fields": ["Main title [ru]", "Main description [ru]"]}}]	20	2
567	2024-02-03 06:33:14.233532+00	17	Sport Plaza	2	[{"changed": {"fields": ["Image"]}}]	8	2
568	2024-02-03 06:36:30.050942+00	21	Grand-Agro	2	[{"changed": {"fields": ["Name", "Image"]}}]	8	2
569	2024-02-03 06:38:41.433893+00	1	Əlaqə Səhifəsi statik tekstlər	2	[{"changed": {"fields": ["Main title [ru]", "Map button text [ru]", "Success text [ru]"]}}]	18	2
570	2024-02-03 06:55:03.430438+00	23	Vahid Hacıyev	3		14	2
571	2024-02-03 06:55:11.007468+00	22	Əlican Mirzəyev	3		14	2
572	2024-02-03 06:55:18.055091+00	21	Durasan Hüseyinov	3		14	2
573	2024-02-03 06:55:18.08054+00	20	Turqay Abdullayev	3		14	2
574	2024-02-03 06:55:18.093877+00	19	Emil Tahirov	3		14	2
575	2024-02-03 06:55:18.102175+00	18	Mətin Ələfsərli	3		14	2
576	2024-02-03 06:55:18.111627+00	17	Elvin Məmmədov	3		14	2
577	2024-02-03 06:55:18.117795+00	16	Royal Xəlilov	3		14	2
578	2024-02-03 06:55:18.124282+00	15	Mirilham Həsənov	3		14	2
579	2024-02-03 06:59:08.201885+00	6	BLT	2	[{"changed": {"fields": ["Name", "Image"]}}]	10	2
580	2024-02-03 06:59:47.80247+00	6	BLT	2	[{"changed": {"fields": ["Image"]}}]	10	2
581	2024-02-03 07:02:05.943027+00	6	BLT	2	[{"changed": {"fields": ["Image"]}}]	10	2
582	2024-02-03 08:18:11.019059+00	23	Tajikistan, Guliston Shakhroz LLC	1	[{"added": {}}, {"added": {"name": "gallery", "object": "Gallery object (15)"}}]	11	2
583	2024-02-03 08:19:14.752279+00	23	Tajikistan, Guliston Shakhroz LLC	2	[{"changed": {"fields": ["Image"]}}, {"added": {"name": "gallery", "object": "Gallery object (16)"}}]	11	2
584	2024-02-03 08:21:16.011852+00	23	Tajikistan, Guliston Shakhroz LLC	2	[{"added": {"name": "gallery", "object": "Gallery object (17)"}}]	11	2
585	2024-02-08 05:20:54.81138+00	10	Araz Bəkirov	2	[{"changed": {"fields": ["Position", "Position [az]", "Position [en]", "Position [ru]"]}}]	14	2
586	2024-02-09 04:48:53.169698+00	7	Alova və Partlamaya qarşı qapılar	3		24	2
587	2024-02-09 04:49:37.213743+00	5	Paking və Turniket sistemləri	3		24	2
588	2024-02-09 04:52:17.32938+00	8	Paking və Turniket sistemləri	1	[{"added": {}}]	24	2
589	2024-02-09 04:53:06.299744+00	9	Alova və Partlamaya qarşı qapılar	1	[{"added": {}}]	24	2
590	2024-02-09 04:54:47.8473+00	24	Elvin Məmmədov	1	[{"added": {}}]	14	2
591	2024-02-09 04:55:51.820178+00	25	Həcər Əhmədova	1	[{"added": {}}]	14	2
592	2024-02-09 04:56:47.882393+00	26	Mirilham Həsənov	1	[{"added": {}}]	14	2
593	2024-02-09 04:57:24.464616+00	27	Royal Xəlilov	1	[{"added": {}}]	14	2
594	2024-02-09 04:57:49.126779+00	28	Mətin Ələfsərli	1	[{"added": {}}]	14	2
595	2024-02-09 04:58:36.304165+00	29	Durasan Hüseyinov	1	[{"added": {}}]	14	2
596	2024-02-09 04:59:14.860141+00	30	Alican	1	[{"added": {}}]	14	2
597	2024-02-09 04:59:22.087161+00	30	Əlican Mirzəyev	2	[{"changed": {"fields": ["Full name"]}}]	14	2
598	2024-02-09 04:59:39.575289+00	31	Vahid Hacıyev	1	[{"added": {}}]	14	2
599	2024-02-09 05:00:10.733191+00	32	Turqay Abdullayev	1	[{"added": {}}]	14	2
600	2024-02-09 05:00:37.370953+00	33	Emil Tahirov	1	[{"added": {}}]	14	2
601	2024-02-09 11:07:31.150471+00	33	Emil Tahirov	3		14	2
602	2024-02-09 11:07:31.298925+00	32	Turqay Abdullayev	3		14	2
603	2024-02-09 11:07:31.30447+00	31	Vahid Hacıyev	3		14	2
604	2024-02-09 11:07:31.331198+00	30	Əlican Mirzəyev	3		14	2
605	2024-02-09 11:07:31.34316+00	29	Durasan Hüseyinov	3		14	2
606	2024-02-09 11:07:31.348147+00	28	Mətin Ələfsərli	3		14	2
607	2024-02-09 11:07:31.352145+00	27	Royal Xəlilov	3		14	2
608	2024-02-09 11:07:31.356324+00	26	Mirilham Həsənov	3		14	2
609	2024-02-09 11:07:31.801429+00	11	Seymur Əlibəyev	3		14	2
610	2024-02-09 11:07:44.097631+00	24	Elvin Məmmədov	3		14	2
611	2024-02-09 11:08:40.466222+00	14	Nərminə Dadaşova	2	[{"changed": {"fields": ["Position"]}}]	14	2
612	2024-02-09 11:09:04.128509+00	25	Həcər Əhmədova	3		14	2
613	2024-02-09 11:10:49.96384+00	14	narmina.dadashova@torch.az	2	[{"changed": {"fields": ["Full name", "Position [ru]"]}}]	14	2
614	2024-02-09 11:12:47.217756+00	13	Gülnarə Qarayeva	2	[{"changed": {"fields": ["Position", "Position [az]", "Position [ru]"]}}]	14	2
615	2024-02-09 11:13:39.113846+00	14	Narmina Dadashova (HR)	2	[{"changed": {"fields": ["Full name", "Position", "Position [az]", "Position [en]", "Position [ru]"]}}]	14	2
616	2024-02-09 11:14:09.621659+00	10	Araz Bəkirov (Montaj və xidmət departamentinin rəisi)	2	[{"changed": {"fields": ["Full name"]}}]	14	2
617	2024-02-09 11:14:24.880662+00	10	Araz Bəkirov	2	[{"changed": {"fields": ["Full name"]}}]	14	2
618	2024-02-09 11:15:33.160517+00	14	Nərminə Dadaşova	2	[{"changed": {"fields": ["Full name", "Position", "Position [az]", "Position [en]", "Position [ru]"]}}]	14	2
619	2024-02-09 11:20:44.952053+00	34	Həcər Əhmədova	1	[{"added": {}}]	14	2
620	2024-02-09 11:22:02.633345+00	34	Həcər Əhmədova	3		14	2
621	2024-02-09 11:22:02.639774+00	14	Nərminə Dadaşova	3		14	2
622	2024-02-09 11:22:02.643843+00	13	Gülnarə Qarayeva	3		14	2
623	2024-02-09 11:22:02.646629+00	10	Araz Bəkirov	3		14	2
624	2024-02-09 11:22:51.266973+00	35	Araz Bəkirov	1	[{"added": {}}]	14	2
625	2024-02-09 11:24:00.880626+00	36	Gülnarə Qarayeva	1	[{"added": {}}]	14	2
626	2024-02-09 11:24:37.392192+00	37	Nərminə Dadaşova	1	[{"added": {}}]	14	2
627	2024-02-09 11:25:02.064372+00	38	Həcər Əhmədova	1	[{"added": {}}]	14	2
628	2024-02-09 11:28:05.077703+00	37	Nərminə Dadaşova	2	[{"changed": {"fields": ["Position [ru]"]}}]	14	2
629	2024-02-09 11:28:43.131845+00	8	Anar Nəsibov	2	[{"changed": {"fields": ["Position [ru]"]}}]	14	2
630	2024-02-09 11:29:34.935596+00	12	Abdul Kazımov	2	[{"changed": {"fields": ["Position [en]", "Position [ru]"]}}]	14	2
631	2024-02-09 11:29:57.995923+00	38	Həcər Əhmədova	3		14	2
632	2024-02-09 11:30:37.513359+00	38	Həcər Əhmədova	3		14	2
633	2024-02-09 11:30:37.529813+00	37	Nərminə Dadaşova	3		14	2
634	2024-02-09 11:30:37.536151+00	36	Gülnarə Qarayeva	3		14	2
635	2024-02-09 11:30:37.539584+00	35	Araz Bəkirov	3		14	2
636	2024-02-09 11:30:37.543222+00	12	Abdul Kazımov	3		14	2
637	2024-02-09 11:30:37.547244+00	8	Anar Nəsibov	3		14	2
638	2024-02-09 11:31:43.227616+00	39	Anar Nəsibov	1	[{"added": {}}]	14	2
639	2024-02-09 11:32:54.738255+00	40	Abdul Kazımov	1	[{"added": {}}]	14	2
640	2024-02-09 11:33:39.739325+00	41	Araz Bəkirov	1	[{"added": {}}]	14	2
641	2024-02-09 11:34:52.548752+00	42	Gülnarə Qarayeva	1	[{"added": {}}]	14	2
642	2024-02-09 11:35:20.629418+00	43	Nərminə Dadaşova	1	[{"added": {}}]	14	2
643	2024-02-09 11:35:43.733553+00	44	Həcər Əhmədova	1	[{"added": {}}]	14	2
644	2024-02-10 04:56:39.897083+00	44	Həcər Əhmədova	2	[{"changed": {"fields": ["Position", "Position [az]", "Position [en]", "Position [ru]"]}}]	14	2
645	2024-02-10 04:56:56.478267+00	42	Gülnarə Qarayeva	2	[]	14	2
646	2024-02-10 04:57:14.184705+00	39	Anar Nəsibov	2	[{"changed": {"fields": ["Position [ru]"]}}]	14	2
647	2024-02-10 04:57:24.561099+00	43	Nərminə Dadaşova	2	[]	14	2
648	2024-02-10 04:57:41.821115+00	41	Araz Bəkirov	2	[]	14	2
649	2024-02-10 04:58:14.717471+00	40	Abdul Kazımov	2	[{"changed": {"fields": ["Position [ru]"]}}]	14	2
650	2024-02-10 05:57:09.445333+00	2	Технический персонал	2	[{"changed": {"fields": ["Name [ru]"]}}]	15	2
651	2024-02-10 05:58:14.742285+00	3	Управляющий персонал	2	[{"changed": {"fields": ["Name", "Name [az]", "Name [ru]", "Tag"]}}]	15	2
652	2024-02-10 05:58:23.031709+00	3	Управляющий персонал	2	[]	15	2
653	2024-02-10 05:58:29.773801+00	2	Технический персонал	2	[{"changed": {"fields": ["Name [az]"]}}]	15	2
654	2024-02-10 05:59:20.506037+00	3	Управляющий персонал	2	[]	15	2
655	2024-02-10 05:59:46.03407+00	39	Anar Nəsibov	2	[]	14	2
656	2024-02-10 06:01:13.814557+00	39	Anar Nəsibov	2	[]	14	2
657	2024-02-10 06:01:30.402599+00	39	Anar Nasibov	2	[{"changed": {"fields": ["Full name"]}}]	14	2
658	2024-02-10 06:02:11.962916+00	39	Anar Nəsibov	2	[{"changed": {"fields": ["Full name"]}}]	14	2
659	2024-02-10 06:04:21.686205+00	42	Gülnarə Qarayeva	2	[{"changed": {"fields": ["Position"]}}]	14	2
660	2024-02-10 06:13:09.834663+00	42	Gülnarə Qarayeva	2	[{"changed": {"fields": ["Position"]}}]	14	2
661	2024-02-10 06:20:58.027104+00	5	Warsaw, Poland, Bukowinska str, 22. lok. 53 02-73	2	[{"changed": {"fields": ["Address [ru]"]}}]	35	2
662	2024-02-10 06:21:41.766342+00	2	Tashkent, Uzbekistan, 46 A. Kokhkhar st. Yakkasaray dist,	2	[{"changed": {"fields": ["Address [ru]"]}}]	35	2
663	2024-02-10 06:22:05.344512+00	3	Tajikistan, Dushanbe, JV group Regus, N.Muhammad 5/5 +992 90 02 00 333	2	[{"changed": {"fields": ["Address [ru]"]}}]	35	2
664	2024-02-10 06:22:23.393151+00	4	Baku, Azerbaijan, H. Aliyev avenue, 187 B, Sport Plaza, Block B, 404 A-C, AZ 1029	2	[{"changed": {"fields": ["Address [ru]"]}}]	35	2
665	2024-02-10 06:31:19.219293+00	44	Həcərxanım Əhmədova	2	[{"changed": {"fields": ["Full name"]}}]	14	2
666	2024-02-10 08:29:34.532256+00	2	Tashkent, Uzbekistan, 46 A. Kokhkhar st. Yakkasaray dist,	2	[{"changed": {"fields": ["Address"]}}]	35	2
667	2024-03-07 04:55:18.921553+00	10	Bravo Supermarket Chain	2	[{"changed": {"fields": ["Title [en]", "Title [ru]", "Subtitle [ru]", "Description [ru]", "Veziyyeti [ru]", "Tip [ru]", "Sahe [ru]", "Muddet [ru]", "Yer [ru]", "Musteri [ru]"]}}]	11	2
668	2024-08-31 07:10:29.978392+00	6	D.Kldiashvili st., N15, f. No. 65. Tbilisi, Gürcistan	1	[{"added": {}}]	35	2
669	2024-08-31 07:11:53.857468+00	6	D.Kldiashvili st., N15, f. No. 65. Tbilisi, Gürcistan |  (+995) 55 549 15 33	2	[{"changed": {"fields": ["Address", "Address [az]", "Address [en]", "Address [ru]"]}}]	35	2
670	2024-08-31 08:36:05.498988+00	6	Gürcistan, Tbilisi, D.Kldiashvili st., N15, f. No. 65.  |  (+995) 55 549 15 33	2	[{"changed": {"fields": ["Address", "Address [az]", "Address [en]", "Address [ru]"]}}]	35	2
671	2024-08-31 08:37:01.237984+00	6	Tbilisi, Gürcistan, D.Kldiashvili st., N15, f. No. 65.  |  (+995) 55 549 15 33	2	[{"changed": {"fields": ["Address", "Address [az]", "Address [en]", "Address [ru]"]}}]	35	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	home	general
8	home	client
9	home	contact
10	home	partner
11	home	project
12	home	service
13	home	social
14	home	team
15	home	teamcategory
16	home	gallery
17	statik	about
18	statik	contact
19	statik	home
20	statik	partners
21	statik	servicestatik
22	statik	projectstatik
23	django_summernote	attachment
27	offer	offer
28	offer	offerspage
29	offer	offerimage
26	product	categoriespage
24	product	category
25	product	categoryimage
30	product	product
31	product	productsimage
32	product	model
33	product	attributevalue
34	product	attribute
35	home	ofisunvanlar
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-09-20 19:33:20.691567+00
2	auth	0001_initial	2023-09-20 19:33:21.469559+00
3	admin	0001_initial	2023-09-20 19:33:21.682141+00
4	admin	0002_logentry_remove_auto_add	2023-09-20 19:33:21.821713+00
5	admin	0003_logentry_add_action_flag_choices	2023-09-20 19:33:21.850748+00
6	contenttypes	0002_remove_content_type_name	2023-09-20 19:33:22.025113+00
7	auth	0002_alter_permission_name_max_length	2023-09-20 19:33:22.055233+00
8	auth	0003_alter_user_email_max_length	2023-09-20 19:33:22.084212+00
9	auth	0004_alter_user_username_opts	2023-09-20 19:33:22.118416+00
10	auth	0005_alter_user_last_login_null	2023-09-20 19:33:22.14601+00
11	auth	0006_require_contenttypes_0002	2023-09-20 19:33:22.155587+00
12	auth	0007_alter_validators_add_error_messages	2023-09-20 19:33:22.182812+00
13	auth	0008_alter_user_username_max_length	2023-09-20 19:33:22.216959+00
14	auth	0009_alter_user_last_name_max_length	2023-09-20 19:33:22.240703+00
15	auth	0010_alter_group_name_max_length	2023-09-20 19:33:22.269781+00
16	auth	0011_update_proxy_permissions	2023-09-20 19:33:22.290262+00
17	auth	0012_alter_user_first_name_max_length	2023-09-20 19:33:22.414093+00
18	django_summernote	0001_initial	2023-09-20 19:33:22.440582+00
19	django_summernote	0002_update-help_text	2023-09-20 19:33:22.451678+00
20	home	0001_initial	2023-09-20 19:33:22.491955+00
21	home	0002_auto_20211224_2206	2023-09-20 19:33:22.883074+00
22	home	0003_general_sirketimiz	2023-09-20 19:33:22.903106+00
23	home	0004_team_category	2023-09-20 19:33:23.043482+00
24	home	0005_auto_20211224_2245	2023-09-20 19:33:23.08652+00
25	home	0006_general_logo_white	2023-09-20 19:33:23.105726+00
26	home	0007_social_icon_white	2023-09-20 19:33:23.127222+00
27	home	0008_auto_20211224_2310	2023-09-20 19:33:23.157537+00
28	home	0009_auto_20211230_0251	2023-09-20 19:33:23.211216+00
29	sessions	0001_initial	2023-09-20 19:33:23.361506+00
30	statik	0001_initial	2023-09-20 19:33:23.675031+00
31	statik	0002_rename_service_servicestatik	2023-09-20 19:33:23.7565+00
32	statik	0003_rename_project_projectstatik	2023-09-20 19:33:23.948531+00
33	statik	0004_contact_success_text	2023-09-20 19:33:23.965196+00
34	offer	0001_initial	2023-09-21 09:54:12.528344+00
35	product	0001_initial	2023-09-21 09:54:12.632358+00
36	product	0002_productspage	2023-09-21 09:54:12.694031+00
37	statik	0005_auto_20230921_1041	2023-09-21 09:54:12.738291+00
38	product	0003_auto_20230922_0000	2023-09-21 20:04:52.812355+00
39	product	0004_auto_20230922_0016	2023-09-21 20:37:18.716142+00
40	home	0010_project_product_category	2023-09-21 20:37:18.747821+00
41	product	0005_auto_20230922_0022	2023-09-21 20:37:18.790883+00
42	django_summernote	0003_alter_attachment_id	2023-09-21 22:08:10.505736+00
43	product	0006_model	2023-09-22 06:07:23.061391+00
44	product	0007_attribute_attributevalue	2023-09-22 06:07:23.145073+00
45	product	0008_auto_20230922_0930	2023-09-22 06:07:23.241143+00
46	product	0009_auto_20230922_0945	2023-09-22 06:07:23.472505+00
47	home	0011_ofisunvanlar	2023-09-22 06:42:33.235078+00
48	home	0012_auto_20230922_1041	2023-09-22 06:42:33.281105+00
49	home	0013_alter_ofisunvanlar_sort	2023-09-22 06:43:47.329497+00
50	product	0010_auto_20230929_1640	2023-09-29 12:43:21.537865+00
51	product	0011_auto_20230929_1659	2023-09-29 13:01:32.415692+00
52	statik	0006_home_main_video_back	2023-10-07 09:46:35.551712+00
53	home	0014_auto_20231009_2233	2023-10-09 18:52:40.814119+00
54	home	0015_auto_20231009_2247	2023-10-09 18:52:41.089435+00
55	home	0016_auto_20231009_2257	2023-10-09 18:57:57.268795+00
56	home	0017_auto_20231009_2301	2023-10-09 19:01:53.066195+00
57	home	0018_auto_20231009_2305	2023-10-09 19:05:58.70641+00
58	home	0019_auto_20231009_2309	2023-10-09 19:09:45.370376+00
59	offer	0002_auto_20231009_2312	2023-10-09 19:12:50.370516+00
60	product	0012_auto_20231009_2316	2023-10-09 19:16:18.382804+00
61	product	0013_auto_20231009_2318	2023-10-09 19:18:55.918793+00
62	product	0014_auto_20231009_2322	2023-10-09 19:23:08.77582+00
63	statik	0007_auto_20231009_2337	2023-10-09 19:38:16.31037+00
64	home	0020_alter_team_image	2024-01-12 05:56:27.354335+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
fmk77anjnbskocjxbocjklhpwdqap790	eyJfbGFuZ3VhZ2UiOiJydSJ9:1qtUac:qLCnJbsItbIFV38QnvpTD-uvoMXIo-1BNn4CeaM3XaU	2023-11-02 15:05:34.532664+00
df5actkz7s66oub5pden39esba4ekuoi	.eJxVjE0OgyAYBe_CuiGAgNJl956BfD9YbRtIRFdN715MXLTbNzPvLSLs2xz3mta4sLgKLS6_GwI9Uz4APyDfi6SSt3VBeSjypFWOhdPrdrp_BzPUudU9MHXkmAfdBTTKkkZ07HBgVJ01EzdBDZNXyQcOHm2jZtLQU5-Arfh8AQjaORI:1qjHH2:AmAIAazJ1h1oR2dVMJLgTyoQ1h7cV71Sgf84LW5nHe0	2023-10-05 10:51:08.985298+00
ubly5fqgubhcjg05wh1kyf13oy33fvxw	eyJfbGFuZ3VhZ2UiOiJheiJ9:1qtUgV:KbsDHdcpqOBtsabKwlTOsq4vIu1LX2R3D4iPoNdQ0KE	2023-11-02 15:11:39.88634+00
yt0ixyokrtuwn97pur6oo0kymgrxuznh	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1qm6Ym:R4rYYd_FECacVuUPV53j_S8tGLo7VqwnH049NeW1cyE	2023-10-13 06:01:08.270954+00
1wbsuyhgs7lufmpd0t9rp9vrr3ts02sa	eyJfbGFuZ3VhZ2UiOiJydSJ9:1qtUi0:xXMgn8FSf-l-kg_Ag6mV0MbjRLVsPHwYKuj5Go36MyM	2023-11-02 15:13:12.266144+00
gtmu7iopdyvzsm85a7tq7zkjtr720z6d	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1qmD0N:6uTvnM5SYs7OdRlkt9-G2Hfaii3d6Y1bH1yg5WdSl0Y	2023-10-13 12:54:03.894824+00
m9fwg0b8jjf7olgkboo7h8lmx7ucnu8r	eyJfbGFuZ3VhZ2UiOiJheiJ9:1qtVNu:Z7SCLfCaTvTxA99dqjXs0mCRF3I9Yr9C7L5IVPggX4Q	2023-11-02 15:56:30.354488+00
ttgthntyjf2yi1lmwmzjrztxc2c6jbw9	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1qnBka:sdM0UWyIFqitGlBd_0YM_qaMWTvfi5ihAtVk1SZZV3c	2023-10-16 05:45:48.98625+00
2lblgnv4ww2u72qika785eos2zsmnsyc	.eJxVjs0OgyAQBt-Fc0NAEbXH3n0Gsj-gtkYSkFPTdy8mHtrrznyTfQsH5VhcyT65lcVdaHH7vSHQy-8n4Cfsc5QU9yOtKE9FXjTLKbLfHpf7F1ggL3XdA1NLHfOg2xEbZUgjdtzhwKha0wSughqCVd6OPFo0lTZBQ0-9BzZndKsPFJh9zaUiPl8CSD6K:1qti8K:AvRGptQa0o_rS2aY9qriR_5xb_Yu6omh0oLrKKPxHH8	2023-11-03 05:33:16.223147+00
o2i8y1h61vi87n60msfftnh0slb98xwy	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1qnwLE:L7MXKQMPMDG6TO9euWULMq-X56XRxQ9zyW21JiTWCKo	2023-10-18 07:30:44.348247+00
i23pyogth2pyijv8eys7n844f5m4uvwb	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1quuI5:JSPUw37IHNhZfFtE8E8T0Z5_8RXtcAHis3jzpUeu1ts	2023-11-06 12:44:17.767637+00
pkx5knsdvy7jzbj7r7a081qb5v8u6o45	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1qnzWc:ngn5WdgxWclA0RbRUT5vwc50YsVB9Cfgaum5WsON0I8	2023-10-18 10:54:42.294833+00
rezgiax15d67ia7n9jc31istivp3nrgs	eyJfbGFuZ3VhZ2UiOiJheiJ9:1quuaR:frZOtS4Wq8Jft2tclAJy-nzN0cyd0Mj0rPvKUaA8GOQ	2023-11-06 13:03:15.961315+00
f4axgl9vas7e33fvgj2zm7yc23s0zrrr	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1qvZd4:EE0P74Rg1Nh6rVfSiauw8_BLoymVcnLx4aYJA_zZYes	2023-11-08 08:52:42.768739+00
78mrzdnypx9yh6f4atz4yz6mu3cu2ycn	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1qwLBR:vUKanuFAkK7XFzm9ihk0DVeBxsgPAfYJ088DDfLcQi4	2023-11-10 11:39:21.405879+00
5x0je0ickg616m425peticoas4lb6meg	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1qy6xs:-UEl9Fnv73Akk1YhFrXxwc151ltbcrCNKlej7nGoIgY	2023-11-15 08:52:40.608213+00
b2pwd4g2om3xseyzfqvt2wee88jmas8w	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1qztWt:wqhGptExh_6I6JsXp8PMxM5oyijD7K1f74qVG5MevYE	2023-11-20 06:56:11.914563+00
0bpze02n2q244qj3bqt2r9bkl8kznw6v	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1r0NEE:c4JTELSG0pnsxmIMw8gyuXfON93zZVyG1VxGNM8tiqk	2023-11-21 14:38:54.588708+00
88x3a8fge6stl9467hxydksl4uxlz7k1	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1r2TrE:M4wTMtxY4p5UYIyZv9cY20_BWBiUVgRJ2trSN1_MbtU	2023-11-27 10:07:52.143489+00
28se6bscuy2zzkcyg7anj38tejfvv8j3	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1r2Vlh:7YP0urnTjB37ZnlYowMRD2tOTma2MOLhnqiXYWE8Hw0	2023-11-27 12:10:17.441753+00
7rouz4jmvxyn7ctwv53nr1x3pds100fz	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1r33gA:_tnf2G66m4posJIXaMNDkd0VleEG1X2toR5EHzJK6pA	2023-11-29 00:22:50.629804+00
949v9x1ie45avi33ku34bjco326sve0j	eyJfbGFuZ3VhZ2UiOiJheiJ9:1qq9tX:lTs2YaLDq9KtwFMAmNxeOXbiipk42w9asIeG5m3bUNk	2023-10-24 10:23:19.740407+00
30m4zud10gz38tn51pagr475m521n1qx	eyJfbGFuZ3VhZ2UiOiJydSJ9:1qqALv:c7rwPNTIpZ248lc_WGbmznrnZfFGWB_WObDsWds7tBY	2023-10-24 10:52:39.302059+00
oenpiwa329coalcsslxnm1kmst5mepda	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1qqR9j:ry81tSQXrpDVBvd0tMGq8WIqADT6_TKKkjKkU8wkans	2023-10-25 04:49:11.060936+00
b6ey6jkxto2qj81uduwwrpc5ctqqbs0f	.eJxVjDsOwyAQBe9CHSFvDCxOmT5nQLtm_UksLBlTRbl7sOTG7cyb91VhoTQWGkU9lCR1U4HKPoWSZQtzrPB-ZUz9R9Ih4ruWq-7XtG8z62OiT5v1a42yPM_t5WCiPNWaWMA5EmycR9fZ3hps0XI0TizTQNBUCF4IKXYQyRuPzNyCcDcgqN8fuJY9og:1qqaM2:c4YpkhWzrdu9YFHHr5QZ63C-n-yfLvb-b3-ZqvUuY6s	2023-10-25 14:38:30.484822+00
e05vdddkmiys65z0u9np77ztqfn8h2lu	eyJfbGFuZ3VhZ2UiOiJheiJ9:1qqbUG:mcVeNTJurHAkUjBm7IrxaBR1COJmI3h4-ZpOLL3p2fQ	2023-10-25 15:51:04.73074+00
u73bbrqge5c31jzr8zb8xlai8ogn6e0t	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1qrgfw:aUmd3gu5dxtdnM7nfkqTfSHvfK_xIxXSLNWIZsDM-0w	2023-10-28 15:35:36.746423+00
yt2zxlf4tc4lof1cw7drczwaptpg6rk0	eyJfbGFuZ3VhZ2UiOiJydSJ9:1qrgll:BkIXVfRXiv5XLcu594sN-Lhb6TsBilEVxTIqmACb9RY	2023-10-28 15:41:37.59309+00
20vmsuimmynvx2augyughjx9mpp50gor	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1qsHR4:iNVqr0hJ4D7SgmCOFBOg401XHizkmPUWvsPf_rBAOYk	2023-10-30 06:50:42.84886+00
0r09z61j9hm1f63jj7ancx6knf8arnlg	eyJfbGFuZ3VhZ2UiOiJheiJ9:1qsMh9:3ZBK6bdmuPfvfQoLedsqyL32fL6fRaWjSU8DPYdzNok	2023-10-30 12:27:39.399016+00
e3uqa4hkmftilz6bbvt0m2euza0wy1im	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1qtNfd:u8xjGE2G_fNpo3gR_PVM7EN7VUIjR35s70blibMO5qs	2023-11-02 07:42:17.792653+00
0z4ss1cj14ulp3vfpove0br05xpborlm	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1qtNhS:jdbf9unXzZ0jHuLgwbsaVX1bZgvRvF8n2QpsaxDUtK4	2023-11-02 07:44:10.673736+00
3is23i7sed7eyolvwfirybrbzl81g764	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1qtNhS:jdbf9unXzZ0jHuLgwbsaVX1bZgvRvF8n2QpsaxDUtK4	2023-11-02 07:44:10.7151+00
gyvjrlwkqoyw1e0cdwl3ybqv0yg159dt	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1qtNhS:jdbf9unXzZ0jHuLgwbsaVX1bZgvRvF8n2QpsaxDUtK4	2023-11-02 07:44:10.805447+00
lkctjphj8z1yq8ycas4klp0h0dh5ydtw	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1qtTCg:pXjs7dntjM_H2dKJpREJYUIoNYJonIfSNQh9LWL8nGQ	2023-11-02 13:36:46.130488+00
njow0tnjo1zw3pk7n540qtoj4cjvk70h	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1qtTCg:pXjs7dntjM_H2dKJpREJYUIoNYJonIfSNQh9LWL8nGQ	2023-11-02 13:36:46.183993+00
h7nywlgrifk1gjg3db2oder5anqggcsy	eyJfbGFuZ3VhZ2UiOiJydSJ9:1qtTG1:2iR00UVzjq79W8RLuqrhBX-txgEGVVeOeo0jhTzoZv8	2023-11-02 13:40:13.460429+00
dmjl40aeeanc9ohvuklr9ul3xu9hufdq	eyJfbGFuZ3VhZ2UiOiJheiJ9:1qtTGF:abjTs6NV-q-5QXxatzUjOw2DH1SRrEz0niXXMNEhYz0	2023-11-02 13:40:27.097962+00
inc1dcbkdv250q3c6nxy9i2920h204ko	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1qtTbv:t8nYuSY-94DfwLg6v7k0EsmR9vNhWsDa4mM6i5zJvlw	2023-11-02 14:02:51.318446+00
38b42ckm6zs6abzrnf4ucwyi1p02byjf	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1r34Tu:NCSnFhZIGcHTyT3NnloWDwuczC9g4qzxt_FUHP05Im8	2023-11-29 01:14:14.723767+00
bshgxrtofjv337ceyk1r7heacoyej4ot	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1r3W8X:Zyt-AQtcvruKv-KUEqMOISXnwCfV50tdOdOrXU_EwC4	2023-11-30 06:46:01.163905+00
a1ab62wde2pb1bq4pfdlywnlgefc26o9	eyJfbGFuZ3VhZ2UiOiJydSJ9:1r4M7i:nmeF67KwsA59C612ur96QPK04gcH_ge8teGYUBXNDBs	2023-12-02 14:16:38.719027+00
elmrl9lbsr31q3zio16h5vbkzy2d9qbb	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1r4es4:rt3DAvNR6QkstXcjPZFWfGwTSWQnehPEXmePTbWj1u4	2023-12-03 10:17:44.14308+00
wt74li8rnokpflrgq9cikqrr1l4w2udy	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1r8iQh:ieVyuQso8koSRSsOQY8cMS3S5kw2pXkcO9yKTmhMxwA	2023-12-14 14:54:15.564728+00
c42t6ntlpdjx2mlivg88q19vsp8kjifo	eyJfbGFuZ3VhZ2UiOiJydSJ9:1rBCis:0fC4TrziLsv9RLJ3ou6dCLgfchVO4RTpc-FFkDdq1uk	2023-12-21 11:39:18.417643+00
xpp5uaklnr8j53cwj5doi2y2i0m3zt9s	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rbzU8:aATE3lZBaPYi9qfeNOgnFIn8A1ZCZeL5E2bo5-KGdxY	2024-03-04 08:58:48.71901+00
qlwrrrgfkszhhuoci2omfwky0yj5zxh7	eyJfbGFuZ3VhZ2UiOiJydSJ9:1rBCkB:mRsSA4U8v6HZHuFUvp_iBzX99mcpwzVhvg0LCDid7Vw	2023-12-21 11:40:39.916066+00
tmgvv8ubmbnwoybvsm7296570ogva2yh	eyJfbGFuZ3VhZ2UiOiJydSJ9:1reqPP:NL5UYbFa5UySI4bh2nO3JhBTNfmGPL7PAwXNhibJsnk	2024-03-12 05:53:43.57858+00
3ngtbt1upedps7b8p7rkj3lrggoteqz0	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rfLJR:TslzhQK-7F63UvPBtN8a1ZZpDVuv31Z2ceOr630yIKo	2024-03-13 14:53:37.784667+00
xv589uoqoeb47ablknukg8dox6sf3q7p	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rfdNd:gCPsN9ytnYhJgJJYCZgN9YTv8SfF18xVhzTcFozgTTw	2024-03-14 10:11:09.715913+00
qv0uetzzorgpynqnl0jcq0af9caduet0	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rULbZ:_VzEfdDtP0-QF74PARf_kDMX4RNVoa07867_WJiI8rE	2024-02-12 06:58:53.210863+00
rhc3r6v3itp9syvlm46wsnyqywnl4lol	eyJfbGFuZ3VhZ2UiOiJydSJ9:1rVsfc:2DxgpKffd5Pj6xuVSctGmo34MoUvl7KRJPooyOJlxN8	2024-02-16 12:29:24.321462+00
6vyjz93ynu9eswkkm95h1mwivoogdhjz	.eJxVjDsOwyAQBe9CHSFvDCxOmT5nQLtm_UksLBlTRbl7sOTG7cyb91VhoTQWGkU9lCR1U4HKPoWSZQtzrPB-ZUz9R9Ih4ruWq-7XtG8z62OiT5v1a42yPM_t5WCiPNWaWMA5EmycR9fZ3hps0XI0TizTQNBUCF4IKXYQyRuPzNyCcDcgqN8fuJY9og:1ri5kS:DIdO54bqEJLEvIcpuZkiOGJx82o3s21UWEBRefgY01s	2024-03-21 04:52:52.840357+00
ookrctgztbgqmvt8x9yi5rspoazw7gon	eyJfbGFuZ3VhZ2UiOiJydSJ9:1rmK89:A6HqAIBg5dqJsq9VCTu-JIRvVVUgLb1UQgwKNL33Zzw	2024-04-01 21:02:49.134503+00
yq6f2xpbz1l1m6dadzx722xu52yw91y0	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rnW8A:mgveyUvtCyn8Z1kTQFVRkYne4oSAUDtN37x5SakxLN0	2024-04-05 04:03:46.454753+00
fthcdcfsqf8werejnl3obxw806li8jt0	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rX0hv:qic6G7OR3MYTaBTWkqonGiB9x3KfiB9uVFVD4tLqoSE	2024-02-19 15:16:27.343047+00
4ed671967de20glbxjp9viif3vqtl4y1	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rYMSZ:UfR2es_9v-1JSKE2eRYOIFZV-AiBWLMkEZxhhtkqx24	2024-02-23 08:42:11.874876+00
w71rurfxe6axmkvf9oxaprqup9yzzhcm	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rv9vh:8Kd1cujv1CSSXzPclga3uslVvto7FEoN3-yHIsy48NY	2024-04-26 05:58:29.743376+00
936axrk69l4revpfaluxdbo14725hrg9	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rwMqC:v5WDBd3ldmCtMxiKWEG18dsMR3eFQyp_ywq_Yyhd1kI	2024-04-29 13:57:48.033785+00
czh0bpdps3jpfj53pzsv38fb7ju48tc4	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rzABD:XcNl-XD-gyYvZycfIO7t5qqmYXmPwHWKlbSDrQuO234	2024-05-07 07:03:03.313637+00
dij5ts9k9wt0m4yd4vyp1p5ddsxbhp9l	eyJfbGFuZ3VhZ2UiOiJydSJ9:1s8yrZ:yZadCywVYXenGM5g2d_pxvJpN9C6g4Gjr9NwSb7pyoA	2024-06-03 08:59:21.407268+00
9lhhpe97c7pmi4nj1e25e8rhn1t0y76o	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1sBA7t:N-nkeq-2Sj1HrZkzF0yXkMqq73z-CTUmgSRKJctVnYk	2024-06-09 09:25:13.482405+00
gy3z8xdhyn2svuzen3ldkfazcu0zbrau	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1sFC4z:1A76teCCWJbfeLTvHGflAWcK6hF5fiXWH0lrPSNAnS4	2024-06-20 12:18:53.185144+00
ppexpi5q91ugr0j6mt9bygga9dwmvy61	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1sGbYo:TlK3wVX3jAFFR6KY_p75bCo6gnfV6WTawwhTFMlTMnE	2024-06-24 09:43:30.284961+00
4fdml4l736m1zm78h01p6ziy2xa5y3yf	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1sKJRB:iN_78MyUdeXZ4x46i6Diw2G4NXeyCKN8HkTn16vXmY8	2024-07-04 15:10:57.388087+00
x1etvxxli2zjehejluh5bl42ld4e83yi	eyJfbGFuZ3VhZ2UiOiJheiJ9:1sQsP3:vF0LAupAqg6ZPqrsHlRQ6NjCL3kneMeirGdNNAbf40I	2024-07-22 17:43:53.714168+00
hxicf2e1lm7mfxoiql5elkfm17tixvor	eyJfbGFuZ3VhZ2UiOiJydSJ9:1sTbNZ:H80D5y6DxunS2suKDwe14hr4yM_YGNOhKrPQkiJcXJs	2024-07-30 06:09:37.369521+00
0j178bu5ekyqr9pcrh54va6p1ga47kf7	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1sXE3I:0JHqyfKkLoIc5u9rdGqVbglQ9ycTLx1tlWMlY28zWos	2024-08-09 06:03:40.203739+00
dfm0f95rqezszbhb7y2u0cxapr4qz0r4	eyJfbGFuZ3VhZ2UiOiJydSJ9:1sZszz:7mxwv4DwOjxDUWT4Q3088EKMw7VA4xIHqJxv7RvV-6U	2024-08-16 14:11:15.165505+00
xi6qztsdcm645oj7i9tuwc47t7z1vyve	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1sanCd:MqpIncB-adO0efklFYKdePZdac3VxexXqJvbtoHe8yo	2024-08-19 02:12:03.337842+00
xxho07n6idks68o9lrd7q82k00itw1y0	eyJfbGFuZ3VhZ2UiOiJydSJ9:1sgfdl:d8-H8HWQK-_6gF-Ct1NFT2nDY8YaRZmh0y3hfIF-Vok	2024-09-04 07:20:21.211402+00
eicdipgpd2lssuu7flfahgbz4ckuyzga	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1skIAp:Rl2gr-j-yUiOxaZOvvKhq4IpPvrDEr7-SDKcykEGZ-s	2024-09-14 07:05:27.884018+00
wob4lryfqmxsaeu35j6tl20u5kh1u2y0	eyJfbGFuZ3VhZ2UiOiJydSJ9:1slLyv:CfPXJaSxzCYqn1t_2RBQ_96xjnpB7aFaL18SdiFT8dg	2024-09-17 05:21:33.376223+00
cnzp44cuwgtz9o1cto4hyzqgq53rj0wp	.eJxVjjsOwyAQRO9CHSETAwsp0_sMaBfWxollS_40iXL3gOQiaefNPM1bBDz2HI6N1zAmcRNXcfnNCOOT5wrSA-dhkXGZ93UkWSvypJvslsTT_ez-CTJuuayRWFmLDI11YL2JRkMLhpK2bAh7VE0JlWMETF4ldNoBEbWKyfegqnQqBw4cuOpe4vMF0sM9qg:1rGBAG:fXuYrh5MT447SXzg3Mgb8QkKQWmmljRXI2NxiPHHehE	2024-01-04 05:00:08.670837+00
rnc213bb1s2s2omxpy30kzx0kc9obs2c	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1rGdMe:LJza5YWGlnsgJXFK0Rs8ilK4bVcRxnzLu27vT5H1qs4	2024-01-05 11:06:48.53399+00
j2fdhjpt7qx27fjl35l6vbogpeol449q	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rGiO6:jDdcT62a0XvyEF7QTRwNrX2S-om21AQXlJoBX_45YiA	2024-01-05 16:28:38.86638+00
1j1l98zcnkihdcc4xrg1fqlr7cynsp2s	eyJfbGFuZ3VhZ2UiOiJydSJ9:1rVsfW:GZoiMmKEw_9gSXISj28FwNx0FyMhad9UWhxaFjMst5g	2024-02-16 12:29:18.909139+00
esusbrkqw2j4ro3ukj856fd960w50u02	eyJfbGFuZ3VhZ2UiOiJydSJ9:1rVsfh:ZEzTZx02sjrWC3IgSXzDLGr19o6vU3hESXgF1jk9skk	2024-02-16 12:29:29.900222+00
3xcg1esxjqxgit5ax4a19ha1oyo05abh	.eJxVjDsOwyAQBe9CHSFvDCxOmT5nQLtm_UksLBlTRbl7sOTG7cyb91VhoTQWGkU9lCR1U4HKPoWSZQtzrPB-ZUz9R9Ih4ruWq-7XtG8z62OiT5v1a42yPM_t5WCiPNWaWMA5EmycR9fZ3hps0XI0TizTQNBUCF4IKXYQyRuPzNyCcDcgqN8fuJY9og:1rYiF1:Va6xmHtMpGvlri7_UzpTJt4YD4SWuNbqJI0vM6EaOOU	2024-02-24 07:57:39.281801+00
gisila0pmd8rachvikd40ra0zk0vzxwj	eyJfbGFuZ3VhZ2UiOiJydSJ9:1reqDY:SmumzUDM8IP6pfzhh6dGzM5NJpr3N42PBKQWV2sKvxo	2024-03-12 05:41:28.532435+00
0124lq8dl8i2kdvx2pqe3bh7orzmq3nm	eyJfbGFuZ3VhZ2UiOiJydSJ9:1rfLJa:CeXRCMcbOUsXB7KgpMVJTv-Aat7BRvakYtBTOK7MIj4	2024-03-13 14:53:46.252115+00
6u0fva9qxeods6xjoshh8tses43yg64y	.eJxVjjsOwyAQRO9CHSETAwsp0_sMaBfWxollS_40iXL3gOQiaefNPM1bBDz2HI6N1zAmcRNXcfnNCOOT5wrSA-dhkXGZ93UkWSvypJvslsTT_ez-CTJuuayRWFmLDI11YL2JRkMLhpK2bAh7VE0JlWMETF4ldNoBEbWKyfegqnQqBw4cuOpe4vMF0sM9qg:1rLHW8:ZMCDd0KmwlHHXd-Oj8Of1Ac2cyhRg7lCP9a6w6YSm_0	2024-01-18 06:47:48.55395+00
amcdwmmhspjvs2mmlamftjmz7orw879v	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1ri5js:qBFytU89bA_nDLnDkEDrG8jADt2-xK3kem1iI9pvUHM	2024-03-21 04:52:16.681068+00
0yho0jpar8az0vfxe05hrsuc1qjw2bzo	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1rLI7j:uXOTl-l1ZBekQF7OjMWgXXFCPqqcn-_VCsq-YfgF4uM	2024-01-18 07:26:39.888449+00
br5o1vho6z30mnqvgfbknp29t5t3xbm7	eyJfbGFuZ3VhZ2UiOiJydSJ9:1ri5jt:e7dXl9RzkYGPslh10rcxkfXwSsnyAlIEl6b773VZbYQ	2024-03-21 04:52:17.96781+00
qibbpxg6yrtm7pnzhdc93rj0qmul6gbf	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1rODmy:io-lpa4eoW0UnMNqolsWR9A2fg5jquIZnQqlXK38f0I	2024-01-26 09:25:20.377247+00
d74ykvt6mzabe5e0c05k7heiacsa74b3	eyJfbGFuZ3VhZ2UiOiJydSJ9:1rlCRe:JzwbMTkgjlKwbe7qt8qQW9-u76rAS9_skXFKhvrGQ50	2024-03-29 18:38:18.639629+00
rdzxp5y9od4nxtadntjvb2qaprdul8ll	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rPHbp:mYZ34oFXd4b27OuBeEhist3PWZqxaBqFmzyaupm-0K0	2024-01-29 07:42:13.008111+00
do1yk9lcpaj89n2s60zpt6k0ew9xbk08	.eJxVjDsOwyAQBe9CHSFvDCxOmT5nQLtm_UksLBlTRbl7sOTG7cyb91VhoTQWGkU9lCR1U4HKPoWSZQtzrPB-ZUz9R9Ih4ruWq-7XtG8z62OiT5v1a42yPM_t5WCiPNWaWMA5EmycR9fZ3hps0XI0TizTQNBUCF4IKXYQyRuPzNyCcDcgqN8fuJY9og:1rX0P3:Q6RgHMXzWhIIB3QdKoi6-Wa0ZM49QX9qMzovnGLZ05E	2024-02-19 14:56:57.21251+00
0i3zl1h0yhwupybpirv2a7l6jdytiyk5	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rQ78A:NGtU_u53ryI0q6Yoa7gaf4TmqLLMe1LCdmA5JPqBLxQ	2024-01-31 14:43:02.335549+00
ledm3j7615hwobnr1kwhfgb2txlqwa9x	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rQoMU:HZaIQsul36DYiz1vzSdb2anDK0S9XU5dWuKJ6a5fQzc	2024-02-02 12:52:42.890569+00
3v576y1r2ozc6ak8c4snxobsykno7f73	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rn1JD:3LPkHQ1K-g99CfTwkyg0ZCev28mK_P8-kH1d3IEcjcE	2024-04-03 19:09:07.789369+00
wws90axw2yy8fqs7bn7rljhutcl1ri9o	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1rpoaP:I77n0ChnRjZBwywBPzI21x0YbvUD_17FE3ZSWTHeuls	2024-04-11 12:10:25.335876+00
ot2wx2jvb1y6jeb56s3qcqhga94s3hu0	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1ruRjL:umWvRJLFK_wrUzQlS_Wt6AtiO2eY4lpRq8BEORG5n8M	2024-04-24 06:46:47.68313+00
1vakexgcgzc99f0j2zqcb3psjjmkpiri	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rwMt6:uPPrcJI8TPoVtT7WxdWhYtZWh8x4qK5Xv7bhxoXNero	2024-04-29 14:00:48.508242+00
2k7ruf6yi84dmlaln1c9mms5m7p14nwq	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1s7B8U:OwzkwyCXygN4QGHBRXRDB5MSPuXvhjw_xnL2HdM8-DU	2024-05-29 09:41:22.440076+00
edi2h1stp7j9lqed03a6sq47q62fmijq	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1sAyZy:CB0CvTWMptSBkz087ZC5tLL7wZ3REKZL1wo3gkHKU8c	2024-06-08 21:05:26.771855+00
f516hiddcdne03cz21y3uh4b9j1p892x	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1sEY6r:yXBA_rAkDStJBuJq_r4mqLaq99eOHeMps1Xd7FvSFsM	2024-06-18 17:38:09.119098+00
ofzakl9d1jwg7fzpbbpv9u6otx61lrbg	eyJfbGFuZ3VhZ2UiOiJydSJ9:1sGZc0:V-WlS5eHpn9V1FPAKcZBPHM42HdM3ULJzLav5PcpIXo	2024-06-24 07:38:40.591934+00
gwl9jne5jzftte9tx1b67l42d2vodcl0	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rYMFc:-rIOWhlwsBec2LKeUXXWDRyy3hd-niwhwD7QpFcPzco	2024-02-23 08:28:48.058012+00
hohk4k8eityk8xxw3ht11erq1jmhy3rl	eyJfbGFuZ3VhZ2UiOiJheiJ9:1sGktl:mDAfeQ8jYeQ-XpyvP7JPDt1egMYeo9xbsFMQGDA9ck8	2024-06-24 19:41:45.976719+00
nadocegqhcez1wvgcvyz9royl9nknufd	eyJfbGFuZ3VhZ2UiOiJydSJ9:1sQkUm:5oI4Z97PfqzeFUldqbFW_f-vTDH55vw1Uykx0_2AO0k	2024-07-22 09:17:16.380401+00
uk62ibs05pw3ohmpc7eaf79sofjuzenk	eyJfbGFuZ3VhZ2UiOiJydSJ9:1sRqAn:-kLKw3QJtb4YZlDFyt6GF_1MDEiEizuwmHj-8rC02Cs	2024-07-25 09:33:09.976995+00
8nsufmlfmrjh0erh5v8vl1fivkesdm0v	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1sXE31:R-CZGDG17ywqaeId4ls_X8k8uhIN-U600yG4YsYZtNk	2024-08-09 06:03:23.837391+00
0sl0qf66i7n9k9z1itp0nj1tzhrf9k79	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1sZCUO:YQAmNWLjshNHtgcwjHJnbM8B-Rcj_LS49912vzQtdcU	2024-08-14 16:47:48.755666+00
rp83bqk5yr1gongtzg9hc4802zc44lz5	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1salrq:yHxQBSiH49NFON99XTb0Wguott0ou7S3nhityCD_W_c	2024-08-19 00:46:30.773521+00
ak0y6svo1ejb0ewv1gats9cflh9dfa4n	.eJxVjjsOwyAQRO9CHSETAwsp0_sMaBfWxollS_40iXL3gOQiaefNPM1bBDz2HI6N1zAmcRNXcfnNCOOT5wrSA-dhkXGZ93UkWSvypJvslsTT_ez-CTJuuayRWFmLDI11YL2JRkMLhpK2bAh7VE0JlWMETF4ldNoBEbWKyfegqnQqBw4cuOpe4vMF0sM9qg:1rYPV5:l171cpGTmo_whhOmqxsutvdx_ENWblC6qO6aSefxsFE	2024-02-23 11:56:59.566473+00
mne5vlz3o66vgljkh6w6sl23a6ma7zay	eyJfbGFuZ3VhZ2UiOiJydSJ9:1rYSSU:gFkyPQP74FmCktSfMT06CHFv92-N82d7h_frLU6Sz0A	2024-02-23 15:06:30.767792+00
kzr9yd38zr4gohwnltdleu6kyc15fxwu	eyJfbGFuZ3VhZ2UiOiJydSJ9:1sixQO:vp8lAQSUJjT0NHm5oO0dvs-rKOai-eezT_r7is8PmMY	2024-09-10 14:44:00.172979+00
679aw0qfp6zx4vs73iv390syvdnrhuct	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1skIBe:PncVT8Bi9vgPO3wtx9Ht33toTyCy0V7Y0BwSN4PdQCI	2024-09-14 07:06:18.404072+00
rnn3ts31ba4153xo3e2mnw1gcri73ggm	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1snaUH:aj4F8QRRydSf_6oYxHLsRt7Pw3w0ZKjgEFbgYYCkb_8	2024-09-23 09:15:09.906619+00
kersyku91fximh2y9gu28usjh1uagzex	eyJfbGFuZ3VhZ2UiOiJheiJ9:1snd8o:1n7eRO-oMCQf8dmtAYwNHJrz45W5GS2lM9vvMWh2JfM	2024-09-23 12:05:10.662409+00
\.


--
-- Data for Name: django_summernote_attachment; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.django_summernote_attachment (id, name, file, uploaded) FROM stdin;
1	Salam	django-summernote/2024-02-02/bf6d638c-f841-40e0-bfd7-63d8335034ad.jpg	2024-02-02 07:31:32.219049+00
\.


--
-- Data for Name: home_client; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.home_client (id, name, image) FROM stdin;
12	Buta Construction	butaconst_1.svg
11	Bravo	Clip_path_group.png
10	North West	northwest_1.png
9	Pasha Construction	pashaconst_1.svg
8	SOCAR	Page_1.svg
7	AzerSun	azersun_1.png
13	Coca-Cola	WhatsApp_Image_2024-01-23_at_09.01.23.jpeg
14	Azerbaijan Central Bank	WhatsApp_Image_2024-01-23_at_09.01.22.jpeg
15	ATS Food	WhatsApp_Image_2024-01-23_at_09.01.22_1.jpeg
16	PASHA Malls	WhatsApp_Image_2024-01-23_at_09.01.24.jpeg
18	SHINKAR	WhatsApp_Image_2024-01-23_at_09.01.23_2.jpeg
19	SIRAB	WhatsApp_Image_2024-01-23_at_09.01.23_1_4C0tJS7.jpeg
22	Vefa Clinic	Untitled_8GaeJid.png
23	KINDERLAND	d869c27d-0749-454b-8624-09f895d8f324.png
17	Sport Plaza	a1c3c77d-7128-40eb-b971-507315ccc946.jpg
21	Grand-Agro	6816ad43-90b6-4558-ad81-0617c88c8825.jpg
\.


--
-- Data for Name: home_contact; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.home_contact (id, ad, email, elaqe, text) FROM stdin;
1	Elvin Seyidov	alvinseyidov@gmail.com	23	sd
2	Elvin Seyidov	alvinseyidov@gmail.com	23	sd
3	mikeShinccag@gmail.com	mikeShinccag@gmail.com	81885445111	Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat's right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.monkeydigital.org/affiliate-dashboard/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Peacock\r\n \r\nMonkey Digital
4	draikkimr976@gmail.com	draikkimr976@gmail.com	87177846388	Hola, quería saber tu precio..
5	alvinbbm41@gmail.com	alvinbbm41@gmail.com	87921695457	Hæ, ég vildi vita verð þitt.
6	alfredegov@gmail.com	alfredegov@gmail.com	83856158673	Γεια σου, ήθελα να μάθω την τιμή σας.
7	alfredegov@gmail.com	alfredegov@gmail.com	81545987755	Dia duit, theastaigh uaim do phraghas a fháil.
8	libbyevans461@gmail.com	libbyevans461@gmail.com	79 155 41 63	Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers safely and practically. \r\n\r\nWe aim to gain you 400-1200+ real human followers per month, with all actions safe as they are made manually (no bots).\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nLet me know if you wish to see some of our previous work.\r\n\r\nKind Regards,\r\nLibby
9	georginahaynes620@gmail.com	georginahaynes620@gmail.com	0370 6712080	Hi,\r\n\r\nWe'd like to introduce to you our explainer video service, which we feel can benefit your site torch.az.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=bWz-ELfJVEI\r\nhttps://www.youtube.com/watch?v=Y46aNG-Y3rM\r\nhttps://www.youtube.com/watch?v=hJCFX1AjHKk\r\n\r\nOur prices start from as little as $195 and include a professional script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don't hesitate to reply.\r\n\r\nKind Regards,\r\nGeorgina\r\n\r\nIf you are not interested, unsubscribe here: https://explainervideos4u.net/unsubscribe.php?d=torch.az
10	Ozgur CELEBI	ozgur@bogazicicelik.com.tr	+905302017667	Dear Project Manager and Purchasing Manager\r\n\r\nI would like to introduce our company;\r\n\r\nIn Turkiye, we are a steelwork project manufacturer.\r\n\r\nOur purpose is to become your high-quality supplier with 20 years of experience.\r\n\r\nOur work area includes the following services:\r\n\r\n•\tLaser Cutting, Plasma Cutting\r\n•\tPress Brake, Bending\r\n•\tSA 2,5 Shotblasting & Primary Coating\r\n•\tWelded Fabrication\r\n•\tStructural Metal Building Projects\r\n•\tSupply of Steel Sections And Plates\r\n•\tMetallic Structures for Solar Panel Systems\r\n\r\nYou could visit our website by clicking on the following link, which also has more details about us.\r\n\r\nWe are excited to begin working with you on your projects.\r\n\r\nKindly review our website and let me know what you think\r\n\r\nhttps://bogazicicelik.com.tr/\r\n\r\nKind Regards,
11	EN	tobiasginder@yahoo.com	53-64-03-84	SV77 is having a massive sale, and you don't want to miss out on this incredible opportunity \r\nto elevate your wardrobe with unique and collectable designer items.\r\n\r\n\r\nhttps://www.instagram.com/1daydiscountcom\r\n\r\n- Click the link to redeem your instant discount.\r\n\r\n- Tag us in your photos wearing your SV77 finds and use the hashtag #SV77style for a chance to be featured on our \r\npage.\r\n- Share this post with your friends and followers so they \r\ncan take advantage of this incredible offer too.\r\n\r\n\r\n- We can't wait to see you rocking your SV77 style!\r\n\r\n\r\nBalenciaga 42 https://www.instagram.com/1daydiscountcom\r\n\r\nFor a limited time only, you can enjoy a whopping 50% discount on all items in our store.\r\nThis is the perfect chance to snag those coveted pieces you've been eyeing, or to \r\ndiscover new hidden gems that will make you stand out from the crowd.\r\nBalenciaga Sunglass\r\n\r\nOur curated collection features a wide range of \r\nstyles, from bold and statement-making to classic and timeless.\r\nSo whether you're looking for a show-stopping outfit for a special occasion or some everyday essentials to add a touch of luxury to your look, you're \r\nsure to find something you love at SV77.\r\n\r\nDon't miss out on this amazing sale! Visit our website \r\nor store today and start shopping.\r\n\r\nhttps://www.instagram.com/1daydiscountcom\r\n\r\nMore Posts\r\n\r\nWhy is Balenciaga suing the producers of its own ad \r\ncampaign? https://shor.by/fashioncelebritytrends\r\nHow would someone wear mismatched shoes as a fashion statement?\r\nhttps://www.facebook.com/fashioncelebritytrends\r\nWhat is the dress code for the National Opera in Kyiv?\r\nhttps://www.instagram.com/fashioncelebritytrends\r\nEst-il préférable de porter des vêtements blancs plutôt que des vêtements foncés par temps chaud ?\r\nPourquoi ? https://www.facebook.com/DenhamPub\r\n\r\nTop Discounts\r\n\r\nbalenciaga bag silver https://www.instagram.com/1daydiscountcom\r\nblack and white balenciaga sunglasses https://twitter.com/DenhamPub\r\nbalenciaga style bag http://shymca.org/salon/bbs/board.php?bo_table=promotion&wr_id=369331\r\nbalenciaga 45 https://facebook.com/fashioncelebritytrends/posts/pfbid0WeKNFS9MZ7xaeu7JH5KLd1yhJCdro1pgy1ZE5yzGp5uMNJbmMPcLNaeh3DEzSYyml\r\nbalenciaga ski rectangle sunglasses https://facebook.com/fashioncelebritytrends/posts/pfbid0KAgW4B319CxAJjCrSndxB5dzNY6oKVjt33MjvQSK7yKYvMeHygjjx1He1rpuFBdWl\r\nbalenciaga metal https://www.instagram.com/p/CyrUGNnKTu1/\r\nneo classic mini balenciaga https://www.instagram.com/p/CyqyDZkrXag/
12	GeorgeLewDF	yasen.krasen.13+88518@mail.ru	83536456264	Nguheidjiwfefhei ijiwdwjurFEJDKWIJFEIF аоушвцшургаруш ШОРГПГОШРГРПГОГРГ iryuieoieifegjejj bvncehfedjiehfu torcheu.com
13	NN	annmariebruni@googlemail.com	502-266-0329	Protege tus Dólares. Protege tu Capital. ¿Cuenta Offshore?\r\n¡No es solo para los ricos!\r\n\r\n¿Estás cansado de que la inflación se coma tus ahorros?\r\n¿Te preocupa que el gobierno te confisque tus bienes?\r\n¿Quieres proteger tu capital de las crisis económicas \r\nque azotan a Latinoamérica y España?\r\n\r\nSi es así, entonces necesitas considerar la posibilidad de abrir una cuenta offshore.\r\n\r\n\r\nUna cuenta offshore es una cuenta bancaria que se abre en un país diferente al de tu residencia fiscal.\r\n\r\nLos países offshore se caracterizan por tener bajos \r\no nulos impuestos, y por ofrecer un alto grado de confidencialidad.\r\n\r\n\r\nLas cuentas offshore son una excelente manera de proteger tu patrimonio de las crisis económicas y de la inflación. Además,\r\nte permiten reducir tu carga fiscal y optimizar tu planificación financiera.\r\n\r\n\r\nhttps://twitter.com/lamervaletacom/status/1717262015167631427\r\n\r\n¿Por qué los latinoamericanos y españoles deberían tener una cuenta offshore?\r\n\r\n\r\nLatinoamérica es una región con una alta volatilidad económica.\r\nLas crisis económicas son frecuentes y los gobiernos suelen implementar medidas \r\nconfiscatorias para enfrentarlas.\r\n\r\nPor ejemplo, en Argentina, el gobierno ha confiscado depósitos bancarios en varias ocasiones en los \r\núltimos años. En Venezuela, el gobierno \r\nha impuesto controles de cambio y ha confiscado empresas privadas.\r\n\r\n\r\nUna cuenta offshore te permite proteger tu capital de \r\neste tipo de riesgos. Al abrir una cuenta en un país \r\noffshore, tu dinero estará fuera del alcance del gobierno \r\nde tu país de residencia.\r\n\r\nEspaña cuenta actualmente con un gobierno populista que sigue los pasos de Argentina y Venezuela, lo mismo pasa con Brasil, Ecuador y Perú.\r\n\r\n\r\n\r\nAdemás, los países offshore ofrecen bajos o nulos impuestos sobre \r\nla renta, las ganancias de capital y los dividendos. Esto \r\nsignifica que puedes ahorrar mucho dinero en impuestos si tienes tu dinero en una cuenta offshore.\r\n\r\n\r\n¿Cómo abrir una cuenta offshore?\r\n\r\nAbrir una cuenta offshore es muy sencillo. Haz click en este link si quieres proteger tu capital https://twitter.com/lamervaletacom/status/1717262015167631427\r\n\r\nLos bancos offshore suelen solicitar una copia de tu pasaporte, una copia de tu comprobante de domicilio y una \r\nreferencia bancaria.\r\n\r\nUna vez que hayas completado la documentación, el \r\nbanco te abrirá una cuenta y te enviará los datos de acceso.\r\n\r\n\r\n¿Cuánto cuesta abrir una cuenta offshore?\r\n\r\nEl costo de abrir una cuenta offshore varía de un banco a otro.\r\nSin embargo, la mayoría de los bancos offshore cobran una tarifa de apertura de cuenta de entre 500 y 1000 \r\ndólares.\r\n\r\nAdemás, los bancos offshore suelen cobrar una tarifa de mantenimiento de cuenta \r\nmensual de entre 10 y 20 dólares.\r\n\r\nConclusión\r\n\r\nLas cuentas offshore son una excelente manera de \r\nproteger tu patrimonio de las crisis económicas, de la inflación y de la confiscación gubernamental.\r\nAdemás, te permiten reducir tu carga fiscal y optimizar tu planificación financiera.\r\n\r\n\r\nSi estás cansado de que el gobierno te diga qué hacer con tu dinero, entonces necesitas considerar la posibilidad \r\nde abrir una cuenta offshore.\r\n\r\n¿Qué estás esperando? ¡Abre tu cuenta offshore hoy mismo!\r\n\r\nCuentas offshore de transacciones intradía\r\nhttps://twitter.com/lamervaletacom/status/1717262015167631427\r\n\r\n¿Cuáles son las buenas razones para tener una cuenta bancaria offshore?\r\nhttps://twitter.com/lamervaletacom/status/1717262015167631427\r\nHow to open a bank account in Cyprus for an offshore company https://twitter.com/lamervaletacom/status/1717262015167631427\r\n¿Puede el IRS rastrear cuentas extraterritoriales?\r\nhttps://twitter.com/lamervaletacom/status/1717262015167631427\r\n¿Qué es la banca extraterritorial? ¿Están todos los bancos extraterritoriales ubicados en islas?\r\nhttps://twitter.com/lamervaletacom/status/1717262015167631427\r\n\r\ndía de pago de cuenta offshore 2 https://twitter.com/lamervaletacom/status/1717262015167631427\r\nLas mejores cuentas bancarias internacionales online. https://twitter.com/lamervaletacom/status/1717262015167631427\r\ntasas de ahorro extraterritoriales https://twitter.com/lamervaletacom/status/1717262015167631427\r\nis it illegal to have an offshore account https://twitter.com/lamervaletacom/status/1717262015167631427\r\noffshore bank account swiss https://twitter.com/lamervaletacom/status/1717262015167631427\r\ntd ameritrade offshore account https://twitter.com/lamervaletacom/status/1717262015167631427
14	AhmedOdonaGQ	hip282985@gmail.com	86648713551	Earning $30,000 per Month in Email Marketing: The Road to Prosperity http://email-marketing-34233552.dantojochilango.com/shop?35002
15	WilliamcogYT	pineapplepete66@gmail.com	86827661963	Don't Wait: Confirm Your Recent Fund Deposit http://moneyrushonline-675232.wsrpl.com/money
16	meganatkinson149@gmail.com	meganatkinson149@gmail.com	0478 28 19 58	Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- We guarantee to gain you 300-1000+ followers per month.\r\n- People follow you because they are interested in you, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any 'bots'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you have any questions, let me know, and we can discuss further.\r\n\r\nKind Regards,\r\nMegan
17	DonaldMoRRZ	fredtodd@bigpond.com.au	89533351899	Take the First Step to Financial Success with $30,000 Per Day Earnings http://marketing-66561298.dantojochilango.com/offer?51482
18	MigueltrordKO	brian22vine@gmail.com	81861782449	IMPORTANT! YOUR INCOME WAS $45,885.91. WITHDRAW THIS MONEY URGENTLY http://fundsgoout-3547450.haighhouse.com/page?125
19	WesleyElemoYK	mauriziobrozzi@alice.it	87877579815	We analyzed the position of your site in Google search results and developed a method for promoting your site torcheu.com in the TOP 1 of Google search results in 3 minutes - https://shoppy.gg/product/Jqmdt8y?torcheu.com
20	lu look	lulook@126.com	13247533911	Dear sir, \r\nWe are Elevator and Escalator spare parts vendor and manufacturer in China, we can produce meta and plastic parts as per sample provide.\r\nWe hope to send our offer for your reference if you need to check spare parts for elevator and Escalators in future.\r\n Best regards, Lulook\r\nOversea department\r\n\r\nEmail: lulook@126.com\r\n\r\nTel/ whats app: 0086 132475 33911\r\n\r\nRun Top International holding (HK) LTD\r\n\r\nonline store: http://www.aliexpress.com/store/205724\r\n\r\nWebsite: www.runtop-elevatorparts.com
21	libbyevans461@gmail.com	libbyevans461@gmail.com	040-7403868	Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 300-1000+ followers per month.\r\n- Real, human followers: People follow you because they are interested in your business or niche.\r\n- Safe: All actions are made manually. We do not use any bots.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you are interested, and would like to see some of our previous work, let me know and we can discuss further.\r\n\r\nKind Regards,\r\nLibby
22	HaroldcalXS	baillon.jerome@t-online.de	89779555649	NAKED TEEN GIRLS LOOKING FOR SEX http://dating-1713.situs-mega4d.com/page-900
23	WaynebaLAE	gr@gretchenreevescpa.com	87579127982	Daily Dollars: The Art of Earnings on Investments from $9000 and Beyond https://marketplacebest888.sell.app/product/what-experts-are-silent-about-or-top-17-cryptocurrencies-that-will-soon-fly-to-the-moon?8284028
24	RaymondSicleMW	no.reply.KnutSmit@gmail.com	88473887199	What’s up? torcheu.com \r\n \r\nDo you know that it is possible to send a legitimate proposal? We offer a novel way of sending requests via feedback forms. Many websites offer such forms. \r\nWhen such proposals are submitted, no personal information is utilized, and messages are routed to forms specifically configured to receive messages and appeals securely. Also, messages sent through Feedback Forms don't get into spam as such messages are considered to be of great importance. \r\nTry out our service – no cost involved! \r\nYou can benefit from our service of sending up to 50,000 messages. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis letter is automatically generated. \r\nPlease use the contact details below to get in touch with us. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\nWe only use chat for communication.
25	QX	jefferywilmer@bellsouth.net	QE	If you won the jackpot, where would you vacation?\r\n\r\nA Grandpa just hit the $500,000 jackpot at Chumash Casino \r\nin California..\r\n\r\nThen he tried his luck a few weeks after and won the largest jackpot in Chumash history..\r\n\r\n\r\n(He won $1.3 Million the second time!)\r\n\r\nSo when wealth experts tell you that “you don’t work hard enough”, the \r\nactual Neuroscience says they’re MISLEADING you!\r\n\r\n\r\nBillionaires use this Brainwave to attract money instead of chasing it \r\nbecause they’ve activated it…\r\n\r\nThe trick is a 7-Second Brainwave, created by leading neuroscientist Dr Thomas Summers..\r\n\r\n\r\nA neuroscientist of 34 years, Dr. Summers was among the very first \r\nscientists to investigate the link between brain waves and money.\r\n\r\n\r\nSo the 7-Second At-Home Ritual you’re about to see is based on decades of first-hand \r\nexperience…\r\n\r\nWhen you tap the button below, you’re going to \r\nsee:\r\n\r\n\r\n������ Dr Summers 7-Second Brainwave that anyone can do at-home to make more money start appearing in your life as soon as today…\r\n\r\n������ You’ll also discover the 250 Million year-old brain region now proven in 4 neuroscience labs to attract money (it’s sitting inside you right now)..\r\n\r\n\r\n������ Plus the 3 “Innocent Habits” people do EVERYDAY \r\nthat cause manifestation to NOT work for you...\r\n\r\nSo if you’re finding it impossible to get ahead, then go ahead and tap the button below this video to see Dr.\r\nSummers 7-Second Brainwave now while it’s still online.\r\n\r\n\r\n\r\nWe live in a time where most people struggle financially..\r\nManifest Abundance and Prosperity\r\n\r\nBut now you can let the money come to you starting today, by harnessing the hard \r\nwork of 34 years of neuroscience..\r\n\r\nTap the link below this video to see Dr. Summer’s 7-Second Brainwave now and \r\nthe scientific truth about attracting money..\r\n\r\nClick to Order the Billionaire Brain Wave program and receive a special bonus gift!\r\n\r\n\r\nhttps://shor.by/fashioncelebritytrends\r\n\r\nWhat is the price of Billionaire Brain Wave?\r\n\r\nDespite its remarkable efficacy, the Billionaire Brain Wave \r\nprogram is available today for a mere $39. The program can be conveniently downloaded to your preferred \r\ndevice. Since it's an electronic program, you won't incur any shipping fees, translating to even greater \r\nsavings. Hurry, though, as this discount may not last long.\r\nI want to manifest wealth. How can I do that in 24 hours?\r\n\r\n\r\nFurthermore, the program offers a generous 90-day money-back guarantee.\r\n\r\nIf you find the program ineffective, you can request a refund within 90 days of your purchase, exclusively through the official website.\r\n\r\n\r\nBut that's not all; your purchase also unlocks four exceptional free bonuses:\r\n\r\nBonus #1: The Warren Buffett Pyramid This bonus imparts three essential steps for transforming your newfound fortune into an endless stream of wealth.\r\n\r\nBonus #2: 7 Lazy Millionaire Habits Featuring interviews with "lazy rich people," this compilation unveils their secrets \r\nto happiness and abundance, amplifying the effects of the Billionaire Brain Wave.\r\n\r\nBonus #3: Quick Cash Manifestation This bonus empowers \r\nyou to achieve swift and effortless profits—a valuable resource \r\nfor those in urgent need of financial relief.\r\n\r\nBonus #4: 500 Billionaire Brain Wave Success Stories This guidebook showcases the inspiring stories of over 500 individuals who have benefited from the program, offering motivation and boosting your \r\nchances of success.\r\n\r\nClick to Order the Billionaire Brain Wave program \r\nand receive a special bonus gift!\r\nhttps://shor.by/fashioncelebritytrends\r\n\r\nWhat is it like to be on a flight with a celebrity? - https://www.facebook.com/fashioncelebritytrends\r\n¿Cuál es la foto más vergonzosa de Jamie Foxx? - https://www.instagram.com/fashioncelebritytrends\r\nWhat does an EEG show when meditating? Does the EEG show different brain activity when a person is experienced in meditation versus a person who is new \r\nto meditation? - https://shor.by/fashioncelebritytrends\r\neuro money - https://www.instagram.com/1daydiscountcom\r\n¿Es Jennifer Aniston amable con sus fans? - https://www.facebook.com/fashioncelebritytrends\r\nWealth Manifestation Offer - https://shor.by/fashioncelebritytrends\r\nDid the Friends director share the castmates' 'devastating' reactions to Matthew Perry's loss?\r\n- https://www.facebook.com/fashioncelebritytrends\r\nTaylor Swift Songs: In the song 'Style', why is the lyric \r\n'Take me home - Just take me home - Yeah, just take me home' in the song?\r\n- https://www.facebook.com/fashioncelebritytrends\r\njoe alwyn taylor swift - https://shor.by/fashioncelebritytrends\r\n¿Cómo es que (a excepción de la gira Era) Taylor Swift no ha estado de gira \r\ndurante 4 años? - https://shor.by/fashioncelebritytrends\r\nAffirmations Abundance Prosperity - https://perm.krovli-fasadi.ru/bitrix/redirect.php?goto=http://mutumi-system.com/blog/%3Fp=103\r\nAffirmations for Money and Love - http://gustoesapore.ba/index.php?option=com_k2&view=item&id=3\r\nWhat You Can Learn From Bill Gates About Billionaire Brain Wave - https://shor.by/fashioncelebritytrends\r\nActivate You Billionaire Brain Wave - https://www.facebook.com/fashioncelebritytrends\r\nWhy Billionaire Brain Wave Is The Only Skill You Really Need - https://velvex.shop/bitrix/rk.php?goto=http://Camera.az/bitrix/redirect.php%3Fgoto=http://www.aha.ru/~fordmax/wwwboard/messages/324.html\r\nMy girlfriend has a celebrity crush and she keeps calling him 'yummy' and it just makes me feel so bad about \r\nmyself I know it seems foolish but how do I handle this?\r\n- https://www.tiktok.com/@fashioncelebritytrends\r\nWhat should I do when a celebrity wants to \r\ndate me but I’m not a celebrity? - https://www.youtube.com/@FashionCelebrityTrends\r\nhttps://shor.by/fashioncelebritytrends
26	meganatkinson149@gmail.com	meganatkinson149@gmail.com	06-18547504	Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 300-1000+ followers per month.\r\n- Real, human followers: People follow you because they are interested in your business or niche.\r\n- Safe: All actions are made manually. We do not use any bots.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you are interested, and would like to see some of our previous work, let me know and we can discuss further.\r\n\r\nKind Regards,\r\nMegan
27	Mike Mercer	mikeGrieveMara@gmail.com	89149234569	Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit from an increase in authority. \r\n \r\nOur solution guarantees you a high-quality domain authority score within a period of three months. This will increase your organic visibility and strengthen your website authority, thus making it stronger against Google updates. \r\n \r\nCheck out our deals for more details. \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\nNEW: Ahrefs Domain Rating \r\nhttps://www.monkeydigital.co/ahrefs-seo/ \r\n \r\nThanks and regards \r\nMike Mercer
28	Mike Kennedy	mikeHefprodohefkNole@gmail.com	83787812145	If you are looking to rank your local business on Google Maps in a specific area, this service is for you. \r\n \r\nGoogle Map Stacking is a highly effective technique for ranking your GMB within a specific mile radius. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/product/google-maps-pointers/ \r\n \r\nThanks and Regards \r\nMike Kennedy\r\n \r\n \r\nPS: Want a comprehensive local plan that covers everything? \r\nhttps://www.speed-seo.net/product/local-seo-bundle/
29	meganatkinson149@gmail.com	meganatkinson149@gmail.com	03883 61 38 31	Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers safely and practically. \r\n\r\nWe aim to gain you 300-1000+ real human followers per month, with all actions safe as they are made manually (no bots).\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nLet me know if you are interested and have any questions.\r\n\r\nKind Regards,\r\nMegan
30	Mike Sherlock	mikemiclevy@gmail.com	85668916241	Hi there \r\n \r\nJust checked your torcheu.com baclink profile, I noticed a moderate percentage of toxic links pointing to your website \r\n \r\nWe will investigate each link for its toxicity and perform a professional clean up for you free of charge. \r\n \r\nStart recovering your ranks today: \r\nhttps://www.hilkom-digital.de/professional-linksprofile-clean-up-service/ \r\n \r\nFor any of our SEO plans, we have a December SALE campaign with -30% discounts \r\nApply this coupon on the basket page: XMS30 \r\n \r\nRegards \r\nMike Sherlock\r\nHilkom Digital SEO Experts \r\nhttps://www.hilkom-digital.de/
31	libbyevans461@gmail.com	libbyevans461@gmail.com	917 71 772	Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n- We guarantee to gain you 300-1000+ followers per month.\r\n- People follow you because they are interested in you, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any 'bots'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you'd like to see some of our previous work, let me know, and we can discuss it further.\r\n\r\nKind Regards,\r\nLibby
32	jiminez.fay@gmail.com	jiminez.fay@gmail.com	980 41 985	People are quitting their jobs with this... Have you seen it?\r\n\r\nhttps://rumble.com/v41owvf-automated-online-income.html
33	Mike Campbell	peterGrieveMara@gmail.com	82435735797	Hello \r\n \r\nI have just verified your SEO on  torcheu.com for its SEO Trend and saw that your website could use an upgrade. \r\n \r\nWe will improve your ranks organically and safely, using only state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.digital-x-press.com/unbeatable-seo/ \r\n \r\nDecember SALE -30% coupon: XMS30 \r\n \r\nRegards \r\nMike Campbell\r\n \r\nDigital X SEO Experts
34	vanmeter.clara@gmail.com	vanmeter.clara@gmail.com	422 82 784	Contact form blasts work! I can put your ad message in front of millions for less than $100 the same way I just put this message in front of you! Reach out to me via Skype or Email for details.\r\n\r\nP. Stewart\r\nSkype: live:.cid.e169e59bb6e6d159\r\nEmail: ps2019@gomail2.xyz
35	Mike Roberts	mikeplaurn@gmail.com	86324737714	Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat's right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.monkeydigital.org/affiliate-dashboard/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Roberts\r\n \r\nMonkey Digital
95	DylanHoogeGM	lucido.leinteract@gmail.com	85495662952	হাই, আমি আপনার মূল্য জানতে চেয়েছিলাম.
36	contact@ebrupdate.org	contact@ebrupdate.org	(41) 9053-8494	Hello, please update your company details for 2024!\r\n\r\nTo check your details now, visit EBRupdate.org/form\r\n\r\nUpdating is free of charge!\r\n\r\nRegards,\r\n\r\nEBR - Data Maintenance
37	Mike Martin	mikeFepNeogy@gmail.com	81723189568	Greetings \r\n \r\nThis is Mike Martin\r\n \r\nLet me present you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your torcheu.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\nRegards \r\nMike Martin\r\n \r\nmike@strictlydigital.net
38	BitcoinSystem	bitcoinsystem@hotmail.com	8008943572529	http://go.vemaqaov.com/0m3k Het enige wat u hoeft te doen is uw software nu GRATIS aan te schaffen.
39	TobiasduhJL	no.reply.NicolasBonnet@gmail.com	84137867461	Hey there! torcheu.com \r\n \r\nDid you know that it is possible to send requests lawfully? We submit a legitimate method of sending messages through feedback forms. Feedback forms like these can be seen on many websites. \r\nWhen such messages are sent, no personal data is used, and they are securely sent to forms that have been specifically designed to receive messages and appeals. Messages through Feedback Forms are highly unlikely to be labeled as spam, since they are deemed important. \r\nWe offer you to try our service for free. \r\nWe can provide you with up to 50,000 messages. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis offer is automatically generated. \r\nPlease use the contact details below to get in touch with us. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:feedbackform2019 \r\nWhatsApp  +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\n \r\nWe only use chat for communication.
40	Mike Benson	mikeHefprodohefkNole@gmail.com	81756943776	If you are looking to rank your local business on Google Maps in a specific area, this service is for you. \r\n \r\nGoogle Map Stacking is a highly effective technique for ranking your GMB within a specific mile radius. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/product/google-maps-pointers/ \r\n \r\n \r\nThanks and Regards \r\nMike Mike Benson\r\n \r\n \r\nPS: Want a comprehensive local plan that covers everything? \r\nhttps://www.speed-seo.net/product/local-seo-bundle/
41	georginahaynes620@gmail.com	georginahaynes620@gmail.com	478-328-3268	Hi,\r\n\r\nWe'd like to introduce to you our explainer video service, which we feel can benefit your site torch.az.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=bWz-ELfJVEI\r\nhttps://www.youtube.com/watch?v=Y46aNG-Y3rM\r\nhttps://www.youtube.com/watch?v=hJCFX1AjHKk\r\n\r\nOur prices start from as little as $195 and include a professional script and voice-over.\r\n\r\nIf this is something you would like to discuss further, don't hesitate to reply.\r\n\r\nKind Regards,\r\nGeorgina\r\n\r\nIf you are not interested, unsubscribe here: https://removeme.click/unsubscribe.php?d=torch.az
42	kim.tegan54@hotmail.com	kim.tegan54@hotmail.com	078 8916 8089	People are quitting their jobs with this... Have you seen it?\r\n\r\nhttps://rumble.com/v41owvf-automated-online-income.html
43	Vevor	vevor@hotmail.com	80098656777	https://bit.ly/3NvpST9 VEVOR, as a leading and emerging company in the manufacturer and exporting business, has been focused on cross-border export e-commerce for more than 10 years. Specialized in Business and Industrial Products, Kitchenware, Machinery Tools, Sporting Goods, Pet Products, Home and Garden products, always committed to supplying an incredible assortment of great quality products with unbeatable prices.
44	Mirilham Hasanov, TEST REQUEST	myryhasanov@gmail.com	+994503937626	Bu API'nin yoxlanmasi meqsedi ile gonderilen TEST ismaricidir. Lutfen terefinize catdigi teqdirde bu mail'e geri donus ederek meni bilgilendirin. \r\nAsagidaki simvollar ferqli olkelere aid elifbalarin tanindiginin tesdiqlemek ucundur. \r\n\r\nAzərbaycanca: Salam! Bu test sorğusudur (Əə)\r\nRusca: Привет! Это тестовый запрос\r\nÇincə: 你好！ 这是测试请求\r\n\r\nSimvollar uyğun şəkildə görünmədiyi təqdirdə bildiriniz.
45	Mike Johnson	mikeGrieveMara@gmail.com	86876641918	Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit from an increase in authority. \r\n \r\nOur solution guarantees you a high-quality domain authority score within a period of three months. This will increase your organic visibility and strengthen your website authority, thus making it stronger against Google updates. \r\n \r\nCheck out our deals for more details. \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\nNEW: Ahrefs Domain Rating \r\nhttps://www.monkeydigital.co/ahrefs-seo/ \r\n \r\n \r\nThanks and regards \r\nMike Johnson
46	meganatkinson149@gmail.com	meganatkinson149@gmail.com	078 6311 5031	Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers safely and practically. \r\n\r\nWe aim to gain you 300-1000+ real human followers per month, with all actions safe as they are made manually (no bots).\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nLet me know if you wish to see some of our previous work.\r\n\r\nKind Regards,\r\nMegan
47	fredrick.carr@yahoo.com	fredrick.carr@yahoo.com	(02) 8376 3163	Contact form blasts work! I can put your ad message in front of millions for less than $100 the same way I just put this message in front of you! Reach out to me via Skype or Email for details.\r\n\r\nP. Stewart\r\nSkype: live:.cid.e169e59bb6e6d159\r\nEmail: ps2148@gomail2.xyz
48	christinaseo76@gmail.com	christinaseo76@gmail.com	03.05.42.35.48	Hi there,\r\n\r\nWe're writing to ask if you accept Guest Posts on torch.az?\r\n\r\nIf you do, would you be interested in adding your site to our list, which has an outreach of over 50 million potential customers each month?\r\n\r\nAs we're doing the promotion, all you have to do is strike a deal!\r\n\r\nMore information: https://furtherinfo.org/gpfeatured\r\n\r\nIf you'd like to discuss this further, just get back in touch with any questions.\r\n\r\nKind Regards,\r\nChristina
49	Mike Adamson	mikemiclevy@gmail.com	89383876579	Hi there \r\n \r\nJust checked your torcheu.com baclink profile, I noticed a moderate percentage of toxic links pointing to your website \r\n \r\nWe will investigate each link for its toxicity and perform a professional clean up for you free of charge. \r\n \r\nStart recovering your ranks today: \r\nhttps://www.hilkom-digital.de/professional-linksprofile-clean-up-service/ \r\n \r\nRegards \r\nMike Adamson\r\nHilkom Digital SEO Experts \r\nhttps://www.hilkom-digital.de/
50	BillyMuhAX	smitha133@gmail.com	83257426163	The Meme Token Magic: A 300,000,000% Surge in the Making http://pdfsocial.com/?pdfURL=https%3A%2F%2Ftelegra.ph%2Fch-01-09%3F8r \r\n \r\n \r\n \r\n \r\ni6xz5r0g7w0d7i8t \r\nb3xz3f1s2u2z4y8w \r\na0mq3o4k0w0u6u3r
51	Hostimul	info@hostimul.com	055 233 24 21	Hostinqə nə qədər pul ödəyirsiniz?   \r\nSaytınızı daha sərfəli şərtlərlə, ildə sadəcə 66 manata bizim serverlərdə yerləşdirin və əlavə olaraq aşağıdakı xidmətləri də pulsuz əldə edin:  \r\n• Korporativ mail xidməti \r\n• Pulsuz SSL  \r\n• Pulsuz köçürmə  \r\n• Gündəlik Backup   \r\n \r\nVeb-hostinq xidmətlərimizi 1 ay ərzində tam pulsuz sınaya bilərsiniz.  \r\n \r\nhttps://hostimul.com/az/paylashilan-hostinq/\r\n \r\nƏtraflı məlumat üçün zəhmət olmasa bizimlə əlaqə saxlayın.  \r\nHörmətlə,  \r\n \r\nƏlaqə: 055 233 24 21  \r\ninfo@hostimul.com\r\n\r\n\r\nHostimul - Əməkdaşlıq
52	delphia.porteous24@yahoo.com	delphia.porteous24@yahoo.com	(03) 5397 6062	Contact form blasts work! I can put your ad message in front of millions for less than $100 the same way I just put this message in front of you! Reach out to me via Skype or Email for details.\r\n\r\nP. Stewart\r\nSkype: live:.cid.e169e59bb6e6d159\r\nEmail: ps3634@gomail2.xyz
53	peterGrieveMara@gmail.com	peterGrieveMara@gmail.com	83417414895	Good Day \r\n \r\nI have just checked  torcheu.com for its SEO Trend and saw that your website could use a push. \r\n \r\nWe will enhance your ranks organically and safely, using only state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.digital-x-press.com/unbeatable-seo/ \r\n \r\n \r\nRegards \r\nMike Nathan\r\n \r\nDigital X SEO Experts
54	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	The same way I just sent you this message I can also post your ad message to millions of sites. Don't worry, it doesn't cost much Hit me up via email or skype for details.\r\n\r\n\r\nP. Stewart\r\nSkype: live:.cid.e169e59bb6e6d159\r\nEmail: psDl2 8we@gomail2.xyz
55	emilyjones2250@gmail.com	emilyjones2250@gmail.com	918-621-8024	Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically. \r\n\r\n- We guarantee to gain you 700-1500 new subscribers per month.\r\n- People subscribe because they are interested in your videos/channel, increasing video likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any 'bots'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you'd like to see some of our previous work, let me know, and we can discuss it further.\r\n\r\nKind Regards,\r\nEmily
56	fulcher.sammie@hotmail.com	fulcher.sammie@hotmail.com	(11) 3881-8481	If you want to earn 5.1% on your cash Public has a fee-free treasury account.\r\nFund an account with $25 and you’ll be entered to win $50!\r\n\r\nClick here to sign up: shorturl.at/ktR25\r\nOne lucky winner will be selected this month. Terms and conditions apply.
57	horacio.michalik@gmail.com	horacio.michalik@gmail.com	089 59 14 58	This message arrived to you and I can make your ad message reach millions of websites the same way. It's a low-priced and effective way to market your product or service.If you are interested, you can reach me via email or skype below.\r\n\r\nP. Stewart\r\nEmail: 7w1s7a@gomail2.xyz\r\nSkype: live:.cid.37ffc6c14225a4a8
59	dockery.arnoldo@gmail.com	dockery.arnoldo@gmail.com	077 2984 5406	This message showed up to you and I can make your message show up to millions of websites the same way. It's awesome and low-cost.For more information, please email me or skype me below.\r\n\r\nP. Stewart\r\nEmail: twh6xw@gomail2.xyz\r\nSkype: live:.cid.37ffc6c14225a4a8
60	trtrt	inrtrtfo@torch.az	rtrt	rtrtrtrrrtrtrrr
61	trtrt	inrtrtfo@torch.az	rtrt	rtrtrtrrrtrtrrr
62	jurgen.hiller@hotmail.com	jurgen.hiller@hotmail.com	0355 4935901	The average viewer watches a video for only 12 seconds…this new tech rewards viewers for watching your entire video.  GAMIFYING your Youtube video is changing the way companies market. \r\nAs seen on CBS, NBC, FOX, and ABC. \r\n\r\nShoot me an email or skype msg below to see if you qualify for a free GAMIFICATION of your video.\r\n\r\nJordan\r\nemail: gamifyvideo@gmail.com\r\nskype: live:.cid.d347be37995c0a8d
63	tozer.tresa33@hotmail.com	tozer.tresa33@hotmail.com	462 4540	Are you looking for a dream home in a land of luxury and opportunity? Discover the best Overseas real estate deals in the Arab Emirates, where you can buy directly from the developer and save! Enjoy stunning views, world-class amenities, and tax-free living. For more info contact Aleksei Alimkin:\r\nEmail: hive.home@hotmail.com Tel: +79299909194,
64	mikeplaurn@gmail.com	mikeplaurn@gmail.com	84437524334	Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat's right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.monkeydigital.org/affiliate-dashboard/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Shorter\r\n \r\nMonkey Digital
65	mikeFepNeogy@gmail.com	mikeFepNeogy@gmail.com	82742365488	Howdy \r\n \r\nThis is Mike Becker\r\n \r\nLet me introduce to you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your torcheu.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\nRegards \r\nMike Becker\r\n \r\nmike@strictlydigital.net
66	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	You got this message and I can help you get your ad message to millions of websites just like that. It's a low-cost option for promoting your product or service.Contact me by email or skype below if you want to know more.\r\n\r\nP. Stewart\r\nEmail: m8fydk@gomail2.xyz\r\nSkype: live:.cid.37ffc6c14225a4a8
92	eulalia.osborne@hotmail.com	eulalia.osborne@hotmail.com	079 6809 0004	For a limited time we would like to offer you a NO-COST Reputation Video that you can put on your Website, LinkedIn, Facebook, Instagram etc.\r\n\r\nWe simply turn your static 5 Star Reviews into SEO content and will be seen on the Front Page of Google when prospects are looking up your Online Reputation.\r\n\r\nWhat's the Catch - excellent question - if you like the video we produce for you, all we need from you is 3 referrals.\r\n\r\nWhen you introduce them to us, they will get a 50% Discount from our retail pricing.\r\n\r\nGET YOUR NO-CHARGE VIDEO HERE:\r\nhttps://YourFreeReputationVideo.com\r\n\r\nThank You,\r\nMedia Relations
67	jamewalt01@gmail.com	jamewalt01@gmail.com	84432229468	I hope this mail finds you well. May I use this opportunity to present my proposal for a mutual private business of USD 147 Million. I am James Walter the Funds Manager. \r\n \r\nI hold a mandate from a Russian Client who wants his funds reinvested using 3rd party due to the current sanctions, which means all aspect of the transaction will remain confidential, you will be paid 25% or you can buy shares into the new investment, we can also invest in your company if it’s for expansion only, we believe you are trusted and capable that’s why we have contacted you. \r\n \r\nPlease note that there is no risk involved as funds are legal and currently in an European Bank, all details will be available as soon as you indicate interest by contacting me via the email or phone number bellow to discuss this opportunity in more detail. \r\n \r\nSincerely, \r\n \r\nMr. James Walter \r\n \r\nEmail:jameswalterxyz1@gmail.com \r\n \r\nTEL: +44 7706 280570
68	ware.brittany54@msn.com	ware.brittany54@msn.com	02.68.65.15.54	Earn up to $60,000 USD as a 4U2 Inc. Independent Contractor Agent! We're seeking individuals worldwide with computer access, fluent English communication skills, and a desire to save time and money for suppliers, buyers, and salespersons in our E-Commerce Marketplace. Join our mission to "Save Suppliers, Buyers, and Salespersons Time, Money, and make Money!" Contact us at 4u2inc123@gmail.com for more info..
69	mikeHefprodohefkNole@gmail.com	mikeHefprodohefkNole@gmail.com	86669823512	If you are looking to rank your local business on Google Maps in a specific area, this service is for you. \r\n \r\nGoogle Map Stacking is a highly effective technique for ranking your GMB within a specific mile radius. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/product/google-maps-pointers/ \r\n \r\n \r\nThanks and Regards \r\nMike Mike Goodman\r\n \r\n \r\nPS: Want a comprehensive local plan that covers everything? \r\nhttps://www.speed-seo.net/product/local-seo-bundle/
70	jamal.sambell40@gmail.com	jamal.sambell40@gmail.com	0676 345 53 02	This message arrived to you and I can make your ad message reach millions of websites the same way. It's a low-priced and effective way to market your product or service.For more information, please email me or skype me below.\r\n\r\nP. Stewart\r\nEmail: 7mjyj6@gomail2.xyz\r\nSkype: live:.cid.37ffc6c14225a4a8
71	mikeGrieveMara@gmail.com	mikeGrieveMara@gmail.com	88914978811	Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit from an increase in authority. \r\n \r\nOur solution guarantees you a high-quality domain authority score within a period of three months. This will increase your organic visibility and strengthen your website authority, thus making it stronger against Google updates. \r\n \r\nCheck out our deals for more details. \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\nNEW: Ahrefs Domain Rating \r\nhttps://www.monkeydigital.co/ahrefs-seo/ \r\n \r\n \r\nThanks and regards \r\nMike Kendal
72	aramco@mbox.re	aramco@mbox.re	85369769518	Hello, \r\n \r\nWe extend warm greetings to your esteemed company and formally invite you to register as a vendor for potential partnerships in upcoming projects with SAUDI ARAMCO/UAE in 2024/2025. \r\n \r\nThese projects offer a global opportunity, welcoming participation from companies worldwide. Should your company express interest in this endeavor, we kindly request confirmation by contacting ibrahim@aramcointernational.net of intent by requesting the necessary documents. \r\n \r\nYour interest is highly valued, and we eagerly await your prompt response. \r\n \r\nBest Regards, \r\n \r\nMr. Sam Ibrahim \r\nibrahim@aramcointernational.net \r\nhttp://www.aramcointernational.net/ \r\nContract & Supplier Services Management
73	ameliabrown0325@gmail.com	ameliabrown0325@gmail.com	614-877-7356	Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically. \r\n\r\n- We guarantee to gain you 700-1500+ subscribers per month.\r\n- People subscribe because they are interested in your channel/videos, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any 'bots'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you have any questions, let me know, and we can discuss further.\r\n\r\nKind Regards,\r\nAmelia
74	tim.call@googlemail.com	tim.call@googlemail.com	(07) 4538 6125	Hi there, my name is Cody Griner. I apologize for using your contact form, \r\nbut I wasn't sure who the right person was to speak with in your company. \r\nWe have a patented application that creates Local Area pages that rank on \r\ntop of Google within weeks, we call it Local Magic.  Here is a link to the \r\nproduct page https://www.mrmarketingres.com/local-magic/ . The product \r\nleverages technology where these pages are managed dynamically by AI and \r\nit is ideal for promoting contractors on Google.  Can I share a testimonial \r\nfrom one of our clients with you?  I can also do a short zoom to \r\nillustrate their full case study if you have time for it? \r\ncody@mrmarketingres.com 843-720-7301
75	JeffreyHoogeGM	lucido.leinteract@gmail.com	84297897436	Dia duit, theastaigh uaim do phraghas a fháil.
76	windham.brigette@gmail.com	windham.brigette@gmail.com	0328 6698435	Greetings\r\n\r\nFor a limited time we would like to offer you a NO-COST Reputation Video that you can put on your Website, LinkedIn, Facebook, Instagram etc.\r\n\r\nWe simply turn your static 5 Star Reviews into SEO content and will be seen on the Front Page of Google when prospects are looking up your Online Reputation.\r\n\r\nWhat's the Catch - excellent question - if you like the video we produce for you, all we need from you is 3 referrals. When you introduce them to us, and they decide to work with us, they will get a 50% Discount from our retail pricing. But you get it for NO-COST just for introducing them to us!\r\n\r\nGET YOUR NO-COST VIDEO HERE:\r\nhttps://YourFreeReputationVideo.repvids.com\r\n\r\nThank You,\r\nMedia Relations
77	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	I just delivered this message to you via your website contact form and I can do the same for your ad message to millions of websites. You can get this service for a fraction of the cost of conventional advertising.If you are interested, you can reach me via email or skype below.\r\n\r\nP. Stewart\r\nEmail: 3g3yve@gomail2.xyz\r\nSkype: live:.cid.2bc4ed65aa40fb3b
91	Mike Bradshaw	mikeFepNeogy@gmail.com	89615691742	Howdy \r\n \r\nThis is Mike Bradshaw\r\n \r\nLet me show you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your torcheu.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\nRegards \r\nMike Bradshaw\r\n \r\nmike@strictlydigital.net
78	David Edwards	agentofficial@shrooqconsultant.com	81776272139	Greetings, \r\n \r\nAm glad to connect with you, My name is David Edwards, am an investment consultant with Shrooq AlQamar Project Management Services Co LLC, I have been mandated by the company to source for investment opportunities and companies seeking for funding, business loans, for its project(s). Do you have any investment or project that is seeking for capital to fund it? \r\n \r\nOur Investments financing focus is on: \r\n \r\nSeed Capital, Early-Stage, Start-Up Ventures, , Brokerage, Private Finance, Renewable Energy Project, Commercial Real Estate, Blockchain, Technology, Telecommunication, Infrastructure, Agriculture, Animal Breeding, Hospitality, Healthcare, Oil/Gas/Refinery. Application reserved for business executives and companies with proven business records in search of funding for expansion or forcapital investments.. \r\n \r\nKindly contact me for further details. \r\n \r\nawait your return e.mail soonest. \r\n \r\nRegards \r\n \r\nDr. David Edwards \r\n \r\nShrooq AlQamar Regional Consultant \r\nAddress: 72469 Jahra Road Shuwaikh Industrial \r\nTel/WhatzApp - CEO: +968 7866 9578 \r\n+971 56 663 2687 \r\nEmail: agent@shrooqconsultant.com \r\nOur Offices: \r\nMiddle East Facilitating Office: Ahmad Al Jaber St, Kuwait City, Kuwait \r\nOman Branch Offices: CHXM+J3G, Sohar, Oman \r\nUAE Dubai: Financial Consortium
79	CharlesNerTV	yasen.krasen.13+87657@mail.ru	81396922927	Ofokfojfief jwlkfeejereghfj iewojfekfjergij wiojewjfewitghuhwrgtjgh ewjhfwqjhdfuewgtuiwe huegfrwgyewgtywegt torcheu.com
80	adrianne.jeffries@hotmail.com	adrianne.jeffries@hotmail.com	952-417-0831	This message arrived to you and I can make your ad message reach millions of websites the same way. It's a low-priced and effective way to market your product or service.If you are interested, you can reach me via email or skype below.\r\n\r\nP. Stewart\r\nEmail: l6v0dc@gomail2.xyz\r\nSkype: live:.cid.2bc4ed65aa40fb3b
81	Mike Atcheson	mikemiclevy@gmail.com	86288339959	Hi there \r\n \r\nJust checked your torcheu.com baclink profile, I noticed a moderate percentage of toxic links pointing to your website \r\n \r\nWe will investigate each link for its toxicity and perform a professional clean up for you free of charge. \r\n \r\nStart recovering your ranks today: \r\nhttps://www.hilkom-digital.de/professional-linksprofile-clean-up-service/ \r\n \r\nRegards \r\nMike Atcheson\r\nHilkom Digital SEO Experts \r\nhttps://www.hilkom-digital.de/
82	KevinHoogeGM	lucido.leinteract@gmail.com	86911842629	হাই, আমি আপনার মূল্য জানতে চেয়েছিলাম.
83	Hwan	seong9hwan@gmail.com	0031610025851	Dear Sir/Madam\r\n\r\nI understand that through the Internet is not the best way to link up with you because of the \r\n\r\nconfidentiality which my proposal demands.\r\n\r\nHowever, I have already sent you this same letter one month ago, but I am not sure if it did get to \r\n\r\nyou since I have not heard from you, hence i am constrained to reach you through the Internet which \r\n\r\nhas been abused over the years. \r\n\r\nI had decided to initiate a contact so we could foster a mutual business relationship.\r\n\r\nI will intimate you with my investment prepositions and plans or loan, after i must have read from \r\n\r\nyou: seong9hwan@gmail.com\r\n\r\nThanking you for your anticipated support and co-operations. \r\n\r\nKind Regards  \r\nDr. Seong\r\nSR Consultant
84	Mike Brooks	peterGrieveMara@gmail.com	87432697945	Hello \r\n \r\nI have just analyzed  torcheu.com for  the current search visibility and saw that your website could use a push. \r\n \r\nWe will increase your ranks organically and safely, using only state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.digital-x-press.com/unbeatable-seo/ \r\n \r\n \r\nRegards \r\nMike Brooks\r\n \r\nDigital X SEO Experts
85	simpsondanielle800@gmail.com	simpsondanielle800@gmail.com	N gm g	Hi,\r\n\r\nWe'd like to introduce to you our explainer video service, which we feel can benefit your site torch.az.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=8S4l8_bgcnc\r\nhttps://www.youtube.com/watch?v=bWz-ELfJVEI\r\nhttps://www.youtube.com/watch?v=Y46aNG-Y3rM\r\nhttps://www.youtube.com/watch?v=hJCFX1AjHKk\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian accents. We can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $259\r\n1-2 minutes = $379\r\n2-3 minutes = $489\r\n\r\n*All prices above are in USD and include a full script, voice-over and video.\r\n\r\nIf this is something you would like to discuss further, don't hesitate to reply.\r\n\r\nKind Regards,\r\nDanielle
86	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	This message reached you thru your website and I can make your ad message reach millions of sites in the same way. It's a very affordable way to advertise your business.For more information, please email me or skype me below.\r\n\r\nP. Stewart\r\nEmail: kcn8bc@gomail2.xyz\r\nSkype: live:.cid.2bc4ed65aa40fb3b
87	carrigan.rochell@msn.com	carrigan.rochell@msn.com	04.96.85.78.86	The average viewer watches a video for only 12 seconds…this new tech rewards viewers for watching your entire video.  GAMIFYING your Youtube video is changing the way companies market. \r\nAs seen on CBS, NBC, FOX, and ABC. \r\n\r\nShoot me an email or skype msg below to see if you qualify for a free GAMIFICATION of your video.\r\n\r\nJordan\r\nemail: gamifyvideo@gmail.com\r\nskype: live:.cid.d347be37995c0a8d
88	JoseHoogeGM	lucido.leinteract@gmail.com	86737441859	Kaixo, zure prezioa jakin nahi nuen.
89	launa.ashby@gmail.com	launa.ashby@gmail.com	027 209 62 12	This message showed up to you and I can make your message show up to millions of websites the same way. It's awesome and low-cost.For more information, please email me or skype me below.\r\n\r\nP. Stewart\r\nEmail: ygpwtc@gomail2.xyz\r\nSkype: live:.cid.2bc4ed65aa40fb3b
90	Mike Davis	mikeplaurn@gmail.com	89191941369	Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat's right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.monkeydigital.org/affiliate-dashboard/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Davis\r\n \r\nMonkey Digital
93	* * * 🎁 GET FREE iPhone 15: http://lhci.com/upload/go.php 🎁 * * * hs=2ce797fe4fc3d6aff008de0bfc3ffdbe*	okebepu@merepost.com	zubcf1	dx2sp2
94	RobertGeaceMW	juliabates78@yahoo.co.uk	87919596143	Breaking: $68,000 Windfall—Withdrawal Needed ASAP! https://www.trueliberia.com/redirect?url=https%3A%2F%2F9mlnnnst.blogspot.com%3F2926 \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\nv0nw5o2k2w9k1j4j \r\nh4cw4m2k9e6h5m1g \r\ny6cf2q1p1d7s5x8k
96	Mike Jeff	mikeHefprodohefkNole@gmail.com	86159922679	If you are looking to rank your local business on Google Maps in a specific area, this service is for you. \r\n \r\nGoogle Map Stacking is a highly effective technique for ranking your GMB within a specific mile radius. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/product/google-maps-pointers/ \r\n \r\n \r\nThanks and Regards \r\nMike Mike Jeff\r\n \r\n \r\nPS: Want a comprehensive local plan that covers everything? \r\nhttps://www.speed-seo.net/product/local-seo-bundle/
97	JaimeDycleIO	jab1Coise@mail.com	84724657114	Hello! Now I will tell you how to quickly make money on cryptocurrency! \r\nNot long ago, Elon Musk announced the opening of a new crypto exchange - cexasia.pro \r\nFor all new users, he distributed crypto assets using a special promotional code - ILMS24 \r\nNow all you have to do is register, enter the promotional code, be sure to pass verification and get quick money \r\nYou can watch video instructions on YouTube https://youtu.be/rQ8ayYhYhEo?si=BE-D9Th9tJ9umwHV \r\nDon't miss your chance, the promotion is limited in time
98	leah.sims@msn.com	leah.sims@msn.com	508-807-3167	Brand new tech is changing the way companies market.  It turns Youtube videos into interactive games keeping the viewers attention.  Companies reward people for watching the whole video and create a marketing frenzy like Black Friday.  \r\nAs seen on CBS, NBC, FOX, and ABC. \r\n\r\nDrop me a line via email/skype below to see if you qualify for a free GAMIFICATION of your video.\r\n\r\nJulien\r\nemail: gamifyvideo@gmail.com\r\nskype: live:.cid.d347be37995c0a8d
99	Mike Livingston	mikeGrieveMara@gmail.com	85662374481	Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit from an increase in authority. \r\n \r\nOur solution guarantees you a high-quality domain authority score within a period of three months. This will increase your organic visibility and strengthen your website authority, thus making it stronger against Google updates. \r\n \r\nCheck out our deals for more details. \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\nNEW: Ahrefs Domain Rating \r\nhttps://www.monkeydigital.co/ahrefs-seo/ \r\n \r\n \r\nThanks and regards \r\nMike Livingston
100	arianne.skeyhill@yahoo.com	arianne.skeyhill@yahoo.com	044 554 10 64	Are you okay running your business without much funds? This could slow down growth and delay returns on your business.\r\n\r\nNow you have the Opportunity to Fund your Busineses and Projects without stress and without the burden of repayment as our interest in first for the growth of your business and projects, and for your to arrive at your desired business goals and dreams.\r\n\r\nTake advantage of our Funding opportunity and get funded on your business and Projects within days and have an ample number of years/Loan Term Period which gives you time to grow and achieve your business goals.\r\n\r\nGive us a call on:\r\n+852 3008 8373, \r\nor write us at:\r\ninfo@capitalfund-hk.com
101	doan.latanya@gmail.com	doan.latanya@gmail.com	(02) 9578 4811	Earn up to $60,000 USD as a 4U2 Inc. Independent Contractor Agent! We're seeking individuals worldwide with computer access, fluent English communication skills, and a desire to save time and money for suppliers, buyers, and salespersons in our E-Commerce Marketplace. Join our mission to "Save Suppliers, Buyers, and Salespersons Time, Money, and make Money!" Contact us at 4u2inc123@gmail.com for more info..
102	thalberg.alta@gmail.com	thalberg.alta@gmail.com	(03) 9292 0622	For a limited time we would like to offer you a NO-COST Reputation Video that you can put on your Website, LinkedIn, Facebook, Instagram etc.\r\n\r\nWe simply turn your static 5 Star Reviews into SEO content and will be seen on the Front Page of Google when prospects are looking up your Online Reputation.\r\n\r\nWhat's the Catch - excellent question - if you like the video we produce for you, all we need from you is 3 referrals.\r\n\r\nWhen you introduce them to us, they will get a 50% Discount from our retail pricing.\r\n\r\nGET YOUR NO-CHARGE VIDEO HERE:\r\nhttps://YourFreeReputationVideo.com\r\n\r\nThank You,\r\nMedia Relations
103	hubbs.abel67@gmail.com	hubbs.abel67@gmail.com	0474 30 40 74	Are you okay running your business without much funds? This could slow down growth and delay returns on your business.\r\n\r\nNow you have the Opportunity to Fund your Busineses and Projects without stress and without the burden of repayment as our interest in first for the growth of your business and projects, and for your to arrive at your desired business goals and dreams.\r\n\r\nTake advantage of our Funding opportunity and get funded on your business and Projects within days and have an ample number of years/Loan Term Period which gives you time to grow and achieve your business goals.\r\n\r\nGive us a call on:\r\n+852 3008 8373, \r\nor write us at:\r\ninfo@capitalfund-hk.com
104	IirinaFefMZ	roxshoor@gmail.com	83664457317	Hi! Have s3x in your city today.  -  https://rb.gy/9pkq6l?Fef
105	myra.wilson@gmail.com	myra.wilson@gmail.com	03.19.60.12.25	Unlock Financial Solutions with Us!\r\n\r\nAre you in need of financial instruments like Bank Guarantees (BG) or Standby Letters of Credit (SBLC)? Look no further! Our direct access to these instruments, issued by reputable banks such as HSBC, empowers you with flexible lease or purchase options.\r\n\r\nWhat sets us apart:\r\n\r\nSwift transactions: Close deals in just a few banking days.\r\nGlobal reach: We offer financial solutions worldwide.\r\nEarn rewards: Get 10% for successful referrals.\r\nCalling all brokers: Intermediaries welcome!\r\nContact us now:\r\nPhone: +852 3001 8851\r\nEmail: info@bestcapital.hk\r\nWebsite: https://bestcapital.hk\r\n\r\nExperience the Best - Try us today!\r\n\r\nStay safe.
106	Mike Wilson	mikemiclevy@gmail.com	81139389469	Hi there \r\n \r\nJust checked your torcheu.com baclink profile, I noticed a moderate percentage of toxic links pointing to your website \r\n \r\nWe will investigate each link for its toxicity and perform a professional clean up for you free of charge. \r\n \r\nStart recovering your ranks today: \r\nhttps://www.hilkom-digital.de/professional-linksprofile-clean-up-service/ \r\n \r\nRegards \r\nMike Wilson\r\nHilkom Digital SEO Experts \r\nhttps://www.hilkom-digital.de/
107	emilyjones2250@gmail.com	emilyjones2250@gmail.com	930 91 176	Hi there,\r\n\r\nWe run a Youtube  growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are interested in your channel/videos.\r\n- Safe: All actions are done, without using any automated tasks / bots.\r\n\r\nOur price is just $60 (USD) per month and we can start immediately.\r\n\r\nWe also grow Instagram followers (300-1000 for $60).\r\n\r\nGet in touch if you would like to know more.\r\n\r\nKind Regards,\r\nEmily
108	LouisHoogeGM	lucido.leinteract@gmail.com	87415689299	Прывітанне, я хацеў даведацца Ваш прайс.
109	megan.ramos@gmail.com	megan.ramos@gmail.com	06-51077027	The average viewer watches a video for only 12 seconds…this new tech rewards viewers for watching your entire video.  GAMIFYING your Youtube video is changing the way companies market. \r\nAs seen on CBS, NBC, FOX, and ABC. \r\n\r\nShoot me an email or skype msg below to see if you qualify for a free GAMIFICATION of your video.\r\n\r\nJordan\r\nemail: gamifyvideo@gmail.com\r\nskype: live:.cid.d347be37995c0a8d
110	brune.ulrike@outlook.com	brune.ulrike@outlook.com	070 7683 9939	FREE Reputation Video for your Website, LinkedIn, Facebook, Instagram etc.\r\n\r\nWe turn your 5 Star Reviews into SEO videos that show up on Google’s Front Page when your Online Reputation is searched.\r\n\r\nThe Catch - if you enjoy the video, just give us 3 referrals and they will get a 80% Discount. Get your free video here: http://free-videos.info
111	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	Interested in maximizing your reach? You're reading this message and I can get others to read your ad the exact same way! Drop me an email below to learn more about our services and start spreading your message effectively!\r\n\r\nP. Stewart\r\nEmail: 9qxcjq@gomail2.xyz\r\nSkype: live:.cid.2bc4ed65aa40fb3b
112	curtin.candace@hotmail.com	curtin.candace@hotmail.com	336-849-9191	Did you hear about the SETC (sick leave and family leave tax credit) program that the IRS is closing after April 15th, 2024? \r\nThis is the same CARE program as the stimulus check that was mailed to your house during COVID. \r\nYou can receive up to $511 per person per day (up to $32,220) that you couldn’t work during the pandemic. \r\n\r\nDon’t miss your COVID tax credit: \r\nCall Kerry at 480-790-9186\r\nEmail Kerry at duc@directfunder.com\r\nOr watch the explanation here: https://taxcreditfunder.com/en/
113	messer.elissa@gmail.com	messer.elissa@gmail.com	905-886-3651	Hi!\r\n\r\nIt is with sad regret to inform you that LeadsFly is shutting down!\r\n\r\nWe have made available all our consumer and business leads for the entire world on our way out.\r\n\r\nWe have the following available worldwide:\r\n\r\nConsumer Records: 294,582,351\r\nBusiness Records: 25,215,278\r\n\r\nVisit us here: https://leadsfly.biz/torcheu.com/\r\n\r\nBest regards,\r\nElissa
114	nicolle.ernie@gmail.com	nicolle.ernie@gmail.com	04.02.48.72.11	Are you tired of struggling to find funding for your business? Finance Worldwide can help. Our company specializes in providing business loans to entrepreneurs like you who are looking to grow their financial standing. With our easy application process and competitive rates, you'll be glad you reached out to us.\r\n\r\nDon't let a lack of funding hold you back. Contact us today to learn more about our business loan solutions.\r\nSkype:ID:live:.cid.c25a1f8b0fdaab04\r\nPhone:+85223194662\r\nmailto:info@financesworldwidehk.com\r\n\r\n\r\nBest regards,\r\nLaura Cha.\r\nCustomer Service Representative
115	sarahtaylorishere@gmail.com	sarahtaylorishere@gmail.com	02077359916	Hi there,\r\n\r\nWe run a Youtube, Instagram and Twitter/X service, where we can increase your subscribers/followers.\r\n\r\nThis is all done manually and so all subscribers and followers are real people.\r\n\r\nOur prices start from just $60/month\r\n\r\nIf you are interested, please let us know, which of your social media profiles are you wishing to grow?\r\n\r\nIf you are not interested, no problem, just ignore and delete this email.\r\n\r\nKind Regards,\r\nSarah
116	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	Interested in maximizing your reach? You're reading this message and I can get others to read your ad the exact same way! Drop me an email below to learn more about our services and start spreading your message effectively!\r\n\r\nPhil Stewart\r\nEmail: xurgpc@gomail2.xyz\r\nSkype: live:.cid.2bc4ed65aa40fb3b
117	Bella	bellajinee@gmail.com	85741548992	https://bit.ly/4bPCQFP Huge selection!
118	Mike Baldwin	peterGrieveMara@gmail.com	86596528358	Hi \r\n \r\nI have just took an in depth look on your  torcheu.com for its SEO Trend and saw that your website could use a push. \r\n \r\nWe will improve your ranks organically and safely, using only state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.digital-x-press.com/unbeatable-seo/ \r\n \r\n \r\nRegards \r\nMike Baldwin\r\n \r\nDigital X SEO Experts
119	EthanHoogeGM	lucido.leinteract@gmail.com	85231189992	Прывітанне, я хацеў даведацца Ваш прайс.
120	dundalli.debbra81@yahoo.com	dundalli.debbra81@yahoo.com	266103785	Are you okay running your business without much funds? This could slow down growth and delay returns on your business.\r\n\r\nNow you have the Opportunity to Fund your Busineses and Projects without stress and without the burden of repayment as our interest in first for the growth of your business and projects, and for your to arrive at your desired business goals and dreams.\r\n\r\nTake advantage of our Funding opportunity and get funded on your business and Projects within days and have an ample number of years/Loan Term Period which gives you time to grow and achieve your business goals.\r\n\r\nGive us a call on:\r\n+852 3008 8373, \r\nor write us at:\r\ninfo@capitalfund-hk.com
121	wilda.burwell@hotmail.com	wilda.burwell@hotmail.com	749250480	We transform your 5 Star Reviews into SEO videos that rank high on Google when people search for your Online Reputation. The best part? It's free! http://boost-your-reputation-with-videos.info
122	Mike Hodges	mikeplaurn@gmail.com	83835941712	Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat's right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.monkeydigital.org/affiliate-dashboard/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Hodges\r\n \r\nMonkey Digital
123	huey.carrico@gmail.com	huey.carrico@gmail.com	Mfcefl	Did you hear about the SETC (sick leave and family leave tax credit) program that the IRS is closing after April 15th, 2024? \r\nThis is the same CARE program as the stimulus check that was mailed to your house during COVID. \r\nYou can receive up to $511 per person per day (up to $32,220) that you couldn’t work during the pandemic. \r\n\r\nDon’t miss your COVID tax credit: \r\nCall Kerry at 480-790-9186\r\nEmail Kerry at duc@directfunder.com\r\nOr watch the explanation here: https://taxcreditfunder.com/en/
124	SpeedyIndex	speedyindex@gmail.com	83952631756	https://bit.ly/3OV6orJ service for fast indexing of links in Google. First result in 48 hours. 100 links for FREE.
125	Iliya	ilyabup@gmail.com	83394554718	https://kwork.ru/user/live_for_seo здравствуйте, меня зовут Илья. Я являюсь seo специалистом и готов предложить Вам свои услуги по наращиванию трафика на сайт или ссылочной массы на сайты или аккаунты социальных сетей. \r\n \r\nОбращайтесь, буду рад сотрудничеству. \r\n \r\nДля вопросов по телеграм https://t.me/ilya_polin62
126	meredith.hammett@hotmail.com	meredith.hammett@hotmail.com	9058653978	We transform your 5 Star Reviews into SEO videos that rank high on Google when people search for your Online Reputation. The best part? It's free! Get your NO COST video here: http://top-reviews-to-videos.info
127	sondra.wolff@gmail.com	sondra.wolff@gmail.com	88585325	Are you okay running your business without much funds? This could slow down growth and delay returns on your business.\r\n\r\nNow you have the Opportunity to Fund your Busineses and Projects without stress and without the burden of repayment as our interest in first for the growth of your business and projects, and for your to arrive at your desired business goals and dreams.\r\n\r\nTake advantage of our Funding opportunity and get funded on your business and Projects within days and have an ample number of years/Loan Term Period which gives you time to grow and achieve your business goals.\r\n\r\nGive us a call on:\r\n+852 3008 8373, \r\nor write us at:\r\ninfo@capitalfund-hk.com
128	collee.eloy@gmail.com	collee.eloy@gmail.com	735075947	We transform your 5 Star Reviews into SEO videos that rank high on Google when people search for your Online Reputation. The best part? It's free! http://freerepvids-learnmore.info
129	georginahaynes620@gmail.com	georginahaynes620@gmail.com	315673024	Hi,\r\n\r\nWe'd like to introduce to you our explainer video service, which we feel can benefit your site torch.az.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=8S4l8_bgcnc\r\nhttps://www.youtube.com/watch?v=bWz-ELfJVEI\r\nhttps://www.youtube.com/watch?v=Y46aNG-Y3rM\r\nhttps://www.youtube.com/watch?v=hJCFX1AjHKk\r\n\r\nAll of our videos are in a similar animated format as the above examples, and we have voice over artists with US/UK/Australian accents. We can also produce voice overs in languages other than English.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video sites such as YouTube, and can be embedded into your website or featured on landing pages.\r\n\r\nOur prices are as follows depending on video length:\r\nUp to 1 minute = $259\r\n1-2 minutes = $379\r\n2-3 minutes = $489\r\n\r\n*All prices above are in USD and include a full script, voice-over and video.\r\n\r\nIf this is something you would like to discuss further, don't hesitate to reply.\r\n\r\nKind Regards,\r\nGeorgina
130	marvin.reeder@msn.com	marvin.reeder@msn.com	3133577881	Hi\r\n\r\nWe are a venture sales agency that works with you to uncover the best leads for your industry.\r\n\r\nAfter finding targeted leads for you, warm intros are sent to them ensuring a steady steam of viable clients to your website.\r\n\r\nThere are no subscriptions and we only take a small commision on sales that we are able to generate for you.\r\n\r\nFind out more at: https://torcheu.leadsmax.biz
131	Katyaoffibra3LP	ViolveDroli2@gmail.com	81739415213	Hello, I've been dreaming of our intimate rendezvous.  -  https://rb.gy/psrixq?Fef
132	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	Hey there, ready to take your ad game to the next level? Imagine your message popping up in website contact forms all over the world, reaching heaps of potential customers! Starting at just under $100, our affordable packages pack a punch. Shoot me an email now to chat more about getting your brand out there! Let's make some noise together!\r\n\r\nPhil Stewart\r\nEmail: wkx2tc@mail-to-form.xyz\r\nSkype: form-blasting
133	manual.lovekin@gmail.com	manual.lovekin@gmail.com	725234145	Get Found On The First Page of Google in Less Than 2 weeks by Using our Priority Stealth S.E.O. Syndication Method.\r\n\r\nPay us once and you'll get Organic Search Engine Results using videos that will continue to drive traffic 24/7 year round!\r\n \r\nThe Benefits are incredible - since by paying us once there will be:\r\n\r\n- No Additional Ad spend needed!\r\n\r\n- No Additional Costs for Ad copy!\r\n\r\n- No Additional Costs per Clicks!\r\n\r\n- No Commercial Licensing fees ever!\r\n\r\nGet Started Today and Get Seen Tomorrow!\r\n\r\nLearn More: Reviews2Videos.com
134	BrandonHoogeGM	lucido.leinteract@gmail.com	85563865443	Szia, meg akartam tudni az árát.
135	Carlos	torcheu.com@icloud.com	4610930	Hi \r\n\r\nI wanted to reach out and let you know about our new dog harness. It's really easy to put on and take off - in just 2 seconds - and it's personalized for each dog. \r\nPlus, we offer a lifetime warranty so you can be sure your pet is always safe and stylish.\r\n\r\nWe've had a lot of success with it so far and I think your dog would love it. \r\n\r\nGet yours today with 50% OFF: https://caredogbest.com\r\n\r\nFREE Shipping - TODAY ONLY! \r\n\r\nHave a great time, \r\n\r\nCarlos
136	Mike Harrison	mikeHefprodohefkNole@gmail.com	89195783449	This service is perfect for boosting your local business' visibility on the map in a specific location. \r\n \r\nWe provide Google Maps listing management, optimization, and promotion services that cover everything needed to rank in the Google 3-Pack. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/ranking-in-the-maps-means-sales/ \r\n \r\n \r\nThanks and Regards \r\nMike Harrison\r\n \r\n \r\nPS: Want a ONE-TIME comprehensive local plan that covers everything? \r\nhttps://www.speed-seo.net/product/local-seo-bundle/
137	Katyaoffibra2LP	ViolveDroli2@gmail.com	84978779153	Hello, how about we try out some aphrodisiac recipes?  -  https://rb.gy/psrixq?Fef
138	Mike Russel	mikeGrieveMara@gmail.com	84543196292	Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit from an increase in authority. \r\n \r\nOur solution guarantees you a high-quality domain authority score within a period of three months. This will increase your organic visibility and strengthen your website authority, thus making it stronger against Google updates. \r\n \r\nCheck out our deals for more details. \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\nNEW: Ahrefs Domain Rating \r\nhttps://www.monkeydigital.co/ahrefs-seo/ \r\n \r\n \r\nThanks and regards \r\nMike Russel
139	Katyaoffibra3LP	ViolveDroli2@gmail.com	85837847678	Hey cutie, I've got a little game we can play.  -  https://rb.gy/psrixq?Fef
140	tobey.karina@gmail.com	tobey.karina@gmail.com	8079332480	Hey, it's been a proper rollercoaster journey for me,\r\n\r\nbut finally I've managed to build platform connecting ppl with mobile car valeters (think Uber Eats for car cleaning!). Came upon your site & thought you might like the idea.\r\n\r\nDw I'm not about to sell you backlinks or a cheap website. lol\r\n\r\nIn 2 weeks I've launched a full MVP - valeters can accept online bookings & payments (I take an 18% cut). Also I've automated free listings for UK valeting companies, already indexed & ranking on Google.\r\n\r\nAs a fellow founder, I know you know the challenges with new companies. I'm basically looking to raise £60k for 15% equity to fuel growth.\r\n\r\nIf keen, let's chat more on a call. No pressure tho. Worst case, we can swap founder war stories! Always appreciate advice.\r\n\r\nThanks for your time mate, I know it's precious!\r\n\r\nCheers,\r\nJack\r\njack@wearepython.com
141	Katyaoffibra2LP	ViolveDroli2@gmail.com	89944415432	Hello, how about we try out some aphrodisiac recipes?  -  https://rb.gy/psrixq?Fef
142	Mike Tracey	mikemiclevy@gmail.com	86943611229	Hi there \r\n \r\nJust checked your torcheu.com baclink profile, I noticed a moderate percentage of toxic links pointing to your website \r\n \r\nWe will investigate each link for its toxicity and perform a professional clean up for you free of charge. \r\n \r\nStart recovering your ranks today: \r\nhttps://www.hilkom-digital.de/professional-linksprofile-clean-up-service/ \r\n \r\nRegards \r\nMike Tracey\r\nHilkom Digital SEO Experts \r\nhttps://www.hilkom-digital.de/
143	emilyjones2250@gmail.com	emilyjones2250@gmail.com	91524254	Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically. \r\n\r\nOur focus is on organic growth strategies that nurture a thriving community around your channel. We don't use bots or gimmicks, just targeted engagement tactics to help you reach the right people.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you'd like to see some of our previous work, let me know, and we can discuss it further.\r\n\r\nKind Regards,\r\nEmily
144	Katyaoffibra1LP	ViolveDrolia@gmail.com	85748274551	Hello, how about we explore some hidden hot springs together?  -  https://rb.gy/psrixq?Fef
145	RussellHoogeGM	lucido.leinteract@gmail.com	89622798658	Ndewo, achọrọ m ịmara ọnụahịa gị.
146	rickey.esters@googlemail.com	rickey.esters@googlemail.com	43388684	Are you looking for a capable financial company to fund your business project?\r\n\r\nFinance worldwide is a financial company that offers business loans for any business project around the world. We understand the challenges of finding a reliable financial partner, and we are here to provide you with the best solution for your business.\r\nOur team of experts can provide you with the most suitable loan package to meet your need                            \r\n                                                                                              \r\n                                                                                              \r\n                                                                                              \r\n                                                                                          Don't let a lack of funding hold you back. Contact us today for business loan solutions.  \r\n                                      \r\n                                      \r\nBest regards,\r\nLaura Cha.\r\nCustomer Service Representative                                    \r\n                                      \r\n                                      \r\nSkype:ID:live:.cid.c25a1f8b0fdaab04\r\nPhone:+85223194662\r\nmailto:info@financeworldwidehk.com
147	Randi	torch.az@gmx.com	490681643	Hey there \r\n\r\nI wanted to reach out and let you know about our new dog harness. It's really easy to put on and take off - in just 2 seconds - and it's personalized for each dog. \r\nPlus, we offer a lifetime warranty so you can be sure your pet is always safe and stylish.\r\n\r\nWe've had a lot of success with it so far and I think your dog would love it. \r\n\r\nGet yours today with 50% OFF:   https://caredogbest.com\r\n\r\nFREE Shipping - TODAY ONLY! \r\n\r\nAll the best, \r\n\r\nRandi
148	KatyaoffibrabLP	ViolveDroli2@gmail.com	88186753722	Hi handsome, want to join me for a midnight tryst?  -  https://u.to/CXOGIA?Fef
149	persse.walker6@outlook.com	persse.walker6@outlook.com	523883961	Hey, it's been a proper rollercoaster journey for me,\r\n\r\nbut finally I've managed to build platform connecting ppl with mobile car valeters (think Uber Eats for car cleaning!). Came upon your site & thought you might like the idea.\r\n\r\nDw I'm not about to sell you backlinks or a cheap website. lol\r\n\r\nIn 2 weeks I've launched a full MVP - valeters can accept online bookings & payments (I take an 18% cut). Also I've automated free listings for UK valeting companies, already indexed & ranking on Google.\r\n\r\nAs a fellow founder, I know you know the challenges with new companies. I'm basically looking to raise £60k for 15% equity to fuel growth.\r\n\r\nIf keen, let's chat more on a call. No pressure tho. Worst case, we can swap founder war stories! Always appreciate advice.\r\n\r\nThanks for your time mate, I know it's precious!\r\n\r\nCheers,\r\nJack\r\njack@wearepython.com
150	Mike Otis	peterGrieveMara@gmail.com	85824669212	Hi there \r\n \r\nI have just analyzed  torcheu.com for the ranking keywords and saw that your website could use a push. \r\n \r\nWe will enhance your ranks organically and safely, using only state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.digital-x-press.com/unbeatable-seo/ \r\n \r\n \r\nRegards \r\nMike Otis\r\n \r\nDigital X SEO Experts
151	Katyaoffibra2LP	ViolveDroli1@gmail.com	87261361542	Hello, how about we explore some hidden hot springs together?  -  https://u.to/CXOGIA?Fef
152	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	Hey, looking to boost your ad game? Picture your message hitting website contact forms worldwide, grabbing attention from potential customers everywhere! Starting at just under a hundred bucks my budget-friendly packages are designed to make an impact. Drop me an email now to discuss how you can get more leads and sales now!\r\n\r\nP. Stewart\r\nEmail: jkt6rc@mail-to-form.xyz\r\nSkype: form-blasting
153	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	Want Your Ad Everywhere? Reach Millions Instantly! For less than $100 I can blast your message to website contact forms globally. Contact me via skype or email below for info\r\n\r\nP. Stewart\r\nEmail: xy3ez6@mail-to-form.xyz\r\nSkype: form-blasting
154	simpsondanielle800@gmail.com	simpsondanielle800@gmail.com	4246504	Hi,\r\n\r\nI just visited torch.az and wondered if you'd ever thought about having an engaging video to explain what you do?\r\n\r\nI can show you some previous videos we've done if you want me to send some over. Let me know if you're interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nDanielle\r\n\r\nUnsubscribe: https://removeme.click/ev/unsubscribe.php?d=torch.az
155	cushing.hayley17@msn.com	cushing.hayley17@msn.com	688355049	Hello,\r\n\r\nWe noticed your domain: torcheu.com is listed in very few directories.\r\n\r\nDirectories have a very high Page Rank Score and provide really good back links\r\n\r\nCompany visit us on Company Registar and list your domain in all the directories.\r\n\r\nhttps://torcheu.companyregistar.org/torcheu.com
156	descoteaux.luis@gmail.com	descoteaux.luis@gmail.com	3730897584	Hello, I have a question
157	KatyaoffibracLP	ViolveDroli1@gmail.com	89873284717	Hello dear, let's make magic  -  https://u.to/CXOGIA?Fef
158	JeremyHoogeGM	lucido.leinteract@gmail.com	88121322791	Zdravo, htio sam znati vašu cijenu.
159	Imen Lift Co.	nasrin.samandar@gmail.com	+989054371409	Hello\r\nGood Day\r\nImen Lift Co. established in Tabriz- Iran, with excellent technological advantages in the field of Gear box motor elevator manufacturing. The company focuses on delivering advanced motor gear box elevators in a cost-effective way through their modern manufacturing services and all related gear box motor equipment separately. Imen Lift is known for its customer-oriented approach, and pays attention to the entire lifecycle of the lift, starting from design and manufacture to installation and servicing. we can offer you the best and competitive price. we are a wholesale company and have our brand and manufacture line , Imen Lift. if you need some equipment about elevator please let us know.\r\nfor more info please check our website: www.Imenlift.com and be in contact with me.\r\nmy whats app number: +989054371409\r\n\r\n\r\nBest Wishes\r\nNasrin
203	HRM Bah Mbi	hrhbahmbi12@gmail.com	82759785928	Attn. Director, \r\n \r\nWe are interested in your products. Please contact us with product details/catalog and company profile if  your company can handle a bulk supply of your products to Cameroon. \r\nPlease send your reply to bahmbi3@aghemfondom.com \r\n \r\nHRM Bah Mbi
160	marketing@pcxresponder.com	marketing@pcxresponder.com	50899008	Hi,\r\n\r\nI hope this email finds you well. I wanted to reach out to you today to discuss logo products and apparel for your business.\r\n\r\nQuick question: Who would be the best contact to discuss your company logo products and apparel such as:\r\n\r\n-Printed T-shirts\r\n-Logo mugs\r\n-Branded water bottles\r\n-Custom USB flash drives\r\n-Logo pens\r\n-plus 300,000 other products for your business\r\n\r\nhttps://torcheu.marketingeee.com/\r\n\r\nWith over two decades of experience in the promotional products industry, our company is dedicated to helping businesses like yours leave a lasting impression.\r\n\r\nOur wide range of custom-branded merchandise is designed to elevate your brand, foster customer loyalty, and drive sales.\r\n\r\nFrom captivating trade show giveaways to thoughtful employee incentive programs and impressive corporate gifts, we have the expertise to create unique promotional items tailored to your specific needs. Our team of promo product specialists will guide you through the entire process, from selecting the perfect items for your business to designing and creating custom logos that speak to your brand identity.\r\n\r\nAs your one-stop-shop for branded merchandise, we ensure top-quality finished products are delivered right to your doorstep, making the process seamless and hassle-free.\r\n\r\nLet's connect and explore how our promotional products can enhance your brand awareness and fuel business growth. \r\n\r\n\r\nThank you for your time, and we look forward to hearing from you soon.\r\n\r\nBest regards,\r\nCreative Specialist\r\nBranded Products\r\nhttps://torcheu.marketingeee.com/
161	Mike Timmons	mikeFepNeogy@gmail.com	86321738227	Hello \r\n \r\nThis is Mike Timmons\r\n \r\nLet me introduce to you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your torcheu.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\nRegards \r\nMike Timmons\r\n \r\nmike@strictlydigital.net
162	Katyaoffibra3LP	ViolveDroli1@gmail.com	84559337263	Hello dear, let's make magic  -  https://u.to/CXOGIA?Fef
163	judith.cheney@gmail.com	judith.cheney@gmail.com	30809104	Hi there,\r\n\r\nI recently came across your website on torch.az and found it very interesting. I was curious, have you ever considered creating an eBook out of your website content?\r\n\r\nThere are tools available, that allow you to easily convert website content into a well-designed eBook. This could be a great way to repurpose your existing content and potentially reach a new audience.\r\n\r\nOf course, I understand this might not be something you're interested in, but I just wanted to share the possibility!\r\n\r\nAnyway, here is the tool I had in mind. It's only $16.95 so worth checking out: \r\nhttps://furtherinfo.org/lgb7\r\n\r\nBest regards,\r\nJudith\r\n\r\nUnsubscribe: https://removeme.click/wp/unsubscribe.php?d=torch.az
164	Mike Jones	mikeplaurn@gmail.com	88897671921	Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat's right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.monkeydigital.org/affiliate-dashboard/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Jones\r\n \r\nMonkey Digital
165	arreguin.margarette@gmail.com	arreguin.margarette@gmail.com	798472832	Hi,\r\n\r\nDo you ever feel swamped by scheduling meetings, appointments, and calls?\r\n\r\nWith our AI-powered calendar app, you can take back control of your time. Our smart assistant handles it all:\r\n\r\n1. Schedule meetings instantly: No more back-and-forth emails or missed connections.\r\n2. Focus on more important tasks: Let AI handle the scheduling heavy lifting.\r\n3. Never miss an appointment again: Automated reminders ensure you're always on time.\r\n4. Integrates seamlessly with your favorite tools: Streamline your workflow effortlessly.\r\n\r\nFree up valuable time and boost your productivity - try our AI calendar app.\r\n\r\nThe price is just $17 for today only.\r\n\r\nLearn more: https://furtherinfo.org/xi1i\r\n\r\nMargarette
166	MichaelnarLR	yasen.krasen.13+86347@mail.ru	88684469837	Odowidjwoidwo wojdwkslqmwjfbjjdwkd jkwlsqswknfbjwjdmkqendj kedwjdbwhbdqjswkdwjfj eqwkdwknf torcheu.com
167	KatyaoffibracLP	ViolveDroli2@gmail.com	88287976516	Hey there, let's play  -  https://rb.gy/psrixq?Fef
168	forlonge.lewis@outlook.com	forlonge.lewis@outlook.com	31960613	In today's fast-paced world, where we're conditioned to expect immediate results, we might overlook opportunities that require some initial groundwork. Yet, as the saying goes, "The best time to plant a tree was 20 years ago. The second best time is now." Let us help you build that ground breaking digital business TODAY! Done For You Digital Business In-A-Box. Go to: https://plrwebsite.com/
169	KatyaoffibrabLP	ViolveDroli2@gmail.com	89895217959	Hey love, care to indulge?  -  https://rb.gy/psrixq?Fef
170	Mike Creighton	mikeGrieveMara@gmail.com	85811467184	Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit from an increase in authority. \r\n \r\nOur solution guarantees you a high-quality domain authority score within a period of three months. This will increase your organic visibility and strengthen your website authority, thus making it stronger against Google updates. \r\n \r\nCheck out our deals for more details. \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\nNEW: Ahrefs Domain Rating \r\nhttps://www.monkeydigital.co/ahrefs-seo/ \r\n \r\n \r\nThanks and regards \r\nMike Creighton
171	order@pcxresponder.com	order@pcxresponder.com	447158782	Hi,\r\n\r\nIf I can tell you exactly who visited your website today - would you be interested?\r\n\r\nHere is what I mean.\r\n\r\nYou get 100 visitors today.\r\n\r\n2 of them fill out your form.\r\n1 of them calls you.\r\n97 of them are gone forever... Until Now.\r\n\r\nOur software can track:\r\n\r\n    -Who was on your website\r\n    -How they got there\r\n    -What keyword they searched\r\n    -Their Name, Phone and Email address.\r\n\r\nDon't lose any more leads or sales opportunities.\r\n\r\nWe've been in business since 2015 with clients around the world.\r\n\r\nInterested? Send me your name and number for a no cost demo on YOUR website.\r\n\r\nLeadsMax.biz\r\n\r\n\r\nRegards,\r\nWebsite Detective\r\nDon't Miss Any Opportunity.
172	CarlHoogeGM	lucido.leinteract@gmail.com	86199349313	Hej, jeg ønskede at kende din pris.
233	jessicaoffibra3WZ	Croreoptoks3@gmail.com	89145943876	Hi darling, want to join me for some naked yoga? -  https://u.to/NsOtIA?ml
173	Mike Russel	mikeHefprodohefkNole@gmail.com	87552625882	This service is perfect for boosting your local business' visibility on the map in a specific location. \r\n \r\nWe provide Google Maps listing management, optimization, and promotion services that cover everything needed to rank in the Google 3-Pack. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/ranking-in-the-maps-means-sales/ \r\n \r\n \r\nThanks and Regards \r\nMike Russel\r\n \r\n \r\nPS: Want a ONE-TIME comprehensive local plan that covers everything? \r\nhttps://www.speed-seo.net/product/local-seo-bundle/
174	leadsbox@pcxresponder.com	leadsbox@pcxresponder.com	3069959808	Hi,\r\n\r\nDo you have a digital product you would like to see promoted for free?\r\n\r\nDo you target companies with your product?\r\n\r\nWe promote your product for you on a commission basis.\r\n\r\nCome check us out: https://torcheu.leadsboy.biz
175	RobertoxyncYJ	maski8Coise@mail.com	89282738262	Good afternoon! We give you a promo code - ZBXM777 \r\nActivate it in your personal account after registering on www.cexasia.pro \r\nAnd you will receive up to 1000USDT on your deposit. Happy trading!
176	Irenoffibra2GZ	Freerfalp3@gmail.com	81111795569	Dating for adults -  https://rb.gy/psrixq?si
177	admin@charterunionfin.com	admin@charterunionfin.com	525569385	Do not stay out of business, or close down due to lack of Funding and finance. Your projects, businesses and financial needs is completely possible.\r\n\r\nYou can now fund your projects, businesses without worries of repayment as you can have ample amount of time to execute your projects and businesses and build up, grow financially, to achieve your complete set goals.\r\n\r\nAre you also a broker/consultant? Make life easy for various of your clients globlly to help provide funding for their various Businesses and Projects, edging them towards a better buiness and financial goals.\r\n\r\nChu Yeung\r\nCustomer Care Department\r\ninfo@charterunionfin.com\r\n+852 8199 9324
178	IrenoffibracGZ	Freerfalpa@gmail.com	86671669249	I want you to fuck me tonight, write here -  https://rb.gy/psrixq?si
179	Mike Waller\r\nTQ	peterGrieveMara@gmail.com	87873989365	Hi there \r\n \r\nAre you tired of spending money on advertising that doesn’t work? \r\nWe have the right strategy for you, to meet the right audience within your City boundaries. \r\n \r\nB2B Local City Marketing that works: \r\nhttps://www.onlinelocalmarketing.org/product/local-research-advertising/ \r\n \r\nWith our innovative marketing approach, you will receive calls, leads, and website interactions within a week. \r\n \r\nRegards \r\nMike Waller\r\n https://www.onlinelocalmarketing.org
180	adrian.bonwick84@googlemail.com	adrian.bonwick84@googlemail.com	725041161	Hands down, the Easiest Customer Financing Program in the Industry No more turning down business due to low credit scores\r\n\r\n++ This Offer Only For Businesses In The USA ++\r\n\r\nContact me below for details\r\n\r\nJessica Snyder\r\njessica.snyder@helloratespros.com\r\nhttps://helloratespros.com/5-6/
181	aileen.scrymgeour@msn.com	aileen.scrymgeour@msn.com	4163268836	Hi,\r\n\r\nAre you tired of video creation headaches?\r\n\r\nOur AI tool turns ideas into engaging videos in minutes. No editing hassles, just describe your concept and watch it come to life.\r\n\r\n- Free to Start: Get started with our free plan.\r\n- Speak Your Language: Create and translate videos in 30+ languages.\r\n- AI Voice Cloning: Save time with AI-powered voiceovers.\r\n\r\nLearn more and try it FREE: https://furtherinfo.org/ud6s\r\n\r\nRegards,\r\nAileen
182	rodrick.trice17@yahoo.com	rodrick.trice17@yahoo.com	8368888970	Hi torcheu.com\r\n\r\nWe noticed your website torcheu.com is only listed in 9/2,500 directories.\r\n\r\nWe have a service that lists your company in all the directories globally.\r\n\r\nIt supports all countries, all services, to boost your SEO and get you those high quality back links that directories offer.\r\n\r\nWe have a promo running for a one time fee of $99\r\n\r\nVisit us on https://torcheu.companyregistar.org/torcheu.com to get listed.
183	GREENING UGANDA	greening.ugandacs@gmail.com	84476165421	Hass avocado Export farming is worth everybody's investment who thinks \r\nfarming as a business regardless of how much your job pays you since it's \r\nless risky, very low cost input, low maintenance and ready available \r\nmarket worldwide (Global Avocado Market size was valued at USD 16.69 \r\nbillion in 2022 and is poised to grow from USD 18.33 billion in 2023 to \r\nUSD 38.71 billion by 2031, growing at a CAGR of 9.80%). Any investment \r\nin Hass Avocado Growing automatically becomes your \r\nPension. 13,570 ACRES of Hass Avocado Planted in 6 years, for details \r\nfollow https://greeninguganda.com/Products/Hass_Ovaccado_Cba OR \r\nour facebook page \r\nhttps://www.facebook.com/media/set/?set=a.1457100674456118&type=3 \r\nAND \r\nhttps://www.facebook.com/media/set/?set=a.720120324820827&type=3 \r\nOR email us at cs@greening.green OR Call/text/Whatsapp +256-776- \r\n200002 \r\nFollow us on twitter.com/greeninguganda \r\nFollow & like us on facebook \r\nhttps://www.facebook.com/greeningugandaforestryservices
184	Irenoffibra2GZ	Freerfalpc@gmail.com	83877116615	Hi handsome, how about we share a steamy sauna session? -  https://rb.gy/psrixq?si
185	IrenoffibracGZ	Freerfalp2@gmail.com	86814479931	Hey cutie, want to get lost in a sensual massage?-  https://rb.gy/psrixq?si
186	Tarah	tarah@mail.medicopostura.com	2706536413	Morning \r\n\r\nLooking to improve your posture and live a healthier life? Our Medico Postura™ Body Posture Corrector is here to help!\r\n\r\nExperience instant posture improvement with Medico Postura™. This easy-to-use device can be worn anywhere, anytime – at home, work, or even while you sleep.\r\n\r\nMade from lightweight, breathable fabric, it ensures comfort all day long.\r\n\r\nGrab it today at a fantastic 60% OFF: https://medicopostura.com\r\n\r\nPlus, enjoy FREE shipping for today only!\r\n\r\nDon't miss out on this amazing deal. Get yours now and start transforming your posture!\r\n\r\nThe Best, \r\n\r\nTarah
187	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	Interested in maximizing your reach? You're reading this message and I can get others to read your ad the exact same way! Drop me an email below to learn more about our services and start spreading your message effectively!\r\n\r\nP. Stewart\r\nEmail: yatuju@submitmaster.xyz\r\nSkype: form-blasting
188	Mike Edwards	mikemiclevy@gmail.com	84856577163	Hi there \r\n \r\nJust checked your torcheu.com baclink profile, I noticed a moderate percentage of toxic links pointing to your website \r\n \r\nWe will investigate each link for its toxicity and perform a professional clean up for you free of charge. \r\n \r\nStart recovering your ranks today: \r\nhttps://www.hilkom-digital.de/professional-linksprofile-clean-up-service/ \r\n \r\nRegards \r\nMike Edwards\r\nHilkom Digital SEO Experts \r\nhttps://www.hilkom-digital.de/
189	LouisHoogeGM	lucido.leinteract@gmail.com	84856636942	Hola, quería saber tu precio..
234	emilyjones2250@gmail.com	emilyjones2250@gmail.com	61298699	Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are interested in your channel/videos.\r\n- Safe: All actions are done, without using any automated tasks / bots.\r\n\r\nOur price is just $60 (USD) per month and we can start immediately.\r\n\r\nIf you are interested then we can discuss further.\r\n\r\nKind Regards,\r\nEmily
190	Sherri	forrest.sherri@outlook.com	4518406	Good day \r\n\r\nLooking to improve your posture and live a healthier life? Our Medico Postura™ Body Posture Corrector is here to help!\r\n\r\nExperience instant posture improvement with Medico Postura™. This easy-to-use device can be worn anywhere, anytime – at home, work, or even while you sleep.\r\n\r\nMade from lightweight, breathable fabric, it ensures comfort all day long.\r\n\r\nGrab it today at a fantastic 60% OFF: https://medicopostura.com\r\n\r\nPlus, enjoy FREE shipping for today only!\r\n\r\nDon't miss out on this amazing deal. Get yours now and start transforming your posture!\r\n\r\nTo your success, \r\n\r\nSherri
191	jannes@pcxresponder.com	jannes@pcxresponder.com	Vydbym iug	Hi,\r\n\r\nWe are a provider of premium databases for companies.\r\n\r\nI want to know if you need any sort of data for your business?\r\n\r\nPlease respond to this email and let us know what you are looking for.\r\n\r\nRegards\r\nJannes
192	Pərviz	perviz.13.90@mail.ru	0552144533	Lift alışı ilə maraqlanırdım zəng vura bilərsiniz nömrə qoymamisiniz
193	antony.poff@gmail.com	antony.poff@gmail.com	7782517106	Finally, an easy way to offer affordable payments to ALL customers and credit grades Don't leave money on the table, now you'll be able to turn people with low credit scores into paying customers!\r\n\r\n++ This Offer Only For Businesses In The USA ++\r\n\r\nSend me a message at my contact info below for info\r\n\r\nJessica Snyder\r\njessica.snyder@helloratespros.com\r\nhttps://helloratespros.com/5-6/
194	Mike Austin	peterGrieveMara@gmail.com	87152835314	Good Day \r\n \r\nI have just analyzed  torcheu.com for its SEO Trend and saw that your website could use an upgrade. \r\n \r\nWe will improve your ranks organically and safely, using only state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.digital-x-press.com/unbeatable-seo/ \r\n \r\n \r\nRegards \r\nMike Austin\r\n \r\nDigital X SEO Experts
195	PillsDycleDE	iunskiygipertonik@gmail.com	83454343659	Erectile dysfunction treatments available online from TruePills. \r\nDiscreet, next day delivery and lowest price guarantee. \r\n \r\nViagra is a well-known, branded and common erectile dysfunction (ED) treatment for men. \r\nIt's available through our Online TruePills service. \r\n \r\nTrial ED Pack consists of the following ED drugs: \r\n \r\nViagra Active Ingredient: Sildenafil 100mg 5 pills \r\nCialis 20mg 5 pills \r\nLevitra 20mg 5 pills \r\n \r\nhttps://cutt.ly/dw7ChH4s \r\nhttps://svoeteplo.ru/bitrix/rk.php?goto=https://true-pill.top/\r\nhttps://abcgreenwood.ru/bitrix/redirect.php?goto=https://true-pill.top/\r\nhttps://www.cbusforums.com/proxy.php?link=https://true-pill.top/\r\nhttps://wiki.changeringing.co.uk/index.php?title=%2Ftrue-pill.top&action=edit&printable=yes\r\nhttps://lazmanhazehmusic.com/ms_song/prisoner/?getback=https%3A%2F%2Ftrue-pill.top%2F\r\n \r\n \r\nNor\r\nTespadan\r\nProtogut\r\nHostacortin\r\nZyrtec4\r\nRosemig\r\nMitil\r\nFloxatrat\r\nCitaxin\r\nCeglution\r\nPositivum\r\nOzen\r\nAzol\r\nFlovid\r\nWymesone\r\nRamitalate l\r\nTretinoin 0,05\r\nGittalun\r\nMebeverin\r\nGraminol\r\nTopilek\r\nMeva\r\nTiroran\r\nBisogamma\r\nNeutraflux\r\nDiltelan\r\nEryhexal\r\nEmiphage\r\nGlucomin\r\nOldinot\r\nSubamycin\r\nAkridipin\r\nCepodem\r\nMetrozine\r\nPolaramine reformulado\r\nTerloc\r\nControloc\r\nAcido risedronico\r\nBipomax\r\nMycelvan
196	PatrickHoogeGM	lucido.leinteract@gmail.com	81918976284	Hæ, ég vildi vita verð þitt.
197	iona.drayton34@outlook.com	iona.drayton34@outlook.com	W Xkffywa	Dear torch.az owner,\r\n\r\nIf you're receiving this message, it signifies the effectiveness of my marketing approach. I specialize in extending the reach of your advertising message across 5 million sites for just $50. Additionally, you have the option to expand your campaign to 15 million platforms for a mere $125. This presents an unparalleled opportunity to promote your business or services affordably.\r\n\r\nTo explore this lucrative marketing opportunity further, please feel free to contact me via email at virgo.t3@gmail.com or connect with me on Skype at live:.cid.dbb061d1dcb9127a\r\n\r\nLooking forward to propelling your marketing efforts to new heights.
198	Irenoffibra1GZ	Freerfalp1@gmail.com	84865222268	Hey cutie, want to get lost in a sensual massage?-  https://rb.gy/psrixq?si
199	lorenzo.mulligan@gmail.com	lorenzo.mulligan@gmail.com	222409898	Do you need funds to run your business smooth? We will provide loans and boost growth and supercharge returns on your business.\r\n\r\nNow you have the Opportunity to Secure Funds for your Business and Ventures free from pressure and the burden of repayment as our primary focus is in nurturing the growth of your business and projects, allowing you to achieve your desired business goals and dreams.\r\n\r\nTake advantage of our fast Funding offer and receive funding for your business and projects within days, and ample time for repayment, providing you sufficient time to grow and attain your business goals.\r\n\r\nWe are a registered and reputable HK company with international accreditation.\r\n\r\nPlease reply to: customersupport@capitalfund-hk.com\r\nor\r\nGet in touch with us at: +852 3008 8373\r\n\r\n\r\nUnsubscribe here if you don't want to get these awesome offers: https://form.jotform.com/241311404065442\r\nKirchstrasse 88, Long Beach, New York, US, 1257
200	IrenoffibrabGZ	Freerfalp1@gmail.com	88224694659	Hi darling, want to join me for some naked yoga? -  https://rb.gy/psrixq?si
201	Mike Fane	mikeFepNeogy@gmail.com	84172186451	Greetings \r\n \r\nThis is Mike Fane\r\n \r\nLet me introduce to you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your torcheu.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\nRegards \r\nMike Fane\r\n \r\nmike@strictlydigital.net
202	RonaldAbragMQ	crypto.adviser00004@gmail.com	81267831251	Hi, I'm Michael Yoshioka from Crypto Adviser LTD. Here's a wallet & debit card for cryptocurrencies. Use your crypto assets more easily with this. \r\n \r\nRedotPay WALLET: \r\nRedotPay partners with Binance, offering a popular wallet & VISA debit card. Pay directly with crypto. Apply for the card by installing the wallet app from the URL, App Store, or Google Play. \r\n \r\nWallet Fee: Free \r\nCard Fee: Virtual VISA $5 / Physical VISA $100 \r\nURL: https://redotpay.cards/register/ \r\n \r\nOCTPASS WALLET: \r\nJDB Bank, Laos's largest private bank, partners with the "Octopus" wallet. Apply for a VISA debit cash card. Withdraw cash from ATMs and make international transfers. \r\n \r\nWallet Fee: Free \r\nBank Account Fee: $800 ($300 deposit) \r\nURL: https://laos-bank.jp/en/ \r\n \r\nUse these cards at VISA stores worldwide. Get an affiliate account by applying from the URLs above. \r\n \r\nAffiliate rewards: Up to $40/card + up to 0.25% fee for RedotPay, and up to $150/card for JDB Bank. \r\n \r\nFor questions, contact: \r\n \r\nCrypto Adviser LTD \r\nMichael Yoshioka \r\nE-mail: info@crypto-adviser.co
204	Guadalupe	guadalupe@torch.az	7005323725	Good day, \r\n\r\nI hope this email finds you well. I wanted to let you know about our new BANGE backpacks and sling bags that just released.\r\n\r\nBange is perfect for students, professionals and travelers. The backpacks and sling bags feature a built-in USB charging port, making it easy to charge your devices on the go.  Also they are waterproof and anti-theft design, making it ideal for carrying your valuables.\r\n\r\nBoth bags are made of durable and high-quality materials, and are perfect for everyday use or travel.\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: http://bangeshop.com\r\n\r\nThe Best,\r\n\r\nGuadalupe
205	Mike Farmer	mikeplaurn@gmail.com	87741651849	Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat's right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.monkeydigital.org/affiliate-dashboard/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Farmer\r\n \r\nMonkey Digital
206	AmeliaoffibrabCM	Dialimili1@gmail.com	86975991964	Hey, care to join me for a candlelit bubble bath? -  https://u.to/NsOtIA?mak
207	jessicaoffibra2WZ	Croreoptoks1@gmail.com	82423615113	Hi darling, want to join me for some naked yoga? -  https://rb.gy/7xb976?enefs
208	lehman.santiago33@gmail.com	lehman.santiago33@gmail.com	249684176	Hey there,\r\n\r\nAre you tired of spending countless hours on repetitive marketing tasks?\r\n\r\nImagine having a personal AI assistant that can handle everything from writing high-converting copy to creating stunning websites and videos – all within your WordPress dashboard.\r\n\r\nThis revolutionary AI tool can complete hundreds of marketing tasks in seconds, saving you time and money.\r\n\r\n1. Write captivating content: Articles, landing pages, emails, ebooks, and more – all crafted by AI to perfection.\r\n2. Design stunning visuals: Create professional-looking logos, graphics, and websites in seconds.\r\n3. Automate marketing tasks: Build high-converting funnels, manage social media, and generate leads on autopilot.\r\n4. Develop mobile apps: No coding skills needed! WP Genie can build apps you can sell for thousands.\r\n\r\nAnd so much more!\r\n\r\nLearn more: https://furtherinfo.org/genie\r\n\r\nPlus, WP Genie is:\r\n\r\n- 16x faster than ChatGPT\r\n- Always available: No outages like with other AI tools.\r\n- Easy to use: No technical skills required.\r\n\r\nFor a limited time, get our plugin for a one-time price of just $17 (normally $30/month).\r\n\r\nThis offer won't last long, so don't miss out.\r\n\r\nClick here to learn more and unlock the power of AI for your WordPress site: https://furtherinfo.org/genie\r\n\r\nSincerely,\r\nSantiago
209	jessicaoffibra2WZ	Croreoptoks1@gmail.com	89194146134	Hi darling, want to join me for some naked yoga? -  https://rb.gy/7xb976?enefs
210	emilyjones2250@gmail.com	emilyjones2250@gmail.com	629425257	Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are interested in your channel/videos.\r\n- Safe: All actions are done, without using any automated tasks / bots.\r\n\r\nOur price is just $60 (USD) per month and we can start immediately.\r\n\r\nIf you are interested then we can discuss further.\r\n\r\nKind Regards,\r\nEmily
211	emilyjones2250@gmail.com	emilyjones2250@gmail.com	249568589	Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically. \r\n\r\n- We guarantee to gain you 700-1500+ subscribers per month.\r\n- People subscribe because they are interested in your channel/videos, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any 'bots'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you have any questions, let me know, and we can discuss further.\r\n\r\nKind Regards,\r\nEmily
212	hervey.lizzie@gmail.com	hervey.lizzie@gmail.com	06-25248826	Dear torcheu.com owner,\r\n\r\nIf you're receiving this message, it signifies the effectiveness of my marketing approach. I specialize in extending the reach of your advertising message across 5 million sites for just $50. Additionally, you have the option to expand your campaign to 15 million platforms for a mere $125. This presents an unparalleled opportunity to promote your business or services affordably.\r\n\r\nTo explore this lucrative marketing opportunity further, please feel free to contact me via email at virgo.t3@gmail.com or connect with me on Skype at live:.cid.dbb061d1dcb9127a\r\n\r\nLooking forward to propelling your marketing efforts to new heights.
213	joannariggs278@gmail.com	joannariggs278@gmail.com	21294521	Hi,\r\n\r\nI just visited torcheu.com and wondered if you'd ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195.\r\n\r\nLet me know if you're interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJoanna
214	lakesha.ramsden@msn.com	lakesha.ramsden@msn.com	5320373374	Hey there,\r\n\r\nImagine your WordPress site powered by AI!\r\n\r\nOur plugin writes captivating content, designs stunning visuals, and automates marketing tasks - all within your Wordpress dashboard.\r\n\r\nMore info:  https://furtherinfo.org/wpg\r\n\r\nSincerely,\r\n\r\nLakesha
215	Mike Oakman	mikeHefprodohefkNole@gmail.com	89834387478	This service is perfect for boosting your local business' visibility on the map in a specific location. \r\n \r\nWe provide Google Maps listing management, optimization, and promotion services that cover everything needed to rank in the Google 3-Pack. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/ranking-in-the-maps-means-sales/ \r\n \r\n \r\nThanks and Regards \r\nMike Oakman\r\n \r\n \r\nPS: Want a ONE-TIME comprehensive local plan that covers everything? \r\nhttps://www.speed-seo.net/product/local-seo-bundle/
216	Murad	muradjapon@gmail.com	0413013774	işlemek isteyirem işe ehtiyacım var
217	libbyevans461@gmail.com	libbyevans461@gmail.com	6818267748	Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers both safely and practically. \r\n\r\n✔️ 300-500+ followers per month.\r\n✔️ People follow you because they are interested in your business or niche.\r\n✔️ All actions are made manually. We do not use any bots.\r\n\r\nKind Regards,\r\nLibby\r\n\r\nUnsubscribe here: https://removeme.click/ig/unsubscribe.php?d=torcheu.com
218	Ameliaoffibra1CM	Dialimili2@gmail.com	88344219944	Hey, care to join me for a candlelit bubble bath? -  https://u.to/NsOtIA?mak
260	Greta	gretawoodd@foxmail.com	652595094	World's Best Neck Massager Get it Now 50% OFF + Free Shipping!\r\n\r\nWellness Enthusiasts! There has never been a better time to take care of your neck pain! \r\nOur clinical-grade TENS technology will ensure you have neck relief in as little as 20 minutes.\r\n\r\nGet Yours: https://hineck.co\r\n\r\nKind Regards,\r\n\r\nGreta\r\nTorch
219	https://e5gaxu6.localto.net/	vfssffssdfdsfd@gmail.com	https://e5gaxu6.localto.net/	This horoscope prediction is still a top secret! Blind clairvoyant baba Nina from Odessa, Ukraine - decided that her gift should not be wasted, so she remotely helps everyone anyone who wants it. People live in different parts of the country and the world, and not always they have the opportunity to visit the clairvoyant in person. Baba Nina only needs a small amount of information to read to read your destiny imprint and give you a diagnostic session. It's completely free of charge! It is impossible to discuss horoscope with friends and relatives, because so YOU change the true the course of things, violating your destined path. \r\n \r\n \r\nGet horoscope on self-hosted website! Click on link, and Click "visit site" on middle-page: -   https://e5gaxu6.localto.net/ \r\nIf page don't load - refresh.
220	Mike Kingsman	mikeGrieveMara@gmail.com	86126596569	Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit from an increase in authority. \r\n \r\nOur solution guarantees you a high-quality domain authority score within a period of three months. This will increase your organic visibility and strengthen your website authority, thus making it stronger against Google updates. \r\n \r\nCheck out our deals for more details. \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\nNEW: Ahrefs Domain Rating \r\nhttps://www.monkeydigital.co/ahrefs-seo/ \r\n \r\n \r\nThanks and regards \r\nMike Kingsman
221	griffie.jake68@gmail.com	griffie.jake68@gmail.com	04.62.46.65.28	Hi torcheu.com Admin,\r\n\r\nI am curious to know how much you would charge for a link insertion in an existing post?\r\n\r\nDo you also allow the publication of sponsored posts on your blog? What's the fee?\r\n\r\nIf you prefer EXCHANGE instead of paid linking, we may get you featured on any of any of the following websites:\r\n\r\necommercefastlane.com (DR:71, Traffic:80.6K)\r\ncoolbio.org (DR:64, Traffic:102K)\r\nvyvymangaa.us (DR:48, Traffic:135K)\r\n\r\nYou won't have to link back to the same website but some other one.\r\n\r\nThis is called 3-way link exchange, the safest link building method works today.\r\n\r\nWe've over 8K+ sites in our inventory with real organic traffic, if you want to look for more options for exchange.\r\n\r\nIf you're interested, please feel free to contact me via email at sebmarketer@gmail.com\r\n\r\nBest of Regards
222	Ameliaoffibra2CM	Dialimili1@gmail.com	81578148757	Hey, care to join me for a candlelit bubble bath? -  https://rb.gy/7xb976?mak
223	jessicaoffibraaWZ	Croreoptoks3@gmail.com	84969558885	Hi darling, want to join me for some naked yoga? -  https://rb.gy/7xb976?enefs
224	AmeliaoffibracCM	Dialimilic@gmail.com	89141452749	Hello, how about we share some sweet treats in bed? -  https://u.to/NsOtIA?mak
225	douglass.zara24@gmail.com	douglass.zara24@gmail.com	Mzp m Q zx Q	Hi,\r\n\r\nI just visited torch.az and wondered if you'd considered creating an online store?\r\n\r\nShopify makes it simple.\r\n\r\n- Build a beautiful store in minutes with customizable templates.\r\n- No coding needed, perfect for beginners.\r\n- Sell anywhere - web, mobile, social media, even in person!\r\n- Shopify handles payments, shipping, and security.\r\n\r\nFree trial: https://furtherinfo.org/rmdi\r\n\r\nBest,\r\nZara\r\n\r\nIf you do not wish to be contacted again, click here: https://removeme.click/imp/unsubscribe.php?d=torch.az
226	Mike Galbraith	mikemiclevy@gmail.com	87776543897	Hi there \r\n \r\nJust checked your torcheu.com baclink profile, I noticed a moderate percentage of toxic links pointing to your website \r\n \r\nWe will investigate each link for its toxicity and perform a professional clean up for you free of charge. \r\n \r\nStart recovering your ranks today: \r\nhttps://www.hilkom-digital.de/professional-linksprofile-clean-up-service/ \r\n \r\nRegards \r\nMike Galbraith\r\nHilkom Digital SEO Experts \r\nhttps://www.hilkom-digital.de/
227	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	Want Your Ad Everywhere? Reach Millions Instantly! For less than $100 I can blast your message to website contact forms globally. Contact me via skype or email below for info\r\n\r\nPhil Stewart\r\nEmail: kg14n4@submitmaster.xyz\r\nSkype: form-blasting
228	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	I was interested in whether or not you would like me to blast your ad to millions of contact forms. You're reading this message so you know others will read yours the same way. Take a peek at my site below for info\r\n\r\nhttp://tszw5s.formblast.xyz
229	PillsDycleDE	iunskiygipertonik@gmail.com	89638373818	Erectile dysfunction treatments available online from TruePills. \r\nDiscreet, next day delivery and lowest price guarantee. \r\n \r\nViagra is a well-known, branded and common erectile dysfunction (ED) treatment for men. \r\nIt's available through our Online TruePills service. \r\n \r\nTrial ED Pack consists of the following ED drugs: \r\n \r\nViagra Active Ingredient: Sildenafil 100mg 5 pills \r\nCialis 20mg 5 pills \r\nLevitra 20mg 5 pills \r\n \r\nhttps://cutt.ly/dw7ChH4s \r\nhttps://svetlustr.com/bitrix/rk.php?goto=https://true-pill.top/\r\nhttp://allpdd.ru/bitrix/redirect.php?goto=https://true-pill.top/\r\nhttps://www.sirsafetyperugia.it/?URL=https://true-pill.top/\r\nhttps://www.lookandwalk.com/en/utils/link_preview?q=http%3A%2F%2Ftrue-pill.top&r=0.17766979675388428\r\nhttp://fm-p.jp/index.php?module=jumper&action=pjump&url=http%3A%2F%2Ftrue-pill.top\r\n \r\n \r\nOxybutynine\r\nXimeprox\r\nTacardia\r\nSerenata\r\nAtmadisc\r\nBrunacol\r\nSefurox\r\nUnat\r\nNitromist\r\nNifical\r\nIsoniazidum\r\nPulna\r\nHytis\r\nDompenyl\r\nMaxartan\r\nAzoran\r\nTriregol\r\nMycolicine\r\nMatolac\r\nDiurefar\r\nDiprazinum\r\nOestrodose\r\nCetriwal\r\nSedesterol\r\nCiclopar\r\nLiskonum\r\nHalopidol\r\nCelonax\r\nAmpimycine dex\r\nMetral\r\nRaniprotect\r\nAideito\r\nBlocotenol\r\nErotab\r\nAgopton\r\nIsotroin\r\nNovitropan\r\nTicoflex\r\nAllersoothe\r\nOxcord
230	AmeliaoffibrabCM	Dialimilia@gmail.com	82384447951	Hello, how about we share some sweet treats in bed? -  https://u.to/NsOtIA?mak
231	gladman.reta0@gmail.com	gladman.reta0@gmail.com	692870406	Hi there,\r\n\r\nAre you tired of paying monthly fees for website hosting, cloud storage, and funnels?\r\n\r\nWe offer a revolutionary solution: host unlimited websites, files, and videos for a single, low one-time fee. No more monthly payments.\r\n\r\nHere's what you get:\r\n\r\nUltra-fast hosting powered by Intel® Xeon® CPU technology\r\nUnlimited website hosting\r\nUnlimited cloud storage\r\nUnlimited video hosting\r\nUnlimited funnel creation\r\nFree SSL certificates for all domains and files\r\n99.999% uptime guarantee\r\n24/7 customer support\r\nEasy-to-use cPanel\r\n365-day money-back guarantee\r\n\r\nPlus, get these exclusive bonuses when you act now:\r\n\r\n60+ reseller licenses (sell hosting to your clients!)\r\n10 Fast-Action Bonuses worth over $19,997 (including AI tools, traffic generation, and more!)\r\n\r\nDon't miss out on this limited-time offer! The price is about to increase, and this one-time fee won't last forever.\r\n\r\nClick here to learn more: https://furtherinfo.org/yarx\r\n\r\nReta
232	Gina	gina@earsman.podiatristusa.sale	7810427496	Good day,\r\n\r\nIf you are one of the sufferers of the common problems nails have, then you are in luck! Our Toenail Clippers is here to help. It has a specially designed clip that can help those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, and thickened nails.\r\n\r\nWe are confident that our Toenail Clippers will provide you with the results you are looking for.\r\n\r\nGet yours today with 60% OFF: https://podiatristusa.sale\r\n\r\nBest regards,\r\n\r\nGina
235	RobertisomsAB	winonaboykin@hotmail.com	89799279913	Attention sales superstars! https://SellAccs.net wants YOU to join our dynamic team. With our innovative platform facilitating online account transactions, you'll have a hot commodity to sell and an eager market to tap into. Enjoy competitive commissions, ongoing training, and dedicated support as you propel your career forward in the digital commerce industry. Join us now and turn your sales skills into unlimited earning potential! \r\n \r\n \r\nMOUSE CLICK THE NEXT WEB PAGE: https://SellAccs.net
236	Jeannie	jeannie@herrin.podiatristusa.sale	393774518	Hi there,\r\n\r\nIf you are one of the sufferers of the common problems nails have, then you are in luck! Our Toenail Clippers is here to help. It has a specially designed clip that can help those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, and thickened nails.\r\n\r\nWe are confident that our Toenail Clippers will provide you with the results you are looking for.\r\n\r\nGet yours today with 60% OFF: https://podiatristusa.sale\r\n\r\nBest regards,\r\n\r\nJeannie
237	emilyjones2250@gmail.com	emilyjones2250@gmail.com	3684359222	Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically. \r\n\r\n- We guarantee to gain you 700-1500+ subscribers per month.\r\n- People subscribe because they are interested in your channel/videos, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any 'bots'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you have any questions, let me know, and we can discuss further.\r\n\r\nKind Regards,\r\nEmily
238	Mike James	peterGrieveMara@gmail.com	85214888214	Hi there \r\n \r\nI have just took a look on your SEO for  torcheu.com for its SEO Trend and saw that your website could use a push. \r\n \r\nWe will increase your ranks organically and safely, using only state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.digital-x-press.co/unbeatable-seo/ \r\n \r\nRegards \r\nMike James\r\n \r\nDigital X SEO Experts \r\nhttps://www.digital-x-press.co/whatsapp-us/
239	alexis.mcdaniels58@gmail.com	alexis.mcdaniels58@gmail.com	5194714760	Hi\r\n\r\nThis will substantially impact your page rank, the more increased directories your company is listed \r\n\r\nin, globally or locally, the more back links you have and the higher you rank in Google - Yahoo - Bing.\r\n\r\nIt has never been easier to promote your online property\r\n\r\nJust a few inputs and our software willl do the rest. No more worries about email verification - manual link building or CAPTCHAs.\r\n\r\nWe have automed everything that we possibly could to make submitting your domain a \r\n\r\nbreeze.\r\n\r\nSee your online property on the first page.\r\n\r\nWe will register your site to thousands of directories and give you a full \r\n\r\nreport on the status of each submission. Although we have created an automated system to \r\n\r\na large extent, some of the submissions may require manual approval which could cause a slight \r\n\r\ndelay.\r\n\r\nMaking your life simpler\r\n\r\nCompanyRegistar.com
240	emilyjones2250@gmail.com	emilyjones2250@gmail.com	689082130	Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are interested in your channel/videos.\r\n- Safe: All actions are done, without using any automated tasks / bots.\r\n\r\nOur price is just $60 (USD) per month and we can start immediately.\r\n\r\nIf you are interested then we can discuss further.\r\n\r\nKind Regards,\r\nEmily
241	traugott.eliza@gmail.com	traugott.eliza@gmail.com	052 436 36 50	Is building a successful e-commerce site for your outdoor gear business overwhelming?\r\nFrustrated by low traffic and poor conversions? Struggling to engage customers?\r\n\r\nDownload our FREE eBook, **"100 Checkpoints for a Successful E-commerce Website,"** packed with actionable tips and strategies:\r\n\r\n- **Planning & Strategy:** Target audience, clear goals, right platform.\r\n- **Design & UX:** User-friendly, responsive, visually appealing.\r\n- **Product Pages:** Detailed descriptions, quality images, reviews.\r\n- **Checkout Process:** Simplified, reducing cart abandonment.\r\n- **SEO & Marketing:** Boost visibility, attract organic traffic.\r\n- **Analytics & Optimization:** Track performance, improve continuously.\r\n- **Customer Service:** Outstanding support, easy returns.\r\n- **Security:** Compliance, secure transactions.\r\n- **Growth:** Plan for future success.\r\n\r\nDon’t let e-commerce challenges hold you back. Download your free eBook now and transform your site into a sales powerhouse!\r\n\r\nDownload Your Free eBook Now! https://alwaysdigital.co/f1/?torcheu.com\r\n\r\nTo your success,\r\n\r\nSam Miller\r\n\r\nP.S. Limited time offer – get your copy today! https://alwaysdigital.co/f1/?torcheu.com
242	jadadarell@gmail.com	jadadarell@gmail.com	315064566	Hi there,\r\n\r\nWe run a TikTok growth service, which can increase your number of followers safely and practically. \r\n\r\n- 600+ followers per month.\r\n- Real people who follow because they are interested in your profile. \r\n- No automated techniques, everything is safe and manual.\r\n\r\nOur price is just $60 (USD) per month.\r\n\r\nIf you are interested, we are happy to send you some further information.\r\n\r\nKind Regards,\r\nJada
243	Mike Kennett	mikeFepNeogy@gmail.com	89762635686	Greetings \r\n \r\nThis is Mike Kennett\r\n \r\nLet me introduce to you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nThe new Semrush Backlinks, which will make your torcheu.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.co/semrush-backlinks/ \r\n \r\nCheap and effective \r\nTry it anytime soon \r\n \r\nRegards \r\nMike Kennett\r\n https://www.strictlydigital.co/whatsapp-us/
244	joannariggs278@gmail.com	joannariggs278@gmail.com	7047377016	Hi,\r\n\r\nI just visited torcheu.com and wondered if you'd ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195.\r\n\r\nLet me know if you're interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJoanna
245	Mike Little	mikeplaurn@gmail.com	82612836193	Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat's right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.monkeydigital.co/join-affiliates/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Little\r\n \r\nMonkey Digital \r\nhttps://www.monkeydigital.co/whatsapp-affiliates/
246	EBRAHIM BIN MOHAMED	intl.law7@aol.com	85211146536	Salaam Sir, \r\n \r\nHow are you doing? Are you an entrepreneur/business owner or chief executive officer seeking capital for your business growth or expansion? \r\n \r\nI am contacting you to know if you are open to investors into your company as we are currently providing financial support to companies and individuals for business and project expansion. \r\n \r\nWe also pay success fee commission to individuals who direct clients to us for financing. \r\n \r\nWe. will be willing to partner with you for your business growth. \r\n \r\nReply for further discussions if interested with your business plan or executive summary and Whats App number for an introductory call. \r\n \r\nPlease use the following email to reach me, projectoffice@intltrinvestment.com \r\n \r\nIgnore if not interested. \r\n \r\nAllah Bless, \r\nEBRAHIM BIN MOHAMED \r\nprojectoffice@intltrinvestment.com \r\nInternational Trading & Investment Co
247	joannariggs278@gmail.com	joannariggs278@gmail.com	5636793020	Hi,\r\n\r\nI just visited torch.az and wondered if you'd ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195.\r\n\r\nLet me know if you're interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJoanna\r\n\r\nUnsubscribe: https://removeme.click/ev/unsubscribe.php?d=torch.az
248	emilyjones2250@gmail.com	emilyjones2250@gmail.com	5133517591	Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically. \r\n\r\n- We guarantee to gain you 700-1500+ subscribers per month.\r\n- People subscribe because they are interested in your channel/videos, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any 'bots'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you have any questions, let me know, and we can discuss further.\r\n\r\nKind Regards,\r\nEmily
249	Mike Faber	mikeGrieveMara@gmail.com	85117965658	Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit from an increase in authority. \r\n \r\nOur solution guarantees you a high-quality domain authority score within a period of three months. This will increase your organic visibility and strengthen your website authority, thus making it stronger against Google updates. \r\n \r\nCheck out our deals for more details. \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\n \r\nThanks and regards \r\nMike Faber\r\n \r\nMonkey Digital \r\nhttps://www.monkeydigital.co/whatsapp-us/
250	Meagan	meagan@torcheu.com	681103606	Good day \r\n\r\nThe New Powerful LED Flashlight is The Perfect Flashlight For Any Situation!\r\n\r\nThe 3,000 Lumens & Adjustable Zoom gives you the wide field of view and brightness other flashlights don’t have.\r\n\r\n50% OFF + Free Shipping!  Get it Now: https://linterna.cc\r\n\r\nKind Regards, \r\n\r\nMeagan
251	Jason K	pat@aneesho.com	8102440753	Just wanted to ask if you would be interested in getting external help with graphic design? We do all design work like banners, advertisements, brochures, logos, flyers, etc. for a fixed monthly fee. \r\n\r\nWe don't charge for each task. What kind of work do you need on a regular basis? Let me know and I'll share my portfolio with you.
252	pasquale.judge@gmail.com	pasquale.judge@gmail.com	639567721	Hi there,\r\n\r\nAre you tired of paying monthly fees for website hosting, cloud storage, and funnels?\r\n\r\nWe offer a revolutionary solution: host unlimited websites, files, and videos for a single, low one-time fee. No more monthly payments.\r\n\r\nHere's what you get:\r\n\r\nUltra-fast hosting powered by Intel® Xeon® CPU technology\r\nUnlimited website hosting\r\nUnlimited cloud storage\r\nUnlimited video hosting\r\nUnlimited funnel creation\r\nFree SSL certificates for all domains and files\r\n99.999% uptime guarantee\r\n24/7 customer support\r\nEasy-to-use cPanel\r\n365-day money-back guarantee\r\n\r\nPlus, get these exclusive bonuses when you act now:\r\n\r\n60+ reseller licenses (sell hosting to your clients!)\r\n10 Fast-Action Bonuses worth over $19,997 (including AI tools, traffic generation, and more!)\r\n\r\nDon't miss out on this limited-time offer! The price is about to increase, and this one-time fee won't last forever.\r\n\r\nClick here to learn more: https://furtherinfo.org/yarx\r\n\r\nPasquale
253	Mike Otis	mikeGrieveMara@gmail.com	85833182949	This service is perfect for boosting your local business' visibility on the map in a specific location. \r\n \r\nWe provide Google Maps listing management, optimization, and promotion services that cover everything needed to rank in the Google 3-Pack. \r\n \r\nMore info: \r\nhttps://www.speed-seo.co/ranking-in-the-maps-means-sales/ \r\n \r\nThanks and Regards \r\nMike Otis\r\n \r\nhttps://www.speed-seo.co/whatsapp-us/
254	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	Ready to blast your message across the digital universe? Just as you're engaging with this ad, imagine your brand message reaching countless website contact forms worldwide! Starting at just under $100, unlock the potential to reach 1 million forms. Reach out to me below for details\r\n\r\nP. Stewart\r\nEmail: tc78pg@submitmaster.xyz\r\nSkype: form-blasting
255	mikeFullyQZ	pr.os.peritythem.o.neyuspen@gmail.com	88263213661	Increase your status as a financial guru! Earn real money in just a month and live at the highest level. Check your willingness to change!\r\n - https://rb.gy/9fznxm?Sibubs-ric
256	Mike Dowman	mikeGrieveMara@gmail.com	88538818882	Hi there \r\n \r\nJust checked your torcheu.com baclink profile, I noticed a moderate percentage of toxic links pointing to your website \r\n \r\nWe will investigate each link for its toxicity and perform a professional clean up for you free of charge. \r\n \r\nStart recovering your ranks today: \r\nhttps://www.badlinkscleanup.com/ \r\n \r\n \r\nRegards \r\nMike Dowman\r\n \r\nDigital SEO Experts \r\nhttps://www.badlinkscleanup.com/whatsapp-us/
257	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	Want Your Ad Everywhere? Reach Millions Instantly! For less than $100 I can blast your message to website contact forms globally. Contact me via skype or email below for info\r\n\r\nPhil Stewart\r\nEmail: 3mrcbs@submitmaster.xyz\r\nSkype: form-blasting
258	Amandaflootozy2GB	amandaWalslatsa@gmail.com	83233371268	Hey darling, want to hang out? -  http://surl.li/ulebc?Whorn
259	monaco.agnes@gmail.com	monaco.agnes@gmail.com	109780287	WANTED: Partnerships & Agents for Global E-commerce Firm\r\n\r\n4U2 Inc., a premier E-commerce , Sourcing Brokerage firm, is actively seeking partnerships and collaboration with manufacturers and wholesalers for agricultural, commercial, and residential products. We offer a diverse marketplace for both new and used items, including vehicles and equipment.\r\n\r\nWhy Choose 4U2 Inc.? (see https.//www.4u2inc.com)\r\n\r\nGlobal reach for your products\r\nImmediate requirements for a wide range of items\r\nOpportunity to expand your business network\r\nJoin Our Team We’re also looking for Independent Contractor Agents (Account Executives) to help us discover new business opportunities. Whether you’re seeking a full-time or part-time role, you can earn up to $60,000 based on performance.\r\n\r\nGet in Touch Don’t miss out on this opportunity. Contact us at 4u2inc123@gmail.com to learn more or to start our partnership today!\r\n\r\nThis version is more direct and easier to read, highlighting the key points and call to action for potential partners and agents. If you need further refinements or have specific requirements, feel free to let me know!
261	Valencia	frawley.valencia@googlemail.com	659754203	World's Best Neck Massager Get it Now 50% OFF + Free Shipping!\r\n\r\nWellness Enthusiasts! There has never been a better time to take care of your neck pain! \r\nOur clinical-grade TENS technology will ensure you have neck relief in as little as 20 minutes.\r\n\r\nGet Yours: https://hineck.co\r\n\r\nCheers,\r\n\r\nValencia\r\nTorch
262	gaddy.hilario97@msn.com	gaddy.hilario97@msn.com	8104206338	WANTED: Partnerships & Agents for Global E-commerce Firm\r\n\r\n4U2 Inc., a premier E-commerce , Sourcing Brokerage firm, is actively seeking partnerships and collaboration with manufacturers and wholesalers for agricultural, commercial, and residential products. We offer a diverse marketplace for both new and used items, including vehicles and equipment.\r\n\r\nWhy Choose 4U2 Inc.? (see https.//www.4u2inc.com)\r\n\r\nGlobal reach for your products\r\nImmediate requirements for a wide range of items\r\nOpportunity to expand your business network\r\nJoin Our Team We’re also looking for Independent Contractor Agents (Account Executives) to help us discover new business opportunities. Whether you’re seeking a full-time or part-time role, you can earn up to $60,000 based on performance.\r\n\r\nGet in Touch Don’t miss out on this opportunity. Contact us at 4u2inc123@gmail.com to learn more or to start our partnership today!\r\n\r\nThis version is more direct and easier to read, highlighting the key points and call to action for potential partners and agents. If you need further refinements or have specific requirements, feel free to let me know!
263	submissions@searchindex.site	submissions@searchindex.site	401033340	Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://www.searchregistration.site/
264	emilyjones2250@gmail.com	emilyjones2250@gmail.com	2549836620	Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically. \r\n\r\n- We guarantee to gain you 700-1500+ subscribers per month.\r\n- People subscribe because they are interested in your channel/videos, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any 'bots'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you have any questions, let me know, and we can discuss further.\r\n\r\nKind Regards,\r\nEmily
265	kiek.joyce@gmail.com	kiek.joyce@gmail.com	3898511266	Are you still looking at getting your website done/ completed? Contact e.solus@gmail.com
266	kenp2024@aol.com	kenp2024@aol.com	4805022765	Was just browsing the site and was impressed the layout. Nicely design and great user experience. Just had to drop a message, have a great day! 8dfds87a
267	lutwyche.mervin@hotmail.com	lutwyche.mervin@hotmail.com	4741308581	You may wish to save this email for future reference.  There is no need to unsubscribe because this is a one-time email from Se-REM.  This announcement is a public service for a not-for-profit program that has saved and restored lives shattered by abuse and trauma.\r\n  \r\nHave you heard of Se-REM? (Self effective - Rapid Eye Movement). Many people don't know that REM brain activity dramatically improves the processing of traumatic emotion. It creates peace and empowers the listener. Se-REM is an advanced version of EMDR therapy. It is more powerful because it combines elements of 6 different therapies, EMDR, hypnosis, mindfulness, Gestalt child within work, music therapy, and Awe therapy,(connecting profoundly with nature).\r\n \r\nIt has helped thousands of people overcome PTSD, and anxiety. But it is also helpful in a great many situations, loss of any kind, grief, phobias and even marital counseling. The mission statement is "Trauma relief at as close to free as possible". This program downloads to a smart phone or computer and can be used in an office or at home. Read about it, hear samples, and download at: Se-REM.com. Once you own the program, you are encouraged to give it away to others who will benefit. I provide free consultation to all who use the program. \r\nSe-REM.com has a 95% rating on Trustpilot and is in use in 33 countries.\r\n \r\nIf you would like to know more you can watch a UK Podcast at: https://lockedupliving.podbean.com
268	Mike Hamphrey	peterGrieveMara@gmail.com	88262763233	Good Day \r\n \r\nI have just analyzed  torcheu.com for its SEO metrics and saw that your website could use an upgrade. \r\n \r\nWe will enhance your ranks organically and safely, using only state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.digital-x-seo.com/monthly-seo/ \r\n \r\nRegards \r\nMike Hamphrey\r\n \r\nDigital X SEO Experts \r\nhttps://www.digital-x-seo.com/whatsapp-us/
269	mackinolty.ernest@gmail.com	mackinolty.ernest@gmail.com	4632650114	Dear,\r\n\r\nI hope this message finds you well. I am writing to introduce you to M.I.H, the premier digital marketing agency dedicated to transforming businesses and driving sales growth. Here’s how partnering with M.I.H can benefit your business:\r\n\r\n1. **Targeted SEO Strategies:** Enhance your online visibility and attract high-quality traffic to your website, leading to increased conversion rates.\r\n2. **Effective Social Media Campaigns:** Engage with your audience on various platforms, boosting brand awareness and customer loyalty.\r\n3. **Compelling Content Marketing:** Develop valuable content that resonates with your audience, establishing your brand as an industry leader.\r\n4. **Precision PPC Advertising:** Implement cost-effective PPC campaigns to reach potential customers actively searching for your products or services.\r\n5. **Data-Driven Insights:** Utilize advanced analytics to optimize marketing strategies continuously, ensuring maximum ROI.\r\n\r\nM.I.H's tailored approach and expertise across various industries ensure we understand and meet your unique business goals. Let’s discuss how M.I.H can help elevate your brand and drive sales growth.\r\n\r\nPlease get in touch at marketingagency.mih@gmail.com to schedule a consultation. I look forward to exploring opportunities for collaboration.\r\n\r\nBest regards,\r\nM.I.H Marketing Agency\r\nmarketingagency.mih@gmail.com\r\nhttps://mihmarketingagency.com/
270	booze.theresa@gmail.com	booze.theresa@gmail.com	524916779	Boost Sales & Spark conversations: Feeling stuck with stagnant lead generation? Get in touch with Contact Form Leads—your game-changer. Our secure website contact form bulk submission service bypasses spam filters as we Comply with CAN SPAM, landing your message directly in potential customers' inboxes. Spark conversations, ignite interest, and watch your sales climb! \r\n\r\nAll for a budget-friendly price of just 9$. Get started today and unlock a flood of new leads! https://bit.ly/cformmarketing\r\n\r\n\r\nUnsubscribe here if you don't want to get these fantastic offers: https://form.jotform.com/241243363091449\r\nPfaffacherweg 40, Schocherswil, NA, Switzerland, 8581
271	joannariggs278@gmail.com	joannariggs278@gmail.com	375954534	Hi,\r\n\r\nI just visited torch.az and wondered if you'd ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195.\r\n\r\nLet me know if you're interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJoanna
272	ameliabrown0325@gmail.com	ameliabrown0325@gmail.com	658689240	Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically. \r\n\r\n- We guarantee to gain you 700-1500+ subscribers per month.\r\n- People subscribe because they are interested in your channel/videos, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any 'bots'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you have any questions, let me know, and we can discuss further.\r\n\r\nKind Regards,\r\nAmelia\r\n\r\nUnsubscribe: https://removeme.click/yt/unsubscribe.php?d=torcheu.com
273	odonovan.freeman@yahoo.com	odonovan.freeman@yahoo.com	0018143008897	Hey there\r\n\r\nWe provide real human traffic with a revenue share option.\r\n\r\nReady to see a significant increase in your ad revenue? At Pristine Traffic, we provide high-quality audience that delivers proven results. Our satisfied clients have experienced:\r\n- Remarkable increases in user engagement\r\n- Substantial growth in ad revenue\r\n- Enhanced site performance and profitability\r\n\r\nDon’t take our word for it—experience the difference for yourself! Let our premium traffic solutions drive real, engaged audience to your site and watch your revenue soar.\r\n\r\nDiscover how Pristine Traffic can transform your site’s performance today: https://bit.ly/prstraffic\r\n\r\nRegards\r\n\r\nContact: hello@pristinetraffic.com\r\nVisit: https://bit.ly/prstraffic\r\nWhatsApp: +18143008897
274	maricruz.champlin@gmail.com	maricruz.champlin@gmail.com	3213758824	Are you still looking at getting your website's SEO done? Contact Now intrug@gmail.com
275	Mike Erickson	mikeFepNeogy@gmail.com	83485845384	Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat's right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.monkey-seo.org/affiliates/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Erickson\r\n \r\nMonkey Digital \r\nhttps://www.monkey-seo.org/whatsapp-affiliates/
276	townley.harry@gmail.com	townley.harry@gmail.com	688194018	Hey,\r\n\r\nCustomers want answers now. Don't lose leads with offline messages!\r\n\r\nLive chat boosts sales & loyalty. 44% of consumers love it!\r\n\r\nOpen247 provides:\r\n\r\n* Expert agents (24/7!)\r\n* Brand ambassadors\r\n* Cost-effective solution\r\n\r\nBenefits:\r\n\r\n* More conversions (capture hot leads!)\r\n* Happier customers (fast, friendly support)\r\n* Less work for you (focus on core business)\r\n\r\nGet a free quote! Email me now at open247chat@gmail.com \r\nWe'll customize a plan to fit your budget.\r\n\r\nP.S. Get 30 Days Free Trial Now!!
277	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	Ready to blast your message across the digital universe? Just as you're engaging with this ad, imagine your brand message reaching countless website contact forms worldwide! Starting at just under $100, unlock the potential to reach 1 million forms. Reach out to me below for details\r\n\r\nPhil Stewart\r\nEmail: fydahy@submitmaster.xyz\r\nSkype: form-blasting
278	gregg.grimstone@msn.com	gregg.grimstone@msn.com	678570899	Hi there,\r\n\r\nAre you tired of paying monthly fees for website hosting, cloud storage, and funnels?\r\n\r\nWe offer a revolutionary solution: host unlimited websites, files, and videos for a single, low one-time fee. No more monthly payments.\r\n\r\nLearn more: https://furtherinfo.org/0wg3\r\n\r\nHere's what you get:\r\n\r\nUltra-fast hosting powered by Intel® Xeon® CPU technology\r\nUnlimited website hosting\r\nUnlimited cloud storage\r\nUnlimited video hosting\r\nUnlimited funnel creation\r\nFree SSL certificates for all domains and files\r\n99.999% uptime guarantee\r\n24/7 customer support\r\nEasy-to-use cPanel\r\n365-day money-back guarantee\r\n\r\nPlus, get these exclusive bonuses when you act now:\r\n\r\n60+ reseller licenses (sell hosting to your clients!)\r\n10 Fast-Action Bonuses worth over $19,997 (including AI tools, traffic generation, and more!)\r\n\r\nDon't miss out on this limited-time offer! The price is about to increase, and this one-time fee won't last forever.\r\n\r\nClick here to learn more: https://furtherinfo.org/0wg3\r\n\r\nGregg\r\n\r\n\r\nIf you do not wish to receive any further offers:\r\nhttps://removeme.click/wp/unsubscribe.php?d=torch.az
279	Anna Boryslav	annaofficial2@shrooqconsultant.com	82412762792	Dear Mr/Mrs, \r\n \r\nWe would like to take this opportunity to introduce our company. We are System Intergrated Services Company, a private regulatory compliance and calibration technology company in Ukraine. We provide complete testing and certification services for Ukraine and across boarders, as well as CE verification testing and approval services for mobile communications equipment (EMC, Safety, SAR and R&TTE for GSM/CDMA/PCS equipment. We believe that such <product/service> has a very good potential to insert market potential/customer publicity/customer beneits. It is in this respect that we would like to extend our interest in forming apartnership with your company or you as an individual. \r\n \r\nOur main budget investment is 7 million EUR and we want to invest in all kind of telecommunication communications equipments and other products/business that has a speedy beneficial effect. \r\n \r\nHowever, we take this drastic decision due to the conflict the president has initiated against us here in Ukraine, which has crippled all alot of businesses. \r\n \r\nPlease I would like to receive additional information and advice on how to properly invest in your country. \r\n \r\nLooking forward to discussing further. \r\n \r\nRegards \r\nDr Anna Boryslav \r\nReply to - annaofficial@shrooqconsultant.com
280	Mike Finch	mikeFepNeogy@gmail.com	88627752474	Hello \r\nThis is Mike Finch\r\nfrom Strictly Digital \r\n \r\nLet me present to you our latest discovered from the SEO environment. \r\nWe have noticed that getting backlinks from websites that have high SEO metrics values doesn't always help, and in fact, what is more important is to have backlinks from sites that are actually ranking for many keywords. \r\n \r\nThus, we have built this service especially to meet these new discoveries and the results are astonishing. \r\n \r\nPlease check more details here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\n \r\n \r\nRegards, \r\nStrictly Digital SEO Team \r\n \r\nWhatsapp us for more details: \r\nhttps://www.strictlydigital.net/whatsapp-us/
292	alexis.connolly@googlemail.com	alexis.connolly@googlemail.com	461692319	If you are reading this message, That means my marketing is working. I can make your ad message reach 5 million sites in the same manner for just $50. It's the most affordable way to market your business or services. Contact me by email virgo.t3@gmail.com or skype me at live:.cid.dbb061d1dcb9127a\r\n\r\nP.S: Speical Offer - Only for 2 days - 10 Million Sites for the same money $50
281	kroger.tom@gmail.com	kroger.tom@gmail.com	94957816	Hi,\r\n\r\nBuilding a successful ecommerce website can be overwhelming. Are you struggling to get your online store off the ground?\r\nLow traffic, poor conversions, and complex platform choices can make it feel impossible to succeed. It’s frustrating when your hard work doesn’t translate into sales and growth.\r\nDownload our FREE eBook: "100 Checkpoints for a Successful Ecommerce Website." This comprehensive guide is designed to help you overcome these challenges and transform your ecommerce site into a thriving business.\r\n\r\nHere's what you'll get:\r\n\r\n Target Audience,  UserFriendly Design, Compelling Product Descriptions, Simplified Checkout,  SEO Tips, Digital Marketing Strategies, Customer Service, Security Compliance &  Growth Planning.  \r\nReady to conquer your ecommerce challenges? Download Your Free eBook Now!  \r\n\r\nhttps://alwaysdigital.co/f1/?torcheu.com\r\n\r\nWe’re here to support your journey to ecommerce success. If you have any questions or need further assistance, feel free to reach out.\r\n\r\nTo your success,\r\nSam Miller\r\n\r\nP.S. Limited time offer – grab your free eBook today!
282	burrowes.roslyn@gmail.com	burrowes.roslyn@gmail.com	G vqwlgt	Hi there,\r\n\r\nWant to supercharge your e-commerce business and experience explosive growth? Forget product testing, increase your conversion rate, and get flooded with leads using our all-in-one toolkit.\r\n\r\nFrom AI-driven product selection to high-converting page builders, solid supplier relationships, and organic traffic generation, we offer all you need to succeed in the dynamic e-commerce market. Plus, you'll get professional tutorials and advice to support you at every stage. No nonsense, just practical info you can apply now.\r\n\r\nGeared up to boost your e-commerce venture? \r\n\r\n\r\n++ Visit: https://bit.ly/winners-now\r\n\r\nand discover the secrets to e-commerce success.\r\n\r\nWarm Regards,\r\nAspazian Silviu\r\naspazian.silviu@winners-now.vip
283	joannariggs278@gmail.com	joannariggs278@gmail.com	3614374780	Hi,\r\n\r\nI just visited torcheu.com and wondered if you'd ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195.\r\n\r\nLet me know if you're interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJoanna\r\n\r\nUnsubscribe: https://removeme.click/ev/unsubscribe.php?d=torcheu.com
284	evergood.anne@googlemail.com	evergood.anne@googlemail.com	798291698	Hi there,\r\n\r\nAre you tired of paying monthly fees for website hosting, cloud storage, and funnels?\r\n\r\nWe offer a revolutionary solution: host unlimited websites, files, and videos for a single, low one-time fee. No more monthly payments.\r\n\r\nLearn more: https://furtherinfo.org/0wg3\r\n\r\nHere's what you get:\r\n\r\nUltra-fast hosting powered by Intel® Xeon® CPU technology\r\nUnlimited website hosting\r\nUnlimited cloud storage\r\nUnlimited video hosting\r\nUnlimited funnel creation\r\nFree SSL certificates for all domains and files\r\n99.999% uptime guarantee\r\n24/7 customer support\r\nEasy-to-use cPanel\r\n365-day money-back guarantee\r\n\r\nPlus, get these exclusive bonuses when you act now:\r\n\r\n60+ reseller licenses (sell hosting to your clients!)\r\n10 Fast-Action Bonuses worth over $19,997 (including AI tools, traffic generation, and more!)\r\n\r\nDon't miss out on this limited-time offer! The price is about to increase, and this one-time fee won't last forever.\r\n\r\nClick here to learn more: https://furtherinfo.org/0wg3\r\n\r\nAnne\r\n\r\n\r\nIf you do not wish to receive any further offers:\r\nhttps://removeme.click/wp/unsubscribe.php?d=torcheu.com
285	ferri.kermit@gmail.com	ferri.kermit@gmail.com	3931957426	Hey gamers! Prepared to elevate your gaming experience? \r\n\r\n3030 Games provides a extensive array of games, completely no cost! From puzzles to action-packed adventures, we have it all.\r\n\r\nWhy You'll Love 3030 Games:\r\n- Huge Selection: There's a game for every preference and skill level.\r\n- no cost for All: Play as much as you want without any charge!\r\n- Quick Start: No need to set up – just play instantly⚡\r\n\r\nDon't let go of the fun! Click the link and start your gaming spree at 3030 Games now!\r\n\r\nPlay casual games now:  https://bit.ly/3030games
286	parks.thanh@hotmail.com	parks.thanh@hotmail.com	45149580	Hello,\r\n\r\nIt is with sad regret that after 12 years, LeadsMax.biz is shutting down.\r\n\r\nWe have made all our databases available on our website.\r\n\r\n25 Million companies\r\n527 Million People\r\n\r\nLeadsMax.biz
287	Blair	magicmat@torcheu.com	699757931	Get The Worlds Greatest Magic Sand Free Beach Mat!\r\n\r\nWatch sand, dirt & dust disappear right before your eyes! It's perfect for beach, picnic, camping or hiking.\r\n\r\nAct Now And Receive A Special Discount For Our Magic Mat!\r\n\r\nGet Yours Here:  https://magicmats.co\r\n\r\nThe Best, \r\n \r\nBlair
288	Mike King	mikeGrieveMara@gmail.com	88393263937	Hello, \r\n \r\nHey, I'm Mike from Monkey Digital. We offer a highly popular service that costs only 10$ per 5000 social ads visits. \r\n \r\nMore info:  \r\nhttps://www.monkeydigital.co/get-started/ \r\n \r\nTracking will be sent the same day, the advertisement goes live within a few hours, effective and cheap marketing, try it out, it will be worth every penny. \r\n \r\nRegards \r\nMonkey Digital \r\nhttps://www.monkeydigital.co/whatsapp-us/
289	amelia@ytpromotion.online	amelia@ytpromotion.online	684193206	Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are interested in your channel/videos.\r\n- Safe: All actions are done, without using any automated tasks / bots.\r\n\r\nOur price is just $60 (USD) per month and we can start immediately.\r\n\r\nIf you are interested then we can discuss further.\r\n\r\nKind Regards,\r\nAmelia
290	amelia@ytpromotion.online	amelia@ytpromotion.online	4162835599	Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are interested in your channel/videos.\r\n- Safe: All actions are done, without using any automated tasks / bots.\r\n\r\nOur price is just $60 (USD) per month and we can start immediately.\r\n\r\nIf you are interested then we can discuss further.\r\n\r\nKind Regards,\r\nAmelia
291	israel.lyke@gmail.com	israel.lyke@gmail.com	Vn E F K	We are thrilled to introduce you to Minew, a leading provider of cutting-edge IoT hardware. At Minew, we excel in designing, developing, and delivering top-quality IoT devices that incorporate the latest technologies such as Bluetooth®LE, LoRa, LTE-M, NB-IoT, Wi-Fi, UWB, 4G, 5G, and more.\r\n\r\nOur extensive product line includes BLE sensors, personnel tags, asset trackers, Bluetooth® beacons, IoT gateways, and an array of upcoming innovations. These devices are designed to meet the needs of virtually any commercial and industrial setting.\r\n\r\nBeyond our exceptional hardware, we offer comprehensive customization services, including product engineering, rapid prototyping, flexible manufacturing, and regulatory compliance. Our commitment to quality and customer satisfaction sets us apart from other IoT manufacturers.\r\n\r\nFor more details about our products and services, please visit our website at www.minew.com. If you have any questions or need personalized support, don't hesitate to reach out to us at info@minew.com.\r\n\r\nWe look forward to the opportunity to work with you.
293	Mike Elmers	mikeGrieveMara@gmail.com	84794189951	Hi there \r\nI just checked torcheu.com ranks and am sorry to bring this up, but it lacks in many areas. \r\n \r\nUnfortunately, building a bunch of links won't solve the issue in this case, and a more comprehensive strategy is required. Google has undergone significant changes over the past year, making it nearly impossible to compete for favorable rankings without a well-designed website. \r\n \r\nWe recommend a search engine-friendly website layout to resolve all issues and propel your site to the top. \r\n \r\nYou can check more details here: https://www.speed-seo.net/product/seo-friendly-website-designs/ \r\n \r\nThanks for your consideration \r\nMike Elmers\r\nSpeed Designs \r\nhttps://www.speed-seo.net/whatsapp-us/
294	leonie.dunrossil@hotmail.com	leonie.dunrossil@hotmail.com	566428819	Are you concerned that your current website that was built a few years back,is no longer a good representation of your company ?\r\n\r\nWhy pay $50+ per hour for web development work, \r\nwhen you can get higher quality results AT LESS THAN HALF THE COST? \r\n\r\nWe are a FULL SERVICE, USA managed web development agency offering wholesale pricing.\r\n\r\nNo job too big or small. Test us out to see our value.\r\n\r\nUse the link in my signature, for a quick turn around quote.\r\n\r\n\r\n\r\nKristine Avocet\r\nSenior Web Specialist \r\nFusion Web Experts  \r\n186 Daniel Island Drive \r\nDaniel Island, SC 29492 \r\nwww.fusionwebexperts.tech
295	tammy.rede@yahoo.com	tammy.rede@yahoo.com	617911940	WANTED: Partnerships & Agents for Global E-commerce Firm\r\n\r\n4U2 Inc., a premier E-commerce , Sourcing Brokerage firm, is actively seeking partnerships and collaboration with manufacturers and wholesalers for agricultural, commercial, and residential products. We offer a diverse marketplace for both new and used items, including vehicles and equipment.\r\n\r\nWhy Choose 4U2 Inc.? (see https.//www.4u2inc.com)\r\n\r\nGlobal reach for your products\r\nImmediate requirements for a wide range of items\r\nOpportunity to expand your business network\r\nJoin Our Team We’re also looking for Independent Contractor Agents (Account Executives) to help us discover new business opportunities. Whether you’re seeking a full-time or part-time role, you can earn up to $60,000 based on performance.\r\n\r\nGet in Touch Don’t miss out on this opportunity. Contact us at 4u2inc123@gmail.com to learn more or to start our partnership today!\r\n\r\nThis version is more direct and easier to read, highlighting the key points and call to action for potential partners and agents. If you need further refinements or have specific requirements, feel free to let me know!
296	angel.beavis@hotmail.com	angel.beavis@hotmail.com	883133665	Are you struggling to get your website updated to the way you need it ?\r\n\r\nTired of paying $50+ per hour just for a few tweaks?\r\n\r\nWe are a FULL SERVICE, USA managed web development agency with wholesale pricing.\r\n\r\nNo job too big or small. Test us out to see our value.\r\n\r\nUse the link in my signature, for a quick turn around quote.\r\n\r\n\r\n\r\nKristine Avocet\r\nSenior Web Specialist \r\nFusion Web Experts  \r\n186 Daniel Island Drive \r\nDaniel Island, SC 29492 \r\nwww.fusionwebexperts.tech
297	ThomasboumbPX	yasen.krasen.13+80389@mail.ru	88192129998	Ofedkwdkjwkjdkwjdkjw jdwidjwijdwfw fjdkqwasqfoewofjewof ojqwejfqwkdokjwofjewofjewoi torcheu.com
298	neumayer.zack@outlook.com	neumayer.zack@outlook.com	325381167	Work From Home With This 100% FREE Training..., I Promise...You Will Never Look Back\r\n$500+ per day, TRUE -100% Free Training, go here:\r\n\r\nezwayto1000aday.com
299	RaymondSicleMW	no.reply.HarrvJensen@gmail.com	82323374571	Good day! torcheu.com \r\n \r\nDid you know that it is possible to send business proposal completely legally? \r\nWhen such messages are sent, no personal data is used, and messages are sent to forms specifically designed to receive, process, and respond to messages and appeals. You don’t need to be concerned that Contact Form messages will end up in spam, since they’re seen as important. \r\nWe offer you to try our service for free. \r\nWe can dispatch up to 50,000 messages for you. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis letter is automatically generated. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\nWe only use chat for communication.
300	Aisha	magicmat@torch.az	4163437699	Get The Worlds Greatest Magic Sand Free Beach Mat!\r\n\r\nWatch sand, dirt & dust disappear right before your eyes! It's perfect for beach, picnic, camping or hiking.\r\n\r\nAct Now And Receive A Special Discount For Our Magic Mat!\r\n\r\nGet Yours Here:  https://magicmats.co\r\n\r\nBest, \r\n \r\nAisha
301	rosita.bayly67@msn.com	rosita.bayly67@msn.com	3730497872	Hello,\r\n\r\nSecuring the funding to drive growth and realize ideas is a major challenge for startups and established businesses alike. At Cateus Investment Company (CIC), we specialize in tailored financing solutions to meet these needs.\r\n\r\nWe offer:\r\n\r\nDebt Financing: Competitive 3% annual interest rate with no early repayment penalties.\r\nEquity Financing: Venture capital funding with a 10% equity stake, providing essential resources for expansion while maintaining control.\r\nWe are committed to providing flexible options to suit your specific requirements. Please share your pitch deck or executive summary so we can understand your business better and determine the best investment structure.\r\n\r\nLooking forward to discussing this further.\r\n\r\nBest regards,\r\nOman Rook\r\n\r\nExecutive Investment Consultant/Director\r\nCateus Investment Company (CIC)\r\n2401 AlMoayyed Tower, Seef District Manama,\r\nKingdom of Bahrain\r\nPhone: +973-17-585338\r\nEmail: oman.rook@cateusgroup.org, cateusgroup@gmail.com\r\nWebsite: https://cateusinvestmentgroup.com
302	Tural Mehtiyev	tural.mehtiyev@reen.az	+99450 257 56 00	Salam,\r\n \r\n“REEN" MMC şirkəti mühərrik və sürtkü yağları, antifrizlər, sənaye yağları və akkumlyator istehsalı bazarında lider olan brendlərin Azərbaycandakı ən böyük distribyutorlarından biridir.\r\nŞirkətin təməli XX əsr, 90-cı illərin əvvəllərində qoyulmuşdur. 2001-ci ildən etibarən "REEN" MMC adı ilə faliyyətini davam etdirir.\r\n\r\nBu gün "REEN" MMC şirkəti dünyanın tanınmış brendləri olan \r\nYağ brendləri  - ELF, ADDİNOL, TotalEnergies, Hyundai XTEER, TAKAYAMA, ROLF, NİSSAN ORİGİNAL OİL, MAZDA ORİGİNAL OİL, SINTEC, VOLGA, STAREX \r\nAkkumulyator brendləri - BOSCH, GİGAWATT, VOLAT, MASTER və s. Azərbaycanda rəsmi nümayəndəsi və distribyutorudur.\r\n \r\n"REEN" MMC olaraq müştərilərimizlə uzunmüddətli əməkdaşlıq etmək üçün hər zaman iş metodlarımızı mükəmməlləşdiririk.\r\n"REEN" MMC-nin əsas vəzifələrindən biri yalnız keyfiyyətli, etibarlı və təhlükəsiz məhsullar istehsal edən şirkətlərin distribyutoru olmaqdır.
303	Mike Saunder	mikeGrieveMara@gmail.com	89478813686	Hi there, \r\n \r\nWhile checking your torcheu.com for its ranks, I have noticed that there are some toxic links pointing towards it. \r\n \r\nGrab your free clean up and improve ranks in no time \r\nhttps://www.hilkomseo.net/free-cleanup/ \r\n \r\nIt really works, get a free backlinks clean up with us today \r\n \r\n \r\nRegards \r\nMike Saunder\r\n \r\nWhatsapp: https://www.hilkomseo.net/whatapp-us/
304	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	Hey, want your ad to reach millions of contact forms? Just like you're reading this message, others can read yours too. Visit my site below for details.\r\n\r\nhttp://w8n65q.contactformmarketing.xyz
305	benham.sheldon@outlook.com	benham.sheldon@outlook.com	556847555	WANTED: Partnerships & Agents for Global E-commerce Firm\r\n\r\n4U2 Inc., a premier E-commerce , Sourcing Brokerage firm, is actively seeking partnerships and collaboration with manufacturers and wholesalers for agricultural, commercial, and residential products. We offer a diverse marketplace for both new and used items, including vehicles and equipment.\r\n\r\nWhy Choose 4U2 Inc.? (see https.//www.4u2inc.com)\r\n\r\nGlobal reach for your products\r\nImmediate requirements for a wide range of items\r\nOpportunity to expand your business network\r\nJoin Our Team We’re also looking for Independent Contractor Agents (Account Executives) to help us discover new business opportunities. Whether you’re seeking a full-time or part-time role, you can earn up to $60,000 based on performance.\r\n\r\nGet in Touch Don’t miss out on this opportunity. Contact us at 4u2inc123@gmail.com to learn more or to start our partnership today!\r\n\r\nThis version is more direct and easier to read, highlighting the key points and call to action for potential partners and agents. If you need further refinements or have specific requirements, feel free to let me know!
306	errol.mollison46@yahoo.com	errol.mollison46@yahoo.com	Wqglwhqwb	������ TimelinesAI — WhatsApp Management Solution for Multiple Numbers\r\n\r\n������ TimelinesAI helps businesses with multiple individual numbers gain 360° visibility & boost performance on WhatsApp.\r\n\r\n������ Control — One-click WhatsApp <> CRM Integrations\r\n\r\n✨ Visibility — Multi-number Shared Inbox\r\n\r\n������ Performance — Zapier, Webhooks and Bulk sending\r\n\r\n⏰ Start Free 10-day Trial ������\r\nhttps://tinyurl.com/TimelinesAI\r\n\r\n������ No WhatsApp API required | 2 minute setup \r\n\r\nI am hoping to see some great news on their progress…\r\n\r\nTo Your Success, \r\n\r\nFelipe Gil\r\nThings To Make ✨ AI Automation Agency since 2022 ✅\r\nhttps://thingstomaketips.com/ai-seo
307	sisley.gertie@gmail.com	sisley.gertie@gmail.com	25619562	Unlock the power of magic with Extreme Spells! Whether you're seeking true love, financial success, or happiness, our experienced Circle of Eight, led by Master Sam Taylor and Psychic Master Lennox, is here to transform your life. Since 1993, we've been casting potent spells tailored to your unique needs, helping countless individuals achieve their dreams.\r\n\r\nDiscover spells to attract your perfect mate, rekindle lost love, draw wealth, and much more. Our spells are safe, effective, and backed by a 100% satisfaction guarantee. Plus, we offer free health spells to those in need because we believe in making positive changes accessible to everyone.\r\n\r\nDon't let life's challenges hold you back. Embrace the mystical power of Extreme Spells and take control of your destiny today. Visit https://extremespells.com/ to learn more and start your magical journey. Transform your life with the proven power of spell casting!\r\n\r\nAct Now! Click here to unlock love, wealth, and happiness with Extreme Spells. Your dream life is just a spell away!
308	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	Next-Level Advertising: Ready to elevate your ad game? Imagine your message appearing in website contact forms worldwide, reaching heaps of potential customers! Starting at just under $100, our affordable packages pack a punch. Email me now to chat more about getting your brand out there!\r\n\r\nPhil Stewart\r\nEmail: t8r8by@mail2go.xyz\r\nSkype: form-blasting
309	katelynraiden@gmail.com	katelynraiden@gmail.com	331074399	Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are interested in your channel/videos.\r\n- Safe: All actions are done, without using any automated tasks / bots.\r\n\r\nOur price is just $60 (USD) per month and we can start immediately.\r\n\r\nIf you are interested then we can discuss further.\r\n\r\nKind Regards,\r\nKatelyn
310	schlapp.xavier@googlemail.com	schlapp.xavier@googlemail.com	644099256	Hi there,\r\n\r\nWe would like to introduce to you Robin AI, the world's first app that replaces your entire team with an AI assistant. This powerful tool generates human-like content, creates stunning designs, drives unlimited traffic, and more.\r\n\r\nGenerate Human-Like Content\r\nBuilds Professional Funnels\r\nDrive Thousands Of Clicks\r\n\r\nOnly $17.00 (normally $180)\r\n\r\nCheck out the features of Robin AI here: https://furtherinfo.org/robinai\r\n\r\nThanks for your time,\r\nXavier
311	joannariggs278@gmail.com	joannariggs278@gmail.com	8732044435	Hi,\r\n\r\nI just visited torch.az and wondered if you'd ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195.\r\n\r\nLet me know if you're interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJoanna\r\n\r\nUnsubscribe: https://removeme.click/ev/unsubscribe.php?d=torch.az
312	felicitysauncho@gmail.com	felicitysauncho@gmail.com	693572222	Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are interested in your channel/videos.\r\n- Safe: All actions are done, without using any automated tasks / bots.\r\n\r\nOur price is just $60 (USD) per month and we can start immediately.\r\n\r\nIf you are interested then we can discuss further.\r\n\r\nKind Regards,\r\nFelicity\r\n\r\nUnsubscribe: https://removeme.click/yt/unsubscribe.php?d=torch.az
313	submissions@searchindex.site	submissions@searchindex.site	95474279	Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://searchregister.info/
314	Ida	torcheu.com@aol.com	539147458	Hi \r\n\r\nI wanted to reach out and let you know about our new dog harness. It's really easy to put on and take off - in just 2 seconds - and it's personalized for each dog. \r\nPlus, we offer a lifetime warranty so you can be sure your pet is always safe and stylish.\r\n\r\nWe've had a lot of success with it so far and I think your dog would love it. \r\n\r\nGet yours today with 50% OFF:  https://caredogbest.com\r\n\r\nFREE Shipping - TODAY ONLY! \r\n\r\nHave a great time, \r\n\r\nIda
315	Mike Allford	peterGrieveMara@gmail.com	88399629862	Hello \r\n \r\nI have just checked  torcheu.com for its SEO metrics and saw that your website could use an upgrade. \r\n \r\nWe will enhance your ranks organically and safely, using only state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.cyber-digitalx.net/monthly-seo/ \r\n \r\nRegards \r\nMike Allford\r\n \r\nDigital X SEO Experts \r\nhttps://www.cyber-digitalx.net/whatsapp-us/
316	joannariggs278@gmail.com	joannariggs278@gmail.com	9723807533	Hi,\r\n\r\nI just visited torcheu.com and wondered if you'd ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195.\r\n\r\nWe have produced over 500 videos to date and work with both non-animated and animated formats:\r\n\r\nNon-animated example:\r\nhttps://www.youtube.com/watch?v=bA2DyChM4Oc\r\n\r\nAnimated example:\r\nhttps://www.youtube.com/watch?v=JG33_MgGjfc\r\n\r\nLet me know if you're interested in learning more and/or have any questions.\r\n\r\nRegards,\r\nJoanna\r\n\r\nUnsubscribe: https://removeme.click/ev/unsubscribe.php?d=torcheu.com
317	Francesco	francesco@torch.az	3821594242	Hi \r\n\r\nI wanted to reach out and let you know about our new dog harness. It's really easy to put on and take off - in just 2 seconds - and it's personalized for each dog. \r\nPlus, we offer a lifetime warranty so you can be sure your pet is always safe and stylish.\r\n\r\nWe've had a lot of success with it so far and I think your dog would love it. \r\n\r\nGet yours today with 50% OFF: https://caredogbest.com\r\n\r\nFREE Shipping - TODAY ONLY! \r\n\r\nBest Wishes, \r\n\r\nFrancesco
318	march.clarita@outlook.com	march.clarita@outlook.com	8177278759	Do you have a list of website updates that you want to deploy but hate having to pay the INSANE prices to get it done?\r\n\r\nWhy pay $50+ per hour for web development work, \r\nwhen you can get higher quality results AT LESS THAN HALF THE COST? \r\n\r\nWe are a FULL SERVICE, USA managed web development agency offering wholesale pricing.\r\n\r\nNo job too big or small. Test us out to see our value.\r\n\r\nUse the link in my signature, for a quick turn around quote.\r\n\r\n\r\n\r\nKristine Avocet\r\nSenior Web Specialist \r\nFusion Web Experts  \r\n186 Daniel Island Drive \r\nDaniel Island, SC 29492 \r\nwww.fusionwebexperts.tech
319	rackley.ada@gmail.com	rackley.ada@gmail.com	26696457	Are you concerned that your current website that was built a few years back,is no longer a good representation of your company ?\r\n\r\nWhy pay $50+ per hour for web development work, \r\nwhen you can get higher quality results AT LESS THAN HALF THE COST? \r\n\r\nWe are a FULL SERVICE, USA managed web development agency offering wholesale pricing.\r\n\r\nNo job too big or small. Test us out to see our value.\r\n\r\nUse the link in my signature, for a quick turn around quote.\r\n\r\n\r\n\r\nKristine Avocet\r\nSenior Web Specialist \r\nFusion Web Experts  \r\n186 Daniel Island Drive \r\nDaniel Island, SC 29492 \r\nwww.fusionwebexperts.tech
320	morrismi1@outlook.com	morrismi1@outlook.com	4583366	Hi there!\r\n\r\nAre you looking to maximize the impact of your YouTube videos? Introducing YTCopyCat, our innovative SaaS tool that converts your YouTube videos into various high-quality written content using advanced AI.\r\nWhat Can Our Tool Do for You?\r\n\r\n    Blog Articles: Turn your videos into blog posts.\r\n    Newsletters: Generate captivating newsletters effortlessly.\r\n    Video Summaries: Create concise summaries.\r\n    Tweets: Produce engaging tweets.\r\n    Custom Content: Use personalized prompts for specific needs.\r\n\r\nHow It Works:\r\n\r\n    Paste your YouTube video link.\r\n    Our AI analyzes and extracts key content.\r\n    Choose your desired format.\r\n\r\nIn just a few clicks, you’ll have top-notch content ready to publish or share. Save time and boost productivity with automated content creation.\r\nWhy Choose YTCopyCat?\r\n\r\n    Time-Saving: Automate your content creation.\r\n    Versatile: Generate multiple content types from one video.\r\n    High Quality: Enjoy superior content with advanced AI.\r\n\r\nSpecial Offer:\r\n\r\nTry YTCopyCat for free and revolutionize your content strategy. Visit https://ytcopycat.com to learn more and start your free trial today. Don’t miss this chance to enhance your content creation!\r\n\r\nCheers,\r\nFabien\r\ncontact@ytcopycat.com
321	morrismi1@outlook.com	morrismi1@outlook.com	611156732	Dear torcheu.com owner or manager, \r\n\r\nCut your business or personal credit cards and loan payments in half. eliminate interest and reduce your debt by 50%. 100% guaranteed. The average customer saves $56,228 in unnecessary interest plus principal and 15 years in payoff time through our consolidation loan and debt consolidation programs. \r\n\r\nContact us at usdebtrelief.biz or email me at usdebt12@gmail.com I look forward to hearing from you, \r\n\r\nRey
322	RandyfatMF	hillbrad1542@icloud.com	82895869656	Amazing iPhone 16 Pro Max http://www.ww.vidi.hu/index.php?bniid=202&link=https%3A%2F%2Ftelegra.ph%2Fiphone-07-06-5%3F3693
323	mamie.luffman20@gmail.com	mamie.luffman20@gmail.com	409614169	Hi there,\r\n\r\nWe would like to introduce to you Robin AI, the world's first app that replaces your entire team with an AI assistant. This powerful tool generates human-like content, creates stunning designs, drives unlimited traffic, and more.\r\n\r\nGenerate Human-Like Content\r\nBuilds Professional Funnels\r\nDrive Thousands Of Clicks\r\n\r\nOnly $17.00 (normally $180)\r\n\r\nCheck out the features of Robin AI here: https://furtherinfo.org/robinai\r\n\r\nThanks for your time,\r\nMamie
324	RandyfatMF	sergoma1@icloud.com	84368136745	Lucky Day: iPhone 16 Pro Max https://www.streaming4fun.com/redirect.php?url=telegra.ph%2Fiphone-07-06-5%3F2329
325	noreplyhere@aol.com	noreplyhere@aol.com	342-123-4456	Hey, want your ad to reach millions of contact forms? Just like you're reading this message, others can read yours too. Visit my site below for details.\r\n\r\nhttp://wk90tg.contactformmarketing.xyz
326	submissions@searchindex.site	submissions@searchindex.site	7936466773	Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://searchregistry.net/
327	katelynraiden@gmail.com	katelynraiden@gmail.com	47183238	Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are interested in your channel/videos.\r\n- Safe: All actions are done, without using any automated tasks / bots.\r\n\r\nOur price is just $60 (USD) per month and we can start immediately.\r\n\r\nIf you are interested then we can discuss further.\r\n\r\nKind Regards,\r\nKatelyn\r\n\r\nUnsubscribe: https://removeme.click/yt/unsubscribe.php?d=torch.az
328	schreiner.santiago@googlemail.com	schreiner.santiago@googlemail.com	3253887729	Are you still looking at getting your website done/ completed? Contact e.solus@gmail.com
329	Mike Reynolds	mikeFepNeogy@gmail.com	85896535578	Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat's right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.monkey-seo.org/affiliates/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Reynolds\r\n \r\nMonkey Digital \r\nhttps://www.monkey-seo.org/whatsapp-affiliates/
330	Amelia Brown	ameliabrown12784@gmail.com	8677665583	Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are interested in your channel/videos.\r\n- Safe: All actions are done, without using any automated tasks / bots.\r\n\r\nOur price is just $60 (USD) per month and we can start immediately.\r\n\r\nIf you are interested then we can discuss further.\r\n\r\nKind Regards,\r\nAmelia
331	Phil Stewart	noreplyhere@aol.com	342-123-4456	You�ve just demonstrated the power of contact form blasting by reading this message! The key to successful advertising is getting your ad noticed, and you�ve done exactly that - noticed my ad! Let�s amplify your reach and drive sales, followers, and YouTube views. Discover our high-volume blasting plans designed for affiliate marketers and agencies.For more information, visit my site\r\n\r\nhttp://k6fgvm.contactblasting.xyz
332	rasco.tyrell@gmail.com	rasco.tyrell@gmail.com	480109021	Hello,\r\n\r\nI hope this email finds you well.\r\n We are reaching out to introduce M.I.H Marketing Agency, the ideal partner for elevating your brand. Our expertise in innovative strategies, tailored campaigns, and data-driven results sets us apart. \r\n\r\nBy partnering with us, we can enhance your brand with the use of:\r\n• Software development \r\n• AI development\r\n• App development\r\n• Website development\r\n• Cyber security\r\n• Virtual private servers\r\n• SEO, SMO, SEM, SERP\r\n• Digital design\r\n• Social media marketing\r\n• International law and accouting\r\n• Clothing design and supply\r\n• White label writers\r\n• White label courses\r\n\r\nIf the service that you are looking for is not listed please reach out to us,as this list does not include all of the services we provide.\r\n\r\nReady to take your marketing to the next level? Let's schedule a zoom meeting to discuss how M.I.H can drive your business forward.\r\n\r\nBest regards,\r\nM.I.H Marketing Agency  \r\nmarketingagency.mih@gmail.com
333	Judith Service	service.judith@gmail.com	Lxj lrrwanr	Are you concerned that your current website that was built a few years back,is no longer a good representation of your company ?\r\n\r\nWhy pay $50+ per hour for web development work, \r\nwhen you can get higher quality results AT LESS THAN HALF THE COST? \r\n\r\nWe are a FULL SERVICE, USA managed web development agency offering wholesale pricing.\r\n\r\nNo job too big or small. Test us out to see our value.\r\n\r\nUse the link in my signature, for a quick turn around quote.\r\n\r\n\r\n\r\nKristine Avocet\r\nSenior Web Specialist \r\nFusion Web Experts  \r\n186 Daniel Island Drive \r\nDaniel Island, SC 29492 \r\nwww.fusionwebexperts.tech
334	Elvin Thurgood	thurgood.elvin@hotmail.com	457339260	Are you concerned that your current website that was built a few years back,is no longer a good representation of your company ?\r\n\r\nWhy pay $50+ per hour for web development work, \r\nwhen you can get higher quality results AT LESS THAN HALF THE COST? \r\n\r\nWe are a FULL SERVICE, USA managed web development agency offering wholesale pricing.\r\n\r\nNo job too big or small. Test us out to see our value.\r\n\r\nUse the link in my signature, for a quick turn around quote.\r\n\r\n\r\n\r\nKristine Avocet\r\nSenior Web Specialist \r\nFusion Web Experts  \r\n186 Daniel Island Drive \r\nDaniel Island, SC 29492 \r\nwww.fusionwebexperts.tech
335	Launa	launa@torcheu.com	8125642139	Hey there \r\n \r\nIs your dog's nails getting too long? If you're tired of going to the vet or groomer to get them trimmed, why not try PawSafer™? \r\nWith PawSafer™, you can trim your dog's nails from the comfort of your own home, and it only takes a few minutes!\r\n\r\nPawSafer™ is the safest and most convenient way to trim your dog's nails, and it's very affordable. \r\n\r\nGet it while it's still 50% OFF + FREE Shipping\r\n\r\nBuy here: https://pawsafer.net\r\n \r\nThe Best, \r\n \r\nLauna
336	Mike Ferguson	mikeGrieveMara@gmail.com	88356161478	Hello, \r\n \r\nHey, I'm Mike from Monkey Digital. We offer a highly popular service that costs only 10$ per 5000 social ads visits. \r\n \r\nMore info:  \r\nhttps://www.country-targeted-traffic.com/get-started/ \r\n \r\nTracking will be sent the same day, the advertisement goes live within a few hours, effective and cheap marketing, try it out, it will be worth every penny. \r\n \r\nRegards \r\nMonkey Digital \r\nhttps://www.country-targeted-traffic.com/whatsapp-us/
337	FrancisMipYN	utpal.sheth@yahoo.com	83635451235	ACT NOW: CLAIM YOUR $50,000 JACKPOT TODAY https://script.google.com/macros/s/AKfycbxli380fSrnRNTmlqvTmUg8RokYpPkgR0btEKnGtr16eq_XSiwoI16oWZElJG5k2uxI3w/exec
338	SpeedyIndexBot	speedyindexbot@gmail.com	83926823646	https://bit.ly/3OV6orJ SpeedyIndexBot - service for indexing of links in Google. First result in 48 hours. 200 links for FREE.
339	Hosea	hosea@torch.az	362107280	Hey there \r\n \r\nIs your dog's nails getting too long? If you're tired of going to the vet or groomer to get them trimmed, why not try PawSafer™? \r\nWith PawSafer™, you can trim your dog's nails from the comfort of your own home, and it only takes a few minutes!\r\n\r\nPawSafer™ is the safest and most convenient way to trim your dog's nails, and it's very affordable. \r\n\r\nGet it while it's still 50% OFF + FREE Shipping\r\n\r\nBuy here: https://pawsafer.net\r\n \r\nAll the best, \r\n \r\nHosea
340	Mike Ferguson	mikeGrieveMara@gmail.com	87887116918	Hi there \r\nI just checked torcheu.com ranks and am sorry to bring this up, but it lacks in many areas. \r\n \r\nUnfortunately, building a bunch of links won't solve the issue in this case, and a more comprehensive strategy is required. Google has undergone significant changes over the past year, making it nearly impossible to compete for favorable rankings without a well-designed website. \r\n \r\nWe recommend a search engine-friendly website layout to resolve all issues and propel your site to the top. \r\n \r\nYou can check more details here:https://www.seofriendlydesigns.com/get-started/ \r\n \r\nThanks for your consideration \r\nMike Ferguson\r\nSpeed Designs \r\nhttps://www.seofriendlydesigns.com/whatapp-us/
341	warburton.jeannette@gmail.com	warburton.jeannette@gmail.com	4244134637	If you are reading this message, That means my marketing is working. I can make your ad message reach 5 million sites in the same manner for just $50. It's the most affordable way to market your business or services. Contact me by email virgo.t3@gmail.com or skype me at live:.cid.dbb061d1dcb9127a\r\n\r\nP.S: Speical Offer - ONLY for 24 hours - 10 Million Sites for the same money $50
342	RobertisomsAB	margaretteleschen5504@hotmail.com	86753465264	Join forces with https://SellAccs.net and capitalize on the burgeoning market of online account transactions! As our partner, you'll gain access to a robust platform designed for seamless buying and selling experiences. Benefit from competitive commissions, extensive support, and a vast network of potential clients. Together, let's revolutionize digital commerce while maximizing your earning potential. Partner with https://SellAccs.net today and embark on a journey to unparalleled success! \r\n \r\n \r\nJUST CLICK THE FOLLOWING WEBSITE: https://SellAccs.net
343	Search Engine Index	submissions@searchindex.site	5196300642	Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://searchregistry.net/
344	louis.tuckfield76@msn.com	louis.tuckfield76@msn.com	664947398	Hi,\r\n\r\nAre you looking for a quick and hassle-free business loan?\r\n\r\nWe offer a variety of options to suit your needs, including Expansion loans, startup loans, heavy equipment loans, home loans, real estate development loans, construction loans, working capital loans, bridge loans, inventory financing, merchant cash advances, and franchise financing. \r\n\r\nGet the funding you need to achieve your goals with ease. Apply now at www.fundcrownsltd.com/apply-now or email us at: Loan@fundcrownsltd.com\r\n\r\nBest regards. \r\n\r\nDylan Pham\r\nFund Crowns Limited
345	DenstatteJY	ch.e.b.aku.li.n.a.ka.rase.v.na.@gmail.com	89443732184	Mysimba - Quick and Easy Weight Lass \r\n \r\nMysimba is a medicine used along with diet and exercise to help manage weight in adults: \r\n \r\nwho are obese (have a body-mass index - BMI - of 30 or more); \r\nwho are overweight (have a BMI between 27 and 30) and have weight-related complications such as diabetes, abnormally high levels of fat in the blood, or high blood pressure. \r\nBMI is a measurement that indicates body weight relative to height. \r\n \r\nMysimba contains the active substances naltrexone and bupropion. \r\n \r\nhttps://cutt.ly/RezL73vz
346	Mike Wilson	mikeGrieveMara@gmail.com	88622884691	Hi there, \r\n \r\nWhile checking your torcheu.com for its ranks, I have noticed that there are some toxic links pointing towards it. \r\n \r\nGrab your free clean up and improve ranks in no time \r\nhttps://www.hilkomseo.net/free-cleanup/ \r\n \r\nIt really works, get a free backlinks clean up with us today \r\n \r\n \r\nRegards \r\nMike Wilson\r\n \r\nWhatsapp:https://www.hilkomseo.net/whatapp-us/
347	Michiel Hervey	m.hervey@effipreneur.nl	0031850280050	Hi, \r\n\r\nI was doing reseach for a client and found your website using Google, but I encountered a little issue on Torcheu website where it stopped loading for me\r\nI thought you'd like to know. \r\n\r\nIoften use https://websitecheckhealth.com to make sure my site is running smoothly and find it extremely useful.\r\n\r\nI you need help, Feel free to reach out.
348	newman.bud3@googlemail.com	newman.bud3@googlemail.com	410512737	Reversed Chakra bursts onto the indie music scene with "Game of Chess," a track that entertains and invites listeners into a profound exploration of spiritual energy through music. This band stands out by challenging conventional norms, even embracing a philosophy that turns traditional spiritual energy flows on their head. The single showcases Reversed Chakra's talent for crafting a rich sonic landscape, blending introspective indie rock with the moody allure of new wave and the expansive soundscapes of post-rock. \r\n\r\nThis ambitious fusion creates a song that feels both familiar and refreshingly unique. Produced by Paul Reeve (Muse), mixed by John Fryer (Depeche Mode, Nine Inch Nails, HIM), and mastered by Richard Dodd (Kings Of Leon), the single has reached 2.1 million streams in less than a month. We can easily shout that we are witnessing the rise of a new sensation in indie rock! \r\n\r\nEnjoy the video: https://www.youtube.com/watch?v=0Dw1T5TDecc\r\nVisit the band's website: www.reversedchakra.com
349	Geneva Kerferd	kerferd.geneva@yahoo.com	7888560094	Hi there,\r\n\r\nWe’re excited to introduce Mintsuite, the ultimate platform to enhance your online presence and drive results. Mintsuite empowers you to create stunning websites, manage social media like a pro, and generate traffic effortlessly.\r\n\r\nCreate Stunning Websites\r\nManage Social Media Effortlessly\r\nGenerate Unlimited Traffic\r\n\r\nGrab Mintsuite now for just $18 (normally $180)!\r\n\r\nCheck out the amazing features of Mintsuite here: https://furtherinfo.org/mintsuite\r\n\r\nThanks for your time,\r\nGeneva
350	JosephnekCJ	ycot22@yahoo.com	82469433283	LOW BALANCE ALERT: WITHDRAW NOW—$50,000 REMAINING https://script.google.com/macros/s/AKfycbwtzZKfld26BOEU-TobFePtpkLK2_1nO3qK3iGngFUnEg5Ray5b7fW8SOlpi7mqvYurPA/exec
351	stacia.prada@gmail.com	stacia.prada@gmail.com	2505497956	Advantages of hiring a Developer:\r\n\r\nSpecialized Expertise\r\nTailored Customization and Control\r\nTime and Cost Efficiency\r\nCustom Plugin Development\r\nSEO Optimization\r\nOngoing Support and Maintenance\r\nSeamless Integration and Migration\r\nScalability for Business Growth\r\n\r\nHire a web developer now from us. Contact us at https://wpexpertspro.co/website/?site=torcheu.com
352	Morgan	info@desaillly.medicopostura.com	9725852978	Hey there \r\n\r\nLooking to improve your posture and live a healthier life? Our Medico Postura™ Body Posture Corrector is here to help!\r\n\r\nExperience instant posture improvement with Medico Postura™. This easy-to-use device can be worn anywhere, anytime – at home, work, or even while you sleep.\r\n\r\nMade from lightweight, breathable fabric, it ensures comfort all day long.\r\n\r\nGrab it today at a fantastic 60% OFF: https://medicopostura.com\r\n\r\nPlus, enjoy FREE shipping for today only!\r\n\r\nDon't miss out on this amazing deal. Get yours now and start transforming your posture!\r\n\r\nSincerely, \r\n\r\nMorgan
353	JosephnekCJ	ikearms3@yahoo.com	82871147548	Low Balance: Withdraw Now—$50,000 Left https://script.google.com/macros/s/AKfycbyYVD77WGAzB7-8NwNZMsF5XaUlJ0LwamOH9N6-28bKfAD9YB-XzenUkyFFskdnAqXplg/exec
354	Phil Stewart	noreplyhere@aol.com	342-123-4456	Hey, want your ad to reach millions of contact forms? Just like you're reading this message, others can read yours too. Visit my site below for details.\r\n\r\nhttp://f85kfw.contactformmarketing.xyz
355	Mike Derrick	peterGrieveMara@gmail.com	88434483861	Greetings \r\n \r\nI have just took an in depth look on your  torcheu.com for its SEO Trend and saw that your website could use an upgrade. \r\n \r\nWe will improve your ranks organically and safely, using only state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.cyber-digitalx.net/monthly-seo/ \r\n \r\nRegards \r\nMike Derrick\r\n \r\nDigital X SEO Experts \r\nhttps://www.cyber-digitalx.net/whatsapp-us/
356	Edison	info@basham.medicopostura.com	4121874881	Morning \r\n\r\nLooking to improve your posture and live a healthier life? Our Medico Postura™ Body Posture Corrector is here to help!\r\n\r\nExperience instant posture improvement with Medico Postura™. This easy-to-use device can be worn anywhere, anytime – at home, work, or even while you sleep.\r\n\r\nMade from lightweight, breathable fabric, it ensures comfort all day long.\r\n\r\nGrab it today at a fantastic 60% OFF: https://medicopostura.com\r\n\r\nPlus, enjoy FREE shipping for today only!\r\n\r\nDon't miss out on this amazing deal. Get yours now and start transforming your posture!\r\n\r\nThank You, \r\n\r\nEdison
357	Search Engine Index	submissions@searchindex.site	273767704	Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://searchregistry.net/
358	wetter.tisha@hotmail.com	wetter.tisha@hotmail.com	0372-6855846	Hi torcheu.com Owner,\r\n\r\nStruggling with Live Chat Issues?\r\n\r\nSlow response times and missed chats can create a stressful environment for your team and frustrate your customers.\r\n\r\nWhat If It Gets Worse?\r\n\r\nAs these issues pile up, you risk damaging your reputation and losing business. It’s a tough situation to handle alone.\r\n\r\nHere’s Some Hope:\r\n\r\nYou don’t have to face this by yourself. Our live chat solutions can:\r\n\r\nSpeed Up Response Times: Ensure quick, effective support.\r\nScale with Your Needs: From startups to large enterprises.\r\nExpert Agents: Professional and efficient chat handling.\r\nReady for a Change? Free 30 days trial.\r\n\r\nEmail us at lisa365chat@gmail.com to schedule a free consultation and discover how we can help you streamline your live chat operations.
359	christison.bradly@gmail.com	christison.bradly@gmail.com	989 06 095	Advantages of hiring a Developer:\r\n\r\nSpecialized Expertise\r\nTailored Customization and Control\r\nTime and Cost Efficiency\r\nCustom Plugin Development\r\nSEO Optimization\r\nOngoing Support and Maintenance\r\nSeamless Integration and Migration\r\nScalability for Business Growth\r\n\r\nHire a web developer now from us. Contact us at e.solus@gmail.com
360	RaymondSicleMW	no.reply.MaqnusPetitson@gmail.com	84233955828	Howdy-doody! torcheu.com \r\n \r\nDid you know that it is possible to send commercial offers absolutely legally? \r\nWhen such proposals are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals securely. Since Feedback Forms messages are deemed important, they won't be labeled as junk. \r\nWe are inviting you to take advantage of our service without any charge. \r\nWe are able to transmit up to 50,000 messages to you. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis message was automatically generated. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\nWe only use chat for communication.
361	Cristine Rocha	cristine.rocha@gmail.com	173410575	Do you have a list of website updates that you want to deploy but hate having to pay the INSANE prices to get it done?\r\n\r\nWhy pay $50+ per hour for web development work, \r\nwhen you can get higher quality results AT LESS THAN HALF THE COST? \r\n\r\nWe are a FULL SERVICE, USA managed web development agency offering wholesale pricing.\r\n\r\nNo job too big or small. Test us out to see our value.\r\n\r\nUse the link in my signature, for a quick turn around quote.\r\n\r\n\r\n\r\nKristine Avocet\r\nSenior Web Specialist \r\nFusion Web Experts  \r\n186 Daniel Island Drive \r\nDaniel Island, SC 29492 \r\nwww.fusionwebexperts.tech
362	Paige Paquette	paquette.paige@gmail.com	41320385	Tired of overpaying for simple web work and website updates?\r\n\r\nWhy pay $50+ per hour for web development work, \r\nwhen you can get higher quality results AT LESS THAN HALF THE COST? \r\n\r\nWe are a FULL SERVICE, USA managed web development agency with wholesale pricing.\r\n\r\nNo job too big or small. Test us out to see our value.\r\n\r\nUse the link in my signature, for a quick turn around quote.\r\n\r\n\r\n\r\nKristine Avocet\r\nSenior Web Specialist \r\nFusion Web Experts  \r\n186 Daniel Island Drive \r\nDaniel Island, SC 29492 \r\nwww.fusionwebexperts.tech
363	Mike Wayne	mikeFepNeogy@gmail.com	85982537884	Hello \r\nThis is Mike Wayne\r\nfrom Strictly Digital \r\n \r\nLet me present to you our latest discovered from the SEO environment. \r\nWe have noticed that getting backlinks from websites that have high SEO metrics values doesn't always help, and in fact, what is more important is to have backlinks from sites that are actually ranking for many keywords. \r\n \r\nThus, we have built this service especially to meet these new discoveries and the results are astonishing. \r\n \r\nPlease check more details here: \r\nhttps://www.strictly-digital.net/semrush-backlinks/ \r\n \r\n \r\n \r\nRegards, \r\nStrictly Digital SEO Team \r\n \r\nWhatsapp us for more details: \r\nhttps://www.strictly-digital.net/whatsapp-us/
364	Phil Stewart	noreplyhere@aol.com	342-123-4456	Ever thought about having your ad blasted to millions of contact forms? You're reading this message, so you know it works! Check out my site below for more info.\r\n\r\nhttp://xul4xc.contactblasting.xyz
365	Denny Midgett	midgett.denny@googlemail.com	4692283637	Hi there,\r\n\r\nWe’re excited to introduce Mintsuite, the ultimate platform to enhance your online presence and drive results. Mintsuite empowers you to create stunning websites, manage social media like a pro, and generate traffic effortlessly.\r\n\r\nCreate Stunning Websites\r\nManage Social Media Effortlessly\r\nGenerate Unlimited Traffic\r\n\r\nGrab Mintsuite now for just $18 (normally $180)!\r\n\r\nCheck out the amazing features of Mintsuite here: https://furtherinfo.org/mintsuite\r\n\r\nThanks for your time,\r\nDenny
366	* * * Get Free Bitcoin Now: https://kapilgroup.com/uploads/z4bwvf.php?lou5f9p * * * hs=2ce797fe4fc3d6aff008de0bfc3ffdbe*	pazapz@mailbox.in.ua	452n6t	bydty7
367	* * * <a href="https://kapilgroup.com/uploads/z4bwvf.php?lou5f9p">Unlock Free Spins Today</a> * * * hs=2ce797fe4fc3d6aff008de0bfc3ffdbe*	pazapz@mailbox.in.ua	8z749j	tpe2fi
368	Sara Smith	saraindexsor@gmail.com	740847524	Hello,\r\n\r\nWe're excited to introduce Indexsor.com, the revolutionary Backlink Indexer built for the first time in SEO history. \r\nNow, you can enjoy a Premium Backlink Indexing Service at a low price.\r\n\r\nFeatures:\r\n✓ Pay only for Indexed Links\r\n✓ Indexing Ratio 80-90%\r\n✓ Failed links credit gets refunded to your "Indexsor Wallet"\r\n✓ Inbuilt Link Status Checker\r\n✓ Inbuilt Index Checker\r\n✓ Full Campaign Reports\r\n✓ Whitehat Indexing Technology\r\n✓ Secure & Easy Payment System\r\n✓ Top Notch Customer Support\r\n\r\nClaim Your 10 FREE Trial Credits Today! : https://indexsor.com/?ref=specialoffer\r\n\r\n- Indexsor.com
369	Katelyn Raiden	katelynraiden@gmail.com	236553734	Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically.\r\n\r\nWe go beyond just subscriber numbers. We focus on attracting viewers genuinely interested in your niche, leading to long-term engagement with your content. Our approach leverages optimization, community building, and content promotion for sustainable growth, not quick fixes. Additionally, a dedicated team analyzes your channel and creates a personalized plan to unlock your full potential, all without relying on bots.\r\n\r\nOur packages start from just $60 (USD) per month.\r\n\r\nWould this be of interest?\r\n\r\nKind Regards,\r\nKatelyn\r\n\r\nUnsubscribe: https://removeme.live/unsubscribe.php?d=torcheu.com
370	Marshall	info@girardi.bangeshop.com	658238727	Morning, \r\n\r\nI hope you're doing well. I wanted to let you know about our new BANGE backpacks and sling bags that just released.\r\n\r\nThe bags are waterproof and anti-theft, and have a built-in USB cable that can recharge your phone while you're on the go.\r\n\r\nBoth bags are made of durable and high-quality materials, and are perfect for everyday use or travel.\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: http://bangeshop.com\r\n\r\nMany Thanks,\r\n\r\nMarshall
371	Mike Wainwright	mikeFepNeogy@gmail.com	87939448197	Hello \r\nThis is Mike Wainwright\r\nfrom Strictly Digital \r\n \r\nLet me present to you our latest discovered from the SEO environment. \r\nWe have noticed that getting backlinks from websites that have high SEO metrics values doesn't always help, and in fact, what is more important is to have backlinks from sites that are actually ranking for many keywords. \r\n \r\nThus, we have built this service especially to meet these new discoveries and the results are astonishing. \r\n \r\nPlease check more details here: \r\nhttps://www.strictly-seo.com/semrush-backlinks/ \r\n \r\n \r\n \r\nRegards, \r\nStrictly Digital SEO Team \r\n \r\nWhatsapp us for more details: \r\nhttps://www.strictly-seo.com/whatsapp-us/
372	Everette Murnin	everette.murnin@gmail.com	362509071	Hi there,\r\n\r\nWe would like to introduce to you Robin AI, the world's first app that replaces your entire team with an AI assistant. This powerful tool generates human-like content, creates stunning designs, drives unlimited traffic, and more.\r\n\r\nGenerate Human-Like Content\r\nBuilds Professional Funnels\r\nDrive Thousands Of Clicks\r\n\r\nOnly $17.00 (normally $180)\r\n\r\nCheck out the features of Robin AI here: https://furtherinfo.org/robinai\r\n\r\nThanks for your time,\r\nEverette
373	Valeron83jineeXM	menhos7@rambler.ru	88127774766	Hello. \r\nJoin now and get access to our exclusive offer! Limited time only! Welcome bonus now - $1200 + 300FS Register here:  http://secure-casinos.com
374	way.irma@outlook.com	way.irma@outlook.com	4504758	The best financial company to support your business growth is right here.\r\n\r\nWe are here to offer you the greatest option for the expansion of your company. To fulfill your needs, we offer the best possible business loan package. email me here info@financeworldwidehk.com                                                                                                                                                                        \r\n\r\n\r\nBest Regards                                                                                                          Laura Cha
375	Elşən	Elsen527@mail.ru	+994708130536	Salam Mənim Dacia Logan avtomobilim var səliqəli və ekonomdur arxa baqaj genişdir və 500 kq yük götürmə qabilyəti var sərnişin oturacaqları var avtomobilimə reklam da vurulmasına razıyam sizə sürücü lazim olsa elaqe saxlayın zəhmət olmasa
376	Search Engine Index	submissions@searchindex.site	3336336999	Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://searchregistry.net/
377	janet.anaya@gmail.com	janet.anaya@gmail.com	031 882 88 56	Is your business struggling to find a reliable payment processing solution? Do you deal with high-risk transactions but face constant roadblocks from traditional processors?\r\n\r\nWorldinpay.com is here to help. We provide secure card processing solutions for high-risk businesses worldwide.\r\n\r\nHere's what sets us apart:\r\n\r\nGlobal Expertise: We handle transactions across the globe, understanding the unique challenges of high-risk industries.\r\nSeamless Integration: Integrate our processing solution quickly and easily into your existing platform.\r\nInstant Payouts: Get your funds faster with our efficient payout system.\r\nEnhanced Security: Enjoy industry-leading security measures to protect your business and customers.\r\nDedicated Support: Our team is here to answer your questions and provide ongoing support.\r\nDon't let payment processing hold your business back.\r\n\r\nContact Worldinpay today !!!\r\n\r\nVisit our website: https://worldinpay.com/\r\n\r\nSincerely,\r\nThe Worldinpay Team\r\nhttps://worldinpay.com/
378	Fermin	info@healey.bangeshop.com	5543012787	Hello, \r\n\r\nI hope this email finds you well. I wanted to let you know about our new BANGE backpacks and sling bags that just released.\r\n\r\nThe bags are waterproof and anti-theft, and have a built-in USB cable that can recharge your phone while you're on the go.\r\n\r\nBoth bags are made of durable and high-quality materials, and are perfect for everyday use or travel.\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: http://bangeshop.com\r\n\r\nCheers,\r\n\r\nFermin
379	Phil Stewart	noreplyhere@aol.com	342-123-4456	Curious about getting your ad seen by millions? I sent this message to your contact form, and here you are reading it! Visit my site below to find out more.\r\n\r\nhttp://n8ran8.contactformblasting.xyz
380	Mike Youmans	mikeFepNeogy@gmail.com	82963829648	Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime revenue opportunity of 35% \r\nThat's right, you can earn 35% of every order made by your affiliate for life. \r\n \r\nSimply register with us, generate your affiliate links, and incorporate them on your website, and you are done. It takes only 5 minutes to set up everything, and the payouts are sent each month. \r\n \r\nClick here to enroll with us today: \r\nhttps://www.seomonkey.net/affiliates/ \r\n \r\nThink about it, \r\nEvery website owner requires the use of search engine optimization (SEO) for their website. This endeavor holds significant potential for both parties involved. \r\n \r\nThanks and regards \r\nMike Youmans\r\n \r\nMonkey Digital \r\nhttps://www.seomonkey.net/whatsapp-affiliates/
381	Kayleigh Gairdner	gairdner.kayleigh@googlemail.com	B Qvgpsr	Hi,\r\n\r\nWe’re wanted to introduce you to Sonic, the ultimate resource for high-quality sound effects that can elevate your audio projects to the next level.\r\n\r\nWhether you’re a content creator, filmmaker, or musician, our tool makes it easy to find and use professional sound effects without any hassle.\r\n\r\n- Access Thousands of Professional Sound Effects Instantly\r\n- Perfect for Any Project – No Audio Editing Skills Needed\r\n- Enhance Your Content and Captivate Your Audience\r\n\r\nExplore all the amazing features of Sonic here: https://furtherinfo.info/sonic\r\n\r\nKind Regards,\r\nKayleigh
\.


--
-- Data for Name: home_gallery; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.home_gallery (id, image, project_id) FROM stdin;
14	b36516d3-69cb-451b-a525-1494e9aa904a.jpg	10
15	d2c94cd7-0386-4521-a750-986414fb.jpg	23
16	60a8c087-c409-4584-8f32-be866c1c_z5whU3k.jpg	23
17	ed37792d-4a73-47d6-b966-bu.jpg	23
\.


--
-- Data for Name: home_general; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.home_general (id, logo, copyright, powered_by_logo, powered_by_url, email, phone, address, map_embed, map_url, our_mission, deyerlerimiz, korporativ_medeniyyet, sirketimiz, favicon, meta_description, meta_keywords, meta_title, logo_white, deyerlerimiz_title_text, korporativ_medeniyyet_title_text, our_mission_title_text, sirketimiz_title_text, address_az, address_en, address_ru, sirketimiz_az, sirketimiz_en, sirketimiz_ru, copyright_az, copyright_en, copyright_ru, deyerlerimiz_az, deyerlerimiz_en, deyerlerimiz_ru, deyerlerimiz_title_text_az, deyerlerimiz_title_text_en, deyerlerimiz_title_text_ru, korporativ_medeniyyet_az, korporativ_medeniyyet_en, korporativ_medeniyyet_ru, korporativ_medeniyyet_title_text_az, korporativ_medeniyyet_title_text_en, korporativ_medeniyyet_title_text_ru, our_mission_az, our_mission_en, our_mission_ru, our_mission_title_text_az, our_mission_title_text_en, our_mission_title_text_ru, sirketimiz_title_text_az, sirketimiz_title_text_en, sirketimiz_title_text_ru) FROM stdin;
1	logo_v7eAnKt.svg	© TORCH | Bütün haqqları qorunur. | 2023	logo_v7eAnKt_Nz2dWnm.svg	torch.az	info@torch.az	+994 51 240 49 88	Sport Plaza, H.Aliyev 115, Baku, Azerbaijan	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12146.343183067373!2d49.763063100000004!3d40.4401698!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4030877340ffea49%3A0x11bfdf5bfee87690!2sIlchin%20LTD!5e0!3m2!1sen!2saz!4v1695299638621!5m2!1sen!2saz" width="600" height="560" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>	https://goo.gl/maps/BhixpkrYYx7BzJeGA	<p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; font-size: 16px; line-height: 22px; color: rgb(65, 74, 85);">Biz göstərdiyimiz xidmət ilə ölkəmizdə tikindi xidmətləri və dizayn xidmətləri sahəsində müştəri gözləntisinin və keyfiyyətli xidmətin üst standartlarını müəyyən edən şirkət olmaq üçün çalışırıq. Bunun üçün biz:</p><ul style="margin-right: 0px; margin-bottom: 1rem; margin-left: 0px; padding: 0px 0px 0px 2rem; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;"><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">Üzərində çalışdığımız hər bir layihəyə xüsusi diqqətlə yanaşır, müraciətçinin tələblərini dərindən araşdırdıqdan sonra, onun təlabatına uyğun həllər təqdim edirik.</li><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">Fəaliyyətimizin istənilən mərhələsində, öz komandamız və müraciət edən şəxs arasında yüksək səviyyəli əməkdaşlıq və ünsiyyət qururuq.</li></ul>	<ul style="margin-right: 0px; margin-bottom: 1rem; margin-left: 0px; padding: 0px 0px 0px 2rem; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;"><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">Dürüstlük və etibar kimi dünyəvi olaraq qəbul olunmuş təməl dəyərlərimizə hər zaman sadiq qalırıq</li><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">İnkişaf - hər zaman göstərdiyimiz xidmət səviyyəsinin inkişaf etdirməyə çalışırıq</li><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">İnnovativlik- günümüzün ən son texnoloji yeniliklərini daima izləyir və xidmətimizdə tətbiq edirik</li><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">Müştəriyönümlü xidmət- hər zaman müştərinin ehtiyaclarını və tələbatını, istəklərinə uyğun xidmət göstəririk.</li></ul>	<p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;">Torch komandasının hər bir üzvü şirkətin inkişafında mühüm rol oynayır. Torch-da hər birimiz planlaşdırılmış məqsədlərə nail olmaq üçün əlimizdən gələni edirik. Biz hər gün şirkətin dəyərlərinin qorunması üçün çalışırıq, işçilərimizin və şirkətin təkmilləşməsinə daim diqqət yetiririk. Nəticədə, biz gündən-günə təhlükəsiz iş mühitini, müxtəlif dəyərləri təmin edən, açıq ünsiyyəti bəyənən, innovasiya və inkişafı dəstəkləyən öz korporativ mədəniyyətimizi yaradırıq.</p><p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;">Torch şirkətin uğurlarına görə güclü işçilər komandasına təşəkkür edir və insan resurslarının dinamik və ədalətli idarə olunması ilə birlikdə korporasiyanın böyüməsini israrla davam etdirməyə çalışır.</p><p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;">Şirkət sizin potensialınızı tam reallaşdırmağa imkan verəcək maraqlı, çətin və təqdir olunan mühit yaratmağa çalışır.</p><p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;">Aktiv bir şirkət olaraq biz müxtəlif karyera yüksəlişi imkanları təklif edirik. İstəyirik ki, bizimlə uğurlu və uzunmüddətli karyera münasibəti qurasınız, komandamızın xoşbəxt və məhsuldar üzvü olasınız. İnanırıq ki, zəhmətiniz, yaradıcılığınız və səyləriniz sayəsində şirkətimiz bundan sonra da inkişaf edəcəkdir.</p><p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;">Biz qanuna və normalara tam əməl olunmasının tərəfdarıyıq və məsuliyyət hissindən irəli gələn korporativ davranışı dəstəkləyirik</p>	<p>Təkcə insanların deyil, bir ölkənin həyatını dəyişə biləcək böyük ideyaların tərəfdarı olan və şəraitdən asılı olmayaraq bütün layihələri başa çatdıran TORCH uğurlu gələcək vəd edir və müştəri məmnuniyyətini yüksək səviyyədə saxlayaraq sektorda etibarlı və bəyənilən brend olmaq yolunda irəlləyir.<br></p>	logo_7JC27VA.svg	Torch Lift və Eskalatorların satışı və təmiri. Şirkət eyni zamanda müxtəlif ehtiyyat hissələrinin satışı və mühəndisliyi ilə məşğuldur.	lift, eskalator, liftlərin təmiri, turniket, şlaqbaum, kran, təmir	Torch Lift və Eskalatorların satışı və təmiri	logow_YELt3AL.svg	DƏYƏRLƏRİMİZ	KORPORATİV MƏDƏNİYYƏT	MİSSİYAMIZ	ŞİRKƏTİMİZ	Sport Plaza, H.Aliyev 115, Baku, Azerbaijan	Sport Plaza, H.Əliyev 115, Bakı, Azərbaycan	Sport Plaza, Г.алиева 115, Баку, Azərbaycan	<p>Təkcə insanların deyil, bir ölkənin həyatını dəyişə biləcək böyük ideyaların tərəfdarı olan və şəraitdən asılı olmayaraq bütün layihələri başa çatdıran TORCH uğurlu gələcək vəd edir və müştəri məmnuniyyətini yüksək səviyyədə saxlayaraq sektorda etibarlı və bəyənilən brend olmaq yolunda irəlləyir.<br></p>	<p>Supporting big ideas that can change not only the lives of people but also an entire country, and completing all projects regardless of the circumstances, TORCH promises a successful future. We are committed to becoming a trusted and highly appreciated brand in the sector by maintaining a high level of customer satisfaction.<br></p>	<p>Поддерживая большие идеи, способные изменить жизнь не только людей, но и целой страны, и реализуя все проекты вне зависимости от обстоятельств, TORCH обещает успешное будущее. Мы стремимся стать надежным и высоко ценимым брендом в этом секторе, поддерживая высокий уровень удовлетворенности клиентов.<br></p>	© TORCH | Bütün haqqları qorunur. | 2023	© TORCH | All rights reserved. | 2023	© ФАКЕЛ | Все права защищены. | 2023 год	<ul style="margin-right: 0px; margin-bottom: 1rem; margin-left: 0px; padding: 0px 0px 0px 2rem; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;"><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">Dürüstlük və etibar kimi dünyəvi olaraq qəbul olunmuş təməl dəyərlərimizə hər zaman sadiq qalırıq</li><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">İnkişaf - hər zaman göstərdiyimiz xidmət səviyyəsinin inkişaf etdirməyə çalışırıq</li><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">İnnovativlik- günümüzün ən son texnoloji yeniliklərini daima izləyir və xidmətimizdə tətbiq edirik</li><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">Müştəriyönümlü xidmət- hər zaman müştərinin ehtiyaclarını və tələbatını, istəklərinə uyğun xidmət göstəririk.</li></ul>	<ul style="margin-right: 0px; margin-bottom: 1rem; margin-left: 0px; padding: 0px 0px 0px 2rem; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;"><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">We always stick to our universally accepted core values of honesty and trust</li><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">Development - we always try to improve the level of service we provide</li><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">Innovativeness - we constantly follow the latest technological innovations of today and apply them in our service</li><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">Customer-oriented service - we always provide service according to the needs and demands of the customer.</li></ul>	<p>Мы всегда придерживаемся наших общепризнанных основных ценностей честности и доверия.</p><p>Развитие - мы всегда стараемся улучшить уровень предоставляемых услуг.</p><p>Инновационность - мы постоянно следим за последними технологическими новинками современности и применяем их в нашем сервисе.</p><p>Клиентоориентированный сервис – мы всегда предоставляем услуги в соответствии с потребностями и требованиями клиента.</p>	DƏYƏRLƏRİMİZ	OUR VALUES	НАШИ ЦЕННОСТИ	<p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;">Torch komandasının hər bir üzvü şirkətin inkişafında mühüm rol oynayır. Torch-da hər birimiz planlaşdırılmış məqsədlərə nail olmaq üçün əlimizdən gələni edirik. Biz hər gün şirkətin dəyərlərinin qorunması üçün çalışırıq, işçilərimizin və şirkətin təkmilləşməsinə daim diqqət yetiririk. Nəticədə, biz gündən-günə təhlükəsiz iş mühitini, müxtəlif dəyərləri təmin edən, açıq ünsiyyəti bəyənən, innovasiya və inkişafı dəstəkləyən öz korporativ mədəniyyətimizi yaradırıq.</p><p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;">Torch şirkətin uğurlarına görə güclü işçilər komandasına təşəkkür edir və insan resurslarının dinamik və ədalətli idarə olunması ilə birlikdə korporasiyanın böyüməsini israrla davam etdirməyə çalışır.</p><p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;">Şirkət sizin potensialınızı tam reallaşdırmağa imkan verəcək maraqlı, çətin və təqdir olunan mühit yaratmağa çalışır.</p><p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;">Aktiv bir şirkət olaraq biz müxtəlif karyera yüksəlişi imkanları təklif edirik. İstəyirik ki, bizimlə uğurlu və uzunmüddətli karyera münasibəti qurasınız, komandamızın xoşbəxt və məhsuldar üzvü olasınız. İnanırıq ki, zəhmətiniz, yaradıcılığınız və səyləriniz sayəsində şirkətimiz bundan sonra da inkişaf edəcəkdir.</p><p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;">Biz qanuna və normalara tam əməl olunmasının tərəfdarıyıq və məsuliyyət hissindən irəli gələn korporativ davranışı dəstəkləyirik</p>	<p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;">Each member of the Torch team plays an important role in the development of the company. At Torch, each of us is doing our best to achieve the planned goals. We work every day to protect the company's values, we constantly pay attention to the improvement of our employees and the company. As a result, day after day we create our own corporate culture that provides a safe work environment, diverse values, favors open communication, and supports innovation and development.</p><p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;">Torch credits a strong team of employees for the company's success and strives to continue the growth of the corporation along with dynamic and fair management of human resources.</p><p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;">The company strives to create an interesting, challenging and rewarding environment that will allow you to realize your full potential.</p><p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;">As an active company, we offer a variety of career advancement opportunities. We want you to build a successful and long-term career relationship with us, to be a happy and productive member of our team. We believe that thanks to your hard work, creativity and efforts, our company will continue to grow.</p><p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;">We stand for full compliance with the law and regulations and support responsible corporate behavior</p>	<p>Каждый член команды «Факел» играет важную роль в развитии компании. В Torch каждый из нас делает все возможное для достижения запланированных целей. Мы каждый день работаем над защитой ценностей компании, постоянно уделяем внимание совершенствованию наших сотрудников и компании. В результате мы изо дня в день создаем собственную корпоративную культуру, которая обеспечивает безопасную рабочую среду, разнообразные ценности, способствует открытому общению и поддерживает инновации и развитие.</p><p>Торч считает, что успех компании обусловлен сильной командой сотрудников, и стремится продолжать рост корпорации наряду с динамичным и справедливым управлением человеческими ресурсами.</p><p>Компания стремится создать интересную, стимулирующую и полезную среду, которая позволит вам полностью реализовать свой потенциал.</p><p>Как действующая компания, мы предлагаем различные возможности карьерного роста. Мы хотим, чтобы вы построили с нами успешные и долгосрочные карьерные отношения, были счастливым и продуктивным членом нашей команды. Мы верим, что благодаря вашему упорному труду, творчеству и усилиям наша компания будет продолжать расти.</p>	KORPORATİV MƏDƏNİYYƏT	CORPORATE CULTURE	КОРПОРАТИВНАЯ КУЛЬТУРА	<p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; font-size: 16px; line-height: 22px; color: rgb(65, 74, 85);">Biz göstərdiyimiz xidmət ilə ölkəmizdə tikindi xidmətləri və dizayn xidmətləri sahəsində müştəri gözləntisinin və keyfiyyətli xidmətin üst standartlarını müəyyən edən şirkət olmaq üçün çalışırıq. Bunun üçün biz:</p><ul style="margin-right: 0px; margin-bottom: 1rem; margin-left: 0px; padding: 0px 0px 0px 2rem; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;"><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">Üzərində çalışdığımız hər bir layihəyə xüsusi diqqətlə yanaşır, müraciətçinin tələblərini dərindən araşdırdıqdan sonra, onun təlabatına uyğun həllər təqdim edirik.</li><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">Fəaliyyətimizin istənilən mərhələsində, öz komandamız və müraciət edən şəxs arasında yüksək səviyyəli əməkdaşlıq və ünsiyyət qururuq.</li></ul>	<p style="margin-bottom: 1rem; padding: 0px; font-family: Raleway; font-size: 16px; line-height: 22px; color: rgb(65, 74, 85);">With the services we provide, we strive to become a company that defines the highest standards of customer expectations and quality service in the field of construction and design services in our country. To achieve this, we:</p><ul style="margin-right: 0px; margin-bottom: 1rem; margin-left: 0px; padding: 0px 0px 0px 2rem; font-family: Raleway; color: rgb(33, 37, 41); font-size: 16px;"><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">Pay special attention to each project we work on. After in-depth research of the applicant's requirements, we provide solutions that meet their needs.</li><li style="margin: 0px; padding: 0px; font-family: var(--main-font); color: rgb(65, 74, 85);">Maintain a high level of cooperation and communication between our team and the applicant at any stage of our activity.</li></ul>	<p>Предоставляя услуги, мы стремимся стать компанией, определяющей самые высокие стандарты ожиданий клиентов и качества обслуживания в сфере строительных и дизайнерских услуг в нашей стране. Чтобы добиться этого, мы:</p><p><br></p><p>Уделяйте особое внимание каждому проекту, над которым мы работаем. После углубленного исследования требований заявителя мы предоставляем решения, отвечающие его потребностям.</p><p>Поддерживать высокий уровень сотрудничества и коммуникации между нашей командой и соискателем на любом этапе нашей деятельности.</p>	MİSSİYAMIZ	OUR MISSION	НАША КОМПАНИЯ	ŞİRKƏTİMİZ	OUR COMPANY	НАША КОМПАНИЯ
\.


--
-- Data for Name: home_ofisunvanlar; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.home_ofisunvanlar (id, link, address, sort, address_az, address_en, address_ru) FROM stdin;
6	https://www.google.com/maps/place/D.+Kldiashvili/@42.2719766,42.0440671,17z/data=!3m1!4b1!4m6!3m5!1s0x405c4c25737d5773:0x9e5682dd50ca6601!8m2!3d42.2719766!4d42.0466474!16s%2Fg%2F11c20ppvc1?entry=ttu&g_ep=EgoyMDI0MDgyOC4wIKXMDSoASAFQAw%3D%3D	Tbilisi, Gürcistan, D.Kldiashvili st., N15, f. No. 65.  |  (+995) 55 549 15 33	0	Tbilisi, Gürcistan, D.Kldiashvili st., N15, f. No. 65.  |  (+995) 55 549 15 33	Tbilisi, Georgia, D.Kldiashvili st., N15, f. No. 65.  |  (+995) 55 549 15 33	Тбилиси, Георгиа, Д.Клдиашвили ст., Н15, ф. Но. 65.  |  (+995) 55 549 15 33
5	https://www.google.com/maps/search/Warsaw,+Poland,+Bukowinska+str,+22.+lok.+53+02-73+/@52.1847115,21.0224898,17z/data=!3m1!4b1?entry=ttu	Warsaw, Poland, Bukowinska str, 22. lok. 53 02-73	0	Varşava, Polşa, Bukovinska küçəsi 22. lok. 53 02-73	Warsaw, Poland, Bukowinska str, 22. lok. 53 02-73	Варшава, Польша, ул. Буковинская, 22. лок. 53 02-73
3	https://facebook.com	Tajikistan, Dushanbe, JV group Regus, N.Muhammad 5/5 +992 90 02 00 333	0	Tacikistan, Düşənbə,JV group Regus, N.Muhammad 5/5 +992 90 02 00 333	Tajikistan, Dushanbe, JV group Regus, N.Muhammad 5/5 +992 90 02 00 333	Таджикистан, Душанбе, СП группа Регус, Н.Мухаммад 5/5 +992 90 02 00 333
4	https://facebook.com	Baku, Azerbaijan, H. Aliyev avenue, 187 B, Sport Plaza, Block B, 404 A-C, AZ 1029	0	Bakı, Azərbaycan, H. Əliyev prospekti, 187 B, Sport Plaza, Blok B, 404 A-C, AZ 1029	Baku, Azerbaijan, H. Aliyev avenue, 187 B, Sport Plaza, Block B, 404 A-C, AZ 1029	Баку, Азербайджан, проспект Г.Алиева, 187 Б, Sport Plaza, Блок Б, 404 А-С, AZ 1029
2	https://facebook.com	Tashkent, Uzbekistan, 46 A. Kokhkhar st. Yakkasaray dist,	0	Daşkənd, Özbəkistan, 46 A. Kokhkhar küç. Yakkasaray qəs.,	Tashkent, Uzbekistan, 46 A. Kokhkhar st. Yakkasaray dist,	Ташкент, Узбекистан, ул. А. Коххара, 46. Яккасарайский р-н,
\.


--
-- Data for Name: home_partner; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.home_partner (id, name, image) FROM stdin;
7	vulcan industries	vulcan.png
8	metallschnieder	metallschnieder.png
10	kohler	kohler.png
9	LEHNER	d.png
6	BLT	2a6638ea-0449-4d4f-814a-af50c517.jpg
\.


--
-- Data for Name: home_project; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.home_project (id, title, image, subtitle, description, veziyyeti, tip, sahe, muddet, yer, musteri, product_category_id, description_az, description_en, description_ru, muddet_az, muddet_en, muddet_ru, musteri_az, musteri_en, musteri_ru, sahe_az, sahe_en, sahe_ru, subtitle_az, subtitle_en, subtitle_ru, tip_az, tip_en, tip_ru, title_az, title_en, title_ru, veziyyeti_az, veziyyeti_en, veziyyeti_ru, yer_az, yer_en, yer_ru) FROM stdin;
4	H. Əliyev adina Neft Emali Zavodu Ofisi	2391cb83-0a67-4656-ace4-c2293f03.jpg	Ofis binası üçün liftlər xidmət razlışması	Ofis binası üçün liftlər xidmət razlışması	Bitmiş	Xidmət	8	Dekabr 20 - Davam edir	Oqtay Vəliyev, Bakı, Nizami, AZ1060	Heydar Aliyev adina Neft Emali Zavodu	1	Ofis binası üçün liftlər xidmət razlışması	Service arrangement of elevators for office building	Сервисное обслуживание лифтов офисного здания	Dekabr 20 - Davam edir	December 20 - Present	Все еще в процессе	Heydar Aliyev adina Neft Emali Zavodu	Heydar Aliyev adina Neft Emali Zavodu	Управление нефтеперерабатывающего завода имени Г.Алиева	8	8	Нет информации	Ofis binası üçün liftlər xidmət razlışması	Service arrangement of elevators for office building	Сервисное обслуживание лифтов офисного здания	Xidmət	Service	Услуга	H. Əliyev adina Neft Emali Zavodu Ofisi	H. Aliyev Oil Refinery Office	Управление нефтеперерабатывающего завода имени Г.Алиева	Bitmiş	Completed	\N	Oqtay Vəliyev, Bakı, Nizami, AZ1060	Oqtay Valiyev, Baku, Nizami, AZ1060	Oqtay Valiyev, Baku, Nizami, AZ1060
6	SOCAR HAOR	26abd87d-829f-40eb-b590-36304aa0.jpg	Partlayışa və yanğına davamlı qapıların quraşdırılması	H. Aliyev adına Neft Emal Zavoduna 100-ün üzərində partlayışa və yanğına davamlı qapı quraşdırıldı.	Bitmiş	Quraşdırma	Məlumat Yoxdur	Məlumat Yoxdur	Oqtay Vəliyev, Bakı, Nizami, AZ1060	Hidro İnşaat Servis MMC	1	H. Aliyev adına Neft Emal Zavoduna 100-ün üzərində partlayışa və yanğına davamlı qapı quraşdırıldı.	Installation of explosion-proof and fire-proof doors	Установка взрывозащищенных и противопожарных дверей	Məlumat Yoxdur	No information	Нет информации	Hidro İnşaat Servis MMC	Hidro İnşaat Servis MMC	OOO Hidro İnşaat Servis	Məlumat Yoxdur	No information	Нет информации	Partlayışa və yanğına davamlı qapıların quraşdırılması	Installation of explosion-proof and fire-proof doors	Установка взрывозащищенных и противопожарных дверей	Quraşdırma	Construction	Строительство	SOCAR HAOR	SOCAR HAOR	SOCAR HAOR	Bitmiş	Completed	Завершенный	Oqtay Vəliyev, Bakı, Nizami, AZ1060	Oqtay Valiyev, Baku, Nizami, AZ1060	Oqtay Vəliyev, Bakı, Nizami, AZ1060
9	KINDERLAND	ace91e2e-87e2-44cc-8c86-75ed32fd.png	Yük platforması	Kinderland daxilində yük platforması quraşdırıldı	Bitmiş	Quraşdırma	Məlumat Yoxdur	3 həftə	Dəniz Mall	PASHA İNŞAAT	\N	Kinderland daxilində yük platforması quraşdırıldı	New Payload platform have been installed	\N	3 həftə	3 weeks	\N	PASHA İNŞAAT	PASHA İNŞAAT	\N	Məlumat Yoxdur	No information	\N	Yük platforması	Payload Platform	\N	Quraşdırma	Construction	\N	KINDERLAND	KINDERLAND	\N	Bitmiş	Completed	\N	Dəniz Mall	Dəniz Mall	\N
15	SHINKAR Central Office	Freight-elevator-vs-passenger-el.jpg	New elevators have been installed	New elevators have been installed	Still under process	Construction	No information	Still under process	No information	"Şinkar Holding" MMC	1	Ofis binası üçün yeni liftlərin quraşdırılması	New elevators have been installed	Установлен новый лифт	Davam edir	Still under process	Все еще в процессе	"Şinkar Holding" MMC	"Şinkar Holding" MMC	OOO "Şinkar Holding"	Məlumat Yoxdur	No information	Нет информации	Ofis binası üçün yeni liftlərin quraşdırılması	New elevators have been installed	Установлен новый лифт	Quraşdırma	Construction	Строительство	SHINKAR HOLDING, Mərkəzi ofis	SHINKAR Central Office	Центральный офис SHINKAR	Davam edir	Still under process	Все еще в процессе	Məlumat Yoxdur	No information	Нет информации
17	Grand-Agro MMC	grand-agro-invitro-copy_1_1JWp6F6.png	Elektrikli və konsullu kran təmini	Elektrikli və konsullu kran təmini	Davam edir	Quraşdırma	Məlumat Yoxdur	Davam edir	Məlumat Yoxdur	"Grand-Agro" MMC	\N	Elektrikli və konsullu kran təmini	Electric and consular crane provision	Предоставление электрических и консульских кранов	Davam edir	The process is still ongoing	Процесс все еще продолжается	"Grand-Agro" MMC	"Grand-Agro" MMC	OOO "Grand-Agro"	Məlumat Yoxdur	No information	Нет информации	Elektrikli və konsullu kran təmini	Electric and consular crane provision	Предоставление электрических и консульских кранов	Quraşdırma	Construction	Услуга	Grand-Agro MMC	Grand-Agro LLC	OOO Grand-Agro	Davam edir	The process is still ongoing	Процесс все еще продолжается	Məlumat Yoxdur	No information	Нет информации
19	ATS Food/Delta	kjblh.jpg	Liftlərin quraşdırılması	Yeni liftlər quraşdırıldı	Bitmiş	Quraşdırma	Məlumat Yoxdur	2 ay	Məlumat Yoxdur	"ATS Food" MMC	1	Yeni liftlər quraşdırıldı	New elevators have been installed	Установлен новый лифт	2 ay	2 month	2 месяца	"ATS Food" MMC	"ATS Food" MMC	OOO "ATS Food"	Məlumat Yoxdur	No information	Нет информации	Liftlərin quraşdırılması	New elevator has been installed	Установлен новый лифт	Quraşdırma	Construction	Строительство	ATS Food/Delta	ATS Food/Delta	ATS Food/Delta	Bitmiş	Completed	Завершенный	Məlumat Yoxdur	No information	Нет информации
10	Bravo Supermarket Chain	7c900e79-4ba5-4ca1-9e94-131566ea.jpg	General Service	In Bravo supermarkets, turnstiles, barriers were served in detail.	Still under process	Service	No information	Still under process	No information	Azərbaycan Supermarketlər MMC	\N	Bravo Supermarketlərində, turniketlərə, şlaqbamlara ətraflı servis edildi	In Bravo supermarkets, turnstiles, barriers were served in detail.	В супермаркетах Bravo турникеты, шлагбаумы обслуживались в деталях.	Davam edir	Still under process	Все еще в процессе	Azərbaycan Supermarketlər MMC	Azərbaycan Supermarketlər MMC	Azərbaycan Supermarketlər MMC	Məlumat Yoxdur	No information	Никакой информации	Ümumi Xidmət	General Service	Категория общего обслуживания	Xidmət	Service	Услуга	Bravo Supermarketlər Şəbəkəsi	Bravo Supermarket Chain	Сеть Супермаркетов Bravo	Davam edir	Still under process	Все еще в процессе	Məlumat Yoxdur	No information	Никакой информации
16	Sport Plaza Hotel & Apartments	480408323_1.jpg	Ofis binası üçün liftlər üçün xidməti razlışma	Ofis binası üçün liftlər üçün xidməti razlışma	Davam edir	Xidmət	Məlumat Yoxdur	Davam edir	Heydər Əliyev pr115	Azəridmanservis MMC	1	Ofis binası üçün liftlər üçün xidməti razlışma	Service contract	Контракт на обслуживание	Davam edir	Still under process	Все еще в процессе	Azəridmanservis MMC	Azəridmanservis MMC	OOO Azəridmanservis	Məlumat Yoxdur	No information	Нет информации	Ofis binası üçün liftlər üçün xidməti razlışma	Service contract	Контракт на обслуживание	Xidmət	Service	Услуга	Sport Plaza Hotel & Apartments	Sport Plaza Hotel & Apartments	Sport Плаза Отель & Апартаменты	Davam edir	Still under process	Все еще в процессе	Heydər Əliyev pr115	Heydər Aliyev hw115	Гейдар Алиев пр115
14	East Residence	c5a55a6b-1b3c-4cdb-8bb0-0255dcf0.jpg	Yeni liftlər quraşdırıldı	Yeni liftlər quraşdırıldı	Bitmiş	Quraşdırma	Məlumat Yoxdur	2 ay	Məlumat Yoxdur	"East Residence" MTK	1	Yeni liftlər quraşdırıldı	New elevators have been installed	Установлен новый лифт	2 ay	2 months	2 месяца	"East Residence" MTK	"East Residence" MTK	"East Residence" MTK	Məlumat Yoxdur	No information	Нет информации	Yeni liftlər quraşdırıldı	New elevators have been installed	Установлен новый лифт	Quraşdırma	Construction	Строительство	East Residence	East Residence	East Pезиденция	Bitmiş	Completed	Завершенный	Məlumat Yoxdur	No information	Нет информации
12	Coca-Cola Azərbaycan	Coca-Cola-facilities__Baton-Roug_ezWNK8A.jpg	Əlil liftinin təmini və montajı	Əlil liftinin təmini və montajı	Bitmiş	Quraşdırma	Məlumat Yoxdur	2 həftə	Məlumat Yoxdur	"Azerbaijan Coca-Cola Bottlers" MMC	\N	Əlil liftinin təmini və montajı	Provision and installation of disabled lift	\N	2 həftə	2 weeks	\N	"Azerbaijan Coca-Cola Bottlers" MMC	"Azerbaijan Coca-Cola Bottlers" MMC	\N	Məlumat Yoxdur	No information	\N	Əlil liftinin təmini və montajı	Provision and installation of disabled lift	\N	Quraşdırma	Construction	\N	Coca-Cola Azərbaycan	Coca-Cola Azerbaijan	\N	Bitmiş	Completed	\N	Məlumat Yoxdur	No information	\N
22	Zümrüd Residence	3723_1.jpg	Liftlərin quraşdırılması	Yeni liftlər quraşdırıldı	Davam edir	Quraşdırma	Məlumat Yoxdur	Davam edir	Məlumat Yoxdur	"Minera" MMC	1	Yeni liftlər quraşdırıldı	New elevators have been installed	Установлены новые лифты	Davam edir	Still under process	Все еще в процессе	"Minera" MMC	"Minera" LLC	OOO "Minera"	Məlumat Yoxdur	No information	Нет информации	Liftlərin quraşdırılması	Elevator construction	Строительство лифта	Quraşdırma	Construction	Строительство	Zümrüd Residence	Zümrüd Residence	Zümrüd Residence	Davam edir	Still under process	Все еще в процессе	Məlumat Yoxdur	No information	Нет информации
20	Dəniz Mall	deniz-mall_j9g9opQ.jpg	Mall daxili liftlər üçün xidmət razlışması	Mall daxili liftlər üçün xidmət razlışması	Bitmiş	Xidmət	Məlumat Yoxdur	Davam edir	26A Neftçilər Prospekti, Bakı 1000	"Paşa Malls" MMC	1	Mall daxili liftlər üçün xidmət razlışması	Service contract	Контракт на обслуживание	Davam edir	Still under process	Все еще в процессе	"Paşa Malls" MMC	"Paşa Malls" MMC	OOO "Paşa Malls"	Məlumat Yoxdur	No information	Нет информации	Mall daxili liftlər üçün xidmət razlışması	Service contract	Контракт на обслуживание	Xidmət	Service	Услуга	Dəniz Mall	Dəniz Mall	Dəniz Mall	Bitmiş	Completed	Завершенный	26A Neftçilər Prospekti, Bakı 1000	26A Neftchilar Prospekti, Baku 1000	Проспект Нефтяников, 26А, Баку 1000
18	Vəfa Estetik Klinikası	bu_Jc9LYoX.jpg	Liftlərin quraşdırılması	Vefa Estetik Center MMC üçün Yeni liftlər quraşdırıldı	Bitmiş	Quraşdırma	Məlumat Yoxdur	3 həftə	Məlumat Yoxdur	"Vefa Esthetic Center" MMC	1	Vefa Estetik Center MMC üçün Yeni liftlər quraşdırıldı	New elevators have been installed for Vefa Estetik Center MMC	Установлен новый лифт	3 həftə	3 weeks	3 недели	"Vefa Esthetic Center" MMC	"Vefa Esthetic Center" MMC	OOO "Vefa Esthetic Center"	Məlumat Yoxdur	No information	Нет информации	Liftlərin quraşdırılması	New elevators have been installed	Установлен новый лифт	Quraşdırma	Construction	Строительство	Vəfa Estetik Klinikası	Vefa Esthetic Clinic	Эстетическая клиника Vefa	Bitmiş	Completed	Завершенный	Məlumat Yoxdur	No information	Нет информации
21	Azərbaycan Respublikasının Mərkəzi Bankı	WhatsApp_Image_2024-01-27_at_12..jpg	Liftlərin təmiri razılaşması	Liftlərin təmiri razılaşması	Bitmiş	Xidmət	Məlumat Yoxdur	2 gün	Bakı şəh., Bülbül prospekti 27	Azərbaycan Respublikasının Mərkəzi Bankı	1	Liftlərin təmiri razılaşması	Agreement of repairing of elevators	Договор ремонта лифтов	2 gün	2 days	2 дня	Azərbaycan Respublikasının Mərkəzi Bankı	Central Bank of Republic of Azerbaijan	Центральный Банк Азербайджанской Республики	Məlumat Yoxdur	No information	Нет информации	Liftlərin təmiri razılaşması	Agreement of repairing of elevators	Договор ремонта лифтов	Xidmət	Service	Услуга	Azərbaycan Respublikasının Mərkəzi Bankı	Central Bank of Republic of Azerbaijan	Центральный Банк Азербайджанской Республики	Bitmiş	Completed	Завершенный	Bakı şəh., Bülbül prospekti 27	Bakı city., Bülbül prospekti 27	г. Баку, проспект Бюльбюль 27
13	North West Company	WhatsApp_Image_2024-01-27_at_11._0ap6v1l.jpg	Paslanmaz qapı çərçivələrinin bağlanması	Paslanmaz qapı çərçivələrinin bağlanması	Bitmiş	Quraşdırma	Məlumat Yoxdur	1 həftə	Avenue Neftchilar 153, Port Baku South Tower 7th floor, Baku AZ1010, Azerbaijan	"North West Construction" MMC	1	Paslanmaz qapı çərçivələrinin bağlanması	Construction of stainless steel door frameworks	Изготовление дверных коробок из нержавеющей стали.	1 həftə	1 week	1 недели	"North West Construction" MMC	"North West Construction" MMC	OOO "North West Construction"	Məlumat Yoxdur	No information	Нет информации	Paslanmaz qapı çərçivələrinin bağlanması	Construction of stainless steel door frameworks	Изготовление дверных коробок из нержавеющей стали.	Quraşdırma	Construction	Строительство	North West Company	North West Company	North West Company	Bitmiş	Completed	Завершенный	Avenue Neftchilar 153, Port Baku South Tower 7th floor, Baku AZ1010, Azerbaijan	Avenue Neftchilar 153, Port Baku South Tower 7th floor, Baku AZ1010, Azerbaijan	Проспект Нефтяников 153, Порт Баку Южная Башня 7 этаж, Баку AZ1010, Азербайджан
11	Buta Construction	asansor-nedir_1.jpg	Liftlərin quraşdırılması	Yeni marka liftlər quraşdırıldı	Davam edir	Quraşdırma	Məlumat Yoxdur	Davam edir	Məlumat Yoxdur	Buta Construction	1	Yeni marka liftlər quraşdırıldı	New elevators have been installed	Установлен новый лифт	Davam edir	Still under process	Все еще в процессе	Buta Construction	Buta Construction	OOO Buta Строительство	Məlumat Yoxdur	No information	Нет информации	Liftlərin quraşdırılması	New elevators have been installed	Установлен новый лифт	Quraşdırma	Construction	Строительство	Buta Construction	Buta Construction	Buta Строительство	Davam edir	Still under process	Все еще в процессе	Məlumat Yoxdur	No information	Нет информации
23	Tajikistan, Guliston Shakhroz LLC	d2c94cd7-0386-4521-a750-986414fb_TPUdQvK.jpg	Elevator installation	New elevators have been installed	Still under process	Construction	16 elevators	Still under process	Tajikistan, Dushanbe	Guliston Shakhroz LLC	1	Yeni liftlər quraşdırıldı	New elevators have been installed	Установлен новый лифт	Davam edir	Still under process	Все еще в процессе	Guliston Shakhroz LLC	Guliston Shakhroz LLC	Guliston Shakhroz LLC	16 lift	16 elevators	16 лифтов	Liftlərin quraşdırılması	Elevator installation	Строительство лифта	Quraşdırma	Construction	Строительство	Tacikistan layihəsi, Guliston Shakhroz LLC	Tajikistan, Guliston Shakhroz LLC	Таджикистан, Guliston Shakhroz LLC	Davam edir	Still under process	Все еще в процессе	Tacikistan, Düşənbə	Tajikistan, Dushanbe	Таджикистан, Душанбе
\.


--
-- Data for Name: home_service; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.home_service (id, title, image, description, description_az, description_en, description_ru, title_az, title_en, title_ru) FROM stdin;
1	fgf	WhatsApp_Image_2024-01-23_at_09.01.23_3_fybsXaP.jpeg	gfgf	gfgf	gf	gf	fgf	gfg	fgfg
\.


--
-- Data for Name: home_social; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.home_social (id, icon, url, name, icon_font_tag) FROM stdin;
1	Group_39_1.svg	https://www.facebook.com/torchmmc/	Facebook	facebook
2	Group_43_1.svg	https://www.instagram.com/torch.az/	Instagram	Instagram
\.


--
-- Data for Name: home_team; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.home_team (id, full_name, image, "position", category_id, position_az, position_en, position_ru) FROM stdin;
41	Araz Bəkirov		Montaj və xidmət departamentinin rəisi	3	Montaj və xidmət departamentinin rəisi	Head of Assembly and service department	Начальник отдела сборки и сервисного обслуживания
40	Abdul Kazımov		İcraçı Direktor	3	İcraçı Direktor	Executive Director	Исполнительный Директор
39	Anar Nəsibov		Direktor	3	Direktor	Director	Директор
42	Gülnarə Qarayeva		Marketing Manager	3	Marketinq Menecer	Marketing Manager	Менеджер по маркетингу
44	Həcərxanım Əhmədova		Ofis Menecer	3	Ofis Menecer	Office Manager	Oфисный Менеджер
43	Nərminə Dadaşova		HR (IR)	3	HR (IR)	HR	Отдел кадров
\.


--
-- Data for Name: home_teamcategory; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.home_teamcategory (id, name, tag, name_az, name_en, name_ru) FROM stdin;
2	Технический персонал	technical-staff	Texniki heyət	Technical staff	Технический персонал
3	Управляющий персонал	Main-staff	İdarə heyəti	Managing Staff	Управляющий персонал
\.


--
-- Data for Name: offer_offer; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.offer_offer (id, name, excerpt, main_image, description, description_az, description_en, description_ru, excerpt_az, excerpt_en, excerpt_ru, name_az, name_en, name_ru) FROM stdin;
3	Ремонт и обновление	Лифты, находящиеся в эксплуатации много лет, требуют модернизации для обеспечения безопасности, надежности и минимального энергопотребления на протяжении всего срока службы. Наши услуги по модернизации лифтов повышают безопасность, комфорт и эстетику.	dfdf.jpg	Лифты, находящиеся в эксплуатации много лет, требуют модернизации для обеспечения безопасности, надежности и минимального энергопотребления на протяжении всего срока службы. Наши услуги по модернизации лифтов повышают безопасность, комфорт и эстетику.	Uzun illər istismarda olan liftlərin xidmət müddəti ərzində təhlükəsiz, etibarlı və minimum enerji sərfiyyatı ilə işləyə bilməsi üçün modernləşdirilməyə ehtiyacı var. Şirkətimizin liftlərin modernləşdirmə xidməti vasitəsilə onların təhlükəsizliyi və rahatlığı təmin edilir, eləcə də liftlərin estetik görünüşü yaxşılaşdırılır.	Elevators that have been in operation for many years require modernization to ensure safety, reliability, and minimal energy consumption throughout their service life. Our elevator modernization service enhances safety, comfort, and aesthetics.	Лифты, находящиеся в эксплуатации много лет, требуют модернизации для обеспечения безопасности, надежности и минимального энергопотребления на протяжении всего срока службы. Наши услуги по модернизации лифтов повышают безопасность, комфорт и эстетику.	Uzun illər istismarda olan liftlərin xidmət müddəti ərzində təhlükəsiz, etibarlı və minimum enerji sərfiyyatı ilə işləyə bilməsi üçün modernləşdirilməyə ehtiyacı var. Şirkətimizin liftlərin modernləşdirmə xidməti vasitəsilə onların təhlükəsizliyi və rahatlığı təmin edilir, eləcə də liftlərin estetik görünüşü yaxşılaşdırılır.	Elevators that have been in operation for many years require modernization to ensure safety, reliability, and minimal energy consumption throughout their service life. Our elevator modernization service enhances safety, comfort, and aesthetics.	Лифты, находящиеся в эксплуатации много лет, требуют модернизации для обеспечения безопасности, надежности и минимального энергопотребления на протяжении всего срока службы. Наши услуги по модернизации лифтов повышают безопасность, комфорт и эстетику.	Təmir və Yeniləmə	Repair and Update	Ремонт и обновление
4	Монтаж и строительство	Использование каждого устройства начинается с его установки. Наши профессиональные и опытные команды справятся с этой задачей. Эта работа является воплощением нашего опыта и профессионализма: скорость, безопасность и эстетика объединяются.	fdf_e9qCv2c.jpg	Использование каждого устройства начинается с его установки. Наши профессиональные и опытные команды справятся с этой задачей. Эта работа является воплощением нашего опыта и профессионализма: скорость, безопасность и эстетика объединяются.	Hər bir cihazın istifadəsi quraşdırılmasından başlayır. Peşəkar və təcrübəli komandalarımız bu vəzifənin öhdəsindən layiqincə gələcəkdir. Bu iş, təcrübəmizin və peşəkarlığımızın təcəssümüdür – sürət, təhlükəsizlik və estetikada birləşir.	The use of each device begins with its installation. Our professional and experienced teams will cope with this task. This work is the epitome of our experience and professionalism – speed, safety and aesthetics come together.	Использование каждого устройства начинается с его установки. Наши профессиональные и опытные команды справятся с этой задачей. Эта работа является воплощением нашего опыта и профессионализма: скорость, безопасность и эстетика объединяются.	Hər bir cihazın istifadəsi quraşdırılmasından başlayır. Peşəkar və təcrübəli komandalarımız bu vəzifənin öhdəsindən layiqincə gələcəkdir. Bu iş, təcrübəmizin və peşəkarlığımızın təcəssümüdür – sürət, təhlükəsizlik və estetikada birləşir.	The use of each device begins with its installation. Our professional and experienced teams will cope with this task. This work is the epitome of our experience and professionalism – speed, safety and aesthetics come together.	Использование каждого устройства начинается с его установки. Наши профессиональные и опытные команды справятся с этой задачей. Эта работа является воплощением нашего опыта и профессионализма: скорость, безопасность и эстетика объединяются.	Quraşdırma & Tikinti	Installation & Construction	Монтаж и строительство
2	Запчасти	Запасные части для лифтов играют решающую роль в устранении неисправностей. Когда лифт, который часто называют «сердцем здания», останавливается, эти запасные части необходимы для разрешения чрезвычайных ситуаций. Наша профессиональная команда будет рядом с вами на протяжении всего процесса ремонта, усердно работая над устранением любых трудностей, которые могут возникнуть.	WhatsApp_Image_2024-01-24_at_14..jpg	Запасные части для лифтов играют решающую роль в устранении неисправностей. Когда лифт, который часто называют «сердцем здания», останавливается, эти запасные части необходимы для разрешения чрезвычайных ситуаций. Наша профессиональная команда будет рядом с вами на протяжении всего процесса ремонта, усердно работая над устранением любых трудностей, которые могут возникнуть.	Liftlərin ehtiyat hissələri nasazlıq zamanı ən önəmli sırada dayanan məsələdir. Belə ki, liftlərin ehtiyat hissələri “binanın ürəyi” sayılan liftin dayanması zamanı yaranan fövqəladə vəziyyəti həll etmək üçün gərəklidir. Peşəkar komandamız təmir zamanı istənilən situasiyada sizin yanınızda olur və yaran çətinliklərin aradan qaldırılması üçün səylə çalışır.	Spare parts for elevators play a crucial role in addressing malfunctions. When the elevator, often considered the "heart of the building," comes to a halt, these spare parts are essential to resolving emergency situations. Our professional team stands by your side throughout the repair process, working diligently to eliminate any difficulties that may arise.	Запасные части для лифтов играют решающую роль в устранении неисправностей. Когда лифт, который часто называют «сердцем здания», останавливается, эти запасные части необходимы для разрешения чрезвычайных ситуаций. Наша профессиональная команда будет рядом с вами на протяжении всего процесса ремонта, усердно работая над устранением любых трудностей, которые могут возникнуть.	Liftlərin ehtiyat hissələri nasazlıq zamanı ən önəmli sırada dayanan məsələdir. Belə ki, liftlərin ehtiyat hissələri “binanın ürəyi” sayılan liftin dayanması zamanı yaranan fövqəladə vəziyyəti həll etmək üçün gərəklidir. Peşəkar komandamız təmir zamanı istənilən situasiyada sizin yanınızda olur və yaran çətinliklərin aradan qaldırılması üçün səylə çalışır.	Spare parts for elevators play a crucial role in addressing malfunctions. When the elevator, often considered the "heart of the building," comes to a halt, these spare parts are essential to resolving emergency situations. Our professional team stands by your side throughout the repair process, working diligently to eliminate any difficulties that may arise.	Запасные части для лифтов играют решающую роль в устранении неисправностей. Когда лифт, который часто называют «сердцем здания», останавливается, эти запасные части необходимы для разрешения чрезвычайных ситуаций. Наша профессиональная команда будет рядом с вами на протяжении всего процесса ремонта, усердно работая над устранением любых трудностей, которые могут возникнуть.	Ehtiyat Hissələri	Spare Parts	Запчасти
1	Техническое обслуживание	Регулярное техническое обслуживание наших лифтов необходимо для обеспечения их немедленного и надлежащего ремонта в случае любой неисправности. Своевременное техническое обслуживание не только предотвращает непредвиденные затраты на ремонт в процессе эксплуатации, но и продлевает срок службы оборудования.	WhatsApp_Image_2024-01-24_at_14._wUosNhd.jpg	Регулярное техническое обслуживание наших лифтов необходимо для обеспечения их немедленного и надлежащего ремонта в случае любой неисправности. Своевременное техническое обслуживание не только предотвращает непредвиденные затраты на ремонт в процессе эксплуатации, но и продлевает срок службы оборудования.	Avadanlıqlarımız gündəlik istifadə vasitələri olduğundan liftlərin texniki xidməti baş verən hər hansı bir nasazlıq zamanı onların təcili və düzgün təmiri üçün çox vacibdir. Liftlərə texniki xidmət vaxtında göstərildikdə avadanlığı fəaliyyət dövründə artıq xərclərdən azad edir və fəaliyyət müddətinin uzanmasına imkan yaradır.	Regular maintenance of our elevators is essential to ensure their immediate and proper repair in case of any malfunction. Timely maintenance not only prevents unexpected repair costs during operation but also extends the lifespan of the equipment.	Регулярное техническое обслуживание наших лифтов необходимо для обеспечения их немедленного и надлежащего ремонта в случае любой неисправности. Своевременное техническое обслуживание не только предотвращает непредвиденные затраты на ремонт в процессе эксплуатации, но и продлевает срок службы оборудования.	Avadanlıqlarımız gündəlik istifadə vasitələri olduğundan liftlərin texniki xidməti baş verən hər hansı bir nasazlıq zamanı onların təcili və düzgün təmiri üçün çox vacibdir. Liftlərə texniki xidmət vaxtında göstərildikdə avadanlığı fəaliyyət dövründə artıq xərclərdən azad edir və fəaliyyət müddətinin uzanmasına imkan yaradır.	Regular maintenance of our elevators is essential to ensure their immediate and proper repair in case of any malfunction. Timely maintenance not only prevents unexpected repair costs during operation but also extends the lifespan of the equipment.	Регулярное техническое обслуживание наших лифтов необходимо для обеспечения их немедленного и надлежащего ремонта в случае любой неисправности. Своевременное техническое обслуживание не только предотвращает непредвиденные затраты на ремонт в процессе эксплуатации, но и продлевает срок службы оборудования.	Texniki Xidmət	Technical service	Техническое обслуживание
\.


--
-- Data for Name: offer_offerimage; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.offer_offerimage (id, image, offer_id) FROM stdin;
1	Mask_Group_10.png	1
2	Mask_Group_10_X7ik9cb.png	1
3	Mask_Group_10_oxq8JZW.png	1
4	Mask_Group_10_sCWZh8Y.png	1
5	Mask_Group_10_W20HDM9.png	2
6	Mask_Group_10_DhWInWX.png	2
7	Mask_Group_10_ZxBJWSA.png	2
8	Mask_Group_10_SLhgEJX.png	2
9	Mask_Group_10_JXOeJqy.png	3
10	Mask_Group_10_kG1ruqk.png	3
11	Mask_Group_10_ZN09PqO.png	3
12	Mask_Group_10_YkhKuE1.png	3
\.


--
-- Data for Name: offer_offerspage; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.offer_offerspage (id, page_header, page_header_text, page_header_az, page_header_en, page_header_ru, page_header_text_az, page_header_text_en, page_header_text_ru) FROM stdin;
1	Наши предложения	Наш главный принцип – стабильно поставлять качественную и надежную продукцию нашим клиентам. Благодаря всесторонней поддержке мы гарантируем высокую удовлетворенность клиентов и повышаем их приверженность, адаптируя решения для удовлетворения потребностей наших деловых партнеров.	Təkliflərimiz	Our offers	Наши предложения	Müştərilərimizi hər zaman keyfiyyətli və etibarlı məhsul ilə təmin etmək əsas prinsipimizdir. Geniş dəstəyimiz sayəsində biznes tərəfdaşlarımızın ehtiyaclarına cavab verən həllər təşkil edərək, yüksək müştəri məmnuniyyəti və öhdəliyi təmin edirik	Our main principle is to consistently deliver quality and reliable products to our customers. Through comprehensive support, we guarantee high customer satisfaction and foster commitment by tailoring solutions to meet the needs of our business partners.	Наш главный принцип – стабильно поставлять качественную и надежную продукцию нашим клиентам. Благодаря всесторонней поддержке мы гарантируем высокую удовлетворенность клиентов и повышаем их приверженность, адаптируя решения для удовлетворения потребностей наших деловых партнеров.
\.


--
-- Data for Name: product_attribute; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.product_attribute (id, name, name_az, name_en, name_ru) FROM stdin;
3	Max speed	Maksimal sürət	Max speed	\N
2	Max load capasity	Maksimal yük	Max load capasity	\N
1	The number of maximal people	Maksimal insan sayı	The number of maximal people	\N
4	Area	Sahə	Area	\N
5	Width	En	Width	\N
6	Length	Uzun	Length	\N
7	Height	Yüksəklik	Height	\N
12	Kabin Tavanı	Kabin Tavanı	Car ceiling	\N
13	Kabin ön divarı	Kabin ön divarı	Car front wall	\N
14	Kabin kapısı	Kabin kapısı	Car door	\N
15	Kabin üç tərəf divarı	Kabin üç tərəf divarı	Car three-side wall	\N
16	Döşəmə	Döşəmə	Floor	\N
17	Başqa	Başqa	Other	\N
18	Model	Model	Model	\N
19	Marka	Marka	Brand	\N
\.


--
-- Data for Name: product_attributevalue; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.product_attributevalue (id, value, attribute_id, model_id, product_id, value_az, value_en, value_ru) FROM stdin;
2	400 kg	2	4	1	400 kg	400 kg	400 kg
3	1.3 m/s	3	4	1	1.3 m/s	1.3 m/s	1.3 m/c
4	5	1	4	1	5	5	5
\.


--
-- Data for Name: product_categoriespage; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.product_categoriespage (id, page_header, page_header_text, page_header_az, page_header_en, page_header_ru, page_header_text_az, page_header_text_en, page_header_text_ru) FROM stdin;
2	Продукты	Мы предлагаем инновационный дизайн с самыми высокими стандартами безопасности.	Məhsullar	Products	Продукты	Bizlər innovativ dizaynı təhlükəsizliyin ən yüksək standartları ilə birgə təklif edirik	We offer Innovative design with the highest standards of safety	Мы предлагаем инновационный дизайн с самыми высокими стандартами безопасности.
\.


--
-- Data for Name: product_category; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.product_category (id, name, excerpt, main_image, excerpt_az, excerpt_en, excerpt_ru, name_az, name_en, name_ru) FROM stdin;
2	Эскалатор	Являясь ведущим производителем в отрасли, мы гордимся тем, что предлагаем эскалаторы, сочетающие в себе безопасность, надежность и эффективность.	Mask_Group_1_HHE8fnI.png	Sənayenin aparıcı adı olaraq biz təhlükəsizlik, etibarlılıq və səmərəliliyi özündə cəmləşdirən eskalatorlar təqdim etməkdən böyük qürur duyuruq.	As a leading name in the industry, we take great pride in providing escalators that combine safety, reliability and efficiency.	Являясь ведущим производителем в отрасли, мы гордимся тем, что предлагаем эскалаторы, сочетающие в себе безопасность, надежность и эффективность.	Eskalator	Escalator	Эскалатор
4	Автоматические двери	Наши автоматические дверные системы сочетают в себе удобство, безопасность и эстетику. Будь то улучшение доступа к коммерческим помещениям или улучшение доступности в общественных местах, мы предлагаем сложные и эффективные решения для всех ваших потребностей.	Mask_Group_12.png	Avtomatlaşdırılmış qapı sistemlərimiz rahatlığı, təhlükəsizliyi və estetikanı özündə birləşdirir. İstər ticarət məkanının girişini yaxşılaşdırmaq, istərsə də ictimai yerlərdə əlçatanlığı yaxşılaşdırmaq olsun, bütün ehtiyaclarınız üçün mükəmməl və səmərəli həllər təklif edirik.	Our automated door systems combine convenience, security and aesthetics. Whether it's improving access to a commercial space or improving accessibility in public spaces, we offer sophisticated and efficient solutions for all your needs.	Наши автоматические дверные системы сочетают в себе удобство, безопасность и эстетику. Будь то улучшение доступа к коммерческим помещениям или улучшение доступности в общественных местах, мы предлагаем сложные и эффективные решения для всех ваших потребностей.	Avtomatlaşdırılmış Qapılar	Automated Doors	Автоматические двери
1	Лифт	Мы предлагаем превосходный сервис вертикальной транспортировки, сочетающий в себе инновации, надежность и новый стиль. Благодаря нашему богатому опыту мы с гордостью предлагаем ряд передовых лифтовых решений, подходящих для различных помещений.	Mask_Group_a6aOLiN.png	Biz yenilik, etibarlılıq və yeni stilin qarışığı ilə şaquli nəqliyyatı üstün xidmət təklif edirik. Yüksək təcrübəmizlə müxtəlif məkanlara cavab verən bir sıra qabaqcıl lift həlləri təklif etməkdən qürur duyuruq.	We offer vertical transport superior service with a blend of innovation, reliability and new style. With our high experience, we are proud to offer a range of advanced elevator solutions that cater to different spaces.	Мы предлагаем превосходный сервис вертикальной транспортировки, сочетающий в себе инновации, надежность и новый стиль. Благодаря нашему богатому опыту мы с гордостью предлагаем ряд передовых лифтовых решений, подходящих для различных помещений.	Lift	Elevator	Лифт
8	Paking və Turniket sistemləri	Ən müasir Parkinq və Turniket Sistemlərimizlə biz sizin parkinq və girişə nəzarət üsulunuzu yenidən müəyyənləşdiririk. İstər parkinq əməliyyatlarının sadələşdirilməsi, istərsə də təhlükəsizliyin gücləndirilməsi, ehtiyaclarınıza cavab verən etibarlı və innovativ həllər təmin etmək üçün Torch-a etibar edin.	Mask_Group_13_euV1Aid.png	Ən müasir Parkinq və Turniket Sistemlərimizlə biz sizin parkinq və girişə nəzarət üsulunuzu yenidən müəyyənləşdiririk. İstər parkinq əməliyyatlarının sadələşdirilməsi, istərsə də təhlükəsizliyin gücləndirilməsi, ehtiyaclarınıza cavab verən etibarlı və innovativ həllər təmin etmək üçün Torch-a etibar edin.	We redefine the way you park and access control with our state-of-the-art Parking and Turnstile Systems. Whether it's simplifying parking operations or enhancing security, trust Torch to provide reliable and innovative solutions that meet your needs.	Мы переосмысливаем способы парковки и контроля доступа с помощью наших современных систем парковки и турникетов. Будь то упрощение операций по парковке или повышение безопасности, доверьте Torch предоставление надежных и инновационных решений, отвечающих вашим потребностям.	Paking və Turniket sistemləri	Paking and Tourniquet systems	Системы укладки и жгута
9	Alova və Partlamaya qarşı qapılar	Bu qapılar yüksək ani partlayışlara və partlayış nəticəsində yaranan fraqmentlər kimi digər qüvvələrə tab gətirə bilir və hadisədən sonra işlək vəziyyətdə qalır. Bu qapılar yanğın və partlayışın zərərindən insanın təhlükəsizliyini qorumaq məqsədilə istifadə olunur. Yangın zamanı yayılan yüksək istiliyi dayandırmaq və yanğının yayılmasını əngəlləmək üçün nəzərdə tutulur. Yangın təhlükəsizlik standartlarına cavab verən bu qapılar, yangın halında qapanır və insanların can təhlükəsini azaltmaq üçün önəmli bir rol oynayır.	cq5dam.web.1280.12804_pBK5jdX.jpg	Bu qapılar yüksək ani partlayışlara və partlayış nəticəsində yaranan fraqmentlər kimi digər qüvvələrə tab gətirə bilir və hadisədən sonra işlək vəziyyətdə qalır. Bu qapılar yanğın və partlayışın zərərindən insanın təhlükəsizliyini qorumaq məqsədilə istifadə olunur. Yangın zamanı yayılan yüksək istiliyi dayandırmaq və yanğının yayılmasını əngəlləmək üçün nəzərdə tutulur. Yangın təhlükəsizlik standartlarına cavab verən bu qapılar, yangın halında qapanır və insanların can təhlükəsini azaltmaq üçün önəmli bir rol oynayır.	These doors are capable of withstanding high momentary explosions and other forces such as explosion-generated fragments and remain operable after an incident. These doors are used to protect people from fire and explosion damage. It is intended to stop the high heat generated during a fire and prevent the spread of fire. These doors, which meet fire safety standards, close in case of fire and play an important role in reducing the risk to people's lives.	Эти двери способны выдерживать сильные мгновенные взрывы и другие силы, такие как осколки, образовавшиеся в результате взрыва, и остаются работоспособными после происшествия. Эти двери используются для защиты людей от пожара и взрыва. Он предназначен для остановки высокого тепла, образующегося во время пожара, и предотвращения распространения огня. Эти двери, соответствующие нормам пожарной безопасности, закрываются в случае пожара и играют важную роль в снижении риска для жизни людей.	Alova və Partlamaya qarşı qapılar	Flame and Explosion proof doors	ВЗРЫВО- и ПОЖАРОСТОЙКИЕ ДВЕРИ
\.


--
-- Data for Name: product_model; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.product_model (id, name, file, product_id, name_az, name_en, name_ru) FROM stdin;
4	Brilliant K272	blt_k272.pdf	1	Brilliant K272	Brilliant K272	Brilliant K272
5	Brilliant K276	blt_k276.pdf	1	Brilliant K276	Brilliant K276	Brilliant K276
6	Brilliant K282	blt_k282.pdf	1	Brilliant K282	Brilliant K282	Brilliant K282
\.


--
-- Data for Name: product_product; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.product_product (id, name, excerpt, main_image, description, category_id, dark_section_text, dark_section_title, sub_models_text, sub_models_title, dark_section_text_az, dark_section_text_en, dark_section_text_ru, dark_section_title_az, dark_section_title_en, dark_section_title_ru, description_az, description_en, description_ru, excerpt_az, excerpt_en, excerpt_ru, name_az, name_en, name_ru, sub_models_text_az, sub_models_text_en, sub_models_text_ru, sub_models_title_az, sub_models_title_en, sub_models_title_ru) FROM stdin;
7	Public Transport Escalators	Reliable solutions for train stations and airports that ensure efficient passenger flow at transit hubs.	publicesc.png	Reliable solutions for train stations and airports that ensure efficient passenger flow at transit hubs.	2	As a leader in the industry, we take great pride in offering escalators that prioritize safety, reliability, and efficiency. Experience seamless journeys and enhanced traffic flow at your venues with our exceptional escalator services.	Effortless movement	Introducing our IoT-connected, durable, and energy-efficient elevators, designed to enhance material handling.	Which escalator do you need?	Sənayenin aparıcı adı olaraq biz təhlükəsizlik, etibarlılıq və səmərəliliyi özündə cəmləşdirən eskalatorlar təqdim etməkdən böyük qürur duyuruq. Qeyri-adi eskalator xidmətlərimizlə fasiləsiz səyahətlər yaşayın və məkanlarınızda trafik axınını artırın.	As a leader in the industry, we take great pride in offering escalators that prioritize safety, reliability, and efficiency. Experience seamless journeys and enhanced traffic flow at your venues with our exceptional escalator services.		Zəhmətsiz hərəkət	Effortless movement	\N	Tranzit qovşaqlarında səmərəli sərnişin axınını təmin edən qatar stansiyaları və hava limanları üçün etibarlı həllər.	Reliable solutions for train stations and airports that ensure efficient passenger flow at transit hubs.		Tranzit qovşaqlarında səmərəli sərnişin axınını təmin edən qatar stansiyaları və hava limanları üçün etibarlı həllər.	Reliable solutions for train stations and airports that ensure efficient passenger flow at transit hubs.		İctimai Nəqliyyat Eskalatorları	Public Transport Escalators	\N	Daha yaxşı material daşınması üçün dizayn edilmiş, IoT bağlantısına sahib, dözümlü və enerjiyə qənaət edən liftlərimizi təqdim edirik.	Introducing our IoT-connected, durable, and energy-efficient elevators, designed to enhance material handling.		Sizə hansı eskalator lazımdır?	Which escalator do you need?	\N
4	Daxili məkan eskalatorlar	Müasir mühitləri tamamlamaq üçün zərif estetika ilə hazırlanmış qapalı məkanlar üçün rahat şaquli hərəkət.	commercialesc.png	Sənayenin aparıcı adı olaraq biz təhlükəsizlik, etibarlılıq və səmərəliliyi özündə cəmləşdirən eskalatorlar təqdim etməkdən böyük qürur duyuruq. Qeyri-adi eskalator xidmətlərimizlə fasiləsiz səyahətlər yaşayın və məkanlarınızda trafik axınını artırın.	2	Sənayenin aparıcı adı olaraq biz təhlükəsizlik, etibarlılıq və səmərəliliyi özündə cəmləşdirən eskalatorlar təqdim etməkdən böyük qürur duyuruq. Qeyri-adi eskalator xidmətlərimizlə fasiləsiz səyahətlər yaşayın və məkanlarınızda trafik axınını artırın.	Zəhmətsiz hərəkət	Daha yaxşı material daşınması üçün dizayn edilmiş, IoT bağlantısına sahib, dözümlü və enerjiyə qənaət edən liftlərimizi təqdim edirik.	Sizə hansı eskalator lazımdır?	Sənayenin aparıcı adı olaraq biz təhlükəsizlik, etibarlılıq və səmərəliliyi özündə cəmləşdirən eskalatorlar təqdim etməkdən böyük qürur duyuruq. Qeyri-adi eskalator xidmətlərimizlə fasiləsiz səyahətlər yaşayın və məkanlarınızda trafik axınını artırın.	Sənayenin aparıcı adı olaraq biz təhlükəsizlik, etibarlılıq və səmərəliliyi özündə cəmləşdirən eskalatorlar təqdim etməkdən böyük qürur duyuruq. Qeyri-adi eskalator xidmətlərimizlə fasiləsiz səyahətlər yaşayın və məkanlarınızda trafik axınını artırın.		Zəhmətsiz hərəkət	Zəhmətsiz hərəkət	\N	Sənayenin aparıcı adı olaraq biz təhlükəsizlik, etibarlılıq və səmərəliliyi özündə cəmləşdirən eskalatorlar təqdim etməkdən böyük qürur duyuruq. Qeyri-adi eskalator xidmətlərimizlə fasiləsiz səyahətlər yaşayın və məkanlarınızda trafik axınını artırın.	Sənayenin aparıcı adı olaraq biz təhlükəsizlik, etibarlılıq və səmərəliliyi özündə cəmləşdirən eskalatorlar təqdim etməkdən böyük qürur duyuruq. Qeyri-adi eskalator xidmətlərimizlə fasiləsiz səyahətlər yaşayın və məkanlarınızda trafik axınını artırın.		Müasir mühitləri tamamlamaq üçün zərif estetika ilə hazırlanmış qapalı məkanlar üçün rahat şaquli hərəkət.	Müasir mühitləri tamamlamaq üçün zərif estetika ilə hazırlanmış qapalı məkanlar üçün rahat şaquli hərəkət.		Daxili məkan eskalatorlar	Daxili məkan eskalatorlar	\N	Daha yaxşı material daşınması üçün dizayn edilmiş, IoT bağlantısına sahib, dözümlü və enerjiyə qənaət edən liftlərimizi təqdim edirik.	Daha yaxşı material daşınması üçün dizayn edilmiş, IoT bağlantısına sahib, dözümlü və enerjiyə qənaət edən liftlərimizi təqdim edirik.		Sizə hansı eskalator lazımdır?	Sizə hansı eskalator lazımdır?	\N
5	Açıq hava eskalatorlar	Açıq məkanlar üçün hava şəraitinə davamlı eskalatorlar, istənilən şəraitdə hamar gəzintini təmin edirik.	outdooresc.png	Açıq məkanlar üçün hava şəraitinə davamlı eskalatorlar, istənilən şəraitdə hamar gəzintini təmin edirik.	2	Sənayenin aparıcı adı olaraq biz təhlükəsizlik, etibarlılıq və səmərəliliyi özündə cəmləşdirən eskalatorlar təqdim etməkdən böyük qürur duyuruq. Qeyri-adi eskalator xidmətlərimizlə fasiləsiz səyahətlər yaşayın və məkanlarınızda trafik axınını artırın.	Zəhmətsiz hərəkət	Daha yaxşı material daşınması üçün dizayn edilmiş, IoT bağlantısına sahib, dözümlü və enerjiyə qənaət edən liftlərimizi təqdim edirik.	Sizə hansı eskalator lazımdır?	Sənayenin aparıcı adı olaraq biz təhlükəsizlik, etibarlılıq və səmərəliliyi özündə cəmləşdirən eskalatorlar təqdim etməkdən böyük qürur duyuruq. Qeyri-adi eskalator xidmətlərimizlə fasiləsiz səyahətlər yaşayın və məkanlarınızda trafik axınını artırın.	Sənayenin aparıcı adı olaraq biz təhlükəsizlik, etibarlılıq və səmərəliliyi özündə cəmləşdirən eskalatorlar təqdim etməkdən böyük qürur duyuruq. Qeyri-adi eskalator xidmətlərimizlə fasiləsiz səyahətlər yaşayın və məkanlarınızda trafik axınını artırın.		Zəhmətsiz hərəkət	Zəhmətsiz hərəkət	\N	Açıq məkanlar üçün hava şəraitinə davamlı eskalatorlar, istənilən şəraitdə hamar gəzintini təmin edirik.	Açıq məkanlar üçün hava şəraitinə davamlı eskalatorlar, istənilən şəraitdə hamar gəzintini təmin edirik.		Açıq məkanlar üçün hava şəraitinə davamlı eskalatorlar, istənilən şəraitdə hamar gəzintini təmin edirik.	Açıq məkanlar üçün hava şəraitinə davamlı eskalatorlar, istənilən şəraitdə hamar gəzintini təmin edirik.		Açıq hava eskalatorlar	Açıq hava eskalatorlar	\N	Daha yaxşı material daşınması üçün dizayn edilmiş, IoT bağlantısına sahib, dözümlü və enerjiyə qənaət edən liftlərimizi təqdim edirik.	Daha yaxşı material daşınması üçün dizayn edilmiş, IoT bağlantısına sahib, dözümlü və enerjiyə qənaət edən liftlərimizi təqdim edirik.		Sizə hansı eskalator lazımdır?	Sizə hansı eskalator lazımdır?	\N
3	Panoramik Lifti	Biz Sizə dünyanın aparıcı istehsalçılarının panoramik liftlərini təklif edirik.	Mask_Group_16_ugsyEJu.png	Ticarət və ofis mərkəzlərinin, mehmanxana və digər böyük ictimai binaların inşası artdıqca, panoramik liftlərdən istifadə sayı da artır. Adi liftlərdən fərqli olaraq panoramik liftlər sərnişinlərə liftin çölündə mövcud olanları görmək imkanı yaradır və bu da öz növbəsində bu növ liftlərə maraq hissi oyadır. Liftdə hərəkətetmə həm uşaqlar həm də böyüklər üçün çox maraqlı və əyləncəli bir səyahətə çevrilir.	1	Ticarət və ofis mərkəzlərinin, mehmanxana və digər böyük ictimai binaların inşası artdıqca, panoramik liftlərdən istifadə sayı da artır. Adi liftlərdən fərqli olaraq panoramik liftlər sərnişinlərə liftin çölündə mövcud olanları görmək imkanı yaradır və bu da öz növbəsində bu növ liftlərə maraq hissi oyadır. Liftdə hərəkətetmə həm uşaqlar həm də böyüklər üçün çox maraqlı və əyləncəli bir səyahətə çevrilir.	1	Daha yaxşı material daşınması üçün dizayn edilmiş, IoT bağlantısına sahib, dözümlü və enerjiyə qənaət edən liftlərimizi təqdim edirik.	Sizə hansı lift lazımdır?	Ticarət və ofis mərkəzlərinin, mehmanxana və digər böyük ictimai binaların inşası artdıqca, panoramik liftlərdən istifadə sayı da artır. Adi liftlərdən fərqli olaraq panoramik liftlər sərnişinlərə liftin çölündə mövcud olanları görmək imkanı yaradır və bu da öz növbəsində bu növ liftlərə maraq hissi oyadır. Liftdə hərəkətetmə həm uşaqlar həm də böyüklər üçün çox maraqlı və əyləncəli bir səyahətə çevrilir.	Ticarət və ofis mərkəzlərinin, mehmanxana və digər böyük ictimai binaların inşası artdıqca, panoramik liftlərdən istifadə sayı da artır. Adi liftlərdən fərqli olaraq panoramik liftlər sərnişinlərə liftin çölündə mövcud olanları görmək imkanı yaradır və bu da öz növbəsində bu növ liftlərə maraq hissi oyadır. Liftdə hərəkətetmə həm uşaqlar həm də böyüklər üçün çox maraqlı və əyləncəli bir səyahətə çevrilir.		1	1	\N	Ticarət və ofis mərkəzlərinin, mehmanxana və digər böyük ictimai binaların inşası artdıqca, panoramik liftlərdən istifadə sayı da artır. Adi liftlərdən fərqli olaraq panoramik liftlər sərnişinlərə liftin çölündə mövcud olanları görmək imkanı yaradır və bu da öz növbəsində bu növ liftlərə maraq hissi oyadır. Liftdə hərəkətetmə həm uşaqlar həm də böyüklər üçün çox maraqlı və əyləncəli bir səyahətə çevrilir.	Ticarət və ofis mərkəzlərinin, mehmanxana və digər böyük ictimai binaların inşası artdıqca, panoramik liftlərdən istifadə sayı da artır. Adi liftlərdən fərqli olaraq panoramik liftlər sərnişinlərə liftin çölündə mövcud olanları görmək imkanı yaradır və bu da öz növbəsində bu növ liftlərə maraq hissi oyadır. Liftdə hərəkətetmə həm uşaqlar həm də böyüklər üçün çox maraqlı və əyləncəli bir səyahətə çevrilir.		Biz Sizə dünyanın aparıcı istehsalçılarının panoramik liftlərini təklif edirik.	Biz Sizə dünyanın aparıcı istehsalçılarının panoramik liftlərini təklif edirik.		Panoramik Lifti	Panoramik Lifti	\N	Daha yaxşı material daşınması üçün dizayn edilmiş, IoT bağlantısına sahib, dözümlü və enerjiyə qənaət edən liftlərimizi təqdim edirik.	Daha yaxşı material daşınması üçün dizayn edilmiş, IoT bağlantısına sahib, dözümlü və enerjiyə qənaət edən liftlərimizi təqdim edirik.		Sizə hansı lift lazımdır?	Sizə hansı lift lazımdır?	\N
12	Revolving Doors	Combine elegance and efficiency to optimize input while minimizing energy loss.	revolving_Bd7sNKE.png	Combine elegance and efficiency to optimize input while minimizing energy loss.	4	An essential product for upscale hotels, restaurants, prestigious entertainment and wellness centers, as well as the offices of large corporations, to accentuate a high-level corporate culture, success, and corporate style.	Your space is protected from dust and dirt	We ensure guaranteed comfort and safety in your space with our products.	Get to know our products	Yüksək səviyyəli korporativ mədəniyyətini, uğurluluğunu və firma üslubunu vurğulamaq üçün bahalı mehmanxanalar və restoranlar, nüfuzlu əyləncə və sağlamlıq mərkəzləri, iri korporasiyaların ofisləri üçün əvəzsiz məhsul	An essential product for upscale hotels, restaurants, prestigious entertainment and wellness centers, as well as the offices of large corporations, to accentuate a high-level corporate culture, success, and corporate style.		Məkanınız tozdan və çirkdən qorunur	Your space is protected from dust and dirt	\N	Zərifliyi səmərəliliklə birləşdirin, enerji itkisini minimuma endirərkən möhtəşəm bir giriş təmin edin.	Combine elegance and efficiency to optimize input while minimizing energy loss.		Zərifliyi səmərəliliklə birləşdirin, enerji itkisini minimuma endirərkən möhtəşəm bir giriş təmin edin.	Combine elegance and efficiency to optimize input while minimizing energy loss.		Fırlanan Qapılar	Revolving Doors	\N	Məhsullarımızla məkanın zəmanətli rahatlığı və təhlükəsizliyini təmin edirik	We ensure guaranteed comfort and safety in your space with our products.		Məhsullarımızla yaxından tanış olun	Get to know our products	\N
10	Automatic Sliding Doors	Smooth and space-saving, these doors are ideal for high-traffic entrances.	asd.png	Smooth and space-saving, these doors are ideal for high-traffic entrances.	4	Effective utilization of available space is crucial for creating a comfortable entrance area. Automatic sliding doors, which have gained popularity in recent times, provide an ideal solution. Photocell doors offer enhanced convenience and reliability, allowing easy entry and exit in confined spaces without the need for physical contact with the door.	Comfort, aesthetics and efficiency	We guarantee the comfort and safety of your space with our products.	Get to know our products	Giriş məkanında rahatlıq əldə etmək üçün boş yerin düzgün planlaşdırılması çox vacibdir. Son vaxtlarda böyük populyarlığa malik olan avtomatik sürüşmə qapıları bunun həllidir. Kiçik bir sahədə qapı ilə təmasda olmadan fotoselli qapılar asan giriş-çıxış üçün yüksək rahatlıq və etibarlılıq təmin edir.	Effective utilization of available space is crucial for creating a comfortable entrance area. Automatic sliding doors, which have gained popularity in recent times, provide an ideal solution. Photocell doors offer enhanced convenience and reliability, allowing easy entry and exit in confined spaces without the need for physical contact with the door.		Rahatlıq, estetika və səmərəlilik	Comfort, aesthetics and efficiency	\N	Hamar və yerdən qənaətcil olan bu qapılar piyadaların çox olduğu girişlər üçün idealdır.	Smooth and space-saving, these doors are ideal for high-traffic entrances.		Hamar və yerdən qənaətcil olan bu qapılar piyadaların çox olduğu girişlər üçün idealdır.	Smooth and space-saving, these doors are ideal for high-traffic entrances.		Avtomatik Sürüşən Qapılar	Automatic Sliding Doors	\N	Məhsullarımızla məkanın zəmanətli rahatlığı və təhlükəsizliyini təmin edirik	We guarantee the comfort and safety of your space with our products.		Məhsullarımızla yaxından tanış olun	Get to know our products	\N
6	Shopping mall escalators	We offer high passenger capacities and space-saving products.	indooresc_SUaV5eJ.png	We offer high passenger capacities and space-saving products.	2	As a leading name in the industry, we take great pride in providing escalators that offer a unique combination of safety, reliability, and efficiency. Experience seamless journeys and improved traffic flow at your venues with our extraordinary escalator services.	Effortless movement	Introducing our IoT-connected, durable, and energy-efficient elevators, designed to enhance material handling.	Which escalator do you need?	Sənayenin aparıcı adı olaraq biz təhlükəsizlik, etibarlılıq və səmərəliliyi özündə cəmləşdirən eskalatorlar təqdim etməkdən böyük qürur duyuruq. Qeyri-adi eskalator xidmətlərimizlə fasiləsiz səyahətlər yaşayın və məkanlarınızda trafik axınını artırın.	As a leading name in the industry, we take great pride in providing escalators that offer a unique combination of safety, reliability, and efficiency. Experience seamless journeys and improved traffic flow at your venues with our extraordinary escalator services.		Zəhmətsiz hərəkət	Effortless movement	\N	Yüksək sərnişin tutumları və məkana qənaət edən məhsullar təklif edirik	We offer high passenger capacities and space-saving products.		Yüksək sərnişin tutumları və məkana qənaət edən məhsullar təklif edirik	We offer high passenger capacities and space-saving products.		Ticarət mərkəzləri eskalatorları	Shopping mall escalators	\N	Daha yaxşı material daşınması üçün dizayn edilmiş, IoT bağlantısına sahib, dözümlü və enerjiyə qənaət edən liftlərimizi təqdim edirik.	Introducing our IoT-connected, durable, and energy-efficient elevators, designed to enhance material handling.		Sizə hansı eskalator lazımdır?	Which escalator do you need?	\N
2	Yük Lifti	Liftlərin köməyi ilə yüklərin daşınması problemi həll olunur.	Mask_Group_15_xT6PtcL.png	Yük liftləri müxtəlif sahələrdə geniş tətbiq olunur: istehsalat, mehmanxana və restoran biznesində, ambar təsərrüfatı, ticarət, eləcə də, ağır və böyük həcmli yüklərin yuxarı mərtəbələrə qaldırılması lazım olduğu hər bir məkanda. Liftlərin köməyi ilə yüklərin daşınması problemi həll olunur.	1	1	1	What kind of elevator do you need?	See our future-proof, energy efficient elevators with enabled IoT connectivity designed for improved people and material flow.	1	1		1	1	\N	Yük liftləri müxtəlif sahələrdə geniş tətbiq olunur: istehsalat, mehmanxana və restoran biznesində, ambar təsərrüfatı, ticarət, eləcə də, ağır və böyük həcmli yüklərin yuxarı mərtəbələrə qaldırılması lazım olduğu hər bir məkanda. Liftlərin köməyi ilə yüklərin daşınması problemi həll olunur.	Yük liftləri müxtəlif sahələrdə geniş tətbiq olunur: istehsalat, mehmanxana və restoran biznesində, ambar təsərrüfatı, ticarət, eləcə də, ağır və böyük həcmli yüklərin yuxarı mərtəbələrə qaldırılması lazım olduğu hər bir məkanda. Liftlərin köməyi ilə yüklərin daşınması problemi həll olunur.		Liftlərin köməyi ilə yüklərin daşınması problemi həll olunur.	Liftlərin köməyi ilə yüklərin daşınması problemi həll olunur.		Yük Lifti	Yük Lifti	\N	What kind of elevator do you need?	What kind of elevator do you need?		See our future-proof, energy efficient elevators with enabled IoT connectivity designed for improved people and material flow.	See our future-proof, energy efficient elevators with enabled IoT connectivity designed for improved people and material flow.	\N
1	Sərnişin Lifti	Bizim şirkətimiz Sizə dünyanın qabaqcıl istehsalçılarının liftlərini təqdim etməyə hazırdır.	Mask_Group_14_Nn9n82O.png	Müasir həyatda çoxmərtəbəli binaları sərnişin lifti olmadan təsəvvür etmək çətindir. Məhz sərnişin liftləri üçün ən ciddi təhlükəsizlik, etibarlılıq və rahatlıq tələbləri irəli sürülür. Bizim şirkətimiz Sizə dünyanın qabaqcıl istehsalçılarının liftlərini təqdim etməyə hazırdır.	1	Müasir həyatda çoxmərtəbəli binaları sərnişin lifti olmadan təsəvvür etmək çətindir. Məhz sərnişin liftləri üçün ən ciddi təhlükəsizlik, etibarlılıq və rahatlıq tələbləri irəli sürülür. Bizim şirkətimiz Sizə dünyanın qabaqcıl istehsalçılarının liftlərini təqdim etməyə hazırdır.	Etibarlı yüksəliş	Daha yaxşı sərnişin və material daşınması üçün dizayn edilmiş, təsirli IoT bağlantısına sahib, dözümlü və enerjiyə qənaət edən liftlərimizi təqdim edirik.	Sizə hansı lift lazımdır?	Müasir həyatda çoxmərtəbəli binaları sərnişin lifti olmadan təsəvvür etmək çətindir. Məhz sərnişin liftləri üçün ən ciddi təhlükəsizlik, etibarlılıq və rahatlıq tələbləri irəli sürülür. Bizim şirkətimiz Sizə dünyanın qabaqcıl istehsalçılarının liftlərini təqdim etməyə hazırdır.	Müasir həyatda çoxmərtəbəli binaları sərnişin lifti olmadan təsəvvür etmək çətindir. Məhz sərnişin liftləri üçün ən ciddi təhlükəsizlik, etibarlılıq və rahatlıq tələbləri irəli sürülür. Bizim şirkətimiz Sizə dünyanın qabaqcıl istehsalçılarının liftlərini təqdim etməyə hazırdır.		Etibarlı yüksəliş	Etibarlı yüksəliş	\N	Müasir həyatda çoxmərtəbəli binaları sərnişin lifti olmadan təsəvvür etmək çətindir. Məhz sərnişin liftləri üçün ən ciddi təhlükəsizlik, etibarlılıq və rahatlıq tələbləri irəli sürülür. Bizim şirkətimiz Sizə dünyanın qabaqcıl istehsalçılarının liftlərini təqdim etməyə hazırdır.	Müasir həyatda çoxmərtəbəli binaları sərnişin lifti olmadan təsəvvür etmək çətindir. Məhz sərnişin liftləri üçün ən ciddi təhlükəsizlik, etibarlılıq və rahatlıq tələbləri irəli sürülür. Bizim şirkətimiz Sizə dünyanın qabaqcıl istehsalçılarının liftlərini təqdim etməyə hazırdır.		Bizim şirkətimiz Sizə dünyanın qabaqcıl istehsalçılarının liftlərini təqdim etməyə hazırdır.	Bizim şirkətimiz Sizə dünyanın qabaqcıl istehsalçılarının liftlərini təqdim etməyə hazırdır.		Sərnişin Lifti	Sərnişin Lifti	\N	Daha yaxşı sərnişin və material daşınması üçün dizayn edilmiş, təsirli IoT bağlantısına sahib, dözümlü və enerjiyə qənaət edən liftlərimizi təqdim edirik.	Daha yaxşı sərnişin və material daşınması üçün dizayn edilmiş, təsirli IoT bağlantısına sahib, dözümlü və enerjiyə qənaət edən liftlərimizi təqdim edirik.		Sizə hansı lift lazımdır?	Sizə hansı lift lazımdır?	\N
\.


--
-- Data for Name: product_productsimage; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.product_productsimage (id, image, product_id) FROM stdin;
1	Buildmax-Interior-Design_1_DHs1S8I.png	1
2	Rectangle_22_4oJDcKW.png	1
3	Rectangle_21_8ZBDIv7.png	1
4	Rectangle_20_JV0whMo.png	1
5	Rectangle_19_KmuKPFG.png	1
6	yuk-1.png	2
7	yuk-2.png	2
8	yuk-3.png	2
9	panoramik-4.png	3
10	panoramik-3.png	3
11	panoramik-2.png	3
12	panoramik-1.png	3
21	indooresc-1.png	4
22	indooresc-2.png	4
23	indooresc-3.png	4
24	outdooresc-1.png	5
25	outdooresc-2.png	5
26	outdooresc-3.png	5
27	indooresc-5.png	4
28	commercialesc-1.png	6
29	commercialesc-2.png	6
30	commercialesc-3.png	6
31	indooresc-4_YYkX5dj.png	6
32	publicesc-1.png	7
33	publicesc-2.png	7
34	publicesc-3.png	7
35	publicesc-4.png	7
49	asd-1.png	10
50	ads-3.png	10
51	asd-2.png	10
52	asd-4.png	10
57	revolving-1_oKCGZcA.png	12
58	revolving-2_I0Y00fs.png	12
59	revolving-3_w41cUDe.png	12
60	revolving-4_0jDkAu6.png	12
\.


--
-- Data for Name: statik_about; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.statik_about (id, main_title, main_description, main_image, missiya_image, korporativ_medeniyyet_image, main_description_az, main_description_en, main_description_ru, main_title_az, main_title_en, main_title_ru) FROM stdin;
1	НАШЕ ИМЯ — НАША ГАРАНТИЯ	Являясь ведущим производителем лифтов, мы гордимся тем, что предоставляем инновационные решения, которые позволяют людям передвигаться плавно, безопасно и стильно.	Mask_Group_4_qcsSGSm.png	Mask_Group_5.png	Mask_Group_6.png	Lift sənayesində aparıcı ad olaraq, insanların problemsiz, təhlükəsiz və qəşəng şəkildə hərəkətini təmin edən innovativ həllər təqdim etməkdən böyük qürur duyuruq.	As a leading name in the elevator industry, we take great pride in providing innovative solutions that keep people moving smoothly, safely and stylishly.	Являясь ведущим производителем лифтов, мы гордимся тем, что предоставляем инновационные решения, которые позволяют людям передвигаться плавно, безопасно и стильно.	ADIMIZ ZƏMANƏTİMİZDİR	OUR NAME IS OUR GUARANTEE	НАШЕ ИМЯ — НАША ГАРАНТИЯ
\.


--
-- Data for Name: statik_contact; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.statik_contact (id, main_title, map_button_text, success_text, main_title_az, main_title_en, main_title_ru, map_button_text_az, map_button_text_en, map_button_text_ru, success_text_az, success_text_en, success_text_ru) FROM stdin;
1	СВЯЗАТЬСЯ С НАМИ	Направление	Ваше сообщение получено и с вами свяжутся как можно скорее.	BİZİMLƏ ƏLAQƏ	CONTACT US	СВЯЗАТЬСЯ С НАМИ	İstiqamət	Direction	Направление	Mesajınız qəbul olundu, sizinlə əlaqə saxlanılacaqdır.	Your message has been received and you will be contacted as soon as possible.	Ваше сообщение получено и с вами свяжутся как можно скорее.
\.


--
-- Data for Name: statik_home; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.statik_home (id, cover_title, cover_description, cover_image, niye_biz_title, niye_biz_description, mehsullar_title, mehsullar_description, mehsullar_image, layiheler_title, layiheler_description, layiheler_image, musteriler_title, musteriler_description, musteriler_image, main_video_back, cover_description_az, cover_description_en, cover_description_ru, cover_title_az, cover_title_en, cover_title_ru, layiheler_description_az, layiheler_description_en, layiheler_description_ru, layiheler_title_az, layiheler_title_en, layiheler_title_ru, mehsullar_description_az, mehsullar_description_en, mehsullar_description_ru, mehsullar_title_az, mehsullar_title_en, mehsullar_title_ru, musteriler_description_az, musteriler_description_en, musteriler_description_ru, musteriler_title_az, musteriler_title_en, musteriler_title_ru, niye_biz_description_az, niye_biz_description_en, niye_biz_description_ru, niye_biz_title_az, niye_biz_title_en, niye_biz_title_ru) FROM stdin;
1	Базируется в Европе, охватывая континенты	Откройте для себя передовые решения в области вертикальной транспортировки вместе с Torch в Польше. В качестве краеугольного камня нашей деятельности мы предлагаем новейшие лифты, эскалаторы, автоматические двери и системы контроля доступа для повышения м	Transnational-Bank-Plaza-Paint-work-Buildmax-2_1.png	ПОЧЕМУ МЫ?	Поддерживая преобразующие идеи, которые могут улучшить жизнь не только отдельных людей, но и всей нации, Torch стремится успешно завершить все проекты, независимо от обстоятельств. Эта непоколебимая приверженность к совершенству привела	Продукты	Знакомство с предлагаемой нами продукцией	bu.jpeg	ПРОЕКТЫ	Все реализованные и текущие проекты	Buildmax-Interior-Design_1_2.png	КЛИЕНТЫ И ПАРТНЕРЫ	Познакомьтесь с брендами, которые выбирают нас	clients-img_CrSXSle.png	video_bFxfAH2_KeQdJLQ.mp4	Avropadan bütün dünyaya satış edən Torch mükəmməlliyin təcəssümüdür. Hər yerdə həyatı və məkanları yaxşılaşdırmaq üçün qabaqcıl innovativ həllər təklif edirik.	Discover excellence in vertical transportation solutions with Torch in Poland. As a cornerstone of our operations, we bring cutting-edge elevators, escalators, automated doors, and access control systems to enhance mobility, security, and convenience acro	Откройте для себя передовые решения в области вертикальной транспортировки вместе с Torch в Польше. В качестве краеугольного камня нашей деятельности мы предлагаем новейшие лифты, эскалаторы, автоматические двери и системы контроля доступа для повышения м	Avropadan Bütün Qitələrə	Based in Europe, Reaching Across Continents	Базируется в Европе, охватывая континенты	Bütün yekunlaşan və davam edən layihələr	All completed and ongoing projects	Все реализованные и текущие проекты	LAYİHƏLƏR	PROJECTS	ПРОЕКТЫ	Təklif etdiyimiz məhsullarla tanışlıq	Getting to know the products we offer	Знакомство с предлагаемой нами продукцией	Məhsullar	Products	Продукты	Bizi seçən markaları tanıyın	Get to know the brands that choose us	Познакомьтесь с брендами, которые выбирают нас	MÜŞTƏRİLƏR & TƏRƏFDAŞLAR	CLIENTS & PARTNERS	КЛИЕНТЫ И ПАРТНЕРЫ	Təkcə insanların deyil, bir ölkənin həyatını dəyişə biləcək böyük ideyaların tərəfdarı olan və şəraitdən asılı olmayaraq bütün layihələri başa çatdıran Torch, uğurlu gələcək vəd edir və müştəri məmnuniyyətini yüksək səviyyədə saxlayaraq sektorda etibarlı	Supporting transformative ideas that have the potential to improve not only individuals' lives but also an entire nation, Torch is committed to successfully completing all projects, no matter the circumstances. This unwavering dedication to excellence has	Поддерживая преобразующие идеи, которые могут улучшить жизнь не только отдельных людей, но и всей нации, Torch стремится успешно завершить все проекты, независимо от обстоятельств. Эта непоколебимая приверженность к совершенству привела	NİYƏ BİZ?	WHY US?	ПОЧЕМУ МЫ?
\.


--
-- Data for Name: statik_partners; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.statik_partners (id, main_title, main_description, main_image, main_description_az, main_description_en, main_description_ru, main_title_az, main_title_en, main_title_ru) FROM stdin;
1	КЛИЕНТЫ И ПАРТНЕРЫ	Они выбрали нас!	Types-of-Partnerships_md3pVJ3.png	Onlar bizi seçdilər!	They chose us!	Они выбрали нас!	MÜŞTƏRİLƏR & TƏRƏFDAŞLAR	CLIENTS & PARTNERS	КЛИЕНТЫ И ПАРТНЕРЫ
\.


--
-- Data for Name: statik_projectstatik; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.statik_projectstatik (id, main_title, main_description, main_description_az, main_description_en, main_description_ru, main_title_az, main_title_en, main_title_ru) FROM stdin;
1	ПРОЕКТЫ	Мы с гордостью делимся нашими завершенными и текущими проектами!	Yekunlaşan və davam edən layihələrimizi paylaşmaqdan qürur duyuruq!	We are proud to share our completed and ongoing projects!	Мы с гордостью делимся нашими завершенными и текущими проектами!	LAYİHƏLƏR	PROJECTS	ПРОЕКТЫ
\.


--
-- Data for Name: statik_servicestatik; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.statik_servicestatik (id, main_title, main_description, main_description_az, main_description_en, main_description_ru, main_title_az, main_title_en, main_title_ru) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 152, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 671, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 35, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 64, true);


--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.django_summernote_attachment_id_seq', 1, true);


--
-- Name: home_client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.home_client_id_seq', 23, true);


--
-- Name: home_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.home_contact_id_seq', 381, true);


--
-- Name: home_gallery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.home_gallery_id_seq', 17, true);


--
-- Name: home_general_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.home_general_id_seq', 1, true);


--
-- Name: home_ofisunvanlar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.home_ofisunvanlar_id_seq', 6, true);


--
-- Name: home_partner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.home_partner_id_seq', 10, true);


--
-- Name: home_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.home_project_id_seq', 23, true);


--
-- Name: home_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.home_service_id_seq', 1, true);


--
-- Name: home_social_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.home_social_id_seq', 2, true);


--
-- Name: home_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.home_team_id_seq', 44, true);


--
-- Name: home_teamcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.home_teamcategory_id_seq', 3, true);


--
-- Name: offer_offer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.offer_offer_id_seq', 4, true);


--
-- Name: offer_offerimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.offer_offerimage_id_seq', 12, true);


--
-- Name: offer_offerspage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.offer_offerspage_id_seq', 1, true);


--
-- Name: product_attribute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.product_attribute_id_seq', 19, true);


--
-- Name: product_attributevalue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.product_attributevalue_id_seq', 9, true);


--
-- Name: product_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.product_model_id_seq', 6, true);


--
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.product_product_id_seq', 9, true);


--
-- Name: product_product_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.product_product_id_seq1', 13, true);


--
-- Name: product_productsimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.product_productsimage_id_seq', 64, true);


--
-- Name: product_productspage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.product_productspage_id_seq', 2, true);


--
-- Name: statik_about_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.statik_about_id_seq', 1, true);


--
-- Name: statik_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.statik_contact_id_seq', 1, true);


--
-- Name: statik_home_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.statik_home_id_seq', 1, true);


--
-- Name: statik_partners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.statik_partners_id_seq', 1, true);


--
-- Name: statik_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.statik_project_id_seq', 1, true);


--
-- Name: statik_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: maxcreative
--

SELECT pg_catalog.setval('public.statik_service_id_seq', 1, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_summernote_attachment django_summernote_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.django_summernote_attachment
    ADD CONSTRAINT django_summernote_attachment_pkey PRIMARY KEY (id);


--
-- Name: home_client home_client_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_client
    ADD CONSTRAINT home_client_pkey PRIMARY KEY (id);


--
-- Name: home_contact home_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_contact
    ADD CONSTRAINT home_contact_pkey PRIMARY KEY (id);


--
-- Name: home_gallery home_gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_gallery
    ADD CONSTRAINT home_gallery_pkey PRIMARY KEY (id);


--
-- Name: home_general home_general_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_general
    ADD CONSTRAINT home_general_pkey PRIMARY KEY (id);


--
-- Name: home_ofisunvanlar home_ofisunvanlar_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_ofisunvanlar
    ADD CONSTRAINT home_ofisunvanlar_pkey PRIMARY KEY (id);


--
-- Name: home_partner home_partner_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_partner
    ADD CONSTRAINT home_partner_pkey PRIMARY KEY (id);


--
-- Name: home_project home_project_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_project
    ADD CONSTRAINT home_project_pkey PRIMARY KEY (id);


--
-- Name: home_service home_service_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_service
    ADD CONSTRAINT home_service_pkey PRIMARY KEY (id);


--
-- Name: home_social home_social_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_social
    ADD CONSTRAINT home_social_pkey PRIMARY KEY (id);


--
-- Name: home_team home_team_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_team
    ADD CONSTRAINT home_team_pkey PRIMARY KEY (id);


--
-- Name: home_teamcategory home_teamcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_teamcategory
    ADD CONSTRAINT home_teamcategory_pkey PRIMARY KEY (id);


--
-- Name: offer_offer offer_offer_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.offer_offer
    ADD CONSTRAINT offer_offer_pkey PRIMARY KEY (id);


--
-- Name: offer_offerimage offer_offerimage_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.offer_offerimage
    ADD CONSTRAINT offer_offerimage_pkey PRIMARY KEY (id);


--
-- Name: offer_offerspage offer_offerspage_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.offer_offerspage
    ADD CONSTRAINT offer_offerspage_pkey PRIMARY KEY (id);


--
-- Name: product_attribute product_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_attribute
    ADD CONSTRAINT product_attribute_pkey PRIMARY KEY (id);


--
-- Name: product_attributevalue product_attributevalue_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_attributevalue
    ADD CONSTRAINT product_attributevalue_pkey PRIMARY KEY (id);


--
-- Name: product_model product_model_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_model
    ADD CONSTRAINT product_model_pkey PRIMARY KEY (id);


--
-- Name: product_category product_product_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_product_pkey PRIMARY KEY (id);


--
-- Name: product_product product_product_pkey1; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_pkey1 PRIMARY KEY (id);


--
-- Name: product_productsimage product_productsimage_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_productsimage
    ADD CONSTRAINT product_productsimage_pkey PRIMARY KEY (id);


--
-- Name: product_categoriespage product_productspage_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_categoriespage
    ADD CONSTRAINT product_productspage_pkey PRIMARY KEY (id);


--
-- Name: statik_about statik_about_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.statik_about
    ADD CONSTRAINT statik_about_pkey PRIMARY KEY (id);


--
-- Name: statik_contact statik_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.statik_contact
    ADD CONSTRAINT statik_contact_pkey PRIMARY KEY (id);


--
-- Name: statik_home statik_home_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.statik_home
    ADD CONSTRAINT statik_home_pkey PRIMARY KEY (id);


--
-- Name: statik_partners statik_partners_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.statik_partners
    ADD CONSTRAINT statik_partners_pkey PRIMARY KEY (id);


--
-- Name: statik_projectstatik statik_project_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.statik_projectstatik
    ADD CONSTRAINT statik_project_pkey PRIMARY KEY (id);


--
-- Name: statik_servicestatik statik_service_pkey; Type: CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.statik_servicestatik
    ADD CONSTRAINT statik_service_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: home_gallery_project_id_a8352930; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX home_gallery_project_id_a8352930 ON public.home_gallery USING btree (project_id);


--
-- Name: home_project_product_category_id_48f8c7d6; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX home_project_product_category_id_48f8c7d6 ON public.home_project USING btree (product_category_id);


--
-- Name: home_team_category_id_8099766e; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX home_team_category_id_8099766e ON public.home_team USING btree (category_id);


--
-- Name: offer_offerimage_offer_id_e23fc6b0; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX offer_offerimage_offer_id_e23fc6b0 ON public.offer_offerimage USING btree (offer_id);


--
-- Name: product_attributevalue_attribute_id_d003417a; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX product_attributevalue_attribute_id_d003417a ON public.product_attributevalue USING btree (attribute_id);


--
-- Name: product_attributevalue_model_id_7a78a0c4; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX product_attributevalue_model_id_7a78a0c4 ON public.product_attributevalue USING btree (model_id);


--
-- Name: product_attributevalue_product_id_ae0e6a8e; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX product_attributevalue_product_id_ae0e6a8e ON public.product_attributevalue USING btree (product_id);


--
-- Name: product_model_product_id_655e6003; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX product_model_product_id_655e6003 ON public.product_model USING btree (product_id);


--
-- Name: product_product_category_id_0c725779; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX product_product_category_id_0c725779 ON public.product_product USING btree (category_id);


--
-- Name: product_productsimage_product_id_d7021dd1; Type: INDEX; Schema: public; Owner: maxcreative
--

CREATE INDEX product_productsimage_product_id_d7021dd1 ON public.product_productsimage USING btree (product_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_gallery home_gallery_project_id_a8352930_fk_home_project_id; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_gallery
    ADD CONSTRAINT home_gallery_project_id_a8352930_fk_home_project_id FOREIGN KEY (project_id) REFERENCES public.home_project(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_project home_project_product_category_id_48f8c7d6_fk_product_c; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_project
    ADD CONSTRAINT home_project_product_category_id_48f8c7d6_fk_product_c FOREIGN KEY (product_category_id) REFERENCES public.product_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_team home_team_category_id_8099766e_fk_home_teamcategory_id; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.home_team
    ADD CONSTRAINT home_team_category_id_8099766e_fk_home_teamcategory_id FOREIGN KEY (category_id) REFERENCES public.home_teamcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: offer_offerimage offer_offerimage_offer_id_e23fc6b0_fk_offer_offer_id; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.offer_offerimage
    ADD CONSTRAINT offer_offerimage_offer_id_e23fc6b0_fk_offer_offer_id FOREIGN KEY (offer_id) REFERENCES public.offer_offer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_attributevalue product_attributeval_attribute_id_d003417a_fk_product_a; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_attributevalue
    ADD CONSTRAINT product_attributeval_attribute_id_d003417a_fk_product_a FOREIGN KEY (attribute_id) REFERENCES public.product_attribute(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_attributevalue product_attributeval_product_id_ae0e6a8e_fk_product_p; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_attributevalue
    ADD CONSTRAINT product_attributeval_product_id_ae0e6a8e_fk_product_p FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_attributevalue product_attributevalue_model_id_7a78a0c4_fk_product_model_id; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_attributevalue
    ADD CONSTRAINT product_attributevalue_model_id_7a78a0c4_fk_product_model_id FOREIGN KEY (model_id) REFERENCES public.product_model(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_model product_model_product_id_655e6003_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_model
    ADD CONSTRAINT product_model_product_id_655e6003_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_product product_product_category_id_0c725779_fk_product_category_id; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_category_id_0c725779_fk_product_category_id FOREIGN KEY (category_id) REFERENCES public.product_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_productsimage product_productsimage_product_id_d7021dd1_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: maxcreative
--

ALTER TABLE ONLY public.product_productsimage
    ADD CONSTRAINT product_productsimage_product_id_d7021dd1_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--


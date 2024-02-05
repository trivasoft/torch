--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
2	pbkdf2_sha256$260000$RDPW6webLz5uiDtQ19qAfx$fptcyKUxUr5EDQLZYsaeOg7usdPEsTk/OLBMn/6wnXY=	2024-02-05 14:56:13.872283+00	t	maxcreative				t	t	2023-09-20 19:33:54.496381+00
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
qlwrrrgfkszhhuoci2omfwky0yj5zxh7	eyJfbGFuZ3VhZ2UiOiJydSJ9:1rBCkB:mRsSA4U8v6HZHuFUvp_iBzX99mcpwzVhvg0LCDid7Vw	2023-12-21 11:40:39.916066+00
qv0uetzzorgpynqnl0jcq0af9caduet0	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rULbZ:_VzEfdDtP0-QF74PARf_kDMX4RNVoa07867_WJiI8rE	2024-02-12 06:58:53.210863+00
rhc3r6v3itp9syvlm46wsnyqywnl4lol	eyJfbGFuZ3VhZ2UiOiJydSJ9:1rVsfc:2DxgpKffd5Pj6xuVSctGmo34MoUvl7KRJPooyOJlxN8	2024-02-16 12:29:24.321462+00
cnzp44cuwgtz9o1cto4hyzqgq53rj0wp	.eJxVjjsOwyAQRO9CHSETAwsp0_sMaBfWxollS_40iXL3gOQiaefNPM1bBDz2HI6N1zAmcRNXcfnNCOOT5wrSA-dhkXGZ93UkWSvypJvslsTT_ez-CTJuuayRWFmLDI11YL2JRkMLhpK2bAh7VE0JlWMETF4ldNoBEbWKyfegqnQqBw4cuOpe4vMF0sM9qg:1rGBAG:fXuYrh5MT447SXzg3Mgb8QkKQWmmljRXI2NxiPHHehE	2024-01-04 05:00:08.670837+00
rnc213bb1s2s2omxpy30kzx0kc9obs2c	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1rGdMe:LJza5YWGlnsgJXFK0Rs8ilK4bVcRxnzLu27vT5H1qs4	2024-01-05 11:06:48.53399+00
j2fdhjpt7qx27fjl35l6vbogpeol449q	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rGiO6:jDdcT62a0XvyEF7QTRwNrX2S-om21AQXlJoBX_45YiA	2024-01-05 16:28:38.86638+00
1j1l98zcnkihdcc4xrg1fqlr7cynsp2s	eyJfbGFuZ3VhZ2UiOiJydSJ9:1rVsfW:GZoiMmKEw_9gSXISj28FwNx0FyMhad9UWhxaFjMst5g	2024-02-16 12:29:18.909139+00
esusbrkqw2j4ro3ukj856fd960w50u02	eyJfbGFuZ3VhZ2UiOiJydSJ9:1rVsfh:ZEzTZx02sjrWC3IgSXzDLGr19o6vU3hESXgF1jk9skk	2024-02-16 12:29:29.900222+00
3xcg1esxjqxgit5ax4a19ha1oyo05abh	.eJxVjDsOwyAQBe9CHSFvDCxOmT5nQLtm_UksLBlTRbl7sOTG7cyb91VhoTQWGkU9lCR1U4HKPoWSZQtzrPB-ZUz9R9Ih4ruWq-7XtG8z62OiT5v1a42yPM_t5WCiPNWaWMA5EmycR9fZ3hps0XI0TizTQNBUCF4IKXYQyRuPzNyCcDcgqN8fuJY9og:1rWBJ5:ECQqE985UmChKLEVarJVWvpfxq5JaxAGOfoNo7x_KQ0	2024-02-17 08:23:23.700678+00
6u0fva9qxeods6xjoshh8tses43yg64y	.eJxVjjsOwyAQRO9CHSETAwsp0_sMaBfWxollS_40iXL3gOQiaefNPM1bBDz2HI6N1zAmcRNXcfnNCOOT5wrSA-dhkXGZ93UkWSvypJvslsTT_ez-CTJuuayRWFmLDI11YL2JRkMLhpK2bAh7VE0JlWMETF4ldNoBEbWKyfegqnQqBw4cuOpe4vMF0sM9qg:1rLHW8:ZMCDd0KmwlHHXd-Oj8Of1Ac2cyhRg7lCP9a6w6YSm_0	2024-01-18 06:47:48.55395+00
ak0y6svo1ejb0ewv1gats9cflh9dfa4n	.eJxVjsEOgjAQRP-lZ9NQod3Wo3e_odllF4qSklA4Gf_dknDQ67yZl3mriPuW4l5kjROrm7qqy29G2L8kH4CfmMdF90ve1on0UdEnLfqxsMz3s_snSFhSXSOJcQ4FGufBBdvbDlqwxJ0TSzigaWpovCAgB8PoOw9E1BqhMIA5pHM9sOMoVSdZfb7Srz2i:1rWEnl:6gshKsUQZude24aoxBm6OSw0WiyY_Q5u9wRZe4TfV7Y	2024-02-17 12:07:17.243875+00
0yho0jpar8az0vfxe05hrsuc1qjw2bzo	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1rLI7j:uXOTl-l1ZBekQF7OjMWgXXFCPqqcn-_VCsq-YfgF4uM	2024-01-18 07:26:39.888449+00
qibbpxg6yrtm7pnzhdc93rj0qmul6gbf	.eJxVjEEOwiAQRe_C2pBigQGX7j0DmWGmUjU0Ke3KeHfbpAvdvvf-f6uE61LS2mROI6uLOqvTLyPMT6m74AfW-6TzVJd5JL0n-rBN3yaW1_Vo_w4KtrKtkcR4jwKdD-Cjy85CD47YenGEA5pugyYIAnI0jMEGIKLeCMUBjPp8AeeeOD4:1rODmy:io-lpa4eoW0UnMNqolsWR9A2fg5jquIZnQqlXK38f0I	2024-01-26 09:25:20.377247+00
rdzxp5y9od4nxtadntjvb2qaprdul8ll	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rPHbp:mYZ34oFXd4b27OuBeEhist3PWZqxaBqFmzyaupm-0K0	2024-01-29 07:42:13.008111+00
do1yk9lcpaj89n2s60zpt6k0ew9xbk08	.eJxVjDsOwyAQBe9CHSFvDCxOmT5nQLtm_UksLBlTRbl7sOTG7cyb91VhoTQWGkU9lCR1U4HKPoWSZQtzrPB-ZUz9R9Ih4ruWq-7XtG8z62OiT5v1a42yPM_t5WCiPNWaWMA5EmycR9fZ3hps0XI0TizTQNBUCF4IKXYQyRuPzNyCcDcgqN8fuJY9og:1rX0P3:Q6RgHMXzWhIIB3QdKoi6-Wa0ZM49QX9qMzovnGLZ05E	2024-02-19 14:56:57.21251+00
0i3zl1h0yhwupybpirv2a7l6jdytiyk5	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rQ78A:NGtU_u53ryI0q6Yoa7gaf4TmqLLMe1LCdmA5JPqBLxQ	2024-01-31 14:43:02.335549+00
ledm3j7615hwobnr1kwhfgb2txlqwa9x	eyJfbGFuZ3VhZ2UiOiJlbiJ9:1rQoMU:HZaIQsul36DYiz1vzSdb2anDK0S9XU5dWuKJ6a5fQzc	2024-02-02 12:52:42.890569+00
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
67	jamewalt01@gmail.com	jamewalt01@gmail.com	84432229468	I hope this mail finds you well. May I use this opportunity to present my proposal for a mutual private business of USD 147 Million. I am James Walter the Funds Manager. \r\n \r\nI hold a mandate from a Russian Client who wants his funds reinvested using 3rd party due to the current sanctions, which means all aspect of the transaction will remain confidential, you will be paid 25% or you can buy shares into the new investment, we can also invest in your company if it’s for expansion only, we believe you are trusted and capable that’s why we have contacted you. \r\n \r\nPlease note that there is no risk involved as funds are legal and currently in an European Bank, all details will be available as soon as you indicate interest by contacting me via the email or phone number bellow to discuss this opportunity in more detail. \r\n \r\nSincerely, \r\n \r\nMr. James Walter \r\n \r\nEmail:jameswalterxyz1@gmail.com \r\n \r\nTEL: +44 7706 280570
68	ware.brittany54@msn.com	ware.brittany54@msn.com	02.68.65.15.54	Earn up to $60,000 USD as a 4U2 Inc. Independent Contractor Agent! We're seeking individuals worldwide with computer access, fluent English communication skills, and a desire to save time and money for suppliers, buyers, and salespersons in our E-Commerce Marketplace. Join our mission to "Save Suppliers, Buyers, and Salespersons Time, Money, and make Money!" Contact us at 4u2inc123@gmail.com for more info..
69	mikeHefprodohefkNole@gmail.com	mikeHefprodohefkNole@gmail.com	86669823512	If you are looking to rank your local business on Google Maps in a specific area, this service is for you. \r\n \r\nGoogle Map Stacking is a highly effective technique for ranking your GMB within a specific mile radius. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/product/google-maps-pointers/ \r\n \r\n \r\nThanks and Regards \r\nMike Mike Goodman\r\n \r\n \r\nPS: Want a comprehensive local plan that covers everything? \r\nhttps://www.speed-seo.net/product/local-seo-bundle/
70	jamal.sambell40@gmail.com	jamal.sambell40@gmail.com	0676 345 53 02	This message arrived to you and I can make your ad message reach millions of websites the same way. It's a low-priced and effective way to market your product or service.For more information, please email me or skype me below.\r\n\r\nP. Stewart\r\nEmail: 7mjyj6@gomail2.xyz\r\nSkype: live:.cid.37ffc6c14225a4a8
71	mikeGrieveMara@gmail.com	mikeGrieveMara@gmail.com	88914978811	Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit from an increase in authority. \r\n \r\nOur solution guarantees you a high-quality domain authority score within a period of three months. This will increase your organic visibility and strengthen your website authority, thus making it stronger against Google updates. \r\n \r\nCheck out our deals for more details. \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\nNEW: Ahrefs Domain Rating \r\nhttps://www.monkeydigital.co/ahrefs-seo/ \r\n \r\n \r\nThanks and regards \r\nMike Kendal
72	aramco@mbox.re	aramco@mbox.re	85369769518	Hello, \r\n \r\nWe extend warm greetings to your esteemed company and formally invite you to register as a vendor for potential partnerships in upcoming projects with SAUDI ARAMCO/UAE in 2024/2025. \r\n \r\nThese projects offer a global opportunity, welcoming participation from companies worldwide. Should your company express interest in this endeavor, we kindly request confirmation by contacting ibrahim@aramcointernational.net of intent by requesting the necessary documents. \r\n \r\nYour interest is highly valued, and we eagerly await your prompt response. \r\n \r\nBest Regards, \r\n \r\nMr. Sam Ibrahim \r\nibrahim@aramcointernational.net \r\nhttp://www.aramcointernational.net/ \r\nContract & Supplier Services Management
73	ameliabrown0325@gmail.com	ameliabrown0325@gmail.com	614-877-7356	Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically. \r\n\r\n- We guarantee to gain you 700-1500+ subscribers per month.\r\n- People subscribe because they are interested in your channel/videos, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any 'bots'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you have any questions, let me know, and we can discuss further.\r\n\r\nKind Regards,\r\nAmelia
74	tim.call@googlemail.com	tim.call@googlemail.com	(07) 4538 6125	Hi there, my name is Cody Griner. I apologize for using your contact form, \r\nbut I wasn't sure who the right person was to speak with in your company. \r\nWe have a patented application that creates Local Area pages that rank on \r\ntop of Google within weeks, we call it Local Magic.  Here is a link to the \r\nproduct page https://www.mrmarketingres.com/local-magic/ . The product \r\nleverages technology where these pages are managed dynamically by AI and \r\nit is ideal for promoting contractors on Google.  Can I share a testimonial \r\nfrom one of our clients with you?  I can also do a short zoom to \r\nillustrate their full case study if you have time for it? \r\ncody@mrmarketingres.com 843-720-7301
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
3	https://facebook.com	Tacikistan, Düşənbə,JV group Regus, N.Muhammad 5/5 +992 90 02 00 333	0	Tacikistan, Düşənbə,JV group Regus, N.Muhammad 5/5 +992 90 02 00 333	Tajikistan, Dushanbe, JV group Regus, N.Muhammad 5/5 +992 90 02 00 333	\N
5	https://www.google.com/maps/search/Warsaw,+Poland,+Bukowinska+str,+22.+lok.+53+02-73+/@52.1847115,21.0224898,17z/data=!3m1!4b1?entry=ttu	Varşava, Polşa, Bukovinska küçəsi 22. lok. 53 02-73	0	Varşava, Polşa, Bukovinska küçəsi 22. lok. 53 02-73	Warsaw, Poland, Bukowinska str, 22. lok. 53 02-73	\N
4	https://facebook.com	Bakı, Azərbaycan, H. Əliyev prospekti, 187 B, Sport Plaza, Blok B, 404 A-C, AZ 1029	0	Bakı, Azərbaycan, H. Əliyev prospekti, 187 B, Sport Plaza, Blok B, 404 A-C, AZ 1029	Baku, Azerbaijan, H. Aliyev avenue, 187 B, Sport Plaza, Block B, 404 A-C, AZ 1029	\N
2	https://facebook.com	Daşkənd, Özbəkistan, 46 A. Kokhkhar küç. Yakkasaray qəs.,	0	Daşkənd, Özbəkistan, 46 A. Kokhkhar küç. Yakkasaray qəs.,	Tashkent, Uzbekistan, 46 A. Kokhkhar st. Yakkasaray dist,	\N
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
15	SHINKAR Central Office	Freight-elevator-vs-passenger-el.jpg	New elevators have been installed	New elevators have been installed	Still under process	Construction	No information	Still under process	No information	"Şinkar Holding" MMC	1	Ofis binası üçün yeni liftlərin quraşdırılması	New elevators have been installed	Установлен новый лифт	Davam edir	Still under process	Все еще в процессе	"Şinkar Holding" MMC	"Şinkar Holding" MMC	OOO "Şinkar Holding"	Məlumat Yoxdur	No information	Нет информации	Ofis binası üçün yeni liftlərin quraşdırılması	New elevators have been installed	Установлен новый лифт	Quraşdırma	Construction	Строительство	SHINKAR HOLDING, Mərkəzi ofis	SHINKAR Central Office	Центральный офис SHINKAR	Davam edir	Still under process	Все еще в процессе	Məlumat Yoxdur	No information	Нет информации
17	Grand-Agro MMC	grand-agro-invitro-copy_1_1JWp6F6.png	Elektrikli və konsullu kran təmini	Elektrikli və konsullu kran təmini	Davam edir	Quraşdırma	Məlumat Yoxdur	Davam edir	Məlumat Yoxdur	"Grand-Agro" MMC	\N	Elektrikli və konsullu kran təmini	Electric and consular crane provision	Предоставление электрических и консульских кранов	Davam edir	The process is still ongoing	Процесс все еще продолжается	"Grand-Agro" MMC	"Grand-Agro" MMC	OOO "Grand-Agro"	Məlumat Yoxdur	No information	Нет информации	Elektrikli və konsullu kran təmini	Electric and consular crane provision	Предоставление электрических и консульских кранов	Quraşdırma	Construction	Услуга	Grand-Agro MMC	Grand-Agro LLC	OOO Grand-Agro	Davam edir	The process is still ongoing	Процесс все еще продолжается	Məlumat Yoxdur	No information	Нет информации
19	ATS Food/Delta	kjblh.jpg	Liftlərin quraşdırılması	Yeni liftlər quraşdırıldı	Bitmiş	Quraşdırma	Məlumat Yoxdur	2 ay	Məlumat Yoxdur	"ATS Food" MMC	1	Yeni liftlər quraşdırıldı	New elevators have been installed	Установлен новый лифт	2 ay	2 month	2 месяца	"ATS Food" MMC	"ATS Food" MMC	OOO "ATS Food"	Məlumat Yoxdur	No information	Нет информации	Liftlərin quraşdırılması	New elevator has been installed	Установлен новый лифт	Quraşdırma	Construction	Строительство	ATS Food/Delta	ATS Food/Delta	ATS Food/Delta	Bitmiş	Completed	Завершенный	Məlumat Yoxdur	No information	Нет информации
9	KINDERLAND	ace91e2e-87e2-44cc-8c86-75ed32fd.png	Yük platforması	Kinderland daxilində yük platforması quraşdırıldı	Bitmiş	Quraşdırma	Məlumat Yoxdur	3 həftə	Dəniz Mall	PASHA İNŞAAT	5	Kinderland daxilində yük platforması quraşdırıldı	New Payload platform have been installed	\N	3 həftə	3 weeks	\N	PASHA İNŞAAT	PASHA İNŞAAT	\N	Məlumat Yoxdur	No information	\N	Yük platforması	Payload Platform	\N	Quraşdırma	Construction	\N	KINDERLAND	KINDERLAND	\N	Bitmiş	Completed	\N	Dəniz Mall	Dəniz Mall	\N
16	Sport Plaza Hotel & Apartments	480408323_1.jpg	Ofis binası üçün liftlər üçün xidməti razlışma	Ofis binası üçün liftlər üçün xidməti razlışma	Davam edir	Xidmət	Məlumat Yoxdur	Davam edir	Heydər Əliyev pr115	Azəridmanservis MMC	1	Ofis binası üçün liftlər üçün xidməti razlışma	Service contract	Контракт на обслуживание	Davam edir	Still under process	Все еще в процессе	Azəridmanservis MMC	Azəridmanservis MMC	OOO Azəridmanservis	Məlumat Yoxdur	No information	Нет информации	Ofis binası üçün liftlər üçün xidməti razlışma	Service contract	Контракт на обслуживание	Xidmət	Service	Услуга	Sport Plaza Hotel & Apartments	Sport Plaza Hotel & Apartments	Sport Плаза Отель & Апартаменты	Davam edir	Still under process	Все еще в процессе	Heydər Əliyev pr115	Heydər Aliyev hw115	Гейдар Алиев пр115
14	East Residence	c5a55a6b-1b3c-4cdb-8bb0-0255dcf0.jpg	Yeni liftlər quraşdırıldı	Yeni liftlər quraşdırıldı	Bitmiş	Quraşdırma	Məlumat Yoxdur	2 ay	Məlumat Yoxdur	"East Residence" MTK	1	Yeni liftlər quraşdırıldı	New elevators have been installed	Установлен новый лифт	2 ay	2 months	2 месяца	"East Residence" MTK	"East Residence" MTK	"East Residence" MTK	Məlumat Yoxdur	No information	Нет информации	Yeni liftlər quraşdırıldı	New elevators have been installed	Установлен новый лифт	Quraşdırma	Construction	Строительство	East Residence	East Residence	East Pезиденция	Bitmiş	Completed	Завершенный	Məlumat Yoxdur	No information	Нет информации
10	Bravo Supermarketlər Şəbəkəsi	7c900e79-4ba5-4ca1-9e94-131566ea.jpg	Ümumi Xidmət	Bravo Supermarketlərində, turniketlərə, şlaqbamlara ətraflı servis edildi	Davam edir	Xidmət	Məlumat Yoxdur	Davam edir	Məlumat Yoxdur	Azərbaycan Supermarketlər MMC	5	Bravo Supermarketlərində, turniketlərə, şlaqbamlara ətraflı servis edildi	In Bravo supermarkets, turnstiles, barriers were served in detail.	\N	Davam edir	Still under process	\N	Azərbaycan Supermarketlər MMC	Azərbaycan Supermarketlər MMC	\N	Məlumat Yoxdur	No information	\N	Ümumi Xidmət	General Service	\N	Xidmət	Service	\N	Bravo Supermarketlər Şəbəkəsi	Bravo Supermarketlər Şəbəkəsi	\N	Davam edir	Still under process	\N	Məlumat Yoxdur	No information	\N
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
8	Anar Nəsibov		Direktor	3	Direktor	Director	\N
10	Araz Bəkirov		Xidmət Meneceri	3	Xidmət Meneceri	Service Manager	\N
11	Seymur Əlibəyev		SƏTƏMM	3	SƏTƏMM	Meneger in the field of HSE	\N
12	Abdul Kazımov		İcraçı Direktor	3	İcraçı Direktor	\N	\N
13	Gülnarə Qarayeva		Maketinq Menecer	3	Maketinq Menecer	Marketing Maneger	\N
14	Nərminə Dadaşova		HR (İR)	3	HR (İR)	HR	\N
\.


--
-- Data for Name: home_teamcategory; Type: TABLE DATA; Schema: public; Owner: maxcreative
--

COPY public.home_teamcategory (id, name, tag, name_az, name_en, name_ru) FROM stdin;
2	Technical staff	technical-staff	Texniki heyyət	Technical staff	\N
3	Managing Staff	main-staff	İdarə heyyəti	Managing Staff	\N
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
7	Alova və Partlamaya qarşı qapılar	Bu qapılar yüksək ani partlayışlara və partlayış nəticəsində yaranan fraqmentlər kimi digər qüvvələrə tab gətirə bilir və hadisədən sonra işlək vəziyyətdə qalır. Bu qapılar yanğın və partlayışın zərərindən insanın təhlükəsizliyini qorumaq məqsədilə istifadə olunur. Yangın zamanı yayılan yüksək istiliyi dayandırmaq və yanğının yayılmasını əngəlləmək üçün nəzərdə tutulur. Yangın təhlükəsizlik standartlarına cavab verən bu qapılar, yangın halında qapanır və insanların can təhlükəsini azaltmaq üçün önəmli bir rol oynayır.	cq5dam.web.1280.12804.jpg	Bu qapılar yüksək ani partlayışlara və partlayış nəticəsində yaranan fraqmentlər kimi digər qüvvələrə tab gətirə bilir və hadisədən sonra işlək vəziyyətdə qalır. Bu qapılar yanğın və partlayışın zərərindən insanın təhlükəsizliyini qorumaq məqsədilə istifadə olunur. Yangın zamanı yayılan yüksək istiliyi dayandırmaq və yanğının yayılmasını əngəlləmək üçün nəzərdə tutulur. Yangın təhlükəsizlik standartlarına cavab verən bu qapılar, yangın halında qapanır və insanların can təhlükəsini azaltmaq üçün önəmli bir rol oynayır.	These doors are capable of withstanding high momentary explosions and other forces such as explosion-generated fragments and remain operable after an incident. These doors are used to protect people from fire and explosion damage. It is intended to stop the high heat generated during a fire and prevent the spread of fire. These doors, which meet fire safety standards, close in case of fire and play an important role in reducing the risk to people's lives.	Эти двери способны выдерживать сильные мгновенные взрывы и другие силы, такие как осколки, образовавшиеся в результате взрыва, и остаются работоспособными после происшествия. Эти двери используются для защиты людей от пожара и взрыва. Он предназначен для остановки высокого тепла, образующегося во время пожара, и предотвращения распространения огня. Эти двери, соответствующие нормам пожарной безопасности, закрываются в случае пожара и играют важную роль в снижении риска для жизни людей.	Alova və Partlamaya qarşı qapılar	BLAST and FIRE RESISTANT DOORS	ВЗРЫВО- и ПОЖАРОСТОЙКИЕ ДВЕРИ
4	Автоматические двери	Наши автоматические дверные системы сочетают в себе удобство, безопасность и эстетику. Будь то улучшение доступа к коммерческим помещениям или улучшение доступности в общественных местах, мы предлагаем сложные и эффективные решения для всех ваших потребностей.	Mask_Group_12.png	Avtomatlaşdırılmış qapı sistemlərimiz rahatlığı, təhlükəsizliyi və estetikanı özündə birləşdirir. İstər ticarət məkanının girişini yaxşılaşdırmaq, istərsə də ictimai yerlərdə əlçatanlığı yaxşılaşdırmaq olsun, bütün ehtiyaclarınız üçün mükəmməl və səmərəli həllər təklif edirik.	Our automated door systems combine convenience, security and aesthetics. Whether it's improving access to a commercial space or improving accessibility in public spaces, we offer sophisticated and efficient solutions for all your needs.	Наши автоматические дверные системы сочетают в себе удобство, безопасность и эстетику. Будь то улучшение доступа к коммерческим помещениям или улучшение доступности в общественных местах, мы предлагаем сложные и эффективные решения для всех ваших потребностей.	Avtomatlaşdırılmış Qapılar	Automated Doors	Автоматические двери
5	Системы укладки и турникетов	Мы переосмысливаем способы парковки и контроля доступа с помощью наших современных систем парковки и турникетов. Будь то упрощение операций по парковке или повышение безопасности, доверьте Torch предоставление надежных и инновационных решений, отвечающих вашим потребностям.	Mask_Group_13.png	Ən müasir Parkinq və Turniket Sistemlərimizlə biz sizin parkinq və girişə nəzarət üsulunuzu yenidən müəyyənləşdiririk. İstər parkinq əməliyyatlarının sadələşdirilməsi, istərsə də təhlükəsizliyin gücləndirilməsi, ehtiyaclarınıza cavab verən etibarlı və innovativ həllər təmin etmək üçün Torch-a etibar edin.	We redefine the way you park and access control with our state-of-the-art Parking and Turnstile Systems. Whether it's simplifying parking operations or enhancing security, trust Torch to provide reliable and innovative solutions that meet your needs.	Мы переосмысливаем способы парковки и контроля доступа с помощью наших современных систем парковки и турникетов. Будь то упрощение операций по парковке или повышение безопасности, доверьте Torch предоставление надежных и инновационных решений, отвечающих вашим потребностям.	Paking və Turniket sistemləri	Paking and Turnstile systems	Системы укладки и турникетов
1	Лифт	Мы предлагаем превосходный сервис вертикальной транспортировки, сочетающий в себе инновации, надежность и новый стиль. Благодаря нашему богатому опыту мы с гордостью предлагаем ряд передовых лифтовых решений, подходящих для различных помещений.	Mask_Group_a6aOLiN.png	Biz yenilik, etibarlılıq və yeni stilin qarışığı ilə şaquli nəqliyyatı üstün xidmət təklif edirik. Yüksək təcrübəmizlə müxtəlif məkanlara cavab verən bir sıra qabaqcıl lift həlləri təklif etməkdən qürur duyuruq.	We offer vertical transport superior service with a blend of innovation, reliability and new style. With our high experience, we are proud to offer a range of advanced elevator solutions that cater to different spaces.	Мы предлагаем превосходный сервис вертикальной транспортировки, сочетающий в себе инновации, надежность и новый стиль. Благодаря нашему богатому опыту мы с гордостью предлагаем ряд передовых лифтовых решений, подходящих для различных помещений.	Lift	Elevator	Лифт
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
9	Turnstile systems	We provide seamless access management solutions for various locations.	turniket.png	We provide seamless access management solutions for various locations.	5	With our state-of-the-art Turnstile Systems, we redefine access control. Trust Torch to deliver security enhancements and innovative, reliable solutions tailored to your needs.	Your safety is in safe hands	We provide seamless access management solutions for various locations.	Get to know our products	Ən müasir Turniket Sistemlərimizlə biz sizin girişə nəzarət üsulunuzu yenidən müəyyənləşdiririk. Təhlükəsizliyin gücləndirilməsi, ehtiyaclarınıza cavab verən etibarlı və innovativ həllər təmin etmək üçün Torch-a etibar edin.	With our state-of-the-art Turnstile Systems, we redefine access control. Trust Torch to deliver security enhancements and innovative, reliable solutions tailored to your needs.		Təhlükəsizliyiniz əmin əllərdə	Your safety is in safe hands	\N	Müxtəlif yerlər üçün problemsiz giriş idarəetmə həlləri təqdim edirik.	We provide seamless access management solutions for various locations.		Müxtəlif yerlər üçün problemsiz giriş idarəetmə həlləri təqdim edirik.	We provide seamless access management solutions for various locations.		Turniket sistemləri	Turnstile systems	\N	Müxtəlif yerlər üçün problemsiz giriş idarəetmə həlləri təqdim edirik.	We provide seamless access management solutions for various locations.		Məhsullarımızla yaxından tanış olun	Get to know our products	\N
8	Parking systems	We offer a wide range of parking systems designed to simplify parking management.	parking.png	We offer a wide range of parking systems designed to optimize space utilization and simplify parking management.	5	We redefine your parking system with our state-of-the-art Parking Systems. Whether you need to simplify parking operations or enhance security, you can trust us to provide reliable and innovative solutions that meet your needs.	A new era in parking	We offer a wide range of parking systems designed to simplify parking management.	Get to know our products	Ən müasir Parkinq Sistemlərimizlə biz sizin parkinq sisteminizi yenidən müəyyənləşdiririk. İstər parkinq əməliyyatlarının sadələşdirilməsi, istərsə də təhlükəsizliyin gücləndirilməsi, ehtiyaclarınıza cavab verən etibarlı və innovativ həllər təmin etmək üçün bizə etibar edin.	We redefine your parking system with our state-of-the-art Parking Systems. Whether you need to simplify parking operations or enhance security, you can trust us to provide reliable and innovative solutions that meet your needs.		Parklanmada yeni era	A new era in parking	\N	Biz yerdən istifadəni optimallaşdırmaq və parkinq idarəetməsini sadələşdirmək üçün nəzərdə tutulmuş parkinq sistemlərinin geniş çeşidini təklif edirik.	We offer a wide range of parking systems designed to optimize space utilization and simplify parking management.		Biz parkinq idarəetməsini sadələşdirmək üçün nəzərdə tutulmuş parkinq sistemlərinin geniş çeşidini təklif edirik.	We offer a wide range of parking systems designed to simplify parking management.		Parkinq sistemləri	Parking systems	\N	Biz parkinq idarəetməsini sadələşdirmək üçün nəzərdə tutulmuş parkinq sistemlərinin geniş çeşidini təklif edirik.	We offer a wide range of parking systems designed to simplify parking management.		Məhsullarımızla yaxından tanış olun	Get to know our products	\N
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
36	parking-1.png	8
37	parking-2.png	8
38	parking-3.png	8
39	parking-4.png	8
40	turniket-4.png	9
41	turniket-7.png	9
42	turniket-9.png	9
43	turniket-5.png	9
44	turniket-6.png	9
45	turniket-8.png	9
46	turniket-2.png	8
47	turniket-1.png	8
48	turniket-3.png	8
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

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 584, true);


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

SELECT pg_catalog.setval('public.home_contact_id_seq', 74, true);


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

SELECT pg_catalog.setval('public.home_ofisunvanlar_id_seq', 5, true);


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

SELECT pg_catalog.setval('public.home_team_id_seq', 23, true);


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

SELECT pg_catalog.setval('public.product_product_id_seq', 7, true);


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


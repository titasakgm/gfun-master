--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: activities; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE activities (
    id integer NOT NULL,
    title character varying(255),
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    code character varying(255)
);


ALTER TABLE public.activities OWNER TO postgres;

--
-- Name: activities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.activities_id_seq OWNER TO postgres;

--
-- Name: activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE activities_id_seq OWNED BY activities.id;


--
-- Name: activities_projects; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE activities_projects (
    id integer NOT NULL,
    activity_id integer,
    project_id integer,
    freq character varying(255),
    provider character varying(255),
    sponsor character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    weight integer
);


ALTER TABLE public.activities_projects OWNER TO postgres;

--
-- Name: activities_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE activities_projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.activities_projects_id_seq OWNER TO postgres;

--
-- Name: activities_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE activities_projects_id_seq OWNED BY activities_projects.id;


--
-- Name: amphurs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE amphurs (
    id integer NOT NULL,
    province_id integer,
    name character varying(255)
);


ALTER TABLE public.amphurs OWNER TO postgres;

--
-- Name: amphurs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE amphurs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.amphurs_id_seq OWNER TO postgres;

--
-- Name: amphurs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE amphurs_id_seq OWNED BY amphurs.id;


--
-- Name: budget_srcs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE budget_srcs (
    id integer NOT NULL,
    title character varying(255),
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.budget_srcs OWNER TO postgres;

--
-- Name: budget_srcs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE budget_srcs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.budget_srcs_id_seq OWNER TO postgres;

--
-- Name: budget_srcs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE budget_srcs_id_seq OWNED BY budget_srcs.id;


--
-- Name: code_tables; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE code_tables (
    id integer NOT NULL,
    title character varying(255),
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.code_tables OWNER TO postgres;

--
-- Name: code_tables_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE code_tables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.code_tables_id_seq OWNER TO postgres;

--
-- Name: code_tables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE code_tables_id_seq OWNED BY code_tables.id;


--
-- Name: communities; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE communities (
    id integer NOT NULL,
    name character varying(255),
    desciption text,
    address text,
    tumbon_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    ladmin_id integer
);


ALTER TABLE public.communities OWNER TO postgres;

--
-- Name: communities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE communities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.communities_id_seq OWNER TO postgres;

--
-- Name: communities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE communities_id_seq OWNED BY communities.id;


--
-- Name: communities_users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE communities_users (
    id integer NOT NULL,
    community_id integer,
    user_id integer,
    male_no integer,
    female_no integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.communities_users OWNER TO postgres;

--
-- Name: communities_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE communities_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.communities_users_id_seq OWNER TO postgres;

--
-- Name: communities_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE communities_users_id_seq OWNED BY communities_users.id;


--
-- Name: factors; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE factors (
    id integer NOT NULL,
    title character varying(255),
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    code character varying(255)
);


ALTER TABLE public.factors OWNER TO postgres;

--
-- Name: factors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE factors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.factors_id_seq OWNER TO postgres;

--
-- Name: factors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE factors_id_seq OWNED BY factors.id;


--
-- Name: factors_projects; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE factors_projects (
    factor_id integer,
    project_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.factors_projects OWNER TO postgres;

--
-- Name: helps; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE helps (
    id integer NOT NULL,
    title character varying(255),
    body text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    code character varying(255)
);


ALTER TABLE public.helps OWNER TO postgres;

--
-- Name: helps_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE helps_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.helps_id_seq OWNER TO postgres;

--
-- Name: helps_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE helps_id_seq OWNED BY helps.id;


--
-- Name: ladmins; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ladmins (
    id integer NOT NULL,
    amphur_id integer,
    name character varying(255)
);


ALTER TABLE public.ladmins OWNER TO postgres;

--
-- Name: ladmins_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ladmins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.ladmins_id_seq OWNER TO postgres;

--
-- Name: ladmins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ladmins_id_seq OWNED BY ladmins.id;


--
-- Name: lb202554s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lb202554s (
    id integer NOT NULL,
    user_id integer,
    team_type character varying(255),
    team_no integer,
    e_team_no integer,
    f_team_no integer,
    wd_team_no integer,
    pd_team_no integer,
    budget integer,
    trainner text,
    tool text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lb202554s OWNER TO postgres;

--
-- Name: lb202554s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lb202554s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lb202554s_id_seq OWNER TO postgres;

--
-- Name: lb202554s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lb202554s_id_seq OWNED BY lb202554s.id;


--
-- Name: lb202555s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lb202555s (
    id integer NOT NULL,
    user_id integer,
    team_type character varying(255),
    team_no integer,
    e_team_no integer,
    f_team_no integer,
    wd_team_no integer,
    pd_team_no integer,
    budget integer,
    trainner text,
    tool text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lb202555s OWNER TO postgres;

--
-- Name: lb202555s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lb202555s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lb202555s_id_seq OWNER TO postgres;

--
-- Name: lb202555s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lb202555s_id_seq OWNED BY lb202555s.id;


--
-- Name: lb202556s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lb202556s (
    id integer NOT NULL,
    user_id integer,
    team_type character varying(255),
    team_no integer,
    e_team_no integer,
    f_team_no integer,
    wd_team_no integer,
    pd_team_no integer,
    budget integer,
    trainner text,
    tool text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lb202556s OWNER TO postgres;

--
-- Name: lb202556s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lb202556s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lb202556s_id_seq OWNER TO postgres;

--
-- Name: lb202556s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lb202556s_id_seq OWNED BY lb202556s.id;


--
-- Name: lb30s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lb30s (
    id integer NOT NULL,
    user_id integer,
    team_type character varying(255),
    pd_team_no integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lb30s OWNER TO postgres;

--
-- Name: lb30s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lb30s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lb30s_id_seq OWNER TO postgres;

--
-- Name: lb30s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lb30s_id_seq OWNED BY lb30s.id;


--
-- Name: lb402554s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lb402554s (
    id integer NOT NULL,
    user_id integer,
    project_name character varying(255),
    project_budget integer,
    dev_budget integer,
    budget integer,
    sponsor text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lb402554s OWNER TO postgres;

--
-- Name: lb402554s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lb402554s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lb402554s_id_seq OWNER TO postgres;

--
-- Name: lb402554s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lb402554s_id_seq OWNED BY lb402554s.id;


--
-- Name: lb402555s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lb402555s (
    id integer NOT NULL,
    user_id integer,
    project_name character varying(255),
    project_budget integer,
    dev_budget integer,
    budget integer,
    sponsor text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lb402555s OWNER TO postgres;

--
-- Name: lb402555s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lb402555s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lb402555s_id_seq OWNER TO postgres;

--
-- Name: lb402555s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lb402555s_id_seq OWNED BY lb402555s.id;


--
-- Name: lb402556s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lb402556s (
    id integer NOT NULL,
    user_id integer,
    project_name character varying(255),
    project_budget integer,
    dev_budget integer,
    budget integer,
    sponsor text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lb402556s OWNER TO postgres;

--
-- Name: lb402556s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lb402556s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lb402556s_id_seq OWNER TO postgres;

--
-- Name: lb402556s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lb402556s_id_seq OWNED BY lb402556s.id;


--
-- Name: lb40s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lb40s (
    id integer NOT NULL,
    user_id integer,
    team_type character varying(255),
    q1 integer,
    q2 integer,
    q3 integer,
    q4 integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lb40s OWNER TO postgres;

--
-- Name: lb40s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lb40s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lb40s_id_seq OWNER TO postgres;

--
-- Name: lb40s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lb40s_id_seq OWNED BY lb40s.id;


--
-- Name: leaders; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE leaders (
    id integer NOT NULL,
    title character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.leaders OWNER TO postgres;

--
-- Name: leaders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE leaders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.leaders_id_seq OWNER TO postgres;

--
-- Name: leaders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE leaders_id_seq OWNED BY leaders.id;


--
-- Name: lr11s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr11s (
    id integer NOT NULL,
    school_id integer,
    code_table_id integer,
    user_id integer,
    male_no integer,
    female_no integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr11s OWNER TO postgres;

--
-- Name: lr11s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr11s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr11s_id_seq OWNER TO postgres;

--
-- Name: lr11s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr11s_id_seq OWNED BY lr11s.id;


--
-- Name: lr12s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr12s (
    id integer NOT NULL,
    place_id integer,
    code_table_id integer,
    user_id integer,
    youth_no integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr12s OWNER TO postgres;

--
-- Name: lr12s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr12s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr12s_id_seq OWNER TO postgres;

--
-- Name: lr12s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr12s_id_seq OWNED BY lr12s.id;


--
-- Name: lr13s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr13s (
    id integer NOT NULL,
    community_id integer,
    code_table_id integer,
    user_id integer,
    youth_no integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr13s OWNER TO postgres;

--
-- Name: lr13s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr13s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr13s_id_seq OWNER TO postgres;

--
-- Name: lr13s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr13s_id_seq OWNED BY lr13s.id;


--
-- Name: lr14s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr14s (
    id integer NOT NULL,
    user_id integer,
    special_people character varying(255),
    status character varying(255),
    youth_no integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr14s OWNER TO postgres;

--
-- Name: lr14s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr14s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr14s_id_seq OWNER TO postgres;

--
-- Name: lr14s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr14s_id_seq OWNED BY lr14s.id;


--
-- Name: lr20s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr20s (
    id integer NOT NULL,
    user_id integer,
    behavior_problem character varying(255),
    status character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr20s OWNER TO postgres;

--
-- Name: lr20s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr20s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr20s_id_seq OWNER TO postgres;

--
-- Name: lr20s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr20s_id_seq OWNED BY lr20s.id;


--
-- Name: lr402s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr402s (
    id integer NOT NULL,
    user_id integer,
    project_name character varying(255),
    target_name character varying(255),
    target1_no integer,
    budget1 integer,
    target2_no integer,
    budget2 integer,
    target3_no integer,
    budget3 integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr402s OWNER TO postgres;

--
-- Name: lr402s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr402s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr402s_id_seq OWNER TO postgres;

--
-- Name: lr402s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr402s_id_seq OWNED BY lr402s.id;


--
-- Name: lr40_2s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr40_2s (
    id integer NOT NULL,
    user_id integer,
    project_name character varying(255),
    target_name character varying(255),
    target_no_2554 integer,
    budget_2554 numeric,
    target_no_2555 integer,
    budget_2555 numeric,
    target_no_2556 integer,
    budget_2556 numeric,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr40_2s OWNER TO postgres;

--
-- Name: lr40_2s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr40_2s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr40_2s_id_seq OWNER TO postgres;

--
-- Name: lr40_2s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr40_2s_id_seq OWNED BY lr40_2s.id;


--
-- Name: lr40s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr40s (
    id integer NOT NULL,
    user_id integer,
    project_name character varying(255),
    target_name character varying(255),
    method character varying(255),
    plan_budget numeric,
    owner character varying(255),
    target_no integer,
    define_date timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr40s OWNER TO postgres;

--
-- Name: lr40s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr40s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr40s_id_seq OWNER TO postgres;

--
-- Name: lr40s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr40s_id_seq OWNED BY lr40s.id;


--
-- Name: lr45s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr45s (
    id integer NOT NULL,
    user_id integer,
    project_name character varying(255),
    target_name character varying(255),
    activity_name character varying(255),
    real_budget numeric,
    supporter character varying(255),
    target_no integer,
    define_date timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr45s OWNER TO postgres;

--
-- Name: lr45s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr45s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr45s_id_seq OWNER TO postgres;

--
-- Name: lr45s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr45s_id_seq OWNED BY lr45s.id;


--
-- Name: lr46s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr46s (
    id integer NOT NULL,
    user_id integer,
    health_service character varying(255),
    youth_no integer,
    define_date timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr46s OWNER TO postgres;

--
-- Name: lr46s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr46s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr46s_id_seq OWNER TO postgres;

--
-- Name: lr46s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr46s_id_seq OWNED BY lr46s.id;


--
-- Name: lr50s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr50s (
    id integer NOT NULL,
    user_id integer,
    health_service character varying(255),
    youth_2554 integer,
    youth_2555 integer,
    youth_2556 integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr50s OWNER TO postgres;

--
-- Name: lr50s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr50s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr50s_id_seq OWNER TO postgres;

--
-- Name: lr50s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr50s_id_seq OWNED BY lr50s.id;


--
-- Name: lr602555s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr602555s (
    id integer NOT NULL,
    user_id integer,
    project_name character varying(255),
    target_name character varying(255),
    activity_type character varying(255),
    target_no integer,
    team_type character varying(255),
    team_no integer,
    comment text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr602555s OWNER TO postgres;

--
-- Name: lr602555s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr602555s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr602555s_id_seq OWNER TO postgres;

--
-- Name: lr602555s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr602555s_id_seq OWNED BY lr602555s.id;


--
-- Name: lr602556s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr602556s (
    id integer NOT NULL,
    user_id integer,
    project_name character varying(255),
    target_name character varying(255),
    activity_type character varying(255),
    target_no integer,
    team_type character varying(255),
    team_no integer,
    comment text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr602556s OWNER TO postgres;

--
-- Name: lr602556s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr602556s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr602556s_id_seq OWNER TO postgres;

--
-- Name: lr602556s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr602556s_id_seq OWNED BY lr602556s.id;


--
-- Name: lr60s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr60s (
    id integer NOT NULL,
    user_id integer,
    project_name character varying(255),
    target_name character varying(255),
    activity_type character varying(255),
    target_no_2554 integer,
    team_type character varying(255),
    team_no integer,
    comment text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr60s OWNER TO postgres;

--
-- Name: lr60s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr60s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr60s_id_seq OWNER TO postgres;

--
-- Name: lr60s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr60s_id_seq OWNED BY lr60s.id;


--
-- Name: lr65s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr65s (
    id integer NOT NULL,
    user_id integer,
    project_name character varying(255),
    target_name character varying(255),
    activity_type character varying(255),
    budget integer,
    owner character varying(255),
    target_no integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr65s OWNER TO postgres;

--
-- Name: lr65s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr65s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr65s_id_seq OWNER TO postgres;

--
-- Name: lr65s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr65s_id_seq OWNED BY lr65s.id;


--
-- Name: lr70s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr70s (
    id integer NOT NULL,
    user_id integer,
    project_name character varying(255),
    target_name character varying(255),
    q1 integer,
    q2 integer,
    q3 integer,
    q4 integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr70s OWNER TO postgres;

--
-- Name: lr70s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr70s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr70s_id_seq OWNER TO postgres;

--
-- Name: lr70s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr70s_id_seq OWNED BY lr70s.id;


--
-- Name: lr75s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr75s (
    id integer NOT NULL,
    user_id integer,
    service_name character varying(255),
    q1 integer,
    q2 integer,
    q3 integer,
    q4 integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr75s OWNER TO postgres;

--
-- Name: lr75s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr75s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr75s_id_seq OWNER TO postgres;

--
-- Name: lr75s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr75s_id_seq OWNED BY lr75s.id;


--
-- Name: lr_b_40s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE lr_b_40s (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.lr_b_40s OWNER TO postgres;

--
-- Name: lr_b_40s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lr_b_40s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.lr_b_40s_id_seq OWNER TO postgres;

--
-- Name: lr_b_40s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lr_b_40s_id_seq OWNED BY lr_b_40s.id;


--
-- Name: method1s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE method1s (
    id integer NOT NULL,
    project2_id integer,
    year1_n integer,
    year2_n integer,
    year3_n integer,
    density integer,
    title character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    target_id integer,
    is_check boolean
);


ALTER TABLE public.method1s OWNER TO postgres;

--
-- Name: method1s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE method1s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.method1s_id_seq OWNER TO postgres;

--
-- Name: method1s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE method1s_id_seq OWNED BY method1s.id;


--
-- Name: method2s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE method2s (
    id integer NOT NULL,
    project2_id integer,
    target_id integer,
    title character varying(255),
    year1_n integer,
    year2_n integer,
    year3_n integer,
    step1_title character varying(255),
    step2_title character varying(255),
    step3_title character varying(255),
    step4_title character varying(255),
    step5_title character varying(255),
    step1_dens integer,
    step2_dens integer,
    step3_dens integer,
    step4_dens integer,
    step5_dens integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    is_check boolean
);


ALTER TABLE public.method2s OWNER TO postgres;

--
-- Name: method2s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE method2s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.method2s_id_seq OWNER TO postgres;

--
-- Name: method2s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE method2s_id_seq OWNED BY method2s.id;


--
-- Name: method3s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE method3s (
    id integer NOT NULL,
    project2_id integer,
    target_id integer,
    title character varying(255),
    year1_n integer,
    year2_n integer,
    year3_n integer,
    step1_title character varying(255),
    step2_title character varying(255),
    step3_title character varying(255),
    step4_title character varying(255),
    step1_dens integer,
    step2_dens integer,
    step3_dens integer,
    step4_dens integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    is_check boolean
);


ALTER TABLE public.method3s OWNER TO postgres;

--
-- Name: method3s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE method3s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.method3s_id_seq OWNER TO postgres;

--
-- Name: method3s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE method3s_id_seq OWNED BY method3s.id;


--
-- Name: method4s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE method4s (
    id integer NOT NULL,
    project2_id integer,
    target_id integer,
    title character varying(255),
    density integer,
    year1_n integer,
    year2_n integer,
    year3_n integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    is_check boolean
);


ALTER TABLE public.method4s OWNER TO postgres;

--
-- Name: method4s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE method4s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.method4s_id_seq OWNER TO postgres;

--
-- Name: method4s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE method4s_id_seq OWNED BY method4s.id;


--
-- Name: my_cars; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE my_cars (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.my_cars OWNER TO postgres;

--
-- Name: my_cars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE my_cars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.my_cars_id_seq OWNER TO postgres;

--
-- Name: my_cars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE my_cars_id_seq OWNED BY my_cars.id;


--
-- Name: places; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE places (
    id integer NOT NULL,
    name character varying(255),
    desciption text,
    address text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    ladmin_id integer
);


ALTER TABLE public.places OWNER TO postgres;

--
-- Name: places_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE places_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.places_id_seq OWNER TO postgres;

--
-- Name: places_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE places_id_seq OWNED BY places.id;


--
-- Name: places_users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE places_users (
    id integer NOT NULL,
    place_id integer,
    user_id integer,
    male_no integer,
    female_no integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.places_users OWNER TO postgres;

--
-- Name: places_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE places_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.places_users_id_seq OWNER TO postgres;

--
-- Name: places_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE places_users_id_seq OWNED BY places_users.id;


--
-- Name: problems; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE problems (
    id integer NOT NULL,
    title character varying(255),
    type_name character varying(255),
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.problems OWNER TO postgres;

--
-- Name: problems_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE problems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.problems_id_seq OWNER TO postgres;

--
-- Name: problems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE problems_id_seq OWNED BY problems.id;


--
-- Name: problems_projects; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE problems_projects (
    problem_id integer,
    project_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.problems_projects OWNER TO postgres;

--
-- Name: problems_users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE problems_users (
    id integer NOT NULL,
    problem_id integer,
    user_id integer,
    flag character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.problems_users OWNER TO postgres;

--
-- Name: problems_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE problems_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.problems_users_id_seq OWNER TO postgres;

--
-- Name: problems_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE problems_users_id_seq OWNED BY problems_users.id;


--
-- Name: progresses; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE progresses (
    id integer NOT NULL,
    projects_staff_id integer,
    q1 integer,
    q2 integer,
    q3 integer,
    q4 character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.progresses OWNER TO postgres;

--
-- Name: progresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE progresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.progresses_id_seq OWNER TO postgres;

--
-- Name: progresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE progresses_id_seq OWNED BY progresses.id;


--
-- Name: project2_budget_srcs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE project2_budget_srcs (
    id integer NOT NULL,
    project2_id integer,
    budget_src_id integer,
    budget numeric,
    nyear integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.project2_budget_srcs OWNER TO postgres;

--
-- Name: project2_budget_srcs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE project2_budget_srcs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.project2_budget_srcs_id_seq OWNER TO postgres;

--
-- Name: project2_budget_srcs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE project2_budget_srcs_id_seq OWNED BY project2_budget_srcs.id;


--
-- Name: project2_factors; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE project2_factors (
    id integer NOT NULL,
    project2_id integer,
    factor_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.project2_factors OWNER TO postgres;

--
-- Name: project2_factors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE project2_factors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.project2_factors_id_seq OWNER TO postgres;

--
-- Name: project2_factors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE project2_factors_id_seq OWNED BY project2_factors.id;


--
-- Name: project2_leaders; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE project2_leaders (
    id integer NOT NULL,
    project2_id integer,
    leader_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.project2_leaders OWNER TO postgres;

--
-- Name: project2_leaders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE project2_leaders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.project2_leaders_id_seq OWNER TO postgres;

--
-- Name: project2_leaders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE project2_leaders_id_seq OWNED BY project2_leaders.id;


--
-- Name: project2_targets; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE project2_targets (
    id integer NOT NULL,
    project2_id integer,
    target_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.project2_targets OWNER TO postgres;

--
-- Name: project2_targets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE project2_targets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.project2_targets_id_seq OWNER TO postgres;

--
-- Name: project2_targets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE project2_targets_id_seq OWNED BY project2_targets.id;


--
-- Name: project2s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE project2s (
    id integer NOT NULL,
    title character varying(255),
    nmonth integer,
    fiscal_year integer,
    a_budget numeric,
    b_budget numeric,
    c_budget numeric,
    year1n integer,
    year2n integer,
    year3n integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    user_id integer,
    cover_year integer
);


ALTER TABLE public.project2s OWNER TO postgres;

--
-- Name: project2s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE project2s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.project2s_id_seq OWNER TO postgres;

--
-- Name: project2s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE project2s_id_seq OWNED BY project2s.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE projects (
    id integer NOT NULL,
    title character varying(255),
    status character varying(255),
    fiscal_year integer,
    yq1 integer,
    yq2 integer,
    yq3 integer,
    yq4 integer,
    a_budget integer,
    a_youth_no integer,
    b_budget integer,
    b_youth_no integer,
    c_budget integer,
    c_youth_no integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    objective text,
    user_id integer,
    budget_src_id integer,
    y2_budget integer,
    y3_budget integer,
    nday integer
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE projects_id_seq OWNED BY projects.id;


--
-- Name: projects_staffs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE projects_staffs (
    id integer NOT NULL,
    project_id integer,
    staff_id integer,
    year1 integer,
    amount1 integer,
    year2 integer,
    amount2 integer,
    year3 integer,
    amount3 integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.projects_staffs OWNER TO postgres;

--
-- Name: projects_staffs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE projects_staffs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.projects_staffs_id_seq OWNER TO postgres;

--
-- Name: projects_staffs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE projects_staffs_id_seq OWNED BY projects_staffs.id;


--
-- Name: projects_targets; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE projects_targets (
    project_id integer,
    target_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.projects_targets OWNER TO postgres;

--
-- Name: provinces; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE provinces (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE public.provinces OWNER TO postgres;

--
-- Name: provinces_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE provinces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.provinces_id_seq OWNER TO postgres;

--
-- Name: provinces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE provinces_id_seq OWNED BY provinces.id;


--
-- Name: regions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE regions (
    id integer NOT NULL,
    title character varying(255),
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.regions OWNER TO postgres;

--
-- Name: regions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.regions_id_seq OWNER TO postgres;

--
-- Name: regions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE regions_id_seq OWNED BY regions.id;


--
-- Name: risks; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE risks (
    id integer NOT NULL,
    title character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.risks OWNER TO postgres;

--
-- Name: risks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE risks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.risks_id_seq OWNER TO postgres;

--
-- Name: risks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE risks_id_seq OWNED BY risks.id;


--
-- Name: sample_products; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sample_products (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.sample_products OWNER TO postgres;

--
-- Name: sample_products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sample_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.sample_products_id_seq OWNER TO postgres;

--
-- Name: sample_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sample_products_id_seq OWNED BY sample_products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: schools; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schools (
    id integer NOT NULL,
    name character varying(255),
    changwat character varying(255),
    ccode character varying(255),
    amphur character varying(255),
    acode character varying(255),
    tambon character varying(255),
    tcode character varying(255)
);


ALTER TABLE public.schools OWNER TO postgres;

--
-- Name: schools_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE schools_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.schools_id_seq OWNER TO postgres;

--
-- Name: schools_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE schools_id_seq OWNED BY schools.id;


--
-- Name: schools_users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schools_users (
    id integer NOT NULL,
    school_id integer,
    user_id integer,
    male_no integer,
    female_no integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.schools_users OWNER TO postgres;

--
-- Name: schools_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE schools_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.schools_users_id_seq OWNER TO postgres;

--
-- Name: schools_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE schools_users_id_seq OWNED BY schools_users.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sessions (
    id integer NOT NULL,
    session_id character varying(255) NOT NULL,
    data text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sessions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO postgres;

--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sessions_id_seq OWNED BY sessions.id;


--
-- Name: special_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE special_groups (
    id integer NOT NULL,
    title character varying(255),
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.special_groups OWNER TO postgres;

--
-- Name: special_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE special_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.special_groups_id_seq OWNER TO postgres;

--
-- Name: special_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE special_groups_id_seq OWNED BY special_groups.id;


--
-- Name: special_groups_users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE special_groups_users (
    id integer NOT NULL,
    special_group_id integer,
    user_id integer,
    flag character varying(255),
    amount integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.special_groups_users OWNER TO postgres;

--
-- Name: special_groups_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE special_groups_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.special_groups_users_id_seq OWNER TO postgres;

--
-- Name: special_groups_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE special_groups_users_id_seq OWNED BY special_groups_users.id;


--
-- Name: staffs; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE staffs (
    id integer NOT NULL,
    title character varying(255),
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.staffs OWNER TO postgres;

--
-- Name: staffs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE staffs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.staffs_id_seq OWNER TO postgres;

--
-- Name: staffs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE staffs_id_seq OWNED BY staffs.id;


--
-- Name: targets; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE targets (
    id integer NOT NULL,
    title character varying(255),
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    code character varying(255)
);


ALTER TABLE public.targets OWNER TO postgres;

--
-- Name: targets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE targets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.targets_id_seq OWNER TO postgres;

--
-- Name: targets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE targets_id_seq OWNED BY targets.id;


--
-- Name: tbl_40_2554_is; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_40_2554_is (
    id integer NOT NULL,
    test character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.tbl_40_2554_is OWNER TO postgres;

--
-- Name: tbl_40_2554_is_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_40_2554_is_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.tbl_40_2554_is_id_seq OWNER TO postgres;

--
-- Name: tbl_40_2554_is_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_40_2554_is_id_seq OWNED BY tbl_40_2554_is.id;


--
-- Name: tbl_40_2554s; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tbl_40_2554s (
    id integer NOT NULL,
    test character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.tbl_40_2554s OWNER TO postgres;

--
-- Name: tbl_40_2554s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tbl_40_2554s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.tbl_40_2554s_id_seq OWNER TO postgres;

--
-- Name: tbl_40_2554s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tbl_40_2554s_id_seq OWNED BY tbl_40_2554s.id;


--
-- Name: tumbons; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tumbons (
    id integer NOT NULL,
    name character varying(255),
    amphur_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.tumbons OWNER TO postgres;

--
-- Name: tumbons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tumbons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.tumbons_id_seq OWNER TO postgres;

--
-- Name: tumbons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tumbons_id_seq OWNED BY tumbons.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    login character varying(255) NOT NULL,
    crypted_password character varying(255) NOT NULL,
    password_salt character varying(255) NOT NULL,
    persistence_token character varying(255) NOT NULL,
    login_count integer DEFAULT 0 NOT NULL,
    last_request_at timestamp without time zone,
    last_login_at timestamp without time zone,
    current_login_at timestamp without time zone,
    last_login_ip character varying(255),
    current_login_ip character varying(255),
    province_id integer,
    amphur_id integer,
    ladmin_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    roles_mask integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: youth_progresses; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE youth_progresses (
    id integer NOT NULL,
    project_id integer,
    q1 integer,
    q2 integer,
    q3 integer,
    q4 integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.youth_progresses OWNER TO postgres;

--
-- Name: youth_progresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE youth_progresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.youth_progresses_id_seq OWNER TO postgres;

--
-- Name: youth_progresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE youth_progresses_id_seq OWNED BY youth_progresses.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE activities ALTER COLUMN id SET DEFAULT nextval('activities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE activities_projects ALTER COLUMN id SET DEFAULT nextval('activities_projects_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE amphurs ALTER COLUMN id SET DEFAULT nextval('amphurs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE budget_srcs ALTER COLUMN id SET DEFAULT nextval('budget_srcs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE code_tables ALTER COLUMN id SET DEFAULT nextval('code_tables_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE communities ALTER COLUMN id SET DEFAULT nextval('communities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE communities_users ALTER COLUMN id SET DEFAULT nextval('communities_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE factors ALTER COLUMN id SET DEFAULT nextval('factors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE helps ALTER COLUMN id SET DEFAULT nextval('helps_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ladmins ALTER COLUMN id SET DEFAULT nextval('ladmins_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lb202554s ALTER COLUMN id SET DEFAULT nextval('lb202554s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lb202555s ALTER COLUMN id SET DEFAULT nextval('lb202555s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lb202556s ALTER COLUMN id SET DEFAULT nextval('lb202556s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lb30s ALTER COLUMN id SET DEFAULT nextval('lb30s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lb402554s ALTER COLUMN id SET DEFAULT nextval('lb402554s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lb402555s ALTER COLUMN id SET DEFAULT nextval('lb402555s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lb402556s ALTER COLUMN id SET DEFAULT nextval('lb402556s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lb40s ALTER COLUMN id SET DEFAULT nextval('lb40s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE leaders ALTER COLUMN id SET DEFAULT nextval('leaders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr11s ALTER COLUMN id SET DEFAULT nextval('lr11s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr12s ALTER COLUMN id SET DEFAULT nextval('lr12s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr13s ALTER COLUMN id SET DEFAULT nextval('lr13s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr14s ALTER COLUMN id SET DEFAULT nextval('lr14s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr20s ALTER COLUMN id SET DEFAULT nextval('lr20s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr402s ALTER COLUMN id SET DEFAULT nextval('lr402s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr40_2s ALTER COLUMN id SET DEFAULT nextval('lr40_2s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr40s ALTER COLUMN id SET DEFAULT nextval('lr40s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr45s ALTER COLUMN id SET DEFAULT nextval('lr45s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr46s ALTER COLUMN id SET DEFAULT nextval('lr46s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr50s ALTER COLUMN id SET DEFAULT nextval('lr50s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr602555s ALTER COLUMN id SET DEFAULT nextval('lr602555s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr602556s ALTER COLUMN id SET DEFAULT nextval('lr602556s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr60s ALTER COLUMN id SET DEFAULT nextval('lr60s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr65s ALTER COLUMN id SET DEFAULT nextval('lr65s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr70s ALTER COLUMN id SET DEFAULT nextval('lr70s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr75s ALTER COLUMN id SET DEFAULT nextval('lr75s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE lr_b_40s ALTER COLUMN id SET DEFAULT nextval('lr_b_40s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE method1s ALTER COLUMN id SET DEFAULT nextval('method1s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE method2s ALTER COLUMN id SET DEFAULT nextval('method2s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE method3s ALTER COLUMN id SET DEFAULT nextval('method3s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE method4s ALTER COLUMN id SET DEFAULT nextval('method4s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE my_cars ALTER COLUMN id SET DEFAULT nextval('my_cars_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE places ALTER COLUMN id SET DEFAULT nextval('places_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE places_users ALTER COLUMN id SET DEFAULT nextval('places_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE problems ALTER COLUMN id SET DEFAULT nextval('problems_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE problems_users ALTER COLUMN id SET DEFAULT nextval('problems_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE progresses ALTER COLUMN id SET DEFAULT nextval('progresses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE project2_budget_srcs ALTER COLUMN id SET DEFAULT nextval('project2_budget_srcs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE project2_factors ALTER COLUMN id SET DEFAULT nextval('project2_factors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE project2_leaders ALTER COLUMN id SET DEFAULT nextval('project2_leaders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE project2_targets ALTER COLUMN id SET DEFAULT nextval('project2_targets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE project2s ALTER COLUMN id SET DEFAULT nextval('project2s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE projects ALTER COLUMN id SET DEFAULT nextval('projects_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE projects_staffs ALTER COLUMN id SET DEFAULT nextval('projects_staffs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE provinces ALTER COLUMN id SET DEFAULT nextval('provinces_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE regions ALTER COLUMN id SET DEFAULT nextval('regions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE risks ALTER COLUMN id SET DEFAULT nextval('risks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE sample_products ALTER COLUMN id SET DEFAULT nextval('sample_products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE schools ALTER COLUMN id SET DEFAULT nextval('schools_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE schools_users ALTER COLUMN id SET DEFAULT nextval('schools_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE sessions ALTER COLUMN id SET DEFAULT nextval('sessions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE special_groups ALTER COLUMN id SET DEFAULT nextval('special_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE special_groups_users ALTER COLUMN id SET DEFAULT nextval('special_groups_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE staffs ALTER COLUMN id SET DEFAULT nextval('staffs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE targets ALTER COLUMN id SET DEFAULT nextval('targets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE tbl_40_2554_is ALTER COLUMN id SET DEFAULT nextval('tbl_40_2554_is_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE tbl_40_2554s ALTER COLUMN id SET DEFAULT nextval('tbl_40_2554s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE tumbons ALTER COLUMN id SET DEFAULT nextval('tumbons_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE youth_progresses ALTER COLUMN id SET DEFAULT nextval('youth_progresses_id_seq'::regclass);


--
-- Name: activities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);


--
-- Name: activities_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY activities_projects
    ADD CONSTRAINT activities_projects_pkey PRIMARY KEY (id);


--
-- Name: amphurs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY amphurs
    ADD CONSTRAINT amphurs_pkey PRIMARY KEY (id);


--
-- Name: budget_srcs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY budget_srcs
    ADD CONSTRAINT budget_srcs_pkey PRIMARY KEY (id);


--
-- Name: code_tables_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY code_tables
    ADD CONSTRAINT code_tables_pkey PRIMARY KEY (id);


--
-- Name: communities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY communities
    ADD CONSTRAINT communities_pkey PRIMARY KEY (id);


--
-- Name: communities_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY communities_users
    ADD CONSTRAINT communities_users_pkey PRIMARY KEY (id);


--
-- Name: factors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY factors
    ADD CONSTRAINT factors_pkey PRIMARY KEY (id);


--
-- Name: helps_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY helps
    ADD CONSTRAINT helps_pkey PRIMARY KEY (id);


--
-- Name: ladmins_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ladmins
    ADD CONSTRAINT ladmins_pkey PRIMARY KEY (id);


--
-- Name: lb202554s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lb202554s
    ADD CONSTRAINT lb202554s_pkey PRIMARY KEY (id);


--
-- Name: lb202555s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lb202555s
    ADD CONSTRAINT lb202555s_pkey PRIMARY KEY (id);


--
-- Name: lb202556s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lb202556s
    ADD CONSTRAINT lb202556s_pkey PRIMARY KEY (id);


--
-- Name: lb30s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lb30s
    ADD CONSTRAINT lb30s_pkey PRIMARY KEY (id);


--
-- Name: lb402554s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lb402554s
    ADD CONSTRAINT lb402554s_pkey PRIMARY KEY (id);


--
-- Name: lb402555s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lb402555s
    ADD CONSTRAINT lb402555s_pkey PRIMARY KEY (id);


--
-- Name: lb402556s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lb402556s
    ADD CONSTRAINT lb402556s_pkey PRIMARY KEY (id);


--
-- Name: lb40s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lb40s
    ADD CONSTRAINT lb40s_pkey PRIMARY KEY (id);


--
-- Name: leaders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY leaders
    ADD CONSTRAINT leaders_pkey PRIMARY KEY (id);


--
-- Name: lr11s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr11s
    ADD CONSTRAINT lr11s_pkey PRIMARY KEY (id);


--
-- Name: lr12s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr12s
    ADD CONSTRAINT lr12s_pkey PRIMARY KEY (id);


--
-- Name: lr13s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr13s
    ADD CONSTRAINT lr13s_pkey PRIMARY KEY (id);


--
-- Name: lr14s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr14s
    ADD CONSTRAINT lr14s_pkey PRIMARY KEY (id);


--
-- Name: lr20s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr20s
    ADD CONSTRAINT lr20s_pkey PRIMARY KEY (id);


--
-- Name: lr402s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr402s
    ADD CONSTRAINT lr402s_pkey PRIMARY KEY (id);


--
-- Name: lr40_2s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr40_2s
    ADD CONSTRAINT lr40_2s_pkey PRIMARY KEY (id);


--
-- Name: lr40s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr40s
    ADD CONSTRAINT lr40s_pkey PRIMARY KEY (id);


--
-- Name: lr45s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr45s
    ADD CONSTRAINT lr45s_pkey PRIMARY KEY (id);


--
-- Name: lr46s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr46s
    ADD CONSTRAINT lr46s_pkey PRIMARY KEY (id);


--
-- Name: lr50s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr50s
    ADD CONSTRAINT lr50s_pkey PRIMARY KEY (id);


--
-- Name: lr602555s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr602555s
    ADD CONSTRAINT lr602555s_pkey PRIMARY KEY (id);


--
-- Name: lr602556s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr602556s
    ADD CONSTRAINT lr602556s_pkey PRIMARY KEY (id);


--
-- Name: lr60s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr60s
    ADD CONSTRAINT lr60s_pkey PRIMARY KEY (id);


--
-- Name: lr65s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr65s
    ADD CONSTRAINT lr65s_pkey PRIMARY KEY (id);


--
-- Name: lr70s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr70s
    ADD CONSTRAINT lr70s_pkey PRIMARY KEY (id);


--
-- Name: lr75s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr75s
    ADD CONSTRAINT lr75s_pkey PRIMARY KEY (id);


--
-- Name: lr_b_40s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY lr_b_40s
    ADD CONSTRAINT lr_b_40s_pkey PRIMARY KEY (id);


--
-- Name: method1s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY method1s
    ADD CONSTRAINT method1s_pkey PRIMARY KEY (id);


--
-- Name: method2s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY method2s
    ADD CONSTRAINT method2s_pkey PRIMARY KEY (id);


--
-- Name: method3s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY method3s
    ADD CONSTRAINT method3s_pkey PRIMARY KEY (id);


--
-- Name: method4s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY method4s
    ADD CONSTRAINT method4s_pkey PRIMARY KEY (id);


--
-- Name: my_cars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY my_cars
    ADD CONSTRAINT my_cars_pkey PRIMARY KEY (id);


--
-- Name: places_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY places
    ADD CONSTRAINT places_pkey PRIMARY KEY (id);


--
-- Name: places_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY places_users
    ADD CONSTRAINT places_users_pkey PRIMARY KEY (id);


--
-- Name: problems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY problems
    ADD CONSTRAINT problems_pkey PRIMARY KEY (id);


--
-- Name: problems_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY problems_users
    ADD CONSTRAINT problems_users_pkey PRIMARY KEY (id);


--
-- Name: progresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY progresses
    ADD CONSTRAINT progresses_pkey PRIMARY KEY (id);


--
-- Name: project2_budget_srcs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY project2_budget_srcs
    ADD CONSTRAINT project2_budget_srcs_pkey PRIMARY KEY (id);


--
-- Name: project2_factors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY project2_factors
    ADD CONSTRAINT project2_factors_pkey PRIMARY KEY (id);


--
-- Name: project2_leaders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY project2_leaders
    ADD CONSTRAINT project2_leaders_pkey PRIMARY KEY (id);


--
-- Name: project2_targets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY project2_targets
    ADD CONSTRAINT project2_targets_pkey PRIMARY KEY (id);


--
-- Name: project2s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY project2s
    ADD CONSTRAINT project2s_pkey PRIMARY KEY (id);


--
-- Name: projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: projects_staffs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY projects_staffs
    ADD CONSTRAINT projects_staffs_pkey PRIMARY KEY (id);


--
-- Name: provinces_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY provinces
    ADD CONSTRAINT provinces_pkey PRIMARY KEY (id);


--
-- Name: regions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);


--
-- Name: risks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY risks
    ADD CONSTRAINT risks_pkey PRIMARY KEY (id);


--
-- Name: sample_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sample_products
    ADD CONSTRAINT sample_products_pkey PRIMARY KEY (id);


--
-- Name: schools_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY schools
    ADD CONSTRAINT schools_pkey PRIMARY KEY (id);


--
-- Name: schools_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY schools_users
    ADD CONSTRAINT schools_users_pkey PRIMARY KEY (id);


--
-- Name: sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: special_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY special_groups
    ADD CONSTRAINT special_groups_pkey PRIMARY KEY (id);


--
-- Name: special_groups_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY special_groups_users
    ADD CONSTRAINT special_groups_users_pkey PRIMARY KEY (id);


--
-- Name: staffs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY staffs
    ADD CONSTRAINT staffs_pkey PRIMARY KEY (id);


--
-- Name: targets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY targets
    ADD CONSTRAINT targets_pkey PRIMARY KEY (id);


--
-- Name: tbl_40_2554_is_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_40_2554_is
    ADD CONSTRAINT tbl_40_2554_is_pkey PRIMARY KEY (id);


--
-- Name: tbl_40_2554s_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tbl_40_2554s
    ADD CONSTRAINT tbl_40_2554s_pkey PRIMARY KEY (id);


--
-- Name: tumbons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tumbons
    ADD CONSTRAINT tumbons_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: youth_progresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY youth_progresses
    ADD CONSTRAINT youth_progresses_pkey PRIMARY KEY (id);


--
-- Name: index_sessions_on_session_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_sessions_on_session_id ON sessions USING btree (session_id);


--
-- Name: index_sessions_on_updated_at; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_sessions_on_updated_at ON sessions USING btree (updated_at);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


PGDMP         (                 z            codersplace    14.2    14.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17217    codersplace    DATABASE     o   CREATE DATABASE codersplace WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE codersplace;
                postgres    false            �            1259    17244 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    17243    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    216            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215            �            1259    17253    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    17252    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    218            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217            �            1259    17237    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    17236    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    214            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213            �            1259    17260 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    17269    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    17268    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    222            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    221            �            1259    17259    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    220            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    219            �            1259    17276    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    17275 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    223            �            1259    17365    coders_coder    TABLE       CREATE TABLE public.coders_coder (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(254),
    photo character varying(100) NOT NULL,
    description text NOT NULL,
    city character varying(255) NOT NULL,
    level_type character varying(255) NOT NULL,
    job_type character varying(255) NOT NULL,
    developer_type character varying(255) NOT NULL,
    is_featured boolean NOT NULL,
    created_date timestamp with time zone NOT NULL,
    skills character varying(255),
    user_id integer
);
     DROP TABLE public.coders_coder;
       public         heap    postgres    false            �            1259    17364    coders_coder_id_seq    SEQUENCE     |   CREATE SEQUENCE public.coders_coder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.coders_coder_id_seq;
       public          postgres    false    228            �           0    0    coders_coder_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.coders_coder_id_seq OWNED BY public.coders_coder.id;
          public          postgres    false    227            �            1259    17335    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    17334    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    226            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    225            �            1259    17228    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    17227    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    211            �            1259    17219    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    17218    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            �            1259    17396    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    17434    jobs_company    TABLE       CREATE TABLE public.jobs_company (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(254) NOT NULL,
    phone character varying(10) NOT NULL,
    city character varying(255) NOT NULL,
    photo character varying(100) NOT NULL
);
     DROP TABLE public.jobs_company;
       public         heap    postgres    false            �            1259    17433    jobs_company_id_seq    SEQUENCE     |   CREATE SEQUENCE public.jobs_company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.jobs_company_id_seq;
       public          postgres    false    235            �           0    0    jobs_company_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.jobs_company_id_seq OWNED BY public.jobs_company.id;
          public          postgres    false    234            �            1259    17381    jobs_job    TABLE     \  CREATE TABLE public.jobs_job (
    id bigint NOT NULL,
    title character varying(255),
    job_type character varying(255) NOT NULL,
    level_type character varying(255) NOT NULL,
    developer_type character varying(255) NOT NULL,
    no_of_vacancies integer NOT NULL,
    deadline date NOT NULL,
    skills character varying(255),
    salary character varying(20) NOT NULL,
    description text NOT NULL,
    cosinevalue double precision,
    created_date date,
    company_id bigint,
    is_featured boolean NOT NULL,
    CONSTRAINT jobs_job_no_of_vacancies_check CHECK ((no_of_vacancies >= 0))
);
    DROP TABLE public.jobs_job;
       public         heap    postgres    false            �            1259    17380    jobs_job_id_seq    SEQUENCE     x   CREATE SEQUENCE public.jobs_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.jobs_job_id_seq;
       public          postgres    false    230            �           0    0    jobs_job_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.jobs_job_id_seq OWNED BY public.jobs_job.id;
          public          postgres    false    229            �            1259    17406    webpages_contact    TABLE     ?  CREATE TABLE public.webpages_contact (
    id bigint NOT NULL,
    full_name character varying(255) NOT NULL,
    phone character varying(10) NOT NULL,
    email character varying(254) NOT NULL,
    company_name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL,
    message text NOT NULL
);
 $   DROP TABLE public.webpages_contact;
       public         heap    postgres    false            �            1259    17405    webpages_contact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.webpages_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.webpages_contact_id_seq;
       public          postgres    false    233            �           0    0    webpages_contact_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.webpages_contact_id_seq OWNED BY public.webpages_contact.id;
          public          postgres    false    232            �           2604    17247    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    17256    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    17240    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            �           2604    17263    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    17272    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    17279    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    17368    coders_coder id    DEFAULT     r   ALTER TABLE ONLY public.coders_coder ALTER COLUMN id SET DEFAULT nextval('public.coders_coder_id_seq'::regclass);
 >   ALTER TABLE public.coders_coder ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    17338    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    17231    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    17222    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    17437    jobs_company id    DEFAULT     r   ALTER TABLE ONLY public.jobs_company ALTER COLUMN id SET DEFAULT nextval('public.jobs_company_id_seq'::regclass);
 >   ALTER TABLE public.jobs_company ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    17384    jobs_job id    DEFAULT     j   ALTER TABLE ONLY public.jobs_job ALTER COLUMN id SET DEFAULT nextval('public.jobs_job_id_seq'::regclass);
 :   ALTER TABLE public.jobs_job ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    17409    webpages_contact id    DEFAULT     z   ALTER TABLE ONLY public.webpages_contact ALTER COLUMN id SET DEFAULT nextval('public.webpages_contact_id_seq'::regclass);
 B   ALTER TABLE public.webpages_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �          0    17244 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   ��       �          0    17253    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   ��       �          0    17237    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   խ       �          0    17260 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   ��       �          0    17269    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   ��       �          0    17276    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   
�       �          0    17365    coders_coder 
   TABLE DATA           �   COPY public.coders_coder (id, name, email, photo, description, city, level_type, job_type, developer_type, is_featured, created_date, skills, user_id) FROM stdin;
    public          postgres    false    228   '�       �          0    17335    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   c�       ~          0    17228    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   ޿       |          0    17219    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   u�       �          0    17396    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    231   1�       �          0    17434    jobs_company 
   TABLE DATA           K   COPY public.jobs_company (id, name, email, phone, city, photo) FROM stdin;
    public          postgres    false    235   F�       �          0    17381    jobs_job 
   TABLE DATA           �   COPY public.jobs_job (id, title, job_type, level_type, developer_type, no_of_vacancies, deadline, skills, salary, description, cosinevalue, created_date, company_id, is_featured) FROM stdin;
    public          postgres    false    230   I�       �          0    17406    webpages_contact 
   TABLE DATA           g   COPY public.webpages_contact (id, full_name, phone, email, company_name, subject, message) FROM stdin;
    public          postgres    false    233   T�       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
          public          postgres    false    213            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    221            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 19, true);
          public          postgres    false    219            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    223            �           0    0    coders_coder_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.coders_coder_id_seq', 16, true);
          public          postgres    false    227            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 87, true);
          public          postgres    false    225            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
          public          postgres    false    211            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 30, true);
          public          postgres    false    209            �           0    0    jobs_company_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.jobs_company_id_seq', 14, true);
          public          postgres    false    234            �           0    0    jobs_job_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.jobs_job_id_seq', 42, true);
          public          postgres    false    229            �           0    0    webpages_contact_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.webpages_contact_id_seq', 1, false);
          public          postgres    false    232            �           2606    17362    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            �           2606    17292 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            �           2606    17258 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            �           2606    17249    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            �           2606    17283 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            �           2606    17242 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214            �           2606    17274 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222            �           2606    17307 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222            �           2606    17265    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    220            �           2606    17281 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    224            �           2606    17321 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    224    224            �           2606    17357     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    220            �           2606    17372    coders_coder coders_coder_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.coders_coder
    ADD CONSTRAINT coders_coder_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.coders_coder DROP CONSTRAINT coders_coder_pkey;
       public            postgres    false    228            �           2606    17374 %   coders_coder coders_coder_user_id_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.coders_coder
    ADD CONSTRAINT coders_coder_user_id_key UNIQUE (user_id);
 O   ALTER TABLE ONLY public.coders_coder DROP CONSTRAINT coders_coder_user_id_key;
       public            postgres    false    228            �           2606    17343 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226            �           2606    17235 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            �           2606    17233 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            �           2606    17226 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            �           2606    17402 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    231            �           2606    17441    jobs_company jobs_company_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.jobs_company
    ADD CONSTRAINT jobs_company_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.jobs_company DROP CONSTRAINT jobs_company_pkey;
       public            postgres    false    235            �           2606    17389    jobs_job jobs_job_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.jobs_job
    ADD CONSTRAINT jobs_job_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.jobs_job DROP CONSTRAINT jobs_job_pkey;
       public            postgres    false    230            �           2606    17413 &   webpages_contact webpages_contact_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.webpages_contact
    ADD CONSTRAINT webpages_contact_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.webpages_contact DROP CONSTRAINT webpages_contact_pkey;
       public            postgres    false    233            �           1259    17363    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            �           1259    17303 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            �           1259    17304 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            �           1259    17289 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214            �           1259    17319 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222            �           1259    17318 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222            �           1259    17333 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    224            �           1259    17332 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    224            �           1259    17358     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    220            �           1259    17354 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226            �           1259    17355 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226            �           1259    17404 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    231            �           1259    17403 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    231            �           1259    17447    jobs_job_company_id_1f42ea7c    INDEX     W   CREATE INDEX jobs_job_company_id_1f42ea7c ON public.jobs_job USING btree (company_id);
 0   DROP INDEX public.jobs_job_company_id_1f42ea7c;
       public            postgres    false    230            �           2606    17298 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    214    3253    218            �           2606    17293 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3258    218    216            �           2606    17284 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    212    3248    214            �           2606    17313 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    222    3258    216            �           2606    17308 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3266    222    220            �           2606    17327 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    214    3253    224            �           2606    17322 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    220    224    3266            �           2606    17375 :   coders_coder coders_coder_user_id_33d779e0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.coders_coder
    ADD CONSTRAINT coders_coder_user_id_33d779e0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.coders_coder DROP CONSTRAINT coders_coder_user_id_33d779e0_fk_auth_user_id;
       public          postgres    false    228    3266    220            �           2606    17344 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    212    3248    226            �           2606    17349 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    220    3266    226            �           2606    17442 8   jobs_job jobs_job_company_id_1f42ea7c_fk_jobs_company_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.jobs_job
    ADD CONSTRAINT jobs_job_company_id_1f42ea7c_fk_jobs_company_id FOREIGN KEY (company_id) REFERENCES public.jobs_company(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.jobs_job DROP CONSTRAINT jobs_job_company_id_1f42ea7c_fk_jobs_company_id;
       public          postgres    false    235    3300    230            �      x������ � �      �      x������ � �      �   �  x�]��n�0F����	��S��{�I+Q��BU覾���p����|�|%w�ݘu}�]�K���r�[�ϵ��������W,	��5,�V���`�E��bv��0��4���Ⅿ��a��F���m��!�Qq'��<��ݕ$Hg���އ�\;�t�Qe��R�sx�����+=]�gਧ�p�8m��F&��qY_-[^���d�����I`���~�/Q3�Iװ�Xρ_�&aT�0y�<3i��SY�Y	r4{�΋kd�k�:]3js�5��S#���bH�DHL�|���[^�4�b_ �l��� R��� �{	�͝�c;�Ҥ]80`� �P�F�fsS�{[���(�$��1I���slLe�oA��֟����i^��21E�o�>fS_]�K=��۽ׯs�_O���H
$ �dR8�8J��	f>޼����7+      �   +  x���Y��H �g�W�o��Z�� �ɸ".-.�K&�����"���~�V����ȑs��p�`B��Vk�o�pDh	#P�J�:QN9�2�������F�Uc��5�����1��eKY��v�#2o�^s��@�/ ���+ *�T�EI&�D� Q%"��,��@0��]��s�o���V\�~��w�R0(�� &�\��ǈ���O�����&�\K�t5�F%��ͅ��#p��g��1ZLg�Ay>��;����UgdN�?PVQ� 
��7b��G�
կ�*��������r-��1��Jy,������.]*����ֻ5�J<nB�Uh�]	�F���.7xܞ����Ý� ���iv'a*�D (#�"I���q!�([񄻁+�S7��F�עN�Y��
aX���u{�|��A��y#�ηrs\RFtڄN:M�wX(�������t�E���n����y�PTBE*3B�wGx��*�0vx�/���PT	�V ����ې�~2[�����p��2�m��C�����έNڲ����cC�9�lY}�k�҃�r����
dAE�����}��ϡʓ�{a�^�O1���L���{?�SzlwWfo2��S�qh���f�OW��ms31�m7(�ܙ��e9�6ȸ:4�;V	)���|[l��|/h��qx���_��-X�LTd�@劑c��h^9�1�M��w�o��qP����m�����y[Лu�7b\�"׍vzs��w�"I��Rx�	��)0_��r\���%��B>g�P��j!�-�ژ�m>�g�m5^�ӕ��JM�XX{�`��i����hp'kc�k�n����s����R,8TČ ��-qX\6��Pu�������Y��1F�������HчQouT��?Z�6��c��Y)���`y�9��N�䠦m<�j�-v'QTX�_�bo��s�߿�F���U�������)%
�2�ǌ�!y��xש;�Hc�<�j.w}��c
${�Ț6���Y�Y7��:b�ف-F������J��K��fC�b��`\�e?9g�R�jR�k�����b®�ۻ����a�v����nd��,�`X�;c�7b�]��|���Z��V�������~}R��F]�k�S�H�H�
�uD��
zl�~n�z.�]��FV/MC���+���U��'f���<�l�\�NĠf8��_���*b" ��	�0,��ڕ�8���\*"-~�uo}�? b��Y��z��]�+�[B�	�3��"����M��zvcmq����N�X�7��P��H��o^���Sq���u��X��Ȑ�[�?�����-ײ      �      x������ � �      �      x������ � �      �   ,  x���Ms�F��ï�*����|1p�z�u���87W�ڂc��@���H�qI����hhf����E�����gX ���_V�M��
Rd��O�*�l�i�<�+r�c��X�*?Ͷ٦�3�o���iGnMz��?���fsњ"#WC>�Ne삊&|��� T��3���d�����UI��K����?�ֹu�>�{��BD%� %{%���Y�TŔ� �m�g����@=M>����ȱF�C����zT�TL
 i��\
EF�k�8[�zpB���:G2�JSY2G�~��ᇁR�^�o��ɗ$y^D�-p�_b��j)����4�s����^p��^����Vlmv��}�1y�0БT��{�)n�YZS����<��;�[�[����J����B w}�	�b,��mt�JI6��U@�t�ł
B��}�$��)W���8�2kr�s��5Z����9��J/�~%�~}s�pcںs��-�tS��-��Ԥ�=�zn���i2�������y��/���CtW;����۩ͶUݜ�ڑӳ��us��]��҇�f�9����۹%u�  =�����Ϋ.uK8���l/@GX��>�#	'�~�� c*Ќ1�0$N��?M��%�<dn�ħ��³
"
4�)�+<s�ҀA��+�LiNN�iߨ���n���fZ��$n,���{r���s�n�H۹h����k���2�u�����!�^�T<��~�ʮ=P��m��
��;nZ,��b�ߓp�|YPg�`:�~��z���pGAs�ʈ�7T�=���^.a�      �   k  x���]s�D���_������] )�)i�S`z���X�*Yd:�w����Y[�Cg:CK{���K�|C�7̦�f�K*��|Ee&d�돫��K�wܼM�`_�����I�X��I�~��߷	��=�]@�T�(QLp7sUQ7��ZW-�3w��z�CT�TQ�g\a��6P/�z�����̗yu�Ŝ�/\�X�o�8�\�m}�6�+b�̘!R3&��eD�,��h�)�G��c�z�N߻��4�Wo�%��A�)ï	������$H~p�[����]�L�贄��i��|�}��cg�H)�b�(�J�po�kW�/��w�uzr���X�E]�?�n��\��ŏ����M(�@��Ax��I)���#B8,�Hϱ��K�?=)�X�5L]K)�%�C^�x�.&�<&jL5��Ғ�e�s�(=)�.��穈���H�Iƞ���X3����E�k��ϧ�]:�3�w�`���h�z����M��]�;c=b��<���]�H�4��z05�M55\Ѽ�o�w1K��ڎX3C�򪭽�˼�8xt��*]h0d����������z�MఉN����@��`�Gl8�>/5���1b#�����`"GL"���a0: ���P1T፿�`�@$Xu���5\�=*��:�0H h�xA;���c���pcl&�X%D��9ޓ�	� bm��靔C�1�YR`���ϛ
8����!�c(V��-�?7���%%��~��9bd�,�9d0S��[�&�G(V0�x8�DT�?P��V��ͯuӺ�Fn#ƚI��:�̙sͲ.��v14�&����o���Gl іӠ:�����Hg����sy���BLE��MI'��,�u�qӼZ,�䊤���zS�X���?�3`Dk��0̽�;��o�QZ,i�	�����nu�Qb��Q��46�t��鷳�j�2I��qst�� ѫN���QFR���~��_����yY��QV��"`hp,òD�_N��M[������uQ��Z ⴐ�k�1t��_���f��E<L�p~A,����@��ŷo~��Iø7��PYyry�.����N�VK�e1VdT���y���r4���&�ą%��~�n�˼������k�RX;�#c��a"����	Pa�b��"�^��X�,�O̍bT��P�肋���숃��o����!:Y�w��_�w�8��Ȝ���kL�@�AOy��41|!T�Q�O��M�OK3NީI0)����S^�8��ʤ$�H�à	}�>}��Z� ���g@��(��ҋ#�ou�X5n������8��5�x��i'�\>N��F��餻qb��O'x�C��)��ݭR��*�5���v؅q#�E�.Ǟ9U�U�e�찼hTm�v�"�+���]�)&���\	��8L.ί���Y&q\�����>1p����m�Vyy7�O��T��B�3��:v�#���_hQ]�S��4f+߸��ه׆����W��d�4��L{�	jy�F�I_!bz["���p�8�����N��|Y�e}}7�,���~2� K�����u�W����΍Z���u�w�$À��*wQ�S������ů��Mz��r�bvCF8��0L���WuQTc��1�v��9W��O<��O���&��uϕZޤ�đ_E���~��A��#=�`2F'{uhJ�&�����*��awý,���"�"�B�0�������8Y$��oZ�^ϸ+n��E#�;I"S�k�KX�p7�[����1��˂���@�V��.�#qt�����w{������Uіn���ީ�n���:F����Eέ�C�'������?ɳg��z,��      ~   �   x�M�K�0Dמ� R�wa��Vj>�U�=���ƞy��"=yh��C�+ҵ<(q�N�ŀC'6ǚp�
g���PZ������L��.���&�)�nHf7�����j��� }A)z�Q�j��D�tXq�x HEG      |   �  x����r�0���S��FZ��,��(Fq�D���W`$HBj�x�����٣gߍ��ko�!�����LS xB�	�XV�TJ�$ ����f_�IA"k)Lݺ�~�"�!�Vѭ
t�/Qq��`[�fuTᵩ�cT�?g�l�X��yt��/����w���!�s*Ԋ�_܃�i}��'�3�=��aD[i"�	�4����u�0��5ﺱ�%���p��d���6�ö�5wA�	+He݃�E���#�"�IF�����<	[���$D���%�1� ��3���^Ơg�9
H�.��+V=o�q�}�D�|Эs9)1R�f"�Dyh��1����c�a�]ј$�i,�0Zi���1�P�D♄��G�������WJ��C�Yǰo�Ņ��x�i2��چ��+�	�8m������*�i� P1ص���T �+q��>�K��VҘ���b���ty����v�MW�և�+��
�(�2�J �K"o1>�6�NLg7^�e���2�����M%My9Y$�wu��W�˸_Q�,��^�rC��\g����	�?�tm=�=��њ��Ei\p�%�P�Hr�~�f���?U3TQUb�0O��	&���m|�]�W�m���VT�$��ߒ�w�}dc(lo(�v2�CZX�b�q�A�ܯ�t:���\�      �     x���Y��H  ��wWq�_0UU̠��J^b@���������z'g�ۄ	���m���+
�zhؒ��~�����j�J�U�r����D�m�|�ZQiE�rx�ԑ.�O^X��i:;�>O��y�o�5�ك8�%9Q�v)hϙ�B��uˎl����b֞d7%��iF�[G���g���S���@1Z}���ɑ��=�X?��F���R|��-9��+���7��Ӽ�Zֱ�_4�i
`
0�	�hz�1���o���2���(���#>���6�=��GI)�)�?J�^��i2��)��M�,�p�͌u�{[${�p���\%��Ud���3&���ae<��n�2#8�*��on|]�XY/�.�	�C�2.�e����A��k�sl�F� �s�فz���}oq^:�I��P��pz)���ꧡ�SQ��%�i0E��
�w�D4hN�`�	��t�qօݽCx��1�!��!A���AE��{�Hl#���r��j�7�n�KQ5k��_�k���7��	���?J}Sg,߼�G1`Hx vF�m>J��L��z;J�UR3�H���k�}=<�ƭ$G}gQW����ІS�rmy�c�u�z�\�*��}X��IZ�cs����<�v�%ٙ�,�sx{*�s�jSV����f+�5mW���hSi~��q�=s�~��Pw����m�;�*^I���w�-1�/@O33�R<����E�!+ $0܊%B�A�������ps�      �   �  x����n�0ǯ�S�q1`�喝5�u�e7�"78@�؞q���glH+M�������/'`͎�����aǋs�N�@�0�	&,(o�:kpbeC쥢�a�a�*Q)�ʘ�%/Å)A�;Eu��iiJ�4��Oj���?���<3E�94lŮ�g�Zk�yY#2�s�� ��f�J�͕Zcy1�K�Z��{�r��h�����=��s�jx���	�6��p�/R�gn�0�]%��0��J]A����h}�=l�|�õi
fL�����4��u*{j���a����V��_q�)�|�,�lk[4�ق�.T�ߡ(Ͳ���m�Hz5ۅ���~s(�����v��䲺��q.��f�R�5��<�X�[�������ìp�ʻQ���uCV~J�ğk�^#O�େyg��<J�}NK=-���� .�q�Qx��2q�ӑ�\�)X�J�F�~�m���a�8��9{N��þ�/0���pR      �   �  x��Z�nG}}E�]`H�"��u�ȱ.�u�Ҝi�c�'�=������~ɞ��L��%�$6l���Ku��S���?�&��d�N�J�*:�󼣳�p�#<����~4��ި�ۏn�z!��}Vԏ��I|���D<��}|%��bݪ.;��3-Y?���}_�p��d]��b�BThʴ�˘=�+�r)�?���Zi^��]��F,s�f�%U�d<g���
ƕ�͈0"O;I�췚�^�{����3����d�&g�Lɼ�o]��Z��0V�%2���B�ȅ4�B�Y%R6]�����#����+^$x�E�(d.�kt�&��5�L�⎬2Qh��*�d�ķ؎��Rg+N����`�V�����\09cɂ�4|����4���W���E��'9e��8 k!�k�����Պ��b�^0^k��^!+Y�m-k���[�}���!�u�����Ut������5���6#S:��e�vr��v����T��^��_Rα����:K�m��P�|���-�F�{B����ћ-�lNc�%W�b��s�c)���P�L�i�U1U�v+T)1�4p24��	ڪ��Fo��Z��4O��Y����,��xx���:Sދ5\��%ym<����k��|Y�l^0��u,	ELW<��YT`�ٴ�r���N*x4�)4�&���{���	����ĸ�?# m'��%/�^�y.yu/J� �.���*K�Lp��8��Ljhr�+�Q?eQ̘�`�7�k����u�0}�e���Q��+ĥ2{���p_T��/�����}`�?�~�x�˯Da"�XUt�%U�Zdet^	��#�$�,��;���<�/y|�ʩ`����~������#������X��2�S���a���G�$�)670��w�!X�,���h�{���vV/�#c��bR����s&��Ahb4��p�wΠ-p8.��K���������'�s9%���+^e�`�{��yJkf�����дV�پJ�V��Q�ߴN=��=���n���x_p�:h�O����0�E���lmƢ1��ܚ:�Z�o"�o����}��g~.XL�K�� �0�h���Q"9Q�c�����4zyv{�& ���{�*=���~˂�a������d2���WI��:�$>9}�
PM|END������g�A�aO�"1� �`S�$����B_-%�k,K�h����~R��Pޚ�L��|�� �Y�U��()��$|�T�CE�O�����%Y�JԊ��	
��s>�DwI�����"��Bb' �6�L�LvS���(O�<W����3�!i>(p�FT�%Z�,�,�c�Ժ���f���[������͐�uGA��d�iLE�\.��q^����[���M��8�K���OP +P��`ȏ�:�U��]#��NZ�9 B;n1��"�9����$�p�v������ g9�Co�a���l�=1�C�'�{�'O�/b-+��Fr�~�͙�~�0/���߃��PE"�%�_�%��Tȇ\�V*�UAg���N�ľ�������\_ANٝDԘ���ы�=ӝ��"�Ʌv��/�v���Ȫ1��t���+�s�*A��1�3����2+EN$k�%�&�m!`e�5���_�[>yL�%r��a��<z�K��Ҭ�f�q�j��03�@�y��١<��{㾵 �t?:������k[D��>��W-b���������H�2�^�{^q��+�Z��ZE��Ԅ�=�-���4zb��s���7�~`����؊�-�=�ߝ�=�';��6�ie���z�i;���A<��}=�D�Q�~vюiF����	o����D�QυG�(�to �w�ޑ���Xigj��d��5`Ixʕh�;q���Q#��ATZ��J�+A�MD��Ȟ>�
��oՆ?����{�
��ٶߐ�;5��$=�)6���jW���L�M���ۚ�a�y��V�8������	��	�͜���o���(�G�/7���s���S��C>I��d|�sV�,T��7V����f�ipDy�����EM�~+��r��|��_Ҁw����Zt3}�	�\�����/T��X�h"g��z��a�T������(��􂱧�o�e� ��S�o��C�H���^e��J�Mq�*g^&C9�3��8M��@��8J-̓��S�3}&����uw+/���['H�)
�sJ?�½�3�W@��7`���q��^ "�j��m���o�&wV"[Ilg�"V(�9B��\�ʷ�h�N�PϑW���Z�o&�����V��,K�C:�|eM����M�G�M��2�&|�d�2xF����.
�
ЖZ<�N��v�{�����+;� �asW������]�~�~���9뿿��8�~e�þ�b,:b���]_9c
t[b��V\	��y��1^NXk����_��K5�������y)�t�@S;�˥�xB�m	*9�l�)�-�Ĕ�: �R& �`�B��
�@�oH��-�1�����\�}h��z��F�R ��k�h�g��<֌b�D�`�%�IS�ut�ogب���%:�>��Д����C6�����t�ťY�k^6)��t��;��$z��#��CuE�{[�1\}�K��cn=mv!^��Y��f����,sw�� � c����~3�F�>,�q���+I�^%�r7�6�tC�U���3:8��H*/�)�v��.X<-z��pp��̧!�G���+�ߥj��_k��	�/֘ʤ�E[�\��ݝ�
�/���nx�#̩RC�{��+wIV	o�w�v����q�p�a��.����Z�d �|��VP7�u��=vf���Ɲi��V>lU�C�4�Q�XZ��BG����]7���[�N[���)�u�ȥ��Ҏk�F�T8w�R��VC���<%����ϕ�]�����H���5ww_z��<�����t
>=9�����BtBr��wm�׾^q�zs�1eӲ&-��͎��5p�{�ܻ��=�hx]����cM�wX}��7嫹~�~�EH�Kj��4
�������+n{�����ҋM�t�ӧ�~/2 eW���g��ixD�1{����F{Z+vYi�2�5b7*���dZ��+��oE���I�<3��'բ�.�f�mq��(:�k����b�&�`�
���-k���h��fn���Ȝ���O��OT�֍��]N���Ο�����ݭ0��,:�pz��g+z�/�z�*���7=��#4~�>��O�)�_����o9��s��O^{d�ڤ��?ʹ��
�Կ��?�������� -��#      �      x������ � �     
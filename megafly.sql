toc.dat                                                                                             0000600 0004000 0002000 00000146737 13632061351 0014461 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       /            
        x            megafly    12.1    12.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    57596    megafly    DATABASE     �   CREATE DATABASE megafly WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Peru.1252' LC_CTYPE = 'Spanish_Peru.1252';
    DROP DATABASE megafly;
                postgres    false         �            1259    57628 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false         �            1259    57626    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209         �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208         �            1259    57638    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false         �            1259    57636    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211         �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210         �            1259    57620    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false         �            1259    57618    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207         �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206         �            1259    57646 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public         heap    postgres    false         �            1259    57656    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false         �            1259    57654    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215         �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214         �            1259    57644    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213         �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212         �            1259    57664    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false         �            1259    57662 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217         �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216         �            1259    57724    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false         �            1259    57722    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219         �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218         �            1259    57610    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false         �            1259    57608    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205         �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204         �            1259    57599    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false         �            1259    57597    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203         �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202         �            1259    57755    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false         �            1259    57767    main_cate_jueg    TABLE     l   CREATE TABLE public.main_cate_jueg (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);
 "   DROP TABLE public.main_cate_jueg;
       public         heap    postgres    false         �            1259    57765    main_cate_jueg_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_cate_jueg_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.main_cate_jueg_id_seq;
       public          postgres    false    222         �           0    0    main_cate_jueg_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.main_cate_jueg_id_seq OWNED BY public.main_cate_jueg.id;
          public          postgres    false    221         �            1259    57775    main_cate_serv    TABLE     l   CREATE TABLE public.main_cate_serv (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);
 "   DROP TABLE public.main_cate_serv;
       public         heap    postgres    false         �            1259    57773    main_cate_serv_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_cate_serv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.main_cate_serv_id_seq;
       public          postgres    false    224         �           0    0    main_cate_serv_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.main_cate_serv_id_seq OWNED BY public.main_cate_serv.id;
          public          postgres    false    223         �            1259    57807    main_mega_juego    TABLE       CREATE TABLE public.main_mega_juego (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    nom_abre character varying(100) NOT NULL,
    fecha_registro date NOT NULL,
    descripcion character varying(500) NOT NULL,
    descri_abre character varying(100) NOT NULL,
    enlacegd character varying(250) NOT NULL,
    enlacemg character varying(250) NOT NULL,
    enlace_publi character varying(250) NOT NULL,
    imagen character varying(100) NOT NULL,
    imagen2 character varying(100) NOT NULL,
    imagen3 character varying(100) NOT NULL,
    slug character varying(50),
    enlace_publi2 character varying(250) NOT NULL,
    enlace_publi3 character varying(250) NOT NULL,
    enlacegd2 character varying(250) NOT NULL,
    enlacegd3 character varying(250) NOT NULL,
    enlacemg2 character varying(250) NOT NULL,
    enlacemg3 character varying(250) NOT NULL,
    enlace_publimg character varying(250) NOT NULL,
    enlace_publimg2 character varying(250) NOT NULL,
    enlace_publimg3 character varying(250) NOT NULL
);
 #   DROP TABLE public.main_mega_juego;
       public         heap    postgres    false         �            1259    65798    main_mega_juego_categoria_pro    TABLE     �   CREATE TABLE public.main_mega_juego_categoria_pro (
    id integer NOT NULL,
    mega_juego_id integer NOT NULL,
    cate_jueg_id integer NOT NULL
);
 1   DROP TABLE public.main_mega_juego_categoria_pro;
       public         heap    postgres    false         �            1259    65796 $   main_mega_juego_categoria_pro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_mega_juego_categoria_pro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.main_mega_juego_categoria_pro_id_seq;
       public          postgres    false    234         �           0    0 $   main_mega_juego_categoria_pro_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.main_mega_juego_categoria_pro_id_seq OWNED BY public.main_mega_juego_categoria_pro.id;
          public          postgres    false    233         �            1259    57805    main_mega_juego_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_mega_juego_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.main_mega_juego_id_seq;
       public          postgres    false    232         �           0    0    main_mega_juego_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.main_mega_juego_id_seq OWNED BY public.main_mega_juego.id;
          public          postgres    false    231         �            1259    57783    main_mymodel    TABLE     >   CREATE TABLE public.main_mymodel (
    id integer NOT NULL
);
     DROP TABLE public.main_mymodel;
       public         heap    postgres    false         �            1259    57781    main_mymodel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_mymodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.main_mymodel_id_seq;
       public          postgres    false    226         �           0    0    main_mymodel_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.main_mymodel_id_seq OWNED BY public.main_mymodel.id;
          public          postgres    false    225         �            1259    57799    main_servi_juego    TABLE       CREATE TABLE public.main_servi_juego (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    nom_abre character varying(100) NOT NULL,
    fecha_registro date NOT NULL,
    pre_servi double precision NOT NULL,
    categoria_ser_id integer NOT NULL
);
 $   DROP TABLE public.main_servi_juego;
       public         heap    postgres    false         �            1259    57797    main_servi_juego_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_servi_juego_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.main_servi_juego_id_seq;
       public          postgres    false    230         �           0    0    main_servi_juego_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.main_servi_juego_id_seq OWNED BY public.main_servi_juego.id;
          public          postgres    false    229         �            1259    57791 	   main_user    TABLE     �   CREATE TABLE public.main_user (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    edad integer NOT NULL,
    imagen character varying(100) NOT NULL
);
    DROP TABLE public.main_user;
       public         heap    postgres    false         �            1259    57789    main_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.main_user_id_seq;
       public          postgres    false    228         �           0    0    main_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.main_user_id_seq OWNED BY public.main_user.id;
          public          postgres    false    227         �
           2604    57631    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209         �
           2604    57641    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211         �
           2604    57623    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207         �
           2604    57649    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213         �
           2604    57659    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215         �
           2604    57667    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217         �
           2604    57727    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219         �
           2604    57613    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205         �
           2604    57602    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203         �
           2604    57770    main_cate_jueg id    DEFAULT     v   ALTER TABLE ONLY public.main_cate_jueg ALTER COLUMN id SET DEFAULT nextval('public.main_cate_jueg_id_seq'::regclass);
 @   ALTER TABLE public.main_cate_jueg ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222         �
           2604    57778    main_cate_serv id    DEFAULT     v   ALTER TABLE ONLY public.main_cate_serv ALTER COLUMN id SET DEFAULT nextval('public.main_cate_serv_id_seq'::regclass);
 @   ALTER TABLE public.main_cate_serv ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224         �
           2604    57810    main_mega_juego id    DEFAULT     x   ALTER TABLE ONLY public.main_mega_juego ALTER COLUMN id SET DEFAULT nextval('public.main_mega_juego_id_seq'::regclass);
 A   ALTER TABLE public.main_mega_juego ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232         �
           2604    65801     main_mega_juego_categoria_pro id    DEFAULT     �   ALTER TABLE ONLY public.main_mega_juego_categoria_pro ALTER COLUMN id SET DEFAULT nextval('public.main_mega_juego_categoria_pro_id_seq'::regclass);
 O   ALTER TABLE public.main_mega_juego_categoria_pro ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234         �
           2604    57786    main_mymodel id    DEFAULT     r   ALTER TABLE ONLY public.main_mymodel ALTER COLUMN id SET DEFAULT nextval('public.main_mymodel_id_seq'::regclass);
 >   ALTER TABLE public.main_mymodel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226         �
           2604    57802    main_servi_juego id    DEFAULT     z   ALTER TABLE ONLY public.main_servi_juego ALTER COLUMN id SET DEFAULT nextval('public.main_servi_juego_id_seq'::regclass);
 B   ALTER TABLE public.main_servi_juego ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230         �
           2604    57794    main_user id    DEFAULT     l   ALTER TABLE ONLY public.main_user ALTER COLUMN id SET DEFAULT nextval('public.main_user_id_seq'::regclass);
 ;   ALTER TABLE public.main_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228         �          0    57628 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209       3016.dat �          0    57638    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211       3018.dat �          0    57620    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207       3014.dat �          0    57646 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213       3020.dat �          0    57656    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215       3022.dat �          0    57664    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217       3024.dat �          0    57724    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219       3026.dat �          0    57610    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205       3012.dat �          0    57599    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203       3010.dat �          0    57755    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220       3027.dat �          0    57767    main_cate_jueg 
   TABLE DATA           4   COPY public.main_cate_jueg (id, nombre) FROM stdin;
    public          postgres    false    222       3029.dat �          0    57775    main_cate_serv 
   TABLE DATA           4   COPY public.main_cate_serv (id, nombre) FROM stdin;
    public          postgres    false    224       3031.dat �          0    57807    main_mega_juego 
   TABLE DATA           '  COPY public.main_mega_juego (id, nombre, nom_abre, fecha_registro, descripcion, descri_abre, enlacegd, enlacemg, enlace_publi, imagen, imagen2, imagen3, slug, enlace_publi2, enlace_publi3, enlacegd2, enlacegd3, enlacemg2, enlacemg3, enlace_publimg, enlace_publimg2, enlace_publimg3) FROM stdin;
    public          postgres    false    232       3039.dat �          0    65798    main_mega_juego_categoria_pro 
   TABLE DATA           X   COPY public.main_mega_juego_categoria_pro (id, mega_juego_id, cate_jueg_id) FROM stdin;
    public          postgres    false    234       3041.dat �          0    57783    main_mymodel 
   TABLE DATA           *   COPY public.main_mymodel (id) FROM stdin;
    public          postgres    false    226       3033.dat �          0    57799    main_servi_juego 
   TABLE DATA           m   COPY public.main_servi_juego (id, nombre, nom_abre, fecha_registro, pre_servi, categoria_ser_id) FROM stdin;
    public          postgres    false    230       3037.dat �          0    57791 	   main_user 
   TABLE DATA           G   COPY public.main_user (id, nombre, apellido, edad, imagen) FROM stdin;
    public          postgres    false    228       3035.dat �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);
          public          postgres    false    208         �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 26, true);
          public          postgres    false    210         �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
          public          postgres    false    206         �           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 4, true);
          public          postgres    false    214         �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 9, true);
          public          postgres    false    212         �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216         �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 29, true);
          public          postgres    false    218         �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
          public          postgres    false    204                     0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 30, true);
          public          postgres    false    202                    0    0    main_cate_jueg_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.main_cate_jueg_id_seq', 6, true);
          public          postgres    false    221                    0    0    main_cate_serv_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.main_cate_serv_id_seq', 1, false);
          public          postgres    false    223                    0    0 $   main_mega_juego_categoria_pro_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.main_mega_juego_categoria_pro_id_seq', 9, true);
          public          postgres    false    233                    0    0    main_mega_juego_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.main_mega_juego_id_seq', 5, true);
          public          postgres    false    231                    0    0    main_mymodel_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.main_mymodel_id_seq', 1, false);
          public          postgres    false    225                    0    0    main_servi_juego_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.main_servi_juego_id_seq', 1, false);
          public          postgres    false    229                    0    0    main_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.main_user_id_seq', 1, false);
          public          postgres    false    227                     2606    57753    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209                    2606    57690 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211                    2606    57643 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211                    2606    57633    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209         �
           2606    57676 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207         �
           2606    57625 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207                    2606    57661 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215                    2606    57705 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215         
           2606    57651    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213                    2606    57669 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217                    2606    57719 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217                    2606    57747     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213                    2606    57733 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219         �
           2606    57617 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205         �
           2606    57615 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205         �
           2606    57607 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203                     2606    57762 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220         #           2606    57772 "   main_cate_jueg main_cate_jueg_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.main_cate_jueg
    ADD CONSTRAINT main_cate_jueg_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.main_cate_jueg DROP CONSTRAINT main_cate_jueg_pkey;
       public            postgres    false    222         %           2606    57780 "   main_cate_serv main_cate_serv_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.main_cate_serv
    ADD CONSTRAINT main_cate_serv_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.main_cate_serv DROP CONSTRAINT main_cate_serv_pkey;
       public            postgres    false    224         2           2606    65815 ]   main_mega_juego_categoria_pro main_mega_juego_categori_mega_juego_id_cate_jueg__c7ec0a87_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_mega_juego_categoria_pro
    ADD CONSTRAINT main_mega_juego_categori_mega_juego_id_cate_jueg__c7ec0a87_uniq UNIQUE (mega_juego_id, cate_jueg_id);
 �   ALTER TABLE ONLY public.main_mega_juego_categoria_pro DROP CONSTRAINT main_mega_juego_categori_mega_juego_id_cate_jueg__c7ec0a87_uniq;
       public            postgres    false    234    234         6           2606    65803 @   main_mega_juego_categoria_pro main_mega_juego_categoria_pro_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.main_mega_juego_categoria_pro
    ADD CONSTRAINT main_mega_juego_categoria_pro_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.main_mega_juego_categoria_pro DROP CONSTRAINT main_mega_juego_categoria_pro_pkey;
       public            postgres    false    234         .           2606    57815 $   main_mega_juego main_mega_juego_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.main_mega_juego
    ADD CONSTRAINT main_mega_juego_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.main_mega_juego DROP CONSTRAINT main_mega_juego_pkey;
       public            postgres    false    232         '           2606    57788    main_mymodel main_mymodel_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.main_mymodel
    ADD CONSTRAINT main_mymodel_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.main_mymodel DROP CONSTRAINT main_mymodel_pkey;
       public            postgres    false    226         ,           2606    57804 &   main_servi_juego main_servi_juego_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.main_servi_juego
    ADD CONSTRAINT main_servi_juego_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.main_servi_juego DROP CONSTRAINT main_servi_juego_pkey;
       public            postgres    false    230         )           2606    57796    main_user main_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.main_user
    ADD CONSTRAINT main_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.main_user DROP CONSTRAINT main_user_pkey;
       public            postgres    false    228         �
           1259    57754    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209                    1259    57691 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211                    1259    57692 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211         �
           1259    57677 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207                    1259    57707 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215                    1259    57706 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215                    1259    57721 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217                    1259    57720 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217                    1259    57748     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213                    1259    57744 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219                    1259    57745 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219                    1259    57764 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220         !           1259    57763 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220         3           1259    65817 3   main_mega_juego_categoria_pro_cate_jueg_id_6f229cca    INDEX     �   CREATE INDEX main_mega_juego_categoria_pro_cate_jueg_id_6f229cca ON public.main_mega_juego_categoria_pro USING btree (cate_jueg_id);
 G   DROP INDEX public.main_mega_juego_categoria_pro_cate_jueg_id_6f229cca;
       public            postgres    false    234         4           1259    65816 4   main_mega_juego_categoria_pro_mega_juego_id_2a973197    INDEX     �   CREATE INDEX main_mega_juego_categoria_pro_mega_juego_id_2a973197 ON public.main_mega_juego_categoria_pro USING btree (mega_juego_id);
 H   DROP INDEX public.main_mega_juego_categoria_pro_mega_juego_id_2a973197;
       public            postgres    false    234         /           1259    65794    main_mega_juego_slug_32e08f52    INDEX     Y   CREATE INDEX main_mega_juego_slug_32e08f52 ON public.main_mega_juego USING btree (slug);
 1   DROP INDEX public.main_mega_juego_slug_32e08f52;
       public            postgres    false    232         0           1259    65793 "   main_mega_juego_slug_32e08f52_like    INDEX     r   CREATE INDEX main_mega_juego_slug_32e08f52_like ON public.main_mega_juego USING btree (slug varchar_pattern_ops);
 6   DROP INDEX public.main_mega_juego_slug_32e08f52_like;
       public            postgres    false    232         *           1259    57821 *   main_servi_juego_categoria_ser_id_9492b7d8    INDEX     s   CREATE INDEX main_servi_juego_categoria_ser_id_9492b7d8 ON public.main_servi_juego USING btree (categoria_ser_id);
 >   DROP INDEX public.main_servi_juego_categoria_ser_id_9492b7d8;
       public            postgres    false    230         9           2606    57684 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2813    207    211         8           2606    57679 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    211    2818    209         7           2606    57670 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    207    2808         ;           2606    57699 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    209    2818         :           2606    57694 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2826    215    213         =           2606    57713 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    217    207    2813         <           2606    57708 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    217    213    2826         >           2606    57734 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    219    2808    205         ?           2606    57739 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    219    2826    213         B           2606    65809 U   main_mega_juego_categoria_pro main_mega_juego_cate_cate_jueg_id_6f229cca_fk_main_cate    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_mega_juego_categoria_pro
    ADD CONSTRAINT main_mega_juego_cate_cate_jueg_id_6f229cca_fk_main_cate FOREIGN KEY (cate_jueg_id) REFERENCES public.main_cate_jueg(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.main_mega_juego_categoria_pro DROP CONSTRAINT main_mega_juego_cate_cate_jueg_id_6f229cca_fk_main_cate;
       public          postgres    false    234    2851    222         A           2606    65804 V   main_mega_juego_categoria_pro main_mega_juego_cate_mega_juego_id_2a973197_fk_main_mega    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_mega_juego_categoria_pro
    ADD CONSTRAINT main_mega_juego_cate_mega_juego_id_2a973197_fk_main_mega FOREIGN KEY (mega_juego_id) REFERENCES public.main_mega_juego(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.main_mega_juego_categoria_pro DROP CONSTRAINT main_mega_juego_cate_mega_juego_id_2a973197_fk_main_mega;
       public          postgres    false    2862    234    232         @           2606    57816 P   main_servi_juego main_servi_juego_categoria_ser_id_9492b7d8_fk_main_cate_serv_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_servi_juego
    ADD CONSTRAINT main_servi_juego_categoria_ser_id_9492b7d8_fk_main_cate_serv_id FOREIGN KEY (categoria_ser_id) REFERENCES public.main_cate_serv(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.main_servi_juego DROP CONSTRAINT main_servi_juego_categoria_ser_id_9492b7d8_fk_main_cate_serv_id;
       public          postgres    false    230    224    2853                                         3016.dat                                                                                            0000600 0004000 0002000 00000000037 13632061351 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Administrador
2	Usuario
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3018.dat                                                                                            0000600 0004000 0002000 00000000314 13632061351 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	25
2	1	26
3	1	27
4	1	28
5	1	29
6	1	30
7	1	31
8	1	32
9	1	33
10	1	34
11	1	35
12	1	36
13	1	37
14	1	38
15	1	39
16	1	40
17	1	41
18	1	42
19	1	43
20	1	44
21	1	45
22	1	46
23	1	47
24	1	48
25	2	48
26	2	44
\.


                                                                                                                                                                                                                                                                                                                    3014.dat                                                                                            0000600 0004000 0002000 00000003510 13632061351 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Can add log entry	1	add_logentry
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
25	Can add my model	7	add_mymodel
26	Can change my model	7	change_mymodel
27	Can delete my model	7	delete_mymodel
28	Can view my model	7	view_mymodel
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add servi_juego	9	add_servi_juego
34	Can change servi_juego	9	change_servi_juego
35	Can delete servi_juego	9	delete_servi_juego
36	Can view servi_juego	9	view_servi_juego
37	Can add cate_serv	10	add_cate_serv
38	Can change cate_serv	10	change_cate_serv
39	Can delete cate_serv	10	delete_cate_serv
40	Can view cate_serv	10	view_cate_serv
41	Can add mega_juego	11	add_mega_juego
42	Can change mega_juego	11	change_mega_juego
43	Can delete mega_juego	11	delete_mega_juego
44	Can view mega_juego	11	view_mega_juego
45	Can add cate_ jueg	12	add_cate_jueg
46	Can change cate_ jueg	12	change_cate_jueg
47	Can delete cate_ jueg	12	delete_cate_jueg
48	Can view cate_ jueg	12	view_cate_jueg
\.


                                                                                                                                                                                        3020.dat                                                                                            0000600 0004000 0002000 00000000730 13632061352 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        9	pbkdf2_sha256$150000$77seWzPfYTBs$sxklESAeeuI+nGudCSb5u1MMY8DGGsOe6kjrF5xyHSk=	2020-03-06 19:05:59.960823-05	f	liz				f	t	2020-03-06 19:05:59.54655-05
2	pbkdf2_sha256$150000$WrpxDrk1N9qU$5w4XiVXMeXPfPneZHPf1xch9tKA1Je3LiYKOvJi0D8k=	2020-03-09 10:06:34.109284-05	f	luis				f	t	2020-03-05 18:44:25-05
1	pbkdf2_sha256$150000$cyXvM4PN3xoq$0HsRM8qZ/X1c0uUrWCT9nZBWRLcSB2sdGCPQROrLHgc=	2020-03-09 23:16:17.630563-05	t	jorge			jorge@hotmail.com	t	t	2020-03-05 17:43:59-05
\.


                                        3022.dat                                                                                            0000600 0004000 0002000 00000000027 13632061352 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1
2	2	2
4	9	2
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3024.dat                                                                                            0000600 0004000 0002000 00000000005 13632061352 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3026.dat                                                                                            0000600 0004000 0002000 00000005256 13632061352 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2020-03-05 18:23:23.952493-05	1	Administrador	1	[{"added": {}}]	3	1
2	2020-03-05 18:23:50.703688-05	2	Usuario	1	[{"added": {}}]	3	1
3	2020-03-05 18:44:25.517007-05	2	luis	1	[{"added": {}}]	4	1
4	2020-03-05 18:44:48.294247-05	1	jorge	2	[{"changed": {"fields": ["groups"]}}]	4	1
5	2020-03-05 18:44:54.577233-05	2	luis	2	[{"changed": {"fields": ["groups"]}}]	4	1
6	2020-03-06 19:02:39.533209-05	5	yadira	3		4	1
7	2020-03-06 19:02:44.290784-05	3	Tino	3		4	1
8	2020-03-06 19:05:28.824896-05	7	lisseth	3		4	1
9	2020-03-06 19:05:33.718028-05	6	yadira	3		4	1
10	2020-03-06 19:05:45.29096-05	4	liz	3		4	1
11	2020-03-09 09:35:00.326423-05	2	Resident Evil 2 2019 Deluxe Edition	1	[{"added": {}}]	11	1
12	2020-03-09 09:36:28.676873-05	2	Resident Evil 2 2019 Deluxe Edition	2	[{"changed": {"fields": ["slug"]}}]	11	1
13	2020-03-09 12:55:17.932397-05	2	Terror	1	[{"added": {}}]	12	1
14	2020-03-09 12:55:26.225218-05	3	Aventura	1	[{"added": {}}]	12	1
15	2020-03-09 12:55:37.279287-05	4	Suspenso	1	[{"added": {}}]	12	1
16	2020-03-09 18:36:53.046163-05	5	Simulador	1	[{"added": {}}]	12	1
17	2020-03-09 18:37:10.812905-05	6	Mundo Abierto	1	[{"added": {}}]	12	1
18	2020-03-09 19:03:51.990887-05	5	American Truck Simulator	2	[{"changed": {"fields": ["enlacegd", "enlacegd2", "enlace_publi", "enlace_publi2"]}}]	11	1
19	2020-03-09 19:04:06.007875-05	4	Dragon Ball Z: Kakarot	2	[{"changed": {"fields": ["enlacegd2", "enlacemg"]}}]	11	1
20	2020-03-09 19:04:23.549969-05	2	Resident Evil 2 2019 Deluxe Edition	2	[{"changed": {"fields": ["enlacegd2", "enlacemg", "categoria_pro"]}}]	11	1
21	2020-03-09 19:04:40.585738-05	1	Jump Force	2	[{"changed": {"fields": ["categoria_pro"]}}]	11	1
22	2020-03-09 19:10:30.072228-05	5	American Truck Simulator	2	[{"changed": {"fields": ["enlacegd3", "enlacemg", "enlacemg2", "enlacemg3", "enlace_publi3"]}}]	11	1
23	2020-03-09 23:18:49.073589-05	2	Resident Evil 2 2019 Deluxe Edition	2	[{"changed": {"fields": ["enlace_publi", "enlace_publi2"]}}]	11	1
24	2020-03-09 23:19:28.808964-05	4	Dragon Ball Z: Kakarot	2	[{"changed": {"fields": ["enlace_publi", "enlace_publi2"]}}]	11	1
25	2020-03-09 23:19:51.932883-05	5	American Truck Simulator	2	[{"changed": {"fields": ["enlacegd2", "enlacegd3", "enlacemg2", "enlacemg3", "enlace_publi2", "enlace_publi3", "enlace_publimg"]}}]	11	1
26	2020-03-09 23:20:03.231219-05	2	Resident Evil 2 2019 Deluxe Edition	2	[{"changed": {"fields": ["enlace_publimg", "enlace_publimg2"]}}]	11	1
27	2020-03-09 23:20:12.729837-05	4	Dragon Ball Z: Kakarot	2	[{"changed": {"fields": ["enlace_publimg", "enlace_publimg2"]}}]	11	1
28	2020-03-09 23:20:12.815894-05	4	Dragon Ball Z: Kakarot	2	[]	11	1
29	2020-03-09 23:20:21.894767-05	1	Jump Force	2	[{"changed": {"fields": ["enlace_publimg"]}}]	11	1
\.


                                                                                                                                                                                                                                                                                                                                                  3012.dat                                                                                            0000600 0004000 0002000 00000000324 13632061352 0014237 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	main	mymodel
8	main	user
9	main	servi_juego
10	main	cate_serv
11	main	mega_juego
12	main	cate_jueg
\.


                                                                                                                                                                                                                                                                                                            3010.dat                                                                                            0000600 0004000 0002000 00000003645 13632061352 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	contenttypes	0001_initial	2020-03-05 17:40:46.349217-05
2	auth	0001_initial	2020-03-05 17:40:46.698836-05
3	admin	0001_initial	2020-03-05 17:40:47.13311-05
4	admin	0002_logentry_remove_auto_add	2020-03-05 17:40:47.191592-05
5	admin	0003_logentry_add_action_flag_choices	2020-03-05 17:40:47.212609-05
6	contenttypes	0002_remove_content_type_name	2020-03-05 17:40:47.255637-05
7	auth	0002_alter_permission_name_max_length	2020-03-05 17:40:47.265561-05
8	auth	0003_alter_user_email_max_length	2020-03-05 17:40:47.277566-05
9	auth	0004_alter_user_username_opts	2020-03-05 17:40:47.288573-05
10	auth	0005_alter_user_last_login_null	2020-03-05 17:40:47.317083-05
11	auth	0006_require_contenttypes_0002	2020-03-05 17:40:47.320085-05
12	auth	0007_alter_validators_add_error_messages	2020-03-05 17:40:47.335096-05
13	auth	0008_alter_user_username_max_length	2020-03-05 17:40:47.385159-05
14	auth	0009_alter_user_last_name_max_length	2020-03-05 17:40:47.40117-05
15	auth	0010_alter_group_name_max_length	2020-03-05 17:40:47.417181-05
16	auth	0011_update_proxy_permissions	2020-03-05 17:40:47.430189-05
17	sessions	0001_initial	2020-03-05 17:40:47.511151-05
18	main	0001_initial	2020-03-05 18:21:49.953975-05
19	main	0002_mega_juego_slug	2020-03-08 23:08:01.381205-05
20	main	0003_auto_20200308_2359	2020-03-09 00:00:08.374675-05
21	main	0004_auto_20200309_0840	2020-03-09 08:40:37.050104-05
22	main	0005_auto_20200309_0858	2020-03-09 08:59:04.064226-05
23	main	0006_mega_juego_cat_check	2020-03-09 12:07:37.992106-05
24	main	0007_remove_mega_juego_cat_check	2020-03-09 12:54:41.345096-05
25	main	0008_auto_20200309_1704	2020-03-09 17:04:53.726083-05
26	main	0009_auto_20200309_1744	2020-03-09 17:44:35.679862-05
27	main	0010_auto_20200309_1748	2020-03-09 17:48:32.519063-05
28	main	0011_auto_20200309_1902	2020-03-09 19:03:02.732823-05
29	main	0012_auto_20200309_1920	2020-03-09 19:20:34.736295-05
30	main	0013_auto_20200310_0927	2020-03-10 09:27:37.027022-05
\.


                                                                                           3027.dat                                                                                            0000600 0004000 0002000 00000000501 13632061352 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        9iinbgkyo15vstv2dsz95g04lgf94yyn	Mzk0YzI0MWJhMWQ2OTIwMmVjODgyNGVhOTJiNmIxMDdhNjBkNzI5Yzp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODA4NTU1NTk0ODllZDU5MDE5ZDY4NzdmMGM1YzdkMWQ0Yzk2MmY0In0=	2020-03-20 19:04:46.648708-05
\.


                                                                                                                                                                                               3029.dat                                                                                            0000600 0004000 0002000 00000000112 13632061352 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Acción
2	Terror
3	Aventura
4	Suspenso
5	Simulador
6	Mundo Abierto
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                      3031.dat                                                                                            0000600 0004000 0002000 00000000005 13632061352 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3039.dat                                                                                            0000600 0004000 0002000 00000006247 13632061352 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4	Dragon Ball Z: Kakarot	dragon ball z	2020-03-09	Es un videojuego de lucha desarrollado por Spike Chunsoft y distribuido por Bandai Namco, para las plataformas PlayStation 4, Xbox One y Microsoft Windows.1​ El juego está protagonizado por personajes de mangas publicados en la revista Shōnen Jump. Su fecha de lanzamiento fue el 15 de febrero de 2019	Es un videojuego de lucha desarrollado por Spike Chunsoft y distribuido por Bandai Namco	https://drive.google.com/drive/folders/1SmFF5nBtZ1o11cmb4BJM-ytNECB2oLbK		https://fc.lc/gH6KY4	1k_WoAUoou.jpg	GPFDTWKAWNH77MD5S6ZDHHGUMU_Yw8AVLl.jpg	download_dVH80sy.jpg	dragon-ball-z-kakarot	https://fc.lc/bg1mTpH		https://drive.google.com/drive/folders/16YQQvTyhVpNIugJlbNcmqG5X4AafCrw3				https://fc.lc/gH6KY4	https://fc.lc/bg1mTpH	
1	Jump Force	jump force	2020-02-27	Es un videojuego de lucha desarrollado por Spike Chunsoft y distribuido por Bandai Namco, para las plataformas PlayStation 4, Xbox One y Microsoft Windows.1​ El juego está protagonizado por personajes de mangas publicados en la revista Shōnen Jump. Su fecha de lanzamiento fue el 15 de febrero de 2019	Es un videojuego de lucha desarrollado por Spike Chunsoft y distribuido por Bandai Namco	https://drive.google.com/drive/folders/1n8koND_4uE8TWnsf1XSYDUVyXTC0pSB_		https://fc.lc/SMzIM	12.jpg	2.jpg	6QIX4TRDMJC3ZHRGPOERPWPCPA.jpg	jump-force							https://fc.lc/SMzIM		
5	American Truck Simulator	american truck simulator	2020-03-09	American Truck Simulator es un juego independiente y de simulación en donde tendrás la experiencia de conducir los grandes camiones y legendarios con cargamentos a través de la soleada ciudad de California. American Truck Simulator te lleva en un viaje a través de los impresionantes paisajes y monumentos reconocidos en todo los Estados Unidos. Encuentra nuevas características y nuevas herramientas para cumplir el mercado de fletes locales y ser parte de una de las mayores empresas de transporte	American Truck Simulator es un juego independiente y de simulación en donde tendrás la experiencia d	https://drive.google.com/drive/folders/1QD-1GkSyFR_Tl_maWHohQhfahEwW430u	https://drive.google.com/drive/folders/1QD-1GkSyFR_Tl_maWHohQhfahEwW430u	https://fc.lc/0DAj3zU1	71WVs0sgb2L._SY445_.jpg	zoom_4.jpg	images.jpg	american-truck-simulator							https://fc.lc/0DAj3zU1		
2	Resident Evil 2 2019 Deluxe Edition	Resident Evil 2 2019	2020-03-09	Resident Evil 2 2019 Deluxe Edition ElAmigos: Juega campañas individuales tanto para Leon Kennedy como para Claire Redfield con una flamante nueva vista en 3.ª persona mientras exploras las áreas infestadas de zombis de Raccoon City, ahora reconstruido espectacularmente con el motor RE Engine de Capcom. Nuevos rompecabezas, tramas y áreas para que tanto los nuevos fans como los más veteranos descubran terroríficas nuevas sorpresas.	Resident Evil 2 ​ —cuyo título original es Biohazard 2 —​ es un videojuego japonés	https://drive.google.com/drive/folders/10aH7BSFfRLOANE0w8J2nArlgTFzPB5xl		https://fc.lc/JF0kbdP	1.jpg	2_bmgkHga.jpg	4.jpg	resident-evil-2-2019-deluxe-edition	https://fc.lc/8xR01U		https://drive.google.com/drive/folders/1WOTg6PZQJEUuALmdv4hiukTsDJUEKWnX				https://fc.lc/JF0kbdP	https://fc.lc/8xR01U	
\.


                                                                                                                                                                                                                                                                                                                                                         3041.dat                                                                                            0000600 0004000 0002000 00000000073 13632061352 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	4	1
2	4	3
3	5	5
4	5	6
5	2	2
6	2	4
7	1	1
8	1	3
9	1	6
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3033.dat                                                                                            0000600 0004000 0002000 00000000005 13632061352 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3037.dat                                                                                            0000600 0004000 0002000 00000000005 13632061352 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3035.dat                                                                                            0000600 0004000 0002000 00000000005 13632061352 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000116736 13632061352 0015403 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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

DROP DATABASE megafly;
--
-- Name: megafly; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE megafly WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Peru.1252' LC_CTYPE = 'Spanish_Peru.1252';


ALTER DATABASE megafly OWNER TO postgres;

\connect megafly

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
-- Name: main_cate_jueg; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_cate_jueg (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.main_cate_jueg OWNER TO postgres;

--
-- Name: main_cate_jueg_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_cate_jueg_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_cate_jueg_id_seq OWNER TO postgres;

--
-- Name: main_cate_jueg_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_cate_jueg_id_seq OWNED BY public.main_cate_jueg.id;


--
-- Name: main_cate_serv; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_cate_serv (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.main_cate_serv OWNER TO postgres;

--
-- Name: main_cate_serv_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_cate_serv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_cate_serv_id_seq OWNER TO postgres;

--
-- Name: main_cate_serv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_cate_serv_id_seq OWNED BY public.main_cate_serv.id;


--
-- Name: main_mega_juego; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_mega_juego (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    nom_abre character varying(100) NOT NULL,
    fecha_registro date NOT NULL,
    descripcion character varying(500) NOT NULL,
    descri_abre character varying(100) NOT NULL,
    enlacegd character varying(250) NOT NULL,
    enlacemg character varying(250) NOT NULL,
    enlace_publi character varying(250) NOT NULL,
    imagen character varying(100) NOT NULL,
    imagen2 character varying(100) NOT NULL,
    imagen3 character varying(100) NOT NULL,
    slug character varying(50),
    enlace_publi2 character varying(250) NOT NULL,
    enlace_publi3 character varying(250) NOT NULL,
    enlacegd2 character varying(250) NOT NULL,
    enlacegd3 character varying(250) NOT NULL,
    enlacemg2 character varying(250) NOT NULL,
    enlacemg3 character varying(250) NOT NULL,
    enlace_publimg character varying(250) NOT NULL,
    enlace_publimg2 character varying(250) NOT NULL,
    enlace_publimg3 character varying(250) NOT NULL
);


ALTER TABLE public.main_mega_juego OWNER TO postgres;

--
-- Name: main_mega_juego_categoria_pro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_mega_juego_categoria_pro (
    id integer NOT NULL,
    mega_juego_id integer NOT NULL,
    cate_jueg_id integer NOT NULL
);


ALTER TABLE public.main_mega_juego_categoria_pro OWNER TO postgres;

--
-- Name: main_mega_juego_categoria_pro_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_mega_juego_categoria_pro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_mega_juego_categoria_pro_id_seq OWNER TO postgres;

--
-- Name: main_mega_juego_categoria_pro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_mega_juego_categoria_pro_id_seq OWNED BY public.main_mega_juego_categoria_pro.id;


--
-- Name: main_mega_juego_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_mega_juego_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_mega_juego_id_seq OWNER TO postgres;

--
-- Name: main_mega_juego_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_mega_juego_id_seq OWNED BY public.main_mega_juego.id;


--
-- Name: main_mymodel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_mymodel (
    id integer NOT NULL
);


ALTER TABLE public.main_mymodel OWNER TO postgres;

--
-- Name: main_mymodel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_mymodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_mymodel_id_seq OWNER TO postgres;

--
-- Name: main_mymodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_mymodel_id_seq OWNED BY public.main_mymodel.id;


--
-- Name: main_servi_juego; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_servi_juego (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    nom_abre character varying(100) NOT NULL,
    fecha_registro date NOT NULL,
    pre_servi double precision NOT NULL,
    categoria_ser_id integer NOT NULL
);


ALTER TABLE public.main_servi_juego OWNER TO postgres;

--
-- Name: main_servi_juego_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_servi_juego_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_servi_juego_id_seq OWNER TO postgres;

--
-- Name: main_servi_juego_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_servi_juego_id_seq OWNED BY public.main_servi_juego.id;


--
-- Name: main_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_user (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    edad integer NOT NULL,
    imagen character varying(100) NOT NULL
);


ALTER TABLE public.main_user OWNER TO postgres;

--
-- Name: main_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_user_id_seq OWNER TO postgres;

--
-- Name: main_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_user_id_seq OWNED BY public.main_user.id;


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
-- Name: main_cate_jueg id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_cate_jueg ALTER COLUMN id SET DEFAULT nextval('public.main_cate_jueg_id_seq'::regclass);


--
-- Name: main_cate_serv id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_cate_serv ALTER COLUMN id SET DEFAULT nextval('public.main_cate_serv_id_seq'::regclass);


--
-- Name: main_mega_juego id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_mega_juego ALTER COLUMN id SET DEFAULT nextval('public.main_mega_juego_id_seq'::regclass);


--
-- Name: main_mega_juego_categoria_pro id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_mega_juego_categoria_pro ALTER COLUMN id SET DEFAULT nextval('public.main_mega_juego_categoria_pro_id_seq'::regclass);


--
-- Name: main_mymodel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_mymodel ALTER COLUMN id SET DEFAULT nextval('public.main_mymodel_id_seq'::regclass);


--
-- Name: main_servi_juego id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_servi_juego ALTER COLUMN id SET DEFAULT nextval('public.main_servi_juego_id_seq'::regclass);


--
-- Name: main_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_user ALTER COLUMN id SET DEFAULT nextval('public.main_user_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.
COPY public.auth_group (id, name) FROM '$$PATH$$/3016.dat';

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.
COPY public.auth_group_permissions (id, group_id, permission_id) FROM '$$PATH$$/3018.dat';

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
\.
COPY public.auth_permission (id, name, content_type_id, codename) FROM '$$PATH$$/3014.dat';

--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.
COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM '$$PATH$$/3020.dat';

--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.
COPY public.auth_user_groups (id, user_id, group_id) FROM '$$PATH$$/3022.dat';

--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.
COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM '$$PATH$$/3024.dat';

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.
COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM '$$PATH$$/3026.dat';

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
\.
COPY public.django_content_type (id, app_label, model) FROM '$$PATH$$/3012.dat';

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
\.
COPY public.django_migrations (id, app, name, applied) FROM '$$PATH$$/3010.dat';

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.
COPY public.django_session (session_key, session_data, expire_date) FROM '$$PATH$$/3027.dat';

--
-- Data for Name: main_cate_jueg; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.main_cate_jueg (id, nombre) FROM stdin;
\.
COPY public.main_cate_jueg (id, nombre) FROM '$$PATH$$/3029.dat';

--
-- Data for Name: main_cate_serv; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.main_cate_serv (id, nombre) FROM stdin;
\.
COPY public.main_cate_serv (id, nombre) FROM '$$PATH$$/3031.dat';

--
-- Data for Name: main_mega_juego; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.main_mega_juego (id, nombre, nom_abre, fecha_registro, descripcion, descri_abre, enlacegd, enlacemg, enlace_publi, imagen, imagen2, imagen3, slug, enlace_publi2, enlace_publi3, enlacegd2, enlacegd3, enlacemg2, enlacemg3, enlace_publimg, enlace_publimg2, enlace_publimg3) FROM stdin;
\.
COPY public.main_mega_juego (id, nombre, nom_abre, fecha_registro, descripcion, descri_abre, enlacegd, enlacemg, enlace_publi, imagen, imagen2, imagen3, slug, enlace_publi2, enlace_publi3, enlacegd2, enlacegd3, enlacemg2, enlacemg3, enlace_publimg, enlace_publimg2, enlace_publimg3) FROM '$$PATH$$/3039.dat';

--
-- Data for Name: main_mega_juego_categoria_pro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.main_mega_juego_categoria_pro (id, mega_juego_id, cate_jueg_id) FROM stdin;
\.
COPY public.main_mega_juego_categoria_pro (id, mega_juego_id, cate_jueg_id) FROM '$$PATH$$/3041.dat';

--
-- Data for Name: main_mymodel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.main_mymodel (id) FROM stdin;
\.
COPY public.main_mymodel (id) FROM '$$PATH$$/3033.dat';

--
-- Data for Name: main_servi_juego; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.main_servi_juego (id, nombre, nom_abre, fecha_registro, pre_servi, categoria_ser_id) FROM stdin;
\.
COPY public.main_servi_juego (id, nombre, nom_abre, fecha_registro, pre_servi, categoria_ser_id) FROM '$$PATH$$/3037.dat';

--
-- Data for Name: main_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.main_user (id, nombre, apellido, edad, imagen) FROM stdin;
\.
COPY public.main_user (id, nombre, apellido, edad, imagen) FROM '$$PATH$$/3035.dat';

--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 26, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 4, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 9, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 29, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 30, true);


--
-- Name: main_cate_jueg_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_cate_jueg_id_seq', 6, true);


--
-- Name: main_cate_serv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_cate_serv_id_seq', 1, false);


--
-- Name: main_mega_juego_categoria_pro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_mega_juego_categoria_pro_id_seq', 9, true);


--
-- Name: main_mega_juego_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_mega_juego_id_seq', 5, true);


--
-- Name: main_mymodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_mymodel_id_seq', 1, false);


--
-- Name: main_servi_juego_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_servi_juego_id_seq', 1, false);


--
-- Name: main_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_user_id_seq', 1, false);


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
-- Name: main_cate_jueg main_cate_jueg_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_cate_jueg
    ADD CONSTRAINT main_cate_jueg_pkey PRIMARY KEY (id);


--
-- Name: main_cate_serv main_cate_serv_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_cate_serv
    ADD CONSTRAINT main_cate_serv_pkey PRIMARY KEY (id);


--
-- Name: main_mega_juego_categoria_pro main_mega_juego_categori_mega_juego_id_cate_jueg__c7ec0a87_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_mega_juego_categoria_pro
    ADD CONSTRAINT main_mega_juego_categori_mega_juego_id_cate_jueg__c7ec0a87_uniq UNIQUE (mega_juego_id, cate_jueg_id);


--
-- Name: main_mega_juego_categoria_pro main_mega_juego_categoria_pro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_mega_juego_categoria_pro
    ADD CONSTRAINT main_mega_juego_categoria_pro_pkey PRIMARY KEY (id);


--
-- Name: main_mega_juego main_mega_juego_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_mega_juego
    ADD CONSTRAINT main_mega_juego_pkey PRIMARY KEY (id);


--
-- Name: main_mymodel main_mymodel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_mymodel
    ADD CONSTRAINT main_mymodel_pkey PRIMARY KEY (id);


--
-- Name: main_servi_juego main_servi_juego_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_servi_juego
    ADD CONSTRAINT main_servi_juego_pkey PRIMARY KEY (id);


--
-- Name: main_user main_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_user
    ADD CONSTRAINT main_user_pkey PRIMARY KEY (id);


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
-- Name: main_mega_juego_categoria_pro_cate_jueg_id_6f229cca; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX main_mega_juego_categoria_pro_cate_jueg_id_6f229cca ON public.main_mega_juego_categoria_pro USING btree (cate_jueg_id);


--
-- Name: main_mega_juego_categoria_pro_mega_juego_id_2a973197; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX main_mega_juego_categoria_pro_mega_juego_id_2a973197 ON public.main_mega_juego_categoria_pro USING btree (mega_juego_id);


--
-- Name: main_mega_juego_slug_32e08f52; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX main_mega_juego_slug_32e08f52 ON public.main_mega_juego USING btree (slug);


--
-- Name: main_mega_juego_slug_32e08f52_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX main_mega_juego_slug_32e08f52_like ON public.main_mega_juego USING btree (slug varchar_pattern_ops);


--
-- Name: main_servi_juego_categoria_ser_id_9492b7d8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX main_servi_juego_categoria_ser_id_9492b7d8 ON public.main_servi_juego USING btree (categoria_ser_id);


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
-- Name: main_mega_juego_categoria_pro main_mega_juego_cate_cate_jueg_id_6f229cca_fk_main_cate; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_mega_juego_categoria_pro
    ADD CONSTRAINT main_mega_juego_cate_cate_jueg_id_6f229cca_fk_main_cate FOREIGN KEY (cate_jueg_id) REFERENCES public.main_cate_jueg(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_mega_juego_categoria_pro main_mega_juego_cate_mega_juego_id_2a973197_fk_main_mega; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_mega_juego_categoria_pro
    ADD CONSTRAINT main_mega_juego_cate_mega_juego_id_2a973197_fk_main_mega FOREIGN KEY (mega_juego_id) REFERENCES public.main_mega_juego(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_servi_juego main_servi_juego_categoria_ser_id_9492b7d8_fk_main_cate_serv_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_servi_juego
    ADD CONSTRAINT main_servi_juego_categoria_ser_id_9492b7d8_fk_main_cate_serv_id FOREIGN KEY (categoria_ser_id) REFERENCES public.main_cate_serv(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
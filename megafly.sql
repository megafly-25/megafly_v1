PGDMP     6        
    
        x            megafly    12.1    12.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    57596    megafly    DATABASE     �   CREATE DATABASE megafly WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Peru.1252' LC_CTYPE = 'Spanish_Peru.1252';
    DROP DATABASE megafly;
                postgres    false            �            1259    57628 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    57626    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    57638    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    57636    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    57620    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    57618    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    57646 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    57656    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    57654    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    57644    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    57664    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    57662 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    57724    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    57722    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    57610    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    57608    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    57599    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    57597    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    57755    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    57767    main_cate_jueg    TABLE     l   CREATE TABLE public.main_cate_jueg (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);
 "   DROP TABLE public.main_cate_jueg;
       public         heap    postgres    false            �            1259    57765    main_cate_jueg_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_cate_jueg_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.main_cate_jueg_id_seq;
       public          postgres    false    222            �           0    0    main_cate_jueg_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.main_cate_jueg_id_seq OWNED BY public.main_cate_jueg.id;
          public          postgres    false    221            �            1259    57775    main_cate_serv    TABLE     l   CREATE TABLE public.main_cate_serv (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);
 "   DROP TABLE public.main_cate_serv;
       public         heap    postgres    false            �            1259    57773    main_cate_serv_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_cate_serv_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.main_cate_serv_id_seq;
       public          postgres    false    224            �           0    0    main_cate_serv_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.main_cate_serv_id_seq OWNED BY public.main_cate_serv.id;
          public          postgres    false    223            �            1259    57807    main_mega_juego    TABLE       CREATE TABLE public.main_mega_juego (
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
       public         heap    postgres    false            �            1259    65798    main_mega_juego_categoria_pro    TABLE     �   CREATE TABLE public.main_mega_juego_categoria_pro (
    id integer NOT NULL,
    mega_juego_id integer NOT NULL,
    cate_jueg_id integer NOT NULL
);
 1   DROP TABLE public.main_mega_juego_categoria_pro;
       public         heap    postgres    false            �            1259    65796 $   main_mega_juego_categoria_pro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_mega_juego_categoria_pro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.main_mega_juego_categoria_pro_id_seq;
       public          postgres    false    234            �           0    0 $   main_mega_juego_categoria_pro_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.main_mega_juego_categoria_pro_id_seq OWNED BY public.main_mega_juego_categoria_pro.id;
          public          postgres    false    233            �            1259    57805    main_mega_juego_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_mega_juego_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.main_mega_juego_id_seq;
       public          postgres    false    232            �           0    0    main_mega_juego_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.main_mega_juego_id_seq OWNED BY public.main_mega_juego.id;
          public          postgres    false    231            �            1259    57783    main_mymodel    TABLE     >   CREATE TABLE public.main_mymodel (
    id integer NOT NULL
);
     DROP TABLE public.main_mymodel;
       public         heap    postgres    false            �            1259    57781    main_mymodel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_mymodel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.main_mymodel_id_seq;
       public          postgres    false    226            �           0    0    main_mymodel_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.main_mymodel_id_seq OWNED BY public.main_mymodel.id;
          public          postgres    false    225            �            1259    57799    main_servi_juego    TABLE       CREATE TABLE public.main_servi_juego (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    nom_abre character varying(100) NOT NULL,
    fecha_registro date NOT NULL,
    pre_servi double precision NOT NULL,
    categoria_ser_id integer NOT NULL
);
 $   DROP TABLE public.main_servi_juego;
       public         heap    postgres    false            �            1259    57797    main_servi_juego_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_servi_juego_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.main_servi_juego_id_seq;
       public          postgres    false    230            �           0    0    main_servi_juego_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.main_servi_juego_id_seq OWNED BY public.main_servi_juego.id;
          public          postgres    false    229            �            1259    57791 	   main_user    TABLE     �   CREATE TABLE public.main_user (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    edad integer NOT NULL,
    imagen character varying(100) NOT NULL
);
    DROP TABLE public.main_user;
       public         heap    postgres    false            �            1259    57789    main_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.main_user_id_seq;
       public          postgres    false    228            �           0    0    main_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.main_user_id_seq OWNED BY public.main_user.id;
          public          postgres    false    227            �
           2604    57631    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    57641    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    57623    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    57649    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    57659    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    57667    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    57727    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    57613    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    57602    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    57770    main_cate_jueg id    DEFAULT     v   ALTER TABLE ONLY public.main_cate_jueg ALTER COLUMN id SET DEFAULT nextval('public.main_cate_jueg_id_seq'::regclass);
 @   ALTER TABLE public.main_cate_jueg ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �
           2604    57778    main_cate_serv id    DEFAULT     v   ALTER TABLE ONLY public.main_cate_serv ALTER COLUMN id SET DEFAULT nextval('public.main_cate_serv_id_seq'::regclass);
 @   ALTER TABLE public.main_cate_serv ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �
           2604    57810    main_mega_juego id    DEFAULT     x   ALTER TABLE ONLY public.main_mega_juego ALTER COLUMN id SET DEFAULT nextval('public.main_mega_juego_id_seq'::regclass);
 A   ALTER TABLE public.main_mega_juego ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            �
           2604    65801     main_mega_juego_categoria_pro id    DEFAULT     �   ALTER TABLE ONLY public.main_mega_juego_categoria_pro ALTER COLUMN id SET DEFAULT nextval('public.main_mega_juego_categoria_pro_id_seq'::regclass);
 O   ALTER TABLE public.main_mega_juego_categoria_pro ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            �
           2604    57786    main_mymodel id    DEFAULT     r   ALTER TABLE ONLY public.main_mymodel ALTER COLUMN id SET DEFAULT nextval('public.main_mymodel_id_seq'::regclass);
 >   ALTER TABLE public.main_mymodel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �
           2604    57802    main_servi_juego id    DEFAULT     z   ALTER TABLE ONLY public.main_servi_juego ALTER COLUMN id SET DEFAULT nextval('public.main_servi_juego_id_seq'::regclass);
 B   ALTER TABLE public.main_servi_juego ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            �
           2604    57794    main_user id    DEFAULT     l   ALTER TABLE ONLY public.main_user ALTER COLUMN id SET DEFAULT nextval('public.main_user_id_seq'::regclass);
 ;   ALTER TABLE public.main_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �          0    57628 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   ��       �          0    57638    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   �       �          0    57620    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   y�       �          0    57646 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   e�       �          0    57656    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   ��       �          0    57664    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   ��       �          0    57724    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   �       �          0    57610    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   ��       �          0    57599    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   ��       �          0    57755    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   <�       �          0    57767    main_cate_jueg 
   TABLE DATA           4   COPY public.main_cate_jueg (id, nombre) FROM stdin;
    public          postgres    false    222   _�       �          0    57775    main_cate_serv 
   TABLE DATA           4   COPY public.main_cate_serv (id, nombre) FROM stdin;
    public          postgres    false    224   ��       �          0    57807    main_mega_juego 
   TABLE DATA           '  COPY public.main_mega_juego (id, nombre, nom_abre, fecha_registro, descripcion, descri_abre, enlacegd, enlacemg, enlace_publi, imagen, imagen2, imagen3, slug, enlace_publi2, enlace_publi3, enlacegd2, enlacegd3, enlacemg2, enlacemg3, enlace_publimg, enlace_publimg2, enlace_publimg3) FROM stdin;
    public          postgres    false    232   ��       �          0    65798    main_mega_juego_categoria_pro 
   TABLE DATA           X   COPY public.main_mega_juego_categoria_pro (id, mega_juego_id, cate_jueg_id) FROM stdin;
    public          postgres    false    234   Z�       �          0    57783    main_mymodel 
   TABLE DATA           *   COPY public.main_mymodel (id) FROM stdin;
    public          postgres    false    226   ��       �          0    57799    main_servi_juego 
   TABLE DATA           m   COPY public.main_servi_juego (id, nombre, nom_abre, fecha_registro, pre_servi, categoria_ser_id) FROM stdin;
    public          postgres    false    230   ��       �          0    57791 	   main_user 
   TABLE DATA           G   COPY public.main_user (id, nombre, apellido, edad, imagen) FROM stdin;
    public          postgres    false    228   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 26, true);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 4, true);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 9, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 29, true);
          public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
          public          postgres    false    204                        0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 30, true);
          public          postgres    false    202                       0    0    main_cate_jueg_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.main_cate_jueg_id_seq', 6, true);
          public          postgres    false    221                       0    0    main_cate_serv_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.main_cate_serv_id_seq', 1, false);
          public          postgres    false    223                       0    0 $   main_mega_juego_categoria_pro_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.main_mega_juego_categoria_pro_id_seq', 9, true);
          public          postgres    false    233                       0    0    main_mega_juego_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.main_mega_juego_id_seq', 5, true);
          public          postgres    false    231                       0    0    main_mymodel_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.main_mymodel_id_seq', 1, false);
          public          postgres    false    225                       0    0    main_servi_juego_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.main_servi_juego_id_seq', 1, false);
          public          postgres    false    229                       0    0    main_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.main_user_id_seq', 1, false);
          public          postgres    false    227                        2606    57753    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209                       2606    57690 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211                       2606    57643 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211                       2606    57633    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            �
           2606    57676 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            �
           2606    57625 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207                       2606    57661 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215                       2606    57705 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            
           2606    57651    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213                       2606    57669 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217                       2606    57719 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217                       2606    57747     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213                       2606    57733 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            �
           2606    57617 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            �
           2606    57615 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            �
           2606    57607 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203                        2606    57762 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            #           2606    57772 "   main_cate_jueg main_cate_jueg_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.main_cate_jueg
    ADD CONSTRAINT main_cate_jueg_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.main_cate_jueg DROP CONSTRAINT main_cate_jueg_pkey;
       public            postgres    false    222            %           2606    57780 "   main_cate_serv main_cate_serv_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.main_cate_serv
    ADD CONSTRAINT main_cate_serv_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.main_cate_serv DROP CONSTRAINT main_cate_serv_pkey;
       public            postgres    false    224            2           2606    65815 ]   main_mega_juego_categoria_pro main_mega_juego_categori_mega_juego_id_cate_jueg__c7ec0a87_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_mega_juego_categoria_pro
    ADD CONSTRAINT main_mega_juego_categori_mega_juego_id_cate_jueg__c7ec0a87_uniq UNIQUE (mega_juego_id, cate_jueg_id);
 �   ALTER TABLE ONLY public.main_mega_juego_categoria_pro DROP CONSTRAINT main_mega_juego_categori_mega_juego_id_cate_jueg__c7ec0a87_uniq;
       public            postgres    false    234    234            6           2606    65803 @   main_mega_juego_categoria_pro main_mega_juego_categoria_pro_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.main_mega_juego_categoria_pro
    ADD CONSTRAINT main_mega_juego_categoria_pro_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.main_mega_juego_categoria_pro DROP CONSTRAINT main_mega_juego_categoria_pro_pkey;
       public            postgres    false    234            .           2606    57815 $   main_mega_juego main_mega_juego_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.main_mega_juego
    ADD CONSTRAINT main_mega_juego_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.main_mega_juego DROP CONSTRAINT main_mega_juego_pkey;
       public            postgres    false    232            '           2606    57788    main_mymodel main_mymodel_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.main_mymodel
    ADD CONSTRAINT main_mymodel_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.main_mymodel DROP CONSTRAINT main_mymodel_pkey;
       public            postgres    false    226            ,           2606    57804 &   main_servi_juego main_servi_juego_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.main_servi_juego
    ADD CONSTRAINT main_servi_juego_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.main_servi_juego DROP CONSTRAINT main_servi_juego_pkey;
       public            postgres    false    230            )           2606    57796    main_user main_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.main_user
    ADD CONSTRAINT main_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.main_user DROP CONSTRAINT main_user_pkey;
       public            postgres    false    228            �
           1259    57754    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209                       1259    57691 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211                       1259    57692 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            �
           1259    57677 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207                       1259    57707 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215                       1259    57706 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215                       1259    57721 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217                       1259    57720 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217                       1259    57748     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213                       1259    57744 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219                       1259    57745 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219                       1259    57764 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            !           1259    57763 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            3           1259    65817 3   main_mega_juego_categoria_pro_cate_jueg_id_6f229cca    INDEX     �   CREATE INDEX main_mega_juego_categoria_pro_cate_jueg_id_6f229cca ON public.main_mega_juego_categoria_pro USING btree (cate_jueg_id);
 G   DROP INDEX public.main_mega_juego_categoria_pro_cate_jueg_id_6f229cca;
       public            postgres    false    234            4           1259    65816 4   main_mega_juego_categoria_pro_mega_juego_id_2a973197    INDEX     �   CREATE INDEX main_mega_juego_categoria_pro_mega_juego_id_2a973197 ON public.main_mega_juego_categoria_pro USING btree (mega_juego_id);
 H   DROP INDEX public.main_mega_juego_categoria_pro_mega_juego_id_2a973197;
       public            postgres    false    234            /           1259    65794    main_mega_juego_slug_32e08f52    INDEX     Y   CREATE INDEX main_mega_juego_slug_32e08f52 ON public.main_mega_juego USING btree (slug);
 1   DROP INDEX public.main_mega_juego_slug_32e08f52;
       public            postgres    false    232            0           1259    65793 "   main_mega_juego_slug_32e08f52_like    INDEX     r   CREATE INDEX main_mega_juego_slug_32e08f52_like ON public.main_mega_juego USING btree (slug varchar_pattern_ops);
 6   DROP INDEX public.main_mega_juego_slug_32e08f52_like;
       public            postgres    false    232            *           1259    57821 *   main_servi_juego_categoria_ser_id_9492b7d8    INDEX     s   CREATE INDEX main_servi_juego_categoria_ser_id_9492b7d8 ON public.main_servi_juego USING btree (categoria_ser_id);
 >   DROP INDEX public.main_servi_juego_categoria_ser_id_9492b7d8;
       public            postgres    false    230            9           2606    57684 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2813    207    211            8           2606    57679 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    211    2818    209            7           2606    57670 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    207    2808            ;           2606    57699 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    209    2818            :           2606    57694 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2826    215    213            =           2606    57713 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    217    207    2813            <           2606    57708 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    217    213    2826            >           2606    57734 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    219    2808    205            ?           2606    57739 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    219    2826    213            B           2606    65809 U   main_mega_juego_categoria_pro main_mega_juego_cate_cate_jueg_id_6f229cca_fk_main_cate    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_mega_juego_categoria_pro
    ADD CONSTRAINT main_mega_juego_cate_cate_jueg_id_6f229cca_fk_main_cate FOREIGN KEY (cate_jueg_id) REFERENCES public.main_cate_jueg(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.main_mega_juego_categoria_pro DROP CONSTRAINT main_mega_juego_cate_cate_jueg_id_6f229cca_fk_main_cate;
       public          postgres    false    234    2851    222            A           2606    65804 V   main_mega_juego_categoria_pro main_mega_juego_cate_mega_juego_id_2a973197_fk_main_mega    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_mega_juego_categoria_pro
    ADD CONSTRAINT main_mega_juego_cate_mega_juego_id_2a973197_fk_main_mega FOREIGN KEY (mega_juego_id) REFERENCES public.main_mega_juego(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.main_mega_juego_categoria_pro DROP CONSTRAINT main_mega_juego_cate_mega_juego_id_2a973197_fk_main_mega;
       public          postgres    false    2862    234    232            @           2606    57816 P   main_servi_juego main_servi_juego_categoria_ser_id_9492b7d8_fk_main_cate_serv_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_servi_juego
    ADD CONSTRAINT main_servi_juego_categoria_ser_id_9492b7d8_fk_main_cate_serv_id FOREIGN KEY (categoria_ser_id) REFERENCES public.main_cate_serv(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.main_servi_juego DROP CONSTRAINT main_servi_juego_categoria_ser_id_9492b7d8_fk_main_cate_serv_id;
       public          postgres    false    230    224    2853            �   '   x�3�tL����,.)JL�/�2�-.M,������� �	k      �   g   x�ιA�@��j9��rQ�q�(^��I%�N6N3��7=؉8Iq�F#5R:Q�^(Ro����@�,΅⹩x6��W</*�7χ�O��R�� ?���      �   �  x�e�ݎ�0F����	VJ��5F�i�v4@EV}��؟�]�5����эEw>�S_��>�\p��k9�ї�|���>*����o�[0��|^�?���j1��y��n�it%�i�7(g@���~�eA`[U4$9w�~�WI�>�p@�ힽ	�!��H�*@|��qK��H`��C���-?��_g��@�o�5=�/����4ޗ���5����V|hQd���O�����;�t����T�/MޕaO�L�c=� �
�� ���U���HJËN�4)���3	����tEVl�Z�U<��5���-W��U,w�j!W1������ɝxJR񱲓BV�xm'��L�'�0OP؄���-�O{�|�[����@v˿��ɜ}�4�C�;�9!��k�Wf,�h���b4��es���mO���B�M]�jޚ*$v5�Ƿ�
�m�p�k���W?�x����s�      �   C  x�m��n�@�5<�v�tf��I�ԟ[E�hAӤQQQ,������z77��,�����"B�r5C�j��j4Ӕ�?��dԔ�,�͓��x���Ţ��Igb�m[M��3)O/yP@��:�5�8 �0�Q`��D�H��g��H�oF	��TI݆�پlg	��X#_8��Gn��Ĵ�F�W,�6�0z�;8�Ơm���Pn`�,�+b�OFj��st1�ۦ����2=h�#��u��0�8�[#��6�a/��H.��6d��2�2!�Cʡ�Sz)+W�i���Wi���=L���ZirlT��(?tUU���{�      �      x�3�4�4�2�B.NK ���� !��      �      x������ � �      �   �  x��UMO�@=;�b�sY���o���V�z)E��n����:FmQ�{�,�N�T�amͼy;�͘'��0<`�p���Z	�v����\��Y^��~z3��ȧ)����,��O`�"��1
$_�6�ޓ��|!R�Tr͘��e��"$�q�0� ��~�~Q��=�̪E̟�pE�7�x:]��]5ӳ�cJA�ր�#�H� ��)�-���l)��Y�|r���B�k1mD�ɉ��M�F�5 �U]�NJ�4��r�`�	�Ts��V25���8AȎO, B�?���!�fS�)cA	��ߗ�qyQ��ѵ+	`ܒâl�(wkWW;���誻�����?&^S��(]����R)S��E@{gГ����� 1 E$p՜]�mh�>9�@MA[0:*p�6��jvMY�P[�k�Dʄ�
��ݲ-�Lz��C�rFN��8��*����~�����	~
;�Sk��ב�lYx7�*r�����ց�c�U�͋E>}G����r�j/J7|���vHL�LѰ����χ>[�y��%���O�U����h��,�6���*�6��M!��ٺX��e�+_�9�1'��4R����c�\���?�^�V�A�Rd�i���^i^us���}�[�~l����(͛
�3A���%��t�3��q�n`��7�
���k4ܣ��AS�k ��r��AϾ�6_����t8P֠~M�d`v20<��IWm0�8 Z�m���}�����E��      �   �   x�M�]
� ��wSj��B�d����Հ�����ٙYEzt���:�9}h�謈���kY8�FC��R�Y�w�ڲ�t}�#Ox6��W\l��lԹy�Nܯ(�`��Pw��' ?!KF�      �   �  x���[��0E��Udc���k) ��q�ĩ��ݗ���6��}��KJX���T���T� �o��Ԇ�  x�j���PI]
����"���kB;k���(���_!�D!#!���ox�×�C�Q{^��a�_W8T��C]��`·���G���߽��Xs�]�)-������7���J)-R|&�G>tS=�S=�q�[��?�O��ǆ�ZUiv��lV��j�QB۽��t��yk�����4�#k��m�C�:�0N1��+����4`f��t����M��ں� �J��x��V>B����c�~=���8���B�K��:��΋��U<��$��=e��\ ��	�lj�~>}ςm��Y�~>qB�?����@��#�]�2�X��|y�"�ei[����B�a%]�pf��q���u�����+j�$*� '�	%ȨX.��=�(	宴�T�gKa�^&̴���+Ꮆ�RaJP��hʴz��}���@��%Q�>�ַE���W��}�#U`��ojXx�ys����Q����RYc���+�h�TJ�����X�δ{��#-e%T���:��d.t�G�>Ҷă�@/k�A����]�4gϳC�di���!=�4q�%Ӛ\���Ǝ� �e]h�-0�Zd�R�?��f�[O�e      �     x�=��n�0 @���M�����()�%���"4�ڂf:���v{����@�l�p�q�P�]��lSh�	uG �cE�LR�mvI�f`Q��4֬%�4��]�sw[(ɏW>�\����t�ɜ��p��HՒ3[�@��}96�r�EtSe+�}���;�|	����{ՀY	����J��-ۃ�o����~��C�*��6A�!��|����-����@�ɖF�N��o|5����N �`
�S^�`�-f�Z��`�c�y��f�      �   Q   x�3�tLN�<�9�ˈ3$��(��˘ӱ,5���(�˄3��� 5�8�˔383�4'1�ӷ4/%_�1)3��$�+F��� �a      �      x������ � �      �   m  x��Mn7�ףS� Y#K���>�ȶ,�ò�Έ���3��U�Ew�@�-�E�T�Er�>r�4q���@�j!P�#�>~�G՜��X
����kr
KP2s�b�7��Z�V�ʁ[y�t4�Y��ʻ�ƒ���<X 4(%9�P�T*2Nْ��"ZFY���L1?g;�&�@�=���A��C�T	����2����ȵ/ȅ�x�9��Ϙ�.{���H:�~Q�m?��1��ͣW)UZ
��ڸ���͕��Y�&�P�NEW�,��⏟N��$-�qN"ZĊFb	�"�$�)��xu�Q_QeS�x�\ƜE�����~�؊�c)cNˁL���H�c���I�[��֓�$~��?w�٠�jV��|>)
�<؏{��75�[�g�1�2/ߥ�s2�'���l�;::o�Ǉ��^�dz>���7�θ5�J.!��W��^��&���n�厱�o�c/��=��a�\^�&��U:x��}����I��ր����;�=o�sL�IW��:wf�aխ��~q������w�'3�#�z|Ӟ^��'�J:nΟ22>߼9w����>�|s]�������mot2�茆�akذ��@��<w�S�;��*̳ �K2fI�Ŗʁǅ�.��_���m�R��EhJEh
c0�d�l��0�%��m���6Ŧn��l�y��C�0�xA���k�i��A1\F[\R1�� h ��?��%�	XBh&[��J0(��F��sNW`��� �O���X�*��-�Xb`�r�&���#E�G�ۙD����m��,�IG9�@�o6+2��u�N�cw+�T�����m� p�� C2B�J����e ܺ��2���b�#�*\K��P� ������K���.ۮw�����������r��s?�T���BF�v��`3��#ov�+:��g����V�ϭ7R&��b���QZ����������;�R�!\!��tV���mg�My�@I'd�)?k�h_p��F�b�_c��1����9��2윹�'�k-og��R!h�F&���(�0b��V���Cb4R L�֎D����A h��"\��As�AQ�HD�`
672�� $��b�z����þm�6�)20�*�h��N�!x�A��LТ5�K��K�\��^�����CbE�����"-FҢ��p����İ�B!����Y��L�EKTwdŽ�����`��ʙ��ӻ�A��$�~�r.�T�n��drP��}o��ӧ�R)���X"�5��htv�t*����h(O��a�������V�~8t����I���`�P��\|ṋ�iH7�@�t��g?�*�����f��px{��L��Y�j�/'�ݟvNg��[�=z�콥ʥR�OU�s�      �   4   x�ʹ�0��[�g�Ջ���L!�
����v���ͫ��lq�r�ն      �      x������ � �      �      x������ � �      �      x������ � �     
PGDMP                          u            spring_boot_mybatis    10.1    10.1 $               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       1262    16384    spring_boot_mybatis    DATABASE     �   CREATE DATABASE spring_boot_mybatis WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Chinese_China.936' LC_CTYPE = 'Chinese_China.936';
 #   DROP DATABASE spring_boot_mybatis;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16411    book    TABLE     �   CREATE TABLE book (
    id integer NOT NULL,
    book_store_id bigint,
    name character varying(80),
    author character varying(80),
    price numeric(10,2),
    topic character varying(80),
    publish_date date
);
    DROP TABLE public.book;
       public         postgres    false    3            �            1259    16409    book_id_seq    SEQUENCE     |   CREATE SEQUENCE book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.book_id_seq;
       public       postgres    false    197    3                       0    0    book_id_seq    SEQUENCE OWNED BY     -   ALTER SEQUENCE book_id_seq OWNED BY book.id;
            public       postgres    false    196            �            1259    16421 
   book_store    TABLE     x   CREATE TABLE book_store (
    id integer NOT NULL,
    name character varying(80),
    address character varying(80)
);
    DROP TABLE public.book_store;
       public         postgres    false    3            �            1259    16419    book_store_id_seq    SEQUENCE     �   CREATE SEQUENCE book_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.book_store_id_seq;
       public       postgres    false    3    199                       0    0    book_store_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE book_store_id_seq OWNED BY book_store.id;
            public       postgres    false    198            �            1259    22430    subway    TABLE     �   CREATE TABLE subway (
    id integer NOT NULL,
    line character varying NOT NULL,
    station character varying NOT NULL,
    transfer character varying[]
);
    DROP TABLE public.subway;
       public         postgres    false    3            �            1259    22428    table_name_id_seq    SEQUENCE     �   CREATE SEQUENCE table_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.table_name_id_seq;
       public       postgres    false    203    3                       0    0    table_name_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE table_name_id_seq OWNED BY subway.id;
            public       postgres    false    202            �            1259    16429    user    TABLE     y   CREATE TABLE "user" (
    id integer NOT NULL,
    username character varying(80),
    password character varying(80)
);
    DROP TABLE public."user";
       public         postgres    false    3            �            1259    16427    user_id_seq    SEQUENCE     |   CREATE SEQUENCE user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public       postgres    false    201    3                       0    0    user_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE user_id_seq OWNED BY "user".id;
            public       postgres    false    200            �
           2604    16414    book id    DEFAULT     T   ALTER TABLE ONLY book ALTER COLUMN id SET DEFAULT nextval('book_id_seq'::regclass);
 6   ALTER TABLE public.book ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    16424    book_store id    DEFAULT     `   ALTER TABLE ONLY book_store ALTER COLUMN id SET DEFAULT nextval('book_store_id_seq'::regclass);
 <   ALTER TABLE public.book_store ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    22433 	   subway id    DEFAULT     \   ALTER TABLE ONLY subway ALTER COLUMN id SET DEFAULT nextval('table_name_id_seq'::regclass);
 8   ALTER TABLE public.subway ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            �
           2604    16432    user id    DEFAULT     V   ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201                      0    16411    book 
   TABLE DATA               T   COPY book (id, book_store_id, name, author, price, topic, publish_date) FROM stdin;
    public       postgres    false    197   p"       
          0    16421 
   book_store 
   TABLE DATA               0   COPY book_store (id, name, address) FROM stdin;
    public       postgres    false    199   �"                 0    22430    subway 
   TABLE DATA               6   COPY subway (id, line, station, transfer) FROM stdin;
    public       postgres    false    203   #                 0    16429    user 
   TABLE DATA               1   COPY "user" (id, username, password) FROM stdin;
    public       postgres    false    201   2#                  0    0    book_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('book_id_seq', 1, false);
            public       postgres    false    196                       0    0    book_store_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('book_store_id_seq', 1, false);
            public       postgres    false    198                       0    0    table_name_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('table_name_id_seq', 1, true);
            public       postgres    false    202                       0    0    user_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('user_id_seq', 1, false);
            public       postgres    false    200            �
           2606    16416    book book_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public         postgres    false    197            �
           2606    16426    book_store book_store_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY book_store
    ADD CONSTRAINT book_store_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.book_store DROP CONSTRAINT book_store_pkey;
       public         postgres    false    199            �
           2606    22438    subway table_name_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY subway
    ADD CONSTRAINT table_name_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.subway DROP CONSTRAINT table_name_pkey;
       public         postgres    false    203            �
           2606    16434    user user_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public         postgres    false    201            �
           1259    22439    table_name_id_uindex    INDEX     E   CREATE UNIQUE INDEX table_name_id_uindex ON subway USING btree (id);
 (   DROP INDEX public.table_name_id_uindex;
       public         postgres    false    203               ^   x�u�1@`й�K�_[�],X����H&�K4������j�J���-�����-�弭_����	�=�gu����L�6���9�w�3_
Y*�      
   '   x�3�,.�/J5�4265PI-.Q.)JM-����� ��u            x������ � �            x�3�,�H,��,NM.-�,������ S�     
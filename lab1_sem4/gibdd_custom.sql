PGDMP         2            	    {            GIBDD    11.20    11.20 Y    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16395    GIBDD    DATABASE     �   CREATE DATABASE "GIBDD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1251' LC_CTYPE = 'English_United States.1251';
    DROP DATABASE "GIBDD";
             postgres    false                        2615    16429    GIBDD    SCHEMA        CREATE SCHEMA "GIBDD";
    DROP SCHEMA "GIBDD";
             postgres    false            �            1259    16445    CAR    TABLE     �   CREATE TABLE "GIBDD"."CAR" (
    "VIN" character varying(17) NOT NULL,
    id_model_car integer NOT NULL,
    year_made integer NOT NULL,
    color character varying(20),
    id_car integer NOT NULL
);
    DROP TABLE "GIBDD"."CAR";
       GIBDD         postgres    false    8            �            1259    16460 	   CAR_OWNER    TABLE     w   CREATE TABLE "GIBDD"."CAR_OWNER" (
    id_citizen_owner integer NOT NULL,
    license_number character(10) NOT NULL
);
     DROP TABLE "GIBDD"."CAR_OWNER";
       GIBDD         postgres    false    8            �            1259    24788    CAR_id_car_seq    SEQUENCE     �   ALTER TABLE "GIBDD"."CAR" ALTER COLUMN id_car ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "GIBDD"."CAR_id_car_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            GIBDD       postgres    false    8    199            �            1259    16607    CITIZEN    TABLE     �   CREATE TABLE "GIBDD"."CITIZEN" (
    id_citizen integer NOT NULL,
    full_name character varying(100) NOT NULL,
    phone character varying(12) NOT NULL,
    adress character varying(100) NOT NULL,
    passport character(10) NOT NULL
);
    DROP TABLE "GIBDD"."CITIZEN";
       GIBDD         postgres    false    8            �            1259    16750    CITIZEN_id_citizen_seq    SEQUENCE     �   ALTER TABLE "GIBDD"."CITIZEN" ALTER COLUMN id_citizen ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "GIBDD"."CITIZEN_id_citizen_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            GIBDD       postgres    false    211    8            �            1259    16467 
   DEPARTMENT    TABLE     �   CREATE TABLE "GIBDD"."DEPARTMENT" (
    id_dep integer NOT NULL,
    dep_name character varying(80) NOT NULL,
    dep_adress character varying(100) NOT NULL
);
 !   DROP TABLE "GIBDD"."DEPARTMENT";
       GIBDD         postgres    false    8            �            1259    16465    DEPARTMENTS_id_dep_seq    SEQUENCE     �   ALTER TABLE "GIBDD"."DEPARTMENT" ALTER COLUMN id_dep ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "GIBDD"."DEPARTMENTS_id_dep_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            GIBDD       postgres    false    8    203            �            1259    16481    DTP    TABLE     �   CREATE TABLE "GIBDD"."DTP" (
    id_dtp integer NOT NULL,
    id_officer_dtp integer NOT NULL,
    dtp_description text NOT NULL
);
    DROP TABLE "GIBDD"."DTP";
       GIBDD         postgres    false    8            �            1259    16614    DTP_PARTICIPANT    TABLE     �   CREATE TABLE "GIBDD"."DTP_PARTICIPANT" (
    participant_id integer NOT NULL,
    status character varying(20),
    id_reg_participant integer,
    id_dtp_participant integer
);
 &   DROP TABLE "GIBDD"."DTP_PARTICIPANT";
       GIBDD         postgres    false    8            �            1259    16612 "   DTP_PARTICIPANT_participant_id_seq    SEQUENCE     �   ALTER TABLE "GIBDD"."DTP_PARTICIPANT" ALTER COLUMN participant_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "GIBDD"."DTP_PARTICIPANT_participant_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            GIBDD       postgres    false    8    213            �            1259    16479    DTP_id_dtp_seq    SEQUENCE     �   ALTER TABLE "GIBDD"."DTP" ALTER COLUMN id_dtp ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "GIBDD"."DTP_id_dtp_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            GIBDD       postgres    false    8    207            �            1259    16432    MODEL    TABLE     �   CREATE TABLE "GIBDD"."MODEL" (
    id_model integer NOT NULL,
    model_name character varying(80) NOT NULL,
    brand character varying(30) NOT NULL,
    country character varying(80) NOT NULL,
    specifications text NOT NULL
);
    DROP TABLE "GIBDD"."MODEL";
       GIBDD         postgres    false    8            �            1259    16474    OFFICER    TABLE     �   CREATE TABLE "GIBDD"."OFFICER" (
    id_officer integer NOT NULL,
    id_dep_officer integer NOT NULL,
    role character varying(80) NOT NULL,
    id_citizen_officer integer NOT NULL
);
    DROP TABLE "GIBDD"."OFFICER";
       GIBDD         postgres    false    8            �            1259    16472    OFFICERS_id_officer_seq    SEQUENCE     �   ALTER TABLE "GIBDD"."OFFICER" ALTER COLUMN id_officer ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "GIBDD"."OFFICERS_id_officer_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            GIBDD       postgres    false    8    205            �            1259    16455    REG_CAR    TABLE       CREATE TABLE "GIBDD"."REG_CAR" (
    id_reg integer NOT NULL,
    id_department_reg integer NOT NULL,
    reg_start_date date NOT NULL,
    license_plate_reg character varying(10) NOT NULL,
    license_number_reg character(10),
    id_car_reg integer,
    reg_end_date date
);
    DROP TABLE "GIBDD"."REG_CAR";
       GIBDD         postgres    false    8            �            1259    16745    REG_CAR_id_reg_seq    SEQUENCE     �   ALTER TABLE "GIBDD"."REG_CAR" ALTER COLUMN id_reg ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "GIBDD"."REG_CAR_id_reg_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            GIBDD       postgres    false    8    200            �            1259    16490 	   VIOLATION    TABLE     t  CREATE TABLE "GIBDD"."VIOLATION" (
    id_violation integer NOT NULL,
    payment_status boolean NOT NULL,
    violation_code integer NOT NULL,
    type character varying(20) NOT NULL,
    vio_date date NOT NULL,
    vio_district character varying(40) NOT NULL,
    vio_street character varying(40) NOT NULL,
    id_dtp_vio integer,
    vio_time time without time zone
);
     DROP TABLE "GIBDD"."VIOLATION";
       GIBDD         postgres    false    8            �            1259    16497    VIOLATIONS_CATALOG    TABLE     �   CREATE TABLE "GIBDD"."VIOLATIONS_CATALOG" (
    violation_id_code integer NOT NULL,
    violation_description text NOT NULL,
    basic_fine numeric(100,2) NOT NULL,
    second_time_fine numeric(100,2) NOT NULL,
    license_suspension_time interval
);
 )   DROP TABLE "GIBDD"."VIOLATIONS_CATALOG";
       GIBDD         postgres    false    8            �            1259    16826    VIOLATION_id_violation_seq    SEQUENCE     �   ALTER TABLE "GIBDD"."VIOLATION" ALTER COLUMN id_violation ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "GIBDD"."VIOLATION_id_violation_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            GIBDD       postgres    false    208    8            �            1259    16495 (   violations_catalog_violation_id_code_seq    SEQUENCE       ALTER TABLE "GIBDD"."VIOLATIONS_CATALOG" ALTER COLUMN violation_id_code ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "GIBDD".violations_catalog_violation_id_code_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            GIBDD       postgres    false    8    210            �            1259    16430     Модель_ID модели_seq    SEQUENCE     �   ALTER TABLE "GIBDD"."MODEL" ALTER COLUMN id_model ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "GIBDD"."Модель_ID модели_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            GIBDD       postgres    false    198    8            m          0    16445    CAR 
   TABLE DATA               O   COPY "GIBDD"."CAR" ("VIN", id_model_car, year_made, color, id_car) FROM stdin;
    GIBDD       postgres    false    199   =o       o          0    16460 	   CAR_OWNER 
   TABLE DATA               H   COPY "GIBDD"."CAR_OWNER" (id_citizen_owner, license_number) FROM stdin;
    GIBDD       postgres    false    201   �o       y          0    16607    CITIZEN 
   TABLE DATA               T   COPY "GIBDD"."CITIZEN" (id_citizen, full_name, phone, adress, passport) FROM stdin;
    GIBDD       postgres    false    211   &p       q          0    16467 
   DEPARTMENT 
   TABLE DATA               E   COPY "GIBDD"."DEPARTMENT" (id_dep, dep_name, dep_adress) FROM stdin;
    GIBDD       postgres    false    203   �q       u          0    16481    DTP 
   TABLE DATA               I   COPY "GIBDD"."DTP" (id_dtp, id_officer_dtp, dtp_description) FROM stdin;
    GIBDD       postgres    false    207   �q       {          0    16614    DTP_PARTICIPANT 
   TABLE DATA               l   COPY "GIBDD"."DTP_PARTICIPANT" (participant_id, status, id_reg_participant, id_dtp_participant) FROM stdin;
    GIBDD       postgres    false    213   #s       l          0    16432    MODEL 
   TABLE DATA               X   COPY "GIBDD"."MODEL" (id_model, model_name, brand, country, specifications) FROM stdin;
    GIBDD       postgres    false    198   �s       s          0    16474    OFFICER 
   TABLE DATA               Z   COPY "GIBDD"."OFFICER" (id_officer, id_dep_officer, role, id_citizen_officer) FROM stdin;
    GIBDD       postgres    false    205   u       n          0    16455    REG_CAR 
   TABLE DATA               �   COPY "GIBDD"."REG_CAR" (id_reg, id_department_reg, reg_start_date, license_plate_reg, license_number_reg, id_car_reg, reg_end_date) FROM stdin;
    GIBDD       postgres    false    200   Ou       v          0    16490 	   VIOLATION 
   TABLE DATA               �   COPY "GIBDD"."VIOLATION" (id_violation, payment_status, violation_code, type, vio_date, vio_district, vio_street, id_dtp_vio, vio_time) FROM stdin;
    GIBDD       postgres    false    208   �u       x          0    16497    VIOLATIONS_CATALOG 
   TABLE DATA               �   COPY "GIBDD"."VIOLATIONS_CATALOG" (violation_id_code, violation_description, basic_fine, second_time_fine, license_suspension_time) FROM stdin;
    GIBDD       postgres    false    210   
w       �           0    0    CAR_id_car_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"GIBDD"."CAR_id_car_seq"', 5, true);
            GIBDD       postgres    false    217            �           0    0    CITIZEN_id_citizen_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"GIBDD"."CITIZEN_id_citizen_seq"', 11, true);
            GIBDD       postgres    false    215            �           0    0    DEPARTMENTS_id_dep_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"GIBDD"."DEPARTMENTS_id_dep_seq"', 5, true);
            GIBDD       postgres    false    202            �           0    0 "   DTP_PARTICIPANT_participant_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"GIBDD"."DTP_PARTICIPANT_participant_id_seq"', 7, true);
            GIBDD       postgres    false    212            �           0    0    DTP_id_dtp_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"GIBDD"."DTP_id_dtp_seq"', 7, true);
            GIBDD       postgres    false    206            �           0    0    OFFICERS_id_officer_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"GIBDD"."OFFICERS_id_officer_seq"', 4, true);
            GIBDD       postgres    false    204            �           0    0    REG_CAR_id_reg_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"GIBDD"."REG_CAR_id_reg_seq"', 11, true);
            GIBDD       postgres    false    214            �           0    0    VIOLATION_id_violation_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"GIBDD"."VIOLATION_id_violation_seq"', 9, true);
            GIBDD       postgres    false    216            �           0    0 (   violations_catalog_violation_id_code_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('"GIBDD".violations_catalog_violation_id_code_seq', 5, true);
            GIBDD       postgres    false    209            �           0    0     Модель_ID модели_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('"GIBDD"."Модель_ID модели_seq"', 7, true);
            GIBDD       postgres    false    197            �
           2606    16804    CAR_OWNER CAR_OWNER_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY "GIBDD"."CAR_OWNER"
    ADD CONSTRAINT "CAR_OWNER_pkey" PRIMARY KEY (license_number);
 G   ALTER TABLE ONLY "GIBDD"."CAR_OWNER" DROP CONSTRAINT "CAR_OWNER_pkey";
       GIBDD         postgres    false    201            �
           2606    16471    DEPARTMENT DEPARTMENTS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY "GIBDD"."DEPARTMENT"
    ADD CONSTRAINT "DEPARTMENTS_pkey" PRIMARY KEY (id_dep);
 J   ALTER TABLE ONLY "GIBDD"."DEPARTMENT" DROP CONSTRAINT "DEPARTMENTS_pkey";
       GIBDD         postgres    false    203            �
           2606    16618 $   DTP_PARTICIPANT DTP_PARTICIPANT_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY "GIBDD"."DTP_PARTICIPANT"
    ADD CONSTRAINT "DTP_PARTICIPANT_pkey" PRIMARY KEY (participant_id);
 S   ALTER TABLE ONLY "GIBDD"."DTP_PARTICIPANT" DROP CONSTRAINT "DTP_PARTICIPANT_pkey";
       GIBDD         postgres    false    213            �
           2606    16485    DTP DTP_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY "GIBDD"."DTP"
    ADD CONSTRAINT "DTP_pkey" PRIMARY KEY (id_dtp);
 ;   ALTER TABLE ONLY "GIBDD"."DTP" DROP CONSTRAINT "DTP_pkey";
       GIBDD         postgres    false    207            �
           2606    16478    OFFICER OFFICERS_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "GIBDD"."OFFICER"
    ADD CONSTRAINT "OFFICERS_pkey" PRIMARY KEY (id_officer);
 D   ALTER TABLE ONLY "GIBDD"."OFFICER" DROP CONSTRAINT "OFFICERS_pkey";
       GIBDD         postgres    false    205            �
           2606    16459    REG_CAR REG_AUTO_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY "GIBDD"."REG_CAR"
    ADD CONSTRAINT "REG_AUTO_pkey" PRIMARY KEY (id_reg);
 D   ALTER TABLE ONLY "GIBDD"."REG_CAR" DROP CONSTRAINT "REG_AUTO_pkey";
       GIBDD         postgres    false    200            �
           2606    16494    VIOLATION VIOLATIONS_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY "GIBDD"."VIOLATION"
    ADD CONSTRAINT "VIOLATIONS_pkey" PRIMARY KEY (id_violation);
 H   ALTER TABLE ONLY "GIBDD"."VIOLATION" DROP CONSTRAINT "VIOLATIONS_pkey";
       GIBDD         postgres    false    208            �
           2606    16564 *   VIOLATIONS_CATALOG basic_fine_not_negative    CHECK CONSTRAINT     �   ALTER TABLE "GIBDD"."VIOLATIONS_CATALOG"
    ADD CONSTRAINT basic_fine_not_negative CHECK ((basic_fine > (0)::numeric)) NOT VALID;
 R   ALTER TABLE "GIBDD"."VIOLATIONS_CATALOG" DROP CONSTRAINT basic_fine_not_negative;
       GIBDD       postgres    false    210    210            �
           2606    24795 
   CAR car_pc 
   CONSTRAINT     O   ALTER TABLE ONLY "GIBDD"."CAR"
    ADD CONSTRAINT car_pc PRIMARY KEY (id_car);
 7   ALTER TABLE ONLY "GIBDD"."CAR" DROP CONSTRAINT car_pc;
       GIBDD         postgres    false    199            �
           2606    16747    MODEL country_chk    CHECK CONSTRAINT     �   ALTER TABLE "GIBDD"."MODEL"
    ADD CONSTRAINT country_chk CHECK (((country)::text ~ '[А-Я][А-Я а-я]+'::text)) NOT VALID;
 9   ALTER TABLE "GIBDD"."MODEL" DROP CONSTRAINT country_chk;
       GIBDD       postgres    false    198    198            �
           2606    16625    CITIZEN id_citizen 
   CONSTRAINT     [   ALTER TABLE ONLY "GIBDD"."CITIZEN"
    ADD CONSTRAINT id_citizen PRIMARY KEY (id_citizen);
 ?   ALTER TABLE ONLY "GIBDD"."CITIZEN" DROP CONSTRAINT id_citizen;
       GIBDD         postgres    false    211            �
           2606    16569    OFFICER id_dep    CHECK CONSTRAINT     `   ALTER TABLE "GIBDD"."OFFICER"
    ADD CONSTRAINT id_dep CHECK ((id_dep_officer > 0)) NOT VALID;
 6   ALTER TABLE "GIBDD"."OFFICER" DROP CONSTRAINT id_dep;
       GIBDD       postgres    false    205    205            �
           2606    16805    CAR_OWNER license_chk    CHECK CONSTRAINT     �   ALTER TABLE "GIBDD"."CAR_OWNER"
    ADD CONSTRAINT license_chk CHECK ((license_number ~ similar_escape('[0-9]{10}'::text, NULL::text))) NOT VALID;
 =   ALTER TABLE "GIBDD"."CAR_OWNER" DROP CONSTRAINT license_chk;
       GIBDD       postgres    false    201    201            �
           2606    16754    CITIZEN name_chk    CHECK CONSTRAINT     �   ALTER TABLE "GIBDD"."CITIZEN"
    ADD CONSTRAINT name_chk CHECK (((full_name)::text !~ similar_escape('%[0-9]%'::text, NULL::text))) NOT VALID;
 8   ALTER TABLE "GIBDD"."CITIZEN" DROP CONSTRAINT name_chk;
       GIBDD       postgres    false    211    211            �
           2606    16659    CITIZEN passport 
   CONSTRAINT     R   ALTER TABLE ONLY "GIBDD"."CITIZEN"
    ADD CONSTRAINT passport UNIQUE (passport);
 =   ALTER TABLE ONLY "GIBDD"."CITIZEN" DROP CONSTRAINT passport;
       GIBDD         postgres    false    211            �
           2606    16756    CITIZEN passport_chk    CHECK CONSTRAINT     �   ALTER TABLE "GIBDD"."CITIZEN"
    ADD CONSTRAINT passport_chk CHECK ((passport ~ similar_escape('[0-9]{10}'::text, NULL::text))) NOT VALID;
 <   ALTER TABLE "GIBDD"."CITIZEN" DROP CONSTRAINT passport_chk;
       GIBDD       postgres    false    211    211            �
           2606    16657    CITIZEN phone 
   CONSTRAINT     L   ALTER TABLE ONLY "GIBDD"."CITIZEN"
    ADD CONSTRAINT phone UNIQUE (phone);
 :   ALTER TABLE ONLY "GIBDD"."CITIZEN" DROP CONSTRAINT phone;
       GIBDD         postgres    false    211            �
           2606    16753    CITIZEN phone_chk    CHECK CONSTRAINT     �   ALTER TABLE "GIBDD"."CITIZEN"
    ADD CONSTRAINT phone_chk CHECK (((phone)::text ~ similar_escape('\+[0-9]{11}'::text, NULL::text))) NOT VALID;
 9   ALTER TABLE "GIBDD"."CITIZEN" DROP CONSTRAINT phone_chk;
       GIBDD       postgres    false    211    211            �
           2606    16744    REG_CAR plate_chk    CHECK CONSTRAINT     �   ALTER TABLE "GIBDD"."REG_CAR"
    ADD CONSTRAINT plate_chk CHECK (((license_plate_reg)::text ~ '[АВЕКМНОРСТУХ][0-9]{3}[АВЕКМНОРСТУХ]{2}[0-9]{2,3}'::text)) NOT VALID;
 9   ALTER TABLE "GIBDD"."REG_CAR" DROP CONSTRAINT plate_chk;
       GIBDD       postgres    false    200    200            �
           2606    16663    REG_CAR reg_time    CHECK CONSTRAINT     f   ALTER TABLE "GIBDD"."REG_CAR"
    ADD CONSTRAINT reg_time CHECK ((reg_start_date < now())) NOT VALID;
 8   ALTER TABLE "GIBDD"."REG_CAR" DROP CONSTRAINT reg_time;
       GIBDD       postgres    false    200    200            �
           2606    16825    OFFICER role_chk    CHECK CONSTRAINT     �   ALTER TABLE "GIBDD"."OFFICER"
    ADD CONSTRAINT role_chk CHECK (((role)::text = ANY (ARRAY['Инспектор'::text, 'Старший инспектор'::text]))) NOT VALID;
 8   ALTER TABLE "GIBDD"."OFFICER" DROP CONSTRAINT role_chk;
       GIBDD       postgres    false    205    205            �
           2606    16567 +   VIOLATIONS_CATALOG second_time_not_negative    CHECK CONSTRAINT     �   ALTER TABLE "GIBDD"."VIOLATIONS_CATALOG"
    ADD CONSTRAINT second_time_not_negative CHECK ((second_time_fine >= (0)::numeric)) NOT VALID;
 S   ALTER TABLE "GIBDD"."VIOLATIONS_CATALOG" DROP CONSTRAINT second_time_not_negative;
       GIBDD       postgres    false    210    210            �
           2606    16660    DTP_PARTICIPANT status    CHECK CONSTRAINT     �   ALTER TABLE "GIBDD"."DTP_PARTICIPANT"
    ADD CONSTRAINT status CHECK (((status)::text = ANY (ARRAY['Виновник'::text, 'Потерпевший'::text, 'Не установлен'::text]))) NOT VALID;
 >   ALTER TABLE "GIBDD"."DTP_PARTICIPANT" DROP CONSTRAINT status;
       GIBDD       postgres    false    213    213            �
           2606    16824    CAR vin_chk    CHECK CONSTRAINT     �   ALTER TABLE "GIBDD"."CAR"
    ADD CONSTRAINT vin_chk CHECK ((("VIN")::text ~ similar_escape('[A-HJ-NPR-Z0-9]{17}'::text, NULL::text))) NOT VALID;
 3   ALTER TABLE "GIBDD"."CAR" DROP CONSTRAINT vin_chk;
       GIBDD       postgres    false    199    199            �
           2606    16828    VIOLATION vio_date_chk    CHECK CONSTRAINT     f   ALTER TABLE "GIBDD"."VIOLATION"
    ADD CONSTRAINT vio_date_chk CHECK ((vio_date < now())) NOT VALID;
 >   ALTER TABLE "GIBDD"."VIOLATION" DROP CONSTRAINT vio_date_chk;
       GIBDD       postgres    false    208    208            �
           2606    16501 *   VIOLATIONS_CATALOG violations_catalog_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY "GIBDD"."VIOLATIONS_CATALOG"
    ADD CONSTRAINT violations_catalog_pkey PRIMARY KEY (violation_id_code);
 W   ALTER TABLE ONLY "GIBDD"."VIOLATIONS_CATALOG" DROP CONSTRAINT violations_catalog_pkey;
       GIBDD         postgres    false    210            �
           2606    24787    CAR year_chk    CHECK CONSTRAINT     ]   ALTER TABLE "GIBDD"."CAR"
    ADD CONSTRAINT year_chk CHECK ((year_made <= 2023)) NOT VALID;
 4   ALTER TABLE "GIBDD"."CAR" DROP CONSTRAINT year_chk;
       GIBDD       postgres    false    199    199            �
           2606    16439    MODEL Модель_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "GIBDD"."MODEL"
    ADD CONSTRAINT "Модель_pkey" PRIMARY KEY (id_model);
 F   ALTER TABLE ONLY "GIBDD"."MODEL" DROP CONSTRAINT "Модель_pkey";
       GIBDD         postgres    false    198            �
           1259    24754    index_модель_марка    INDEX     U   CREATE INDEX "index_модель_марка" ON "GIBDD"."MODEL" USING btree (brand);
 4   DROP INDEX "GIBDD"."index_модель_марка";
       GIBDD         postgres    false    198            �
           1259    24755 0   index_телефон_адрес_пасспорт    INDEX     |   CREATE INDEX "index_телефон_адрес_пасспорт" ON "GIBDD"."CITIZEN" USING btree (phone, adress, passport);
 G   DROP INDEX "GIBDD"."index_телефон_адрес_пасспорт";
       GIBDD         postgres    false    211    211    211            �
           2606    16450    CAR ID модели    FK CONSTRAINT     �   ALTER TABLE ONLY "GIBDD"."CAR"
    ADD CONSTRAINT "ID модели" FOREIGN KEY (id_model_car) REFERENCES "GIBDD"."MODEL"(id_model) NOT VALID;
 B   ALTER TABLE ONLY "GIBDD"."CAR" DROP CONSTRAINT "ID модели";
       GIBDD       postgres    false    199    2764    198            �
           2606    16636    OFFICER citizen_officer    FK CONSTRAINT     �   ALTER TABLE ONLY "GIBDD"."OFFICER"
    ADD CONSTRAINT citizen_officer FOREIGN KEY (id_citizen_officer) REFERENCES "GIBDD"."CITIZEN"(id_citizen) NOT VALID;
 D   ALTER TABLE ONLY "GIBDD"."OFFICER" DROP CONSTRAINT citizen_officer;
       GIBDD       postgres    false    205    211    2782            �
           2606    16527    VIOLATION code    FK CONSTRAINT     �   ALTER TABLE ONLY "GIBDD"."VIOLATION"
    ADD CONSTRAINT code FOREIGN KEY (violation_code) REFERENCES "GIBDD"."VIOLATIONS_CATALOG"(violation_id_code) NOT VALID;
 ;   ALTER TABLE ONLY "GIBDD"."VIOLATION" DROP CONSTRAINT code;
       GIBDD       postgres    false    208    210    2780            �
           2606    16512    REG_CAR dep    FK CONSTRAINT     �   ALTER TABLE ONLY "GIBDD"."REG_CAR"
    ADD CONSTRAINT dep FOREIGN KEY (id_department_reg) REFERENCES "GIBDD"."DEPARTMENT"(id_dep) NOT VALID;
 8   ALTER TABLE ONLY "GIBDD"."REG_CAR" DROP CONSTRAINT dep;
       GIBDD       postgres    false    200    203    2772            �
           2606    16517    OFFICER dep    FK CONSTRAINT     �   ALTER TABLE ONLY "GIBDD"."OFFICER"
    ADD CONSTRAINT dep FOREIGN KEY (id_dep_officer) REFERENCES "GIBDD"."DEPARTMENT"(id_dep) NOT VALID;
 8   ALTER TABLE ONLY "GIBDD"."OFFICER" DROP CONSTRAINT dep;
       GIBDD       postgres    false    2772    205    203            �
           2606    16650    DTP_PARTICIPANT dtp_participant    FK CONSTRAINT     �   ALTER TABLE ONLY "GIBDD"."DTP_PARTICIPANT"
    ADD CONSTRAINT dtp_participant FOREIGN KEY (id_dtp_participant) REFERENCES "GIBDD"."DTP"(id_dtp) NOT VALID;
 L   ALTER TABLE ONLY "GIBDD"."DTP_PARTICIPANT" DROP CONSTRAINT dtp_participant;
       GIBDD       postgres    false    207    213    2776            �
           2606    24796    REG_CAR id_car    FK CONSTRAINT     �   ALTER TABLE ONLY "GIBDD"."REG_CAR"
    ADD CONSTRAINT id_car FOREIGN KEY (id_car_reg) REFERENCES "GIBDD"."CAR"(id_car) NOT VALID;
 ;   ALTER TABLE ONLY "GIBDD"."REG_CAR" DROP CONSTRAINT id_car;
       GIBDD       postgres    false    200    2766    199            �
           2606    16829    VIOLATION id_dtp_vio    FK CONSTRAINT     �   ALTER TABLE ONLY "GIBDD"."VIOLATION"
    ADD CONSTRAINT id_dtp_vio FOREIGN KEY (id_dtp_vio) REFERENCES "GIBDD"."DTP"(id_dtp) NOT VALID;
 A   ALTER TABLE ONLY "GIBDD"."VIOLATION" DROP CONSTRAINT id_dtp_vio;
       GIBDD       postgres    false    2776    208    207            �
           2606    16806    REG_CAR license    FK CONSTRAINT     �   ALTER TABLE ONLY "GIBDD"."REG_CAR"
    ADD CONSTRAINT license FOREIGN KEY (license_number_reg) REFERENCES "GIBDD"."CAR_OWNER"(license_number) NOT VALID;
 <   ALTER TABLE ONLY "GIBDD"."REG_CAR" DROP CONSTRAINT license;
       GIBDD       postgres    false    200    2770    201            �
           2606    16522    DTP officer    FK CONSTRAINT     �   ALTER TABLE ONLY "GIBDD"."DTP"
    ADD CONSTRAINT officer FOREIGN KEY (id_officer_dtp) REFERENCES "GIBDD"."OFFICER"(id_officer) NOT VALID;
 8   ALTER TABLE ONLY "GIBDD"."DTP" DROP CONSTRAINT officer;
       GIBDD       postgres    false    205    207    2774            �
           2606    16626    CAR_OWNER owner_citizen    FK CONSTRAINT     �   ALTER TABLE ONLY "GIBDD"."CAR_OWNER"
    ADD CONSTRAINT owner_citizen FOREIGN KEY (id_citizen_owner) REFERENCES "GIBDD"."CITIZEN"(id_citizen) NOT VALID;
 D   ALTER TABLE ONLY "GIBDD"."CAR_OWNER" DROP CONSTRAINT owner_citizen;
       GIBDD       postgres    false    201    2782    211            �
           2606    24801    DTP_PARTICIPANT reg_car    FK CONSTRAINT     �   ALTER TABLE ONLY "GIBDD"."DTP_PARTICIPANT"
    ADD CONSTRAINT reg_car FOREIGN KEY (id_reg_participant) REFERENCES "GIBDD"."REG_CAR"(id_reg) NOT VALID;
 D   ALTER TABLE ONLY "GIBDD"."DTP_PARTICIPANT" DROP CONSTRAINT reg_car;
       GIBDD       postgres    false    200    2768    213            m   �   x���
�0@�����L��c���K�b�7E��B�����{�r����A�;��8�Pn`��S:z�Ɖb�ցڲ@�Y~�P��#����z〷NP���e<��Ԣc�
������8wS[�8���L�p�롔7^v��
`$�      o   5   x��I�@�w��87�口����-����0<�v;Ցԡmf<���� �&�	�      y   Y  x�]�KN1���)��&���i�$@�@-X����A�+87N�R���cǟ; 蕦y�6�-���U�#�ȷ������|��֍�	G�6���.s�"�.�h�hAc�`H#��Kna��:=��6j�1���E�?���Xт��vy�(��w!��P��)ъ�;=X���Q^��������)ߔ�:�4�+��`���Z-���nI�'r�|�UXގm��"�k�E�Ag�T�G�Q8U_�����e勝�G���C������[��+�긌^{�EF�A�;�9u=��99P��Ò�淠���G��#���D/8�E�@y�H)� (\O?      q   _   x�3ἰ���{/6]l�����=@v�����/��S�0���v]�wa��F0���>cs.SN��>�DnB���{�@#̹b���� �(D�      u     x��Q[N�0��O� $
��p�<TԈJ��up��썘�D|�+���ٙ�.{���	W$)�K�1"H.�| ��R��$9� f$��y�h�>��;p�܁�5�mp4:�LLr�TB��?,�ߞ�,��b��e�Q9�hxv��cF��(۬D������A;&���N@c�n�@	�mI%�6{��%��\���۫����:[��[r�M�3Gw0H3ܨuo�K��2wKT�l�X�E��=ѽm���t�a�_���,|tk`�Lu���(4O)���s�����      {   ]   x�m˽� ����aL��`�1V�.�$$h"�pl$=4W<��O��L}Q�3vp3��#Q��bm;s��13���woa�	��G�X ?��_0      l   c  x����JA��O1O�d�m-$E�-Ҍ&��u6.b�M!(B+٨�`.�p�<R��
VS��>>�ᰣ"w{P;Kd[t_���!�;\�>���G��8c8��0c~���fxOSY�T��|�	�SǀSj⎛����K�8�kq�S�j���f~����%-��މ��h��eyJ9�_��M(n
�\��PH��H�D'�ϔ�(qn���n4Su�p<�R�����z�"�H����A��!�h(p��|�`��[�d�<�W�H���Hhkd�*n>�^�X/M�r����(�U�*ԒX������î�ú��l�7�)�57���/���Բ-����7�      s   <   x�3�4ἰ�bӅ.v\�qa���{����[/�J���i�e�iJ�:�=... f0�      n   �   x�M��1гӋ�?Il7A[��`�BC.	.�,YoF��AH)Pr!�����
)�][�R�H�܋���ϢS8�H�-���VCRțs�3��f�*3X�5k@U2�C�{x��Q4���N��2��"9V>�*�c��c���Z� ~6�      v     x���MN�0���)�@G��L[��5'� �,A��XV�*uڹ�ˍp�?b��D�����sr���[L�-�º�Y�#z���Z�}���v�.�_��I�^�i���|�DL�Jb��Ox~�bR���".X<��y�]ڐ'�Ku0a	�K��v����6�U�ka6��(�KUؚp�fͷ͇/䍢��\�Gr�xg�Z������`+�U�����A�Ç'����(.�Z�|R��k̹v�!��Z��J	�9]c�GF      x   :  x�mRAR�0<;��:�%���p�p��ʴӼ�Ád��4q� �����Ų��J+96��k���oa[�TY�PM��NɛĹ�s&v�]�F�>3 �J����S'|�N9pz:��� �"���/Z"Y��}i�S�r�/S_��Z�t���wԀUU��n����$G��L��W�s��5H� ��z��3-�-`����93K7�8^�����1�1t�����8*�*|d��&�����)�����(j�߀k'� N�=��JeH���2ƌ��].�Q�`�/�=��L�N��V�ø���$V�(�~ �c�     
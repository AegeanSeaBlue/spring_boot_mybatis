PGDMP         ;                u         
   platformdb    10.0    10.1 �   A           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            B           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            C           1262    16384 
   platformdb    DATABASE     z   CREATE DATABASE platformdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE platformdb;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            D           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12980    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            E           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �           1259    25030    adx_performance_tracking_seq    SEQUENCE     ~   CREATE SEQUENCE adx_performance_tracking_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.adx_performance_tracking_seq;
       public       wayio    false    3            �           1259    25062    adx_performance_tracking    TABLE     U  CREATE TABLE adx_performance_tracking (
    recordid bigint DEFAULT nextval('adx_performance_tracking_seq'::regclass) NOT NULL,
    adexchange character varying(200) NOT NULL,
    "timestamp" timestamp(0) without time zone,
    requests bigint,
    qps double precision,
    nobids bigint,
    bids bigint,
    wins bigint,
    imps bigint,
    clicks bigint,
    completes bigint,
    avgbidresponsetime double precision,
    avgnobidresponsetime double precision,
    createdate timestamp(0) without time zone,
    updatedate timestamp(0) without time zone DEFAULT now(),
    bidders integer
);
 ,   DROP TABLE public.adx_performance_tracking;
       public         wayio    false    757    3            �           1259    25032    bidder_performance_tracking_seq    SEQUENCE     �   CREATE SEQUENCE bidder_performance_tracking_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.bidder_performance_tracking_seq;
       public       wayio    false    3            �           1259    25071    bidder_performance_tracking    TABLE     ^  CREATE TABLE bidder_performance_tracking (
    recordid bigint DEFAULT nextval('bidder_performance_tracking_seq'::regclass) NOT NULL,
    bidderagentid character varying(200) NOT NULL,
    "timestamp" timestamp(0) without time zone,
    requests bigint,
    qps double precision,
    nobids bigint,
    bids bigint,
    wins bigint,
    imps bigint,
    clicks bigint,
    completes bigint,
    avgbidresponsetime double precision,
    avgnobidresponsetime double precision,
    createdate timestamp(0) without time zone,
    updatedate timestamp(0) without time zone DEFAULT now(),
    bidders integer
);
 /   DROP TABLE public.bidder_performance_tracking;
       public         wayio    false    758    3            �            1259    17173 )   tbladt_3psegmentreportrequest_trigger_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_3psegmentreportrequest_trigger_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.tbladt_3psegmentreportrequest_trigger_seq;
       public       wayio    false    3            �            1259    17175 %   tbladt_3psegmentreportrequest_trigger    TABLE     �  CREATE TABLE tbladt_3psegmentreportrequest_trigger (
    requestid integer DEFAULT nextval('tbladt_3psegmentreportrequest_trigger_seq'::regclass) NOT NULL,
    requestbyemailids character varying(2000),
    year integer,
    month integer,
    dbvdname character varying(250),
    requestedon timestamp(3) without time zone DEFAULT now(),
    processedon timestamp(3) without time zone,
    filename character varying(250),
    requestedby integer
);
 9   DROP TABLE public.tbladt_3psegmentreportrequest_trigger;
       public         wayio    false    196    3            J           1259    21809    tbladt_action    TABLE     :  CREATE TABLE tbladt_action (
    actionid integer NOT NULL,
    name character varying(100) NOT NULL,
    code character varying(50) NOT NULL,
    isforadmin boolean NOT NULL,
    isforsaonly boolean DEFAULT false NOT NULL,
    isactive boolean DEFAULT true NOT NULL,
    displayrank integer DEFAULT 0 NOT NULL
);
 !   DROP TABLE public.tbladt_action;
       public         wayio    false    3            �            1259    17203    tbladt_adexchange_seq    SEQUENCE     w   CREATE SEQUENCE tbladt_adexchange_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbladt_adexchange_seq;
       public       wayio    false    3            K           1259    21819    tbladt_adexchange    TABLE     =  CREATE TABLE tbladt_adexchange (
    adexchangeid integer DEFAULT nextval('tbladt_adexchange_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    adminemail character varying(100),
    adminphoneno character varying(30),
    website character varying(250),
    street character varying(250),
    city character varying(50),
    state character varying(50),
    country character varying(50),
    zip character varying(10),
    status integer DEFAULT 1 NOT NULL,
    creativetypes character varying(100),
    devicetypes character varying(500),
    isapprovalrequired boolean DEFAULT false NOT NULL,
    isrtpeenable boolean DEFAULT false,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 %   DROP TABLE public.tbladt_adexchange;
       public         wayio    false    200    3            �            1259    17185 #   tbladt_adexchanges_requiredapproval    TABLE     �   CREATE TABLE tbladt_adexchanges_requiredapproval (
    adexchangeid integer NOT NULL,
    name character varying(50) NOT NULL,
    procname character varying(150)
);
 7   DROP TABLE public.tbladt_adexchanges_requiredapproval;
       public         wayio    false    3            �            1259    17210    tbladt_advertiser_seq    SEQUENCE     w   CREATE SEQUENCE tbladt_advertiser_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbladt_advertiser_seq;
       public       wayio    false    3            L           1259    21832    tbladt_advertiser    TABLE     f  CREATE TABLE tbladt_advertiser (
    advertiserid integer DEFAULT nextval('tbladt_advertiser_seq'::regclass) NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(100),
    agencyid integer NOT NULL,
    categoryid integer NOT NULL,
    categoryid2 integer,
    domain character varying(250),
    sfadvertiserid character varying(50),
    assigneduserid integer,
    barometricadvertiserid character varying(50),
    barometricadvertisername character varying(250),
    istestadvertiser boolean DEFAULT false NOT NULL,
    contactfname character varying(50),
    contactlname character varying(50),
    contactemail character varying(100),
    contactphoneno character varying(30),
    contactaddress1 character varying(250),
    contactaddress2 character varying(250),
    contactcity character varying(50),
    contactstate character varying(50),
    contactcountry character varying(50),
    contactzip character varying(10),
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 %   DROP TABLE public.tbladt_advertiser;
       public         wayio    false    201    3            �            1259    17216    tbladt_advertiser_assignee_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_advertiser_assignee_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbladt_advertiser_assignee_seq;
       public       wayio    false    3            �            1259    17218    tbladt_advertiser_assignee    TABLE     �   CREATE TABLE tbladt_advertiser_assignee (
    recordid bigint DEFAULT nextval('tbladt_advertiser_assignee_seq'::regclass) NOT NULL,
    advertiserid integer NOT NULL,
    userid integer NOT NULL
);
 .   DROP TABLE public.tbladt_advertiser_assignee;
       public         wayio    false    202    3            �            1259    17224    tbladt_advertiser_delete_seq    SEQUENCE     ~   CREATE SEQUENCE tbladt_advertiser_delete_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbladt_advertiser_delete_seq;
       public       wayio    false    3            �            1259    17226    tbladt_advertiser_delete    TABLE     �  CREATE TABLE tbladt_advertiser_delete (
    advertiserid integer DEFAULT nextval('tbladt_advertiser_delete_seq'::regclass) NOT NULL,
    name character varying(100) NOT NULL,
    agencyid integer NOT NULL,
    categoryid integer NOT NULL,
    categoryid2 integer,
    domain character varying(250),
    assigneduserid integer,
    istestadvertiser boolean NOT NULL,
    contactfname character varying(50),
    contactlname character varying(50),
    contactemail character varying(100),
    contactphoneno character varying(30),
    contactaddress1 character varying(250),
    contactaddress2 character varying(250),
    contactcity character varying(50),
    contactstate character varying(50),
    contactcountry character varying(50),
    contactzip character varying(10),
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 ,   DROP TABLE public.tbladt_advertiser_delete;
       public         wayio    false    204    3            �            1259    17233 '   tbladt_adxappnexus_creativeapproval_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_adxappnexus_creativeapproval_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.tbladt_adxappnexus_creativeapproval_seq;
       public       wayio    false    3            M           1259    21843 #   tbladt_adxappnexus_creativeapproval    TABLE     �  CREATE TABLE tbladt_adxappnexus_creativeapproval (
    recordid bigint DEFAULT nextval('tbladt_adxappnexus_creativeapproval_seq'::regclass) NOT NULL,
    creativeid bigint NOT NULL,
    appnexus_objectid integer,
    iscreativemodified boolean DEFAULT false NOT NULL,
    issentforapproval boolean DEFAULT false NOT NULL,
    isdeletefromappnexus boolean DEFAULT false NOT NULL,
    approvalstatusvalue character varying(50) DEFAULT 'Pending'::character varying NOT NULL,
    approvalstatus integer DEFAULT 0 NOT NULL,
    approvalsenton timestamp(3) without time zone,
    activatedon timestamp(3) without time zone,
    lastbiddingdate timestamp(3) without time zone,
    statusmessage character varying(1500)
);
 7   DROP TABLE public.tbladt_adxappnexus_creativeapproval;
       public         wayio    false    206    3            �            1259    17239 '   tbladt_adxappnexus_creativerejected_log    TABLE     �   CREATE TABLE tbladt_adxappnexus_creativerejected_log (
    creativeid bigint,
    appnexus_objectid integer,
    rejectedon timestamp(3) without time zone,
    audit_feedback character varying(500)
);
 ;   DROP TABLE public.tbladt_adxappnexus_creativerejected_log;
       public         wayio    false    3            �            1259    17245    tbladt_agency_seq    SEQUENCE     s   CREATE SEQUENCE tbladt_agency_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tbladt_agency_seq;
       public       wayio    false    3            �            1259    17247    tbladt_agency    TABLE     �  CREATE TABLE tbladt_agency (
    agencyid integer DEFAULT nextval('tbladt_agency_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    website character varying(250),
    contactfname character varying(50),
    contactlname character varying(50),
    contactemail character varying(100),
    contactphoneno character varying(30),
    contactaddress1 character varying(250),
    contactaddress2 character varying(250),
    contactcity character varying(50),
    contactstate character varying(50),
    contactcountry character varying(50),
    contactzip character varying(10),
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 !   DROP TABLE public.tbladt_agency;
       public         wayio    false    208    3            �            1259    17257    tbladt_alertmonitoring    TABLE     �   CREATE TABLE tbladt_alertmonitoring (
    alerts character varying(255),
    count integer,
    alertgeneratedfromid integer,
    alertgeneratedfrom character varying(100),
    generatedon timestamp(3) without time zone DEFAULT now()
);
 *   DROP TABLE public.tbladt_alertmonitoring;
       public         wayio    false    3            H           1259    20953    tbladt_apisecurity_group    TABLE     Q  CREATE TABLE tbladt_apisecurity_group (
    groupid integer NOT NULL,
    groupname character varying(100) NOT NULL,
    securitykey character varying(50) NOT NULL,
    webuserid character varying(20),
    webuserpassword character varying(20),
    securitylevel integer DEFAULT 2 NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 ,   DROP TABLE public.tbladt_apisecurity_group;
       public         wayio    false    3            �            1259    17194    tbladt_apisecurity_user_seq    SEQUENCE     }   CREATE SEQUENCE tbladt_apisecurity_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbladt_apisecurity_user_seq;
       public       wayio    false    3            I           1259    21802    tbladt_apisecurity_user    TABLE     l  CREATE TABLE tbladt_apisecurity_user (
    userid integer DEFAULT nextval('tbladt_apisecurity_user_seq'::regclass) NOT NULL,
    groupid integer NOT NULL,
    username character varying(100),
    ipaddress character varying(20) NOT NULL,
    webuserid character varying(20),
    webuserpassword character varying(20),
    isactive boolean DEFAULT true NOT NULL
);
 +   DROP TABLE public.tbladt_apisecurity_user;
       public         wayio    false    199    3            �            1259    17261    tbladt_audience_seq    SEQUENCE     u   CREATE SEQUENCE tbladt_audience_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbladt_audience_seq;
       public       wayio    false    3            �            1259    17263    tbladt_audience    TABLE     `  CREATE TABLE tbladt_audience (
    audiencesegmentid bigint DEFAULT nextval('tbladt_audience_seq'::regclass) NOT NULL,
    datapartner character varying(100),
    segmentname character varying(255),
    segmentid character varying(100),
    fullpath text,
    cacheupdatekey character varying(50),
    cacheupdatetime timestamp(0) without time zone
);
 #   DROP TABLE public.tbladt_audience;
       public         wayio    false    211    3            �            1259    17272    tbladt_auditlog_seq    SEQUENCE     u   CREATE SEQUENCE tbladt_auditlog_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbladt_auditlog_seq;
       public       wayio    false    3            �            1259    17274    tbladt_auditlog    TABLE     �   CREATE TABLE tbladt_auditlog (
    recordid bigint DEFAULT nextval('tbladt_auditlog_seq'::regclass) NOT NULL,
    data text,
    "timestamp" timestamp(3) without time zone DEFAULT now()
);
 #   DROP TABLE public.tbladt_auditlog;
       public         wayio    false    213    3            N           1259    21857 &   tbladt_backgroundprocess_configuration    TABLE     �   CREATE TABLE tbladt_backgroundprocess_configuration (
    flatupdate_maxprocessingrecords integer,
    flatupdate_maxsubsetrecords integer,
    isuatappnexusallowed boolean DEFAULT false NOT NULL
);
 :   DROP TABLE public.tbladt_backgroundprocess_configuration;
       public         wayio    false    3            �            1259    17287 /   tbladt_barocreativeplacement_update_trigger_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_barocreativeplacement_update_trigger_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.tbladt_barocreativeplacement_update_trigger_seq;
       public       wayio    false    3            O           1259    21861 +   tbladt_barocreativeplacement_update_trigger    TABLE     k  CREATE TABLE tbladt_barocreativeplacement_update_trigger (
    triggerid bigint DEFAULT nextval('tbladt_barocreativeplacement_update_trigger_seq'::regclass) NOT NULL,
    moduletype integer,
    triggerby integer,
    triggeron timestamp(3) without time zone DEFAULT now(),
    isprocessed boolean DEFAULT false,
    processedon timestamp(3) without time zone
);
 ?   DROP TABLE public.tbladt_barocreativeplacement_update_trigger;
       public         wayio    false    215    3            �            1259    17299 4   tbladt_barocreativeplacement_update_trigger_creative    TABLE     |   CREATE TABLE tbladt_barocreativeplacement_update_trigger_creative (
    triggerid bigint NOT NULL,
    creativeid bigint
);
 H   DROP TABLE public.tbladt_barocreativeplacement_update_trigger_creative;
       public         wayio    false    3            �            1259    17302 #   tbladt_barometricawsalertmonitoring    TABLE     E  CREATE TABLE tbladt_barometricawsalertmonitoring (
    alerts character varying(255),
    alertsource character varying(255),
    awsurl character varying(255),
    mailbody text,
    alertgeneratedfromid integer,
    alertgeneratedfrom character varying(100),
    generatedon timestamp(3) without time zone DEFAULT now()
);
 7   DROP TABLE public.tbladt_barometricawsalertmonitoring;
       public         wayio    false    3            P           1259    21869    tbladt_behavior    TABLE     �   CREATE TABLE tbladt_behavior (
    behaviorid integer NOT NULL,
    behavior character varying(50) NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 #   DROP TABLE public.tbladt_behavior;
       public         wayio    false    3            �            1259    17312    tbladt_biddingstatistics_seq    SEQUENCE     ~   CREATE SEQUENCE tbladt_biddingstatistics_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbladt_biddingstatistics_seq;
       public       wayio    false    3            �            1259    17314    tbladt_biddingstatistics    TABLE     n  CREATE TABLE tbladt_biddingstatistics (
    recordid bigint DEFAULT nextval('tbladt_biddingstatistics_seq'::regclass) NOT NULL,
    "timestamp" timestamp(0) without time zone NOT NULL,
    adexchangeid integer,
    campaignid bigint,
    lineitemid bigint,
    strategyid bigint,
    creativeid bigint,
    totalbids bigint,
    totalwins bigint,
    totalimpressions bigint,
    totalclicks bigint,
    totalcompletes bigint,
    totalpayout double precision,
    revenue double precision,
    updatedon timestamp(3) without time zone DEFAULT now() NOT NULL,
    cpmcost double precision,
    cpccost double precision
);
 ,   DROP TABLE public.tbladt_biddingstatistics;
       public         wayio    false    218    3            �            1259    17321 +   tbladt_biddingstatistics_consumed_daily_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_biddingstatistics_consumed_daily_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.tbladt_biddingstatistics_consumed_daily_seq;
       public       wayio    false    3            �            1259    17323 '   tbladt_biddingstatistics_consumed_daily    TABLE     �  CREATE TABLE tbladt_biddingstatistics_consumed_daily (
    recordid bigint DEFAULT nextval('tbladt_biddingstatistics_consumed_daily_seq'::regclass) NOT NULL,
    "timestamp" timestamp(0) without time zone NOT NULL,
    lineitemid bigint,
    strategyid bigint,
    totalbids bigint,
    totalwins bigint,
    totalimpressions bigint,
    totalclicks bigint,
    totalcompletes bigint,
    totalpayout double precision
);
 ;   DROP TABLE public.tbladt_biddingstatistics_consumed_daily;
       public         wayio    false    220    3            �            1259    17329 /   tbladt_biddingstatistics_consumed_daily_est_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_biddingstatistics_consumed_daily_est_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.tbladt_biddingstatistics_consumed_daily_est_seq;
       public       wayio    false    3            �            1259    17331 +   tbladt_biddingstatistics_consumed_daily_est    TABLE     �  CREATE TABLE tbladt_biddingstatistics_consumed_daily_est (
    recordid bigint DEFAULT nextval('tbladt_biddingstatistics_consumed_daily_est_seq'::regclass) NOT NULL,
    "timestamp" timestamp(0) without time zone NOT NULL,
    lineitemid bigint,
    strategyid bigint,
    totalbids bigint,
    totalwins bigint,
    totalimpressions bigint,
    totalclicks bigint,
    totalcompletes bigint,
    totalpayout double precision
);
 ?   DROP TABLE public.tbladt_biddingstatistics_consumed_daily_est;
       public         wayio    false    222    3            �            1259    17337 4   tbladt_biddingstatistics_consumed_daily_est_temp_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_biddingstatistics_consumed_daily_est_temp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.tbladt_biddingstatistics_consumed_daily_est_temp_seq;
       public       wayio    false    3            �            1259    17339 0   tbladt_biddingstatistics_consumed_daily_est_temp    TABLE     �  CREATE TABLE tbladt_biddingstatistics_consumed_daily_est_temp (
    recordid bigint DEFAULT nextval('tbladt_biddingstatistics_consumed_daily_est_temp_seq'::regclass) NOT NULL,
    "timestamp" timestamp(0) without time zone NOT NULL,
    lineitemid bigint,
    strategyid bigint,
    totalbids bigint,
    totalwins bigint,
    totalimpressions bigint,
    totalclicks bigint,
    totalcompletes bigint,
    totalpayout double precision
);
 D   DROP TABLE public.tbladt_biddingstatistics_consumed_daily_est_temp;
       public         wayio    false    224    3            �            1259    17345 -   tbladt_biddingstatistics_consumed_overall_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_biddingstatistics_consumed_overall_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.tbladt_biddingstatistics_consumed_overall_seq;
       public       wayio    false    3            �            1259    17347 )   tbladt_biddingstatistics_consumed_overall    TABLE     �  CREATE TABLE tbladt_biddingstatistics_consumed_overall (
    recordid bigint DEFAULT nextval('tbladt_biddingstatistics_consumed_overall_seq'::regclass) NOT NULL,
    lineitemid bigint,
    strategyid bigint,
    totalbids bigint,
    totalwins bigint,
    totalimpressions bigint,
    totalclicks bigint,
    totalcompletes bigint,
    totalpayout double precision,
    cpmcost double precision,
    cpccost double precision
);
 =   DROP TABLE public.tbladt_biddingstatistics_consumed_overall;
       public         wayio    false    226    3            �            1259    17353 2   tbladt_biddingstatistics_consumed_overall_temp_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_biddingstatistics_consumed_overall_temp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.tbladt_biddingstatistics_consumed_overall_temp_seq;
       public       wayio    false    3            �            1259    17355 .   tbladt_biddingstatistics_consumed_overall_temp    TABLE     z  CREATE TABLE tbladt_biddingstatistics_consumed_overall_temp (
    recordid bigint DEFAULT nextval('tbladt_biddingstatistics_consumed_overall_temp_seq'::regclass) NOT NULL,
    lineitemid bigint,
    strategyid bigint,
    totalbids bigint,
    totalwins bigint,
    totalimpressions bigint,
    totalclicks bigint,
    totalcompletes bigint,
    totalpayout double precision
);
 B   DROP TABLE public.tbladt_biddingstatistics_consumed_overall_temp;
       public         wayio    false    228    3            �            1259    17361 +   tbladt_biddingstatistics_dashboardgraph_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_biddingstatistics_dashboardgraph_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.tbladt_biddingstatistics_dashboardgraph_seq;
       public       wayio    false    3            �            1259    17363 '   tbladt_biddingstatistics_dashboardgraph    TABLE     _  CREATE TABLE tbladt_biddingstatistics_dashboardgraph (
    recordid bigint DEFAULT nextval('tbladt_biddingstatistics_dashboardgraph_seq'::regclass) NOT NULL,
    adexchangeid integer,
    campaignid bigint,
    totalbids bigint,
    totalwins bigint,
    totalclicks bigint,
    totalcompletes bigint,
    updatedate timestamp(3) without time zone
);
 ;   DROP TABLE public.tbladt_biddingstatistics_dashboardgraph;
       public         wayio    false    230    3            �            1259    17369 &   tbladt_biddingstatistics_last2days_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_biddingstatistics_last2days_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.tbladt_biddingstatistics_last2days_seq;
       public       wayio    false    3            �            1259    17371 "   tbladt_biddingstatistics_last2days    TABLE     +  CREATE TABLE tbladt_biddingstatistics_last2days (
    id bigint DEFAULT nextval('tbladt_biddingstatistics_last2days_seq'::regclass) NOT NULL,
    totalbids integer,
    totalimpressionswon integer,
    totalclicks integer,
    totalpayoput numeric(18,6),
    date timestamp(3) without time zone,
    campaignid bigint,
    creativeid bigint,
    siteid integer,
    appid integer,
    platformid bigint,
    osversionid bigint,
    deviceid bigint,
    adexchangeid integer,
    rtpeenabled integer,
    totalimppixels bigint,
    totalcomplete bigint
);
 6   DROP TABLE public.tbladt_biddingstatistics_last2days;
       public         wayio    false    232    3            �           1259    23893    tbladt_bidmetrics    TABLE     f  CREATE TABLE tbladt_bidmetrics (
    "timestamp" timestamp without time zone,
    class character varying(250),
    lineitemid integer,
    strategyid integer,
    creativeid integer,
    adexchange character varying(250),
    bidderagentid character varying(50),
    sum bigint,
    pricecpmsum double precision,
    pricecpmmean double precision,
    pricecpmdev double precision,
    pricecpmmin double precision,
    pricecpmmax double precision,
    timemssum double precision,
    timemsmean double precision,
    timemsdev double precision,
    timemsmin double precision,
    timemsmax double precision
);
 %   DROP TABLE public.tbladt_bidmetrics;
       public         wayio    false    3            �            1259    17393    tbladt_campaign_seq    SEQUENCE     u   CREATE SEQUENCE tbladt_campaign_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbladt_campaign_seq;
       public       wayio    false    3            V           1259    21896    tbladt_campaign    TABLE     �  CREATE TABLE tbladt_campaign (
    campaignid bigint DEFAULT nextval('tbladt_campaign_seq'::regclass) NOT NULL,
    advertiserid integer NOT NULL,
    name character varying(250) NOT NULL,
    startdate timestamp(0) without time zone NOT NULL,
    enddate timestamp(0) without time zone NOT NULL,
    state integer DEFAULT 1,
    status integer DEFAULT 0,
    approvalstatus integer DEFAULT 2 NOT NULL,
    externalio character varying(50),
    sfopportunityid character varying(50),
    assigneduserid integer,
    isoverrideassignee boolean DEFAULT false,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone,
    apiaccessid integer,
    barometriccampaignid character varying(50),
    barometriccampaignname character varying(250),
    isdeleted boolean DEFAULT false,
    isrejected boolean DEFAULT false,
    iobudget double precision
);
 #   DROP TABLE public.tbladt_campaign;
       public         wayio    false    235    3            F           1259    19308    tbladt_campaign_assignee_seq    SEQUENCE     ~   CREATE SEQUENCE tbladt_campaign_assignee_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbladt_campaign_assignee_seq;
       public       wayio    false    3            G           1259    19310    tbladt_campaign_assignee    TABLE     �   CREATE TABLE tbladt_campaign_assignee (
    recordid bigint DEFAULT nextval('tbladt_campaign_assignee_seq'::regclass) NOT NULL,
    campaignid bigint NOT NULL,
    userid integer NOT NULL
);
 ,   DROP TABLE public.tbladt_campaign_assignee;
       public         wayio    false    582    3            �            1259    17405    tbladt_campaign_temp    TABLE       CREATE TABLE tbladt_campaign_temp (
    campaignid bigint NOT NULL,
    advertiserid integer NOT NULL,
    name character varying(250) NOT NULL,
    startdate timestamp(0) without time zone NOT NULL,
    enddate timestamp(0) without time zone NOT NULL,
    approvalstatus integer DEFAULT 2 NOT NULL,
    externalio character varying(50),
    assigneduserid integer,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 (   DROP TABLE public.tbladt_campaign_temp;
       public         wayio    false    3            �            1259    17412    tbladt_campaign_watcher_seq    SEQUENCE     }   CREATE SEQUENCE tbladt_campaign_watcher_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbladt_campaign_watcher_seq;
       public       wayio    false    3            �            1259    17414    tbladt_campaign_watcher    TABLE     �   CREATE TABLE tbladt_campaign_watcher (
    watcherid bigint DEFAULT nextval('tbladt_campaign_watcher_seq'::regclass) NOT NULL,
    campaignid bigint NOT NULL,
    userid integer NOT NULL
);
 +   DROP TABLE public.tbladt_campaign_watcher;
       public         wayio    false    237    3            �            1259    17420    tbladt_carrierpopular_seq    SEQUENCE     {   CREATE SEQUENCE tbladt_carrierpopular_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tbladt_carrierpopular_seq;
       public       wayio    false    3            �            1259    17422    tbladt_carrierpopular    TABLE     �   CREATE TABLE tbladt_carrierpopular (
    popularcarrierid integer DEFAULT nextval('tbladt_carrierpopular_seq'::regclass) NOT NULL,
    popularcarriername text,
    countryid integer,
    carrierids text,
    rank integer DEFAULT 0
);
 )   DROP TABLE public.tbladt_carrierpopular;
       public         wayio    false    239    3            �            1259    17432    tbladt_carriers_seq    SEQUENCE     u   CREATE SEQUENCE tbladt_carriers_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbladt_carriers_seq;
       public       wayio    false    3            �            1259    17434    tbladt_carriers    TABLE       CREATE TABLE tbladt_carriers (
    carrierid integer DEFAULT nextval('tbladt_carriers_seq'::regclass) NOT NULL,
    carriername text NOT NULL,
    countryid integer,
    countrycode character varying(50),
    countryname character varying(300),
    isactive boolean
);
 #   DROP TABLE public.tbladt_carriers;
       public         wayio    false    241    3            �            1259    17443    tbladt_clonetrigger_seq    SEQUENCE     y   CREATE SEQUENCE tbladt_clonetrigger_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbladt_clonetrigger_seq;
       public       wayio    false    3            �            1259    17445    tbladt_clonetrigger    TABLE     8  CREATE TABLE tbladt_clonetrigger (
    triggerid bigint DEFAULT nextval('tbladt_clonetrigger_seq'::regclass) NOT NULL,
    module character varying(50),
    moduleids text,
    clonecount integer DEFAULT 1,
    status integer DEFAULT 0,
    triggeredby integer,
    triggeredon timestamp(3) without time zone
);
 '   DROP TABLE public.tbladt_clonetrigger;
       public         wayio    false    243    3            �            1259    17456    tbladt_commonwords_seq    SEQUENCE     x   CREATE SEQUENCE tbladt_commonwords_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tbladt_commonwords_seq;
       public       wayio    false    3            �            1259    17458    tbladt_commonwords    TABLE     �   CREATE TABLE tbladt_commonwords (
    recordid integer DEFAULT nextval('tbladt_commonwords_seq'::regclass) NOT NULL,
    word character varying(20)
);
 &   DROP TABLE public.tbladt_commonwords;
       public         wayio    false    245    3            �            1259    17464    tbladt_company_seq    SEQUENCE     t   CREATE SEQUENCE tbladt_company_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbladt_company_seq;
       public       wayio    false    3            W           1259    21912    tbladt_company    TABLE     �  CREATE TABLE tbladt_company (
    companyid integer DEFAULT nextval('tbladt_company_seq'::regclass) NOT NULL,
    name character varying(100),
    website character varying(500),
    email character varying(100),
    phoneno character varying(30),
    street character varying(250),
    city character varying(50),
    state character varying(50),
    country character varying(50),
    zip character varying(10),
    timezoneid integer,
    isactive boolean DEFAULT true NOT NULL,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 "   DROP TABLE public.tbladt_company;
       public         wayio    false    247    3            �            1259    17470    tbladt_costcategory    TABLE     r   CREATE TABLE tbladt_costcategory (
    costcategoryid integer NOT NULL,
    costcategory character varying(50)
);
 '   DROP TABLE public.tbladt_costcategory;
       public         wayio    false    3            X           1259    21923    tbladt_costtype    TABLE     �   CREATE TABLE tbladt_costtype (
    costtypeid integer NOT NULL,
    costtype character varying(50),
    isactive boolean DEFAULT true NOT NULL
);
 #   DROP TABLE public.tbladt_costtype;
       public         wayio    false    3            Y           1259    21929    tbladt_country    TABLE     �   CREATE TABLE tbladt_country (
    countryid integer NOT NULL,
    countryname character varying(50) NOT NULL,
    iso_2_code character varying(5),
    iso_3_code character varying(5),
    isactive boolean DEFAULT true NOT NULL
);
 "   DROP TABLE public.tbladt_country;
       public         wayio    false    3            �            1259    17484    tbladt_country_state_city_seq    SEQUENCE        CREATE SEQUENCE tbladt_country_state_city_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tbladt_country_state_city_seq;
       public       wayio    false    3            �            1259    17486    tbladt_country_state_city    TABLE     �  CREATE TABLE tbladt_country_state_city (
    recordid bigint DEFAULT nextval('tbladt_country_state_city_seq'::regclass) NOT NULL,
    countryid integer,
    country character varying(100),
    stateid integer,
    state character varying(100),
    city character varying(255),
    createdon timestamp(3) without time zone DEFAULT now(),
    updatedon timestamp(3) without time zone
);
 -   DROP TABLE public.tbladt_country_state_city;
       public         wayio    false    249    3            �            1259    17493 #   tbladt_country_state_city_stage_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_country_state_city_stage_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tbladt_country_state_city_stage_seq;
       public       wayio    false    3            �            1259    17495    tbladt_country_state_city_stage    TABLE     �   CREATE TABLE tbladt_country_state_city_stage (
    recordid bigint DEFAULT nextval('tbladt_country_state_city_stage_seq'::regclass) NOT NULL,
    country character varying(100),
    state character varying(100),
    city character varying(255)
);
 3   DROP TABLE public.tbladt_country_state_city_stage;
       public         wayio    false    251    3            Q           1259    21875 )   tbladt_cparetargeting_conversion_strength    TABLE     �   CREATE TABLE tbladt_cparetargeting_conversion_strength (
    conversionid integer NOT NULL,
    conversionstrength character varying(50) NOT NULL,
    isactive boolean DEFAULT true
);
 =   DROP TABLE public.tbladt_cparetargeting_conversion_strength;
       public         wayio    false    3            �            1259    17378 #   tbladt_cparetargeting_goal_name_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_cparetargeting_goal_name_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tbladt_cparetargeting_goal_name_seq;
       public       wayio    false    3            R           1259    21879    tbladt_cparetargeting_goal_name    TABLE     �   CREATE TABLE tbladt_cparetargeting_goal_name (
    goalid integer DEFAULT nextval('tbladt_cparetargeting_goal_name_seq'::regclass) NOT NULL,
    goalname character varying(250) NOT NULL,
    isactive boolean DEFAULT true
);
 3   DROP TABLE public.tbladt_cparetargeting_goal_name;
       public         wayio    false    234    3            S           1259    21884 &   tbladt_cparetargeting_retargeting_type    TABLE     �   CREATE TABLE tbladt_cparetargeting_retargeting_type (
    retargetingtypeid integer NOT NULL,
    retargetingtype character varying(50) NOT NULL,
    isactive boolean DEFAULT true
);
 :   DROP TABLE public.tbladt_cparetargeting_retargeting_type;
       public         wayio    false    3            T           1259    21888 &   tbladt_cparetargeting_update_frequency    TABLE     �   CREATE TABLE tbladt_cparetargeting_update_frequency (
    updatefrequencyid integer NOT NULL,
    updatefrequency character varying(50) NOT NULL,
    isactive boolean DEFAULT true
);
 :   DROP TABLE public.tbladt_cparetargeting_update_frequency;
       public         wayio    false    3            U           1259    21892 $   tbladt_cparetargeting_user_frequency    TABLE     �   CREATE TABLE tbladt_cparetargeting_user_frequency (
    userfrequencyid integer NOT NULL,
    userfrequency character varying(20) NOT NULL,
    isactive boolean DEFAULT true
);
 8   DROP TABLE public.tbladt_cparetargeting_user_frequency;
       public         wayio    false    3            �            1259    17501    tbladt_creative_seq    SEQUENCE     u   CREATE SEQUENCE tbladt_creative_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbladt_creative_seq;
       public       wayio    false    3            Z           1259    21935    tbladt_creative    TABLE     �  CREATE TABLE tbladt_creative (
    creativeid bigint DEFAULT nextval('tbladt_creative_seq'::regclass) NOT NULL,
    lineitemid bigint,
    refcreativeid bigint,
    adformatid integer,
    templateid integer,
    markupsourceid integer,
    groupid bigint,
    creativename character varying(500) NOT NULL,
    thirdpartyadid character varying(100),
    startdate timestamp(0) without time zone,
    enddate timestamp(0) without time zone,
    creativetypeid integer,
    mediatypeid integer,
    markuptypeid integer,
    creativeattributeids text,
    adfeatureids text,
    previewurl character varying(1000),
    clickthroughurl character varying(1000),
    landingpageurl character varying(1000) NOT NULL,
    rotationpercentage integer,
    istransactioncompleted boolean DEFAULT false,
    state integer DEFAULT 3,
    status integer DEFAULT 6 NOT NULL,
    creativevendorids text,
    isssl boolean DEFAULT true,
    api integer,
    barometricplacementid character varying(50),
    barometricplacementname character varying(250),
    barometricplacementcturl character varying(1000),
    barometricplacementautocreationid character varying(50),
    overriddenadtag text,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone,
    campaignid bigint NOT NULL,
    isdeleted boolean DEFAULT false,
    isrejected boolean DEFAULT false
);
 #   DROP TABLE public.tbladt_creative;
       public         wayio    false    253    3            b           1259    22001    tbladt_creative_adfeature    TABLE     �   CREATE TABLE tbladt_creative_adfeature (
    adfeatureid integer NOT NULL,
    adfeature character varying(50) NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 -   DROP TABLE public.tbladt_creative_adfeature;
       public         wayio    false    3            c           1259    22007    tbladt_creative_adformat    TABLE     �   CREATE TABLE tbladt_creative_adformat (
    adformatid integer NOT NULL,
    adformat character varying(50) NOT NULL,
    adformatcode character varying(10),
    isactive boolean DEFAULT true NOT NULL
);
 ,   DROP TABLE public.tbladt_creative_adformat;
       public         wayio    false    3            �           1259    22762    tbladt_creative_adformat_api    TABLE     k   CREATE TABLE tbladt_creative_adformat_api (
    adformatid integer NOT NULL,
    apiid integer NOT NULL
);
 0   DROP TABLE public.tbladt_creative_adformat_api;
       public         wayio    false    3                       1259    17568     tbladt_creative_adformat_display    TABLE     i  CREATE TABLE tbladt_creative_adformat_display (
    creativeid bigint NOT NULL,
    mediasourcetypeid integer NOT NULL,
    rawfilename character varying(500),
    mediasource text,
    mediaproviderid integer,
    uniquecreativeid character varying(100),
    placementid character varying(50),
    dimensionid integer,
    height integer,
    width integer
);
 4   DROP TABLE public.tbladt_creative_adformat_display;
       public         wayio    false    3                       1259    17576 #   tbladt_creative_adformat_expandable    TABLE     �  CREATE TABLE tbladt_creative_adformat_expandable (
    creativeid bigint NOT NULL,
    mediasourcetypeid integer,
    rawfilename character varying(500),
    mediasource text,
    mediaproviderid integer,
    uniquecreativeid character varying(100),
    placementid character varying(50),
    dimensionid integer,
    height integer,
    width integer,
    iframebuster character varying(1000)
);
 7   DROP TABLE public.tbladt_creative_adformat_expandable;
       public         wayio    false    3                       1259    17584 %   tbladt_creative_adformat_interstitial    TABLE     n  CREATE TABLE tbladt_creative_adformat_interstitial (
    creativeid bigint NOT NULL,
    mediasourcetypeid integer NOT NULL,
    rawfilename character varying(500),
    mediasource text,
    mediaproviderid integer,
    uniquecreativeid character varying(100),
    placementid character varying(50),
    dimensionid integer,
    height integer,
    width integer
);
 9   DROP TABLE public.tbladt_creative_adformat_interstitial;
       public         wayio    false    3            	           1259    17592    tbladt_creative_adformat_native    TABLE     e  CREATE TABLE tbladt_creative_adformat_native (
    creativeid bigint NOT NULL,
    mediasourcetypeid integer,
    rawfilename character varying(500),
    mediasource text,
    mediaproviderid integer,
    uniquecreativeid character varying(100),
    placementid character varying(50),
    dimensionid integer,
    height integer,
    width integer,
    iconmediasourcetypeid integer,
    iconrawfilename character varying(500),
    iconmediasource text,
    icondimensionid integer,
    iconheight integer,
    iconwidth integer,
    logomediasourcetypeid integer,
    logorawfilename character varying(500),
    logomediasource text,
    logodimensionid integer,
    logoheight integer,
    logowidth integer,
    title character varying(50),
    sponsoredtext character varying(500),
    description text,
    calltoaction character varying(25),
    starrating double precision,
    videosourcetypeid integer,
    videorawfilename character varying(500),
    videosource text,
    videoduration integer,
    videodeliverytypeid integer,
    videomediabitrateid integer,
    videomimetypeid integer,
    videoapi integer
);
 3   DROP TABLE public.tbladt_creative_adformat_native;
       public         wayio    false    3            d           1259    22013    tbladt_creative_adformat_video    TABLE     �  CREATE TABLE tbladt_creative_adformat_video (
    creativeid bigint NOT NULL,
    mediasourcetypeid integer NOT NULL,
    rawfilename character varying(500),
    mediasource text,
    mediaproviderid integer,
    uniquecreativeid character varying(100),
    placementid character varying(50),
    dimensionid integer,
    height integer,
    width integer,
    mimetypeid integer,
    deliverytypeid integer,
    isscalable boolean,
    mediabitrateid integer,
    duration integer,
    hascompanionad boolean DEFAULT false NOT NULL,
    cadsourcetypeid integer,
    cadrawfilename character varying(500),
    cadsource text,
    caddimensionid integer,
    cadheight integer,
    cadwidth integer,
    cadclickthroughurl character varying(1000)
);
 2   DROP TABLE public.tbladt_creative_adformat_video;
       public         wayio    false    3            a           1259    21995    tbladt_creative_api    TABLE     �   CREATE TABLE tbladt_creative_api (
    apiid integer NOT NULL,
    api character varying(50) NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 '   DROP TABLE public.tbladt_creative_api;
       public         wayio    false    3            
           1259    17603    tbladt_creative_companionad_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_creative_companionad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbladt_creative_companionad_seq;
       public       wayio    false    3                       1259    17605    tbladt_creative_companionad    TABLE     �  CREATE TABLE tbladt_creative_companionad (
    recordid bigint DEFAULT nextval('tbladt_creative_companionad_seq'::regclass) NOT NULL,
    creativeid bigint NOT NULL,
    cadsourcetypeid integer NOT NULL,
    cadrawfilename character varying(500),
    cadsource text NOT NULL,
    caddimensionid integer,
    cadheight integer,
    cadwidth integer,
    cadclickthroughurl character varying(1000)
);
 /   DROP TABLE public.tbladt_creative_companionad;
       public         wayio    false    266    3                       1259    17614    tbladt_creative_delete_seq    SEQUENCE     |   CREATE SEQUENCE tbladt_creative_delete_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbladt_creative_delete_seq;
       public       wayio    false    3                       1259    17616    tbladt_creative_delete    TABLE     T  CREATE TABLE tbladt_creative_delete (
    creativeid bigint DEFAULT nextval('tbladt_creative_delete_seq'::regclass) NOT NULL,
    lineitemid bigint NOT NULL,
    refcreativeid bigint,
    groupid bigint,
    creativename character varying(500) NOT NULL,
    thirdpartyadid character varying(100),
    startdate timestamp(0) without time zone,
    enddate timestamp(0) without time zone,
    mediatypeid integer NOT NULL,
    creativeattributeids text,
    clickthroughurl character varying(1000),
    landingpageurl character varying(1000) NOT NULL,
    rotationpercentage integer,
    status integer NOT NULL,
    isssl boolean,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone,
    istransactioncompleted boolean,
    creativevendorids text
);
 *   DROP TABLE public.tbladt_creative_delete;
       public         wayio    false    268    3            e           1259    22022    tbladt_creative_deliverytype    TABLE     �   CREATE TABLE tbladt_creative_deliverytype (
    deliverytypeid integer NOT NULL,
    deliverytype character varying(50) NOT NULL,
    isactive boolean DEFAULT true
);
 0   DROP TABLE public.tbladt_creative_deliverytype;
       public         wayio    false    3                       1259    17626    tbladt_creative_dimension_seq    SEQUENCE        CREATE SEQUENCE tbladt_creative_dimension_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tbladt_creative_dimension_seq;
       public       wayio    false    3            f           1259    22028    tbladt_creative_dimension    TABLE     d  CREATE TABLE tbladt_creative_dimension (
    dimensionid integer DEFAULT nextval('tbladt_creative_dimension_seq'::regclass) NOT NULL,
    adformatid integer NOT NULL,
    dimension character varying(20) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    ispredefined boolean DEFAULT false,
    isactive boolean DEFAULT true NOT NULL
);
 -   DROP TABLE public.tbladt_creative_dimension;
       public         wayio    false    270    3                       1259    17632 !   tbladt_creative_dimension_tracker    TABLE     �   CREATE TABLE tbladt_creative_dimension_tracker (
    creativeformatid integer,
    loggedon timestamp(3) without time zone DEFAULT now()
);
 5   DROP TABLE public.tbladt_creative_dimension_tracker;
       public         wayio    false    3                       1259    17636 -   tbladt_creative_dimension_tracker_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_creative_dimension_tracker_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.tbladt_creative_dimension_tracker_archive_seq;
       public       wayio    false    3                       1259    17638 )   tbladt_creative_dimension_tracker_archive    TABLE     �   CREATE TABLE tbladt_creative_dimension_tracker_archive (
    recordid bigint DEFAULT nextval('tbladt_creative_dimension_tracker_archive_seq'::regclass) NOT NULL,
    creativeformatid integer,
    loggedon timestamp(3) without time zone DEFAULT now()
);
 =   DROP TABLE public.tbladt_creative_dimension_tracker_archive;
       public         wayio    false    272    3                       1259    17645    tbladt_creative_dummy_seq    SEQUENCE     {   CREATE SEQUENCE tbladt_creative_dummy_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tbladt_creative_dummy_seq;
       public       wayio    false    3            g           1259    22036    tbladt_creative_dummy    TABLE     ]  CREATE TABLE tbladt_creative_dummy (
    creativeid bigint DEFAULT nextval('tbladt_creative_dummy_seq'::regclass) NOT NULL,
    lineitemid bigint NOT NULL,
    refcreativeid bigint,
    adformatid integer,
    templateid integer,
    markupsourceid integer,
    groupid bigint,
    creativename character varying(500) NOT NULL,
    thirdpartyadid character varying(100),
    startdate timestamp(0) without time zone,
    enddate timestamp(0) without time zone,
    creativetypeid integer,
    mediatypeid integer,
    markuptypeid integer,
    creativeattributeids text,
    adfeatureids text,
    previewurl character varying(1000),
    clickthroughurl character varying(1000),
    landingpageurl character varying(1000) NOT NULL,
    rotationpercentage integer,
    istransactioncompleted boolean DEFAULT false,
    state integer DEFAULT 3,
    status integer DEFAULT 6 NOT NULL,
    creativevendorids text,
    isssl boolean DEFAULT true,
    api integer,
    barometricplacementid character varying(50),
    barometricplacementname character varying(250),
    barometricplacementcturl character varying(1000),
    barometricplacementautocreationid character varying(50),
    overriddenadtag text,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 )   DROP TABLE public.tbladt_creative_dummy;
       public         wayio    false    274    3                       1259    17651 !   tbladt_creative_eventtracking_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_creative_eventtracking_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tbladt_creative_eventtracking_seq;
       public       wayio    false    3            h           1259    22050    tbladt_creative_eventtracking    TABLE     N  CREATE TABLE tbladt_creative_eventtracking (
    recordid bigint DEFAULT nextval('tbladt_creative_eventtracking_seq'::regclass) NOT NULL,
    creativeid bigint NOT NULL,
    trackingid integer NOT NULL,
    trackingtag text,
    isvideo boolean DEFAULT false,
    barometricplacementid character varying(50),
    mediatype integer
);
 1   DROP TABLE public.tbladt_creative_eventtracking;
       public         wayio    false    275    3            i           1259    22060    tbladt_creative_iframebuster    TABLE     �   CREATE TABLE tbladt_creative_iframebuster (
    iframebusterid integer NOT NULL,
    iframebustercode character varying(10) NOT NULL,
    iframebuster character varying(100) NOT NULL,
    vendorid integer,
    isactive boolean DEFAULT true NOT NULL
);
 0   DROP TABLE public.tbladt_creative_iframebuster;
       public         wayio    false    3            j           1259    22066    tbladt_creative_markup_source    TABLE     �   CREATE TABLE tbladt_creative_markup_source (
    markupsourceid integer NOT NULL,
    markupsource character varying(50) NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 1   DROP TABLE public.tbladt_creative_markup_source;
       public         wayio    false    3            k           1259    22072    tbladt_creative_mediabitrate    TABLE     �   CREATE TABLE tbladt_creative_mediabitrate (
    mediabitrateid integer NOT NULL,
    mediabitrate integer NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 0   DROP TABLE public.tbladt_creative_mediabitrate;
       public         wayio    false    3            l           1259    22078    tbladt_creative_mediafiletype    TABLE     �   CREATE TABLE tbladt_creative_mediafiletype (
    mediafiletypeid integer NOT NULL,
    mediafiletype character varying(50) NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 1   DROP TABLE public.tbladt_creative_mediafiletype;
       public         wayio    false    3            m           1259    22084    tbladt_creative_mediasourcetype    TABLE     �   CREATE TABLE tbladt_creative_mediasourcetype (
    mediasourcetypeid integer NOT NULL,
    mediasourcetype character varying(50) NOT NULL,
    mediafiletypeid integer NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 3   DROP TABLE public.tbladt_creative_mediasourcetype;
       public         wayio    false    3            n           1259    22090    tbladt_creative_mimetype    TABLE     �   CREATE TABLE tbladt_creative_mimetype (
    mimetypeid integer NOT NULL,
    mimetype character varying(50) NOT NULL,
    mediafiletypeid integer NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 ,   DROP TABLE public.tbladt_creative_mimetype;
       public         wayio    false    3                       1259    17675    tbladt_creative_previewassoc    TABLE     �   CREATE TABLE tbladt_creative_previewassoc (
    creativeid bigint NOT NULL,
    updatedby integer,
    updatedon timestamp(3) without time zone DEFAULT now()
);
 0   DROP TABLE public.tbladt_creative_previewassoc;
       public         wayio    false    3            o           1259    22096    tbladt_creative_trackingmaster    TABLE       CREATE TABLE tbladt_creative_trackingmaster (
    trackingid integer NOT NULL,
    trackingtype character varying(150),
    isvideotracking boolean,
    appnexuseventtypeid integer,
    appnexuseventtypename character varying(150),
    isactive boolean DEFAULT true
);
 2   DROP TABLE public.tbladt_creative_trackingmaster;
       public         wayio    false    3            [           1259    21951    tbladt_creativeattribute    TABLE     �   CREATE TABLE tbladt_creativeattribute (
    attributeid integer NOT NULL,
    attributecode character varying(50),
    attributename character varying(100) NOT NULL,
    attributecodeid character varying(50),
    isactive boolean DEFAULT true NOT NULL
);
 ,   DROP TABLE public.tbladt_creativeattribute;
       public         wayio    false    3            �            1259    17510    tbladt_creativeattributecode    TABLE     �   CREATE TABLE tbladt_creativeattributecode (
    recordid integer NOT NULL,
    attributeid integer NOT NULL,
    attributecode character varying(10) NOT NULL,
    isadx boolean NOT NULL
);
 0   DROP TABLE public.tbladt_creativeattributecode;
       public         wayio    false    3            �            1259    17515    tbladt_creativedimension_seq    SEQUENCE     ~   CREATE SEQUENCE tbladt_creativedimension_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbladt_creativedimension_seq;
       public       wayio    false    3            \           1259    21957    tbladt_creativedimension    TABLE       CREATE TABLE tbladt_creativedimension (
    dimensionid integer DEFAULT nextval('tbladt_creativedimension_seq'::regclass) NOT NULL,
    dimension character varying(20) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 ,   DROP TABLE public.tbladt_creativedimension;
       public         wayio    false    255    3                        1259    17521    tbladt_creativegroup_seq    SEQUENCE     z   CREATE SEQUENCE tbladt_creativegroup_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbladt_creativegroup_seq;
       public       wayio    false    3            ]           1259    21964    tbladt_creativegroup    TABLE     }  CREATE TABLE tbladt_creativegroup (
    groupid bigint DEFAULT nextval('tbladt_creativegroup_seq'::regclass) NOT NULL,
    lineitemid bigint NOT NULL,
    groupname character varying(500) NOT NULL,
    status boolean DEFAULT false NOT NULL,
    startdate timestamp(0) without time zone NOT NULL,
    enddate timestamp(0) without time zone NOT NULL,
    mediatypeid integer NOT NULL,
    dimensionid integer,
    width integer NOT NULL,
    height integer NOT NULL,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 (   DROP TABLE public.tbladt_creativegroup;
       public         wayio    false    256    3                       1259    17527    tbladt_creativeproperties_seq    SEQUENCE        CREATE SEQUENCE tbladt_creativeproperties_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tbladt_creativeproperties_seq;
       public       wayio    false    3                       1259    17529    tbladt_creativeproperties    TABLE     �  CREATE TABLE tbladt_creativeproperties (
    recordid bigint DEFAULT nextval('tbladt_creativeproperties_seq'::regclass) NOT NULL,
    creativeid bigint NOT NULL,
    creativemediatypeid integer,
    creativemarkuptypeid integer,
    creativesourcetypeid integer,
    rawfilepath character varying(500),
    creativesource text,
    dimensionid integer,
    height integer,
    width integer,
    previewurl character varying(1000),
    adtag text,
    videoduration integer,
    videodeliverytype integer,
    videoisscalable integer,
    iscompanionad boolean,
    mediabitrate integer,
    videoapi integer,
    videomimetype integer,
    nativeiconsourcetypeid integer,
    nativeiconrawfilename character varying(500),
    nativeiconsource text,
    nativeicondimensionid integer,
    nativeiconheight integer,
    nativeiconwidth integer,
    nativelogosourcetypeid integer,
    nativelogorawfilename character varying(500),
    nativelogosource text,
    nativelogodimensionid integer,
    nativelogoheight integer,
    nativelogowidth integer,
    nativetitle character varying(50),
    nativecalltoaction character varying(25),
    nativetext character varying(250),
    nativedescription text,
    nativefallbackurl character varying(1000),
    nativebundleid character varying(500),
    nativestarrating double precision,
    nativevideosourcetypeid integer,
    nativevideorawfilename character varying(500),
    nativevideosource text,
    rmproviderid integer,
    rmdisplaymode integer,
    rmsdkid integer,
    rmuniquecreativeid character varying(100),
    rmplacementid character varying(50),
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 -   DROP TABLE public.tbladt_creativeproperties;
       public         wayio    false    257    3                       1259    17538 $   tbladt_creativeproperties_delete_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_creativeproperties_delete_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.tbladt_creativeproperties_delete_seq;
       public       wayio    false    3                       1259    17540     tbladt_creativeproperties_delete    TABLE     >  CREATE TABLE tbladt_creativeproperties_delete (
    recordid bigint DEFAULT nextval('tbladt_creativeproperties_delete_seq'::regclass) NOT NULL,
    creativeid bigint NOT NULL,
    creativesourcetypeid integer,
    rawfilepath character varying(500),
    creativesource text,
    dimensionid integer,
    height integer,
    width integer,
    previewurl character varying(1000),
    adtag text,
    videoduration integer,
    videodeliverytype integer,
    videoisscalable integer,
    iscompanionad boolean,
    mediabitrate integer,
    videoapi integer,
    nativeiconsourcetypeid integer,
    nativeiconrawfilename character varying(500),
    nativeiconsource text,
    nativetitle character varying(50),
    nativecalltoaction character varying(25),
    nativetext character varying(250),
    nativefallbackurl character varying(1000),
    nativebundleid character varying(500),
    nativestarrating double precision,
    rmproviderid integer,
    rmdisplaymode integer,
    rmsdkid integer,
    rmuniquecreativeid character varying(50),
    rmplacementid character varying(50)
);
 4   DROP TABLE public.tbladt_creativeproperties_delete;
       public         wayio    false    259    3            ^           1259    21975    tbladt_creativesourcetype    TABLE     �   CREATE TABLE tbladt_creativesourcetype (
    sourcetypeid integer NOT NULL,
    sourcetype character varying(50) NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 -   DROP TABLE public.tbladt_creativesourcetype;
       public         wayio    false    3            _           1259    21981    tbladt_creativetype    TABLE       CREATE TABLE tbladt_creativetype (
    creativetypeid integer NOT NULL,
    creativetypecode character varying(5) NOT NULL,
    creativetypename character varying(50) NOT NULL,
    sourcetypeids character varying(50),
    isactive boolean DEFAULT true NOT NULL
);
 '   DROP TABLE public.tbladt_creativetype;
       public         wayio    false    3                       1259    17553    tbladt_creativevendor_seq    SEQUENCE     {   CREATE SEQUENCE tbladt_creativevendor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tbladt_creativevendor_seq;
       public       wayio    false    3            `           1259    21987    tbladt_creativevendor    TABLE     '  CREATE TABLE tbladt_creativevendor (
    vendorid integer DEFAULT nextval('tbladt_creativevendor_seq'::regclass) NOT NULL,
    vendorcode bigint NOT NULL,
    vendorname character varying(200) NOT NULL,
    isactive boolean DEFAULT true NOT NULL,
    isdeleted boolean DEFAULT false NOT NULL
);
 )   DROP TABLE public.tbladt_creativevendor;
       public         wayio    false    261    3                       1259    17694    tbladt_datatransformation_seq    SEQUENCE        CREATE SEQUENCE tbladt_datatransformation_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tbladt_datatransformation_seq;
       public       wayio    false    3            r           1259    22120    tbladt_datatransformation    TABLE     �  CREATE TABLE tbladt_datatransformation (
    transformationid bigint DEFAULT nextval('tbladt_datatransformation_seq'::regclass) NOT NULL,
    transformationname character varying(500) NOT NULL,
    description text,
    transformationtype character varying(50) NOT NULL,
    transformationfile character varying(250) NOT NULL,
    isactive boolean NOT NULL,
    isarchived boolean DEFAULT false NOT NULL,
    isexpired boolean DEFAULT false,
    filestatus integer DEFAULT 1 NOT NULL,
    lastvalidfilestatuson timestamp(3) without time zone,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    createdby integer DEFAULT 0 NOT NULL,
    updatedon timestamp(0) without time zone,
    updatedby integer
);
 -   DROP TABLE public.tbladt_datatransformation;
       public         wayio    false    278    3                       1259    17700 *   tbladt_datatransformation_requiredfile_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_datatransformation_requiredfile_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.tbladt_datatransformation_requiredfile_seq;
       public       wayio    false    3                       1259    17702 &   tbladt_datatransformation_requiredfile    TABLE     �   CREATE TABLE tbladt_datatransformation_requiredfile (
    id bigint DEFAULT nextval('tbladt_datatransformation_requiredfile_seq'::regclass) NOT NULL,
    transformationid bigint,
    requiredtfid bigint
);
 :   DROP TABLE public.tbladt_datatransformation_requiredfile;
       public         wayio    false    279    3                       1259    17708    tbladt_dealid_seq    SEQUENCE     s   CREATE SEQUENCE tbladt_dealid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tbladt_dealid_seq;
       public       wayio    false    3            s           1259    22134    tbladt_dealid    TABLE     A  CREATE TABLE tbladt_dealid (
    id integer DEFAULT nextval('tbladt_dealid_seq'::regclass) NOT NULL,
    name text,
    adexchangeid integer,
    dealid character varying(100),
    type integer,
    cpm double precision,
    cpmfilter integer,
    status integer,
    description text,
    createdby integer,
    createdon timestamp(0) without time zone,
    updatedby integer,
    updatedon timestamp(0) without time zone DEFAULT now(),
    cacheupdatekey character varying(50),
    cacheupdatetime timestamp(0) without time zone,
    needcacheremove boolean DEFAULT false
);
 !   DROP TABLE public.tbladt_dealid;
       public         wayio    false    281    3                       1259    17715 1   tbladt_dealidbiddingstatistics_consumed_daily_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_dealidbiddingstatistics_consumed_daily_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.tbladt_dealidbiddingstatistics_consumed_daily_seq;
       public       wayio    false    3                       1259    17717 -   tbladt_dealidbiddingstatistics_consumed_daily    TABLE     �  CREATE TABLE tbladt_dealidbiddingstatistics_consumed_daily (
    recordid bigint DEFAULT nextval('tbladt_dealidbiddingstatistics_consumed_daily_seq'::regclass) NOT NULL,
    dealdbid bigint,
    adexchangeid integer,
    creativeid bigint,
    totalbids bigint,
    totalimpressionswon bigint,
    totalimppixels bigint,
    totalclicks bigint,
    totalcomplete bigint,
    totalpayout double precision,
    processedon timestamp(3) without time zone
);
 A   DROP TABLE public.tbladt_dealidbiddingstatistics_consumed_daily;
       public         wayio    false    282    3                       1259    17723    tbladt_device_seq    SEQUENCE     s   CREATE SEQUENCE tbladt_device_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tbladt_device_seq;
       public       wayio    false    3            �           1259    22718    tbladt_device    TABLE       CREATE TABLE tbladt_device (
    deviceid integer DEFAULT nextval('tbladt_device_seq'::regclass) NOT NULL,
    makeid integer,
    devicename character varying(300),
    "group" character varying,
    isactive boolean,
    ref_key character varying(50),
    devicetype integer
);
 !   DROP TABLE public.tbladt_device;
       public         wayio    false    284    3                       1259    17730    tbladt_device_os_make_type_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_device_os_make_type_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbladt_device_os_make_type_seq;
       public       wayio    false    3                       1259    17732    tbladt_device_os_make_type    TABLE     �   CREATE TABLE tbladt_device_os_make_type (
    id bigint DEFAULT nextval('tbladt_device_os_make_type_seq'::regclass) NOT NULL,
    deviceos character varying(100),
    devicemake character varying(100),
    devicetype integer
);
 .   DROP TABLE public.tbladt_device_os_make_type;
       public         wayio    false    286    3                       1259    17725    tbladt_devicetype    TABLE     �   CREATE TABLE tbladt_devicetype (
    deviceid integer NOT NULL,
    devicename character varying(50),
    indexno integer,
    deviceicon character varying(50)
);
 %   DROP TABLE public.tbladt_devicetype;
       public         wayio    false    3            p           1259    22102 
   tbladt_dma    TABLE     �   CREATE TABLE tbladt_dma (
    dmaid integer NOT NULL,
    countryid integer NOT NULL,
    dmacode character varying(5),
    dmaname character varying(50) NOT NULL,
    dmaalternatename character varying(50),
    isactive boolean DEFAULT true NOT NULL
);
    DROP TABLE public.tbladt_dma;
       public         wayio    false    3                       1259    17687    tbladt_dtsx_trigger_seq    SEQUENCE     y   CREATE SEQUENCE tbladt_dtsx_trigger_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbladt_dtsx_trigger_seq;
       public       wayio    false    3            q           1259    22108    tbladt_dtsx_trigger    TABLE     �  CREATE TABLE tbladt_dtsx_trigger (
    triggerid bigint DEFAULT nextval('tbladt_dtsx_trigger_seq'::regclass) NOT NULL,
    actiontype character varying(100),
    filename character varying(100),
    paramnames character varying(500),
    paramvalues character varying(500),
    userid integer,
    itemid bigint,
    triggeredon timestamp(3) without time zone DEFAULT now(),
    status boolean DEFAULT false,
    erroroccured boolean DEFAULT false
);
 '   DROP TABLE public.tbladt_dtsx_trigger;
       public         wayio    false    277    3                        1259    17738    tbladt_excecutionmessage    TABLE     {   CREATE TABLE tbladt_excecutionmessage (
    messageid integer NOT NULL,
    messagetext character varying(500) NOT NULL
);
 ,   DROP TABLE public.tbladt_excecutionmessage;
       public         wayio    false    3            !           1259    17743    tbladt_exceldownloadbacklog_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_exceldownloadbacklog_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbladt_exceldownloadbacklog_seq;
       public       wayio    false    3            t           1259    22145    tbladt_exceldownloadbacklog    TABLE     a  CREATE TABLE tbladt_exceldownloadbacklog (
    rowid bigint DEFAULT nextval('tbladt_exceldownloadbacklog_seq'::regclass) NOT NULL,
    moduleid bigint NOT NULL,
    modulename character varying(100) NOT NULL,
    userid bigint NOT NULL,
    ispending boolean DEFAULT true NOT NULL,
    createdon timestamp(3) without time zone DEFAULT now() NOT NULL
);
 /   DROP TABLE public.tbladt_exceldownloadbacklog;
       public         wayio    false    289    3            u           1259    22153    tbladt_flat_creative    TABLE     �
  CREATE TABLE tbladt_flat_creative (
    creativeid bigint NOT NULL,
    advertiserid integer,
    advertisername character varying(100),
    campaignid bigint,
    campaignname character varying(250),
    lineitemid bigint,
    lineitemname character varying(250),
    creativename character varying(500) NOT NULL,
    creativestartdate timestamp(0) without time zone,
    creativeenddate timestamp(0) without time zone,
    adformat integer,
    creativetype integer NOT NULL,
    iabcreativeattribute text NOT NULL,
    adxcreativeattribute text NOT NULL,
    adfeature text,
    creativevendor text,
    iframebuster text,
    clickthroughurl character varying(1000) NOT NULL,
    landingpageurl character varying(1000) NOT NULL,
    creativeapi integer,
    ssltype boolean,
    barometriccampaignid character varying(50),
    barometricplacementid character varying(50),
    barometricclickthroughurl character varying(1000),
    creativestate integer,
    creativestatus integer NOT NULL,
    istransactioncompleted boolean,
    mediatype integer,
    markuptype integer,
    creativewidth integer NOT NULL,
    creativeheight integer NOT NULL,
    creativeformatid integer,
    creativeadsource text NOT NULL,
    htmljsadtag text NOT NULL,
    htmljspreviewurl character varying(1000) NOT NULL,
    videosourcetype integer,
    videoduration integer NOT NULL,
    videodeliverytype integer,
    videomimetype integer,
    videoscalable integer NOT NULL,
    videoapi integer,
    mediabitrate integer,
    videocompanionadsource text NOT NULL,
    videocompanionadwidth integer NOT NULL,
    videocompanionadheight integer NOT NULL,
    videocompanionadclickurl character varying(1000) NOT NULL,
    videotrackingevents text,
    nativeimagesource text,
    nativeimagewidth integer,
    nativeimageheight integer,
    nativeiconsource text NOT NULL,
    nativeiconwidth integer,
    nativeiconheight integer,
    nativelogosource text,
    nativelogowidth integer,
    nativelogoheight character(10),
    nativetitle character varying(100) NOT NULL,
    nativetext character varying(250) NOT NULL,
    nativedescription text,
    nativecalltoaction character varying(25) NOT NULL,
    nativefallbackurl character varying(1000) NOT NULL,
    nativebundleid character varying(500) NOT NULL,
    nativestarrating double precision NOT NULL,
    nativevideosource text,
    richmediaproviderid integer NOT NULL,
    richmediadisplaymode integer,
    richmediasdk integer,
    richmediauniquecreativeid character varying(100),
    richmediaplacementid character varying(50) NOT NULL,
    generictrackingtags text,
    appnexus_creativeid bigint,
    isdeleted boolean DEFAULT false
);
 (   DROP TABLE public.tbladt_flat_creative;
       public         wayio    false    3            "           1259    17752    tbladt_flat_lineitem_consumed    TABLE     �   CREATE TABLE tbladt_flat_lineitem_consumed (
    lineitemid bigint NOT NULL,
    lastconsumedon timestamp(3) without time zone
);
 1   DROP TABLE public.tbladt_flat_lineitem_consumed;
       public         wayio    false    3            #           1259    17757    tbladt_flat_lineitems_seq    SEQUENCE     {   CREATE SEQUENCE tbladt_flat_lineitems_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tbladt_flat_lineitems_seq;
       public       wayio    false    3            �           1259    22973    tbladt_flat_lineitems    TABLE     �  CREATE TABLE tbladt_flat_lineitems (
    recordid bigint DEFAULT nextval('tbladt_flat_lineitems_seq'::regclass) NOT NULL,
    advertiserid integer NOT NULL,
    advertisername character varying(250) NOT NULL,
    advertiserdomain character varying(250) NOT NULL,
    advertisercategorycodes text NOT NULL,
    advertisercategorynames text NOT NULL,
    istestadvertiser boolean NOT NULL,
    campaignid bigint NOT NULL,
    campaignname character varying(500) NOT NULL,
    campaignstartdate timestamp(0) without time zone NOT NULL,
    campaignenddate timestamp(0) without time zone NOT NULL,
    campaignexternalio character varying(100) NOT NULL,
    campaignapprovalstatus integer NOT NULL,
    campaignstate integer,
    campaignstatus integer,
    lineitemid bigint NOT NULL,
    lineitemname character varying(500) NOT NULL,
    lineitemstartdate timestamp(0) without time zone NOT NULL,
    lineitemenddate timestamp(0) without time zone NOT NULL,
    thirdpartytypeid integer,
    traktionid character varying(100) NOT NULL,
    barometricadvertiserid bigint,
    barometriccampaignid bigint,
    iolinebudget double precision NOT NULL,
    ratetype character varying(50) NOT NULL,
    ioimpression bigint NOT NULL,
    ioclicks bigint NOT NULL,
    iocompletes bigint NOT NULL,
    clientrate double precision,
    targetmargin double precision,
    iolineitemid character varying(100) NOT NULL,
    totalimpressiongoal bigint NOT NULL,
    dailyimpressiongoal integer NOT NULL,
    totalclickgoal bigint NOT NULL,
    dailyclickgoal integer NOT NULL,
    totalcompletegoal bigint NOT NULL,
    dailycompletegoal integer NOT NULL,
    isfrequencycappingon boolean NOT NULL,
    frequencyimpressions integer NOT NULL,
    frequencytimeframe integer NOT NULL,
    frequencyby integer NOT NULL,
    isoptimizeron boolean NOT NULL,
    targetctr double precision NOT NULL,
    optimizerpercentage double precision,
    isoptimizedprice boolean,
    isdynamicscore boolean,
    impressionsperrun double precision,
    scoredelta double precision,
    ratedelta double precision,
    lowbidrate double precision,
    highbidrate double precision,
    maxstrategypercentage double precision,
    maxpacingrate double precision,
    highpacingrate double precision,
    lowpacingrate double precision,
    minpacingrate double precision,
    mincompetition double precision,
    maxcompetition double precision,
    minwinrate double precision,
    maxwinrate double precision,
    impressionspershortrun integer,
    dynamictargetctr boolean,
    lowstrategycompensation boolean,
    lowstrategyinitminscore double precision,
    lowstrategydynamicminscore boolean,
    maxstrategymultiplier double precision,
    minrate double precision,
    maxrate double precision,
    ispricefloorfilter boolean NOT NULL,
    isprioritylineitem boolean,
    lineitemapprovalstatus integer NOT NULL,
    lineitemstate integer,
    lineitemstatus integer,
    lastupdatetime timestamp(3) without time zone,
    dynamictimescalemultiplier boolean,
    timescalelengtheningimpratio double precision,
    timescaleshorteningimpratio double precision,
    mintimescalemultiplier double precision,
    maxtimescalemultiplier double precision,
    vendorcost text,
    isdeleted boolean DEFAULT false
);
 )   DROP TABLE public.tbladt_flat_lineitems;
       public         wayio    false    291    3            $           1259    17763 $   tbladt_flat_reqproperty_sitelist_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_flat_reqproperty_sitelist_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.tbladt_flat_reqproperty_sitelist_seq;
       public       wayio    false    3            %           1259    17765     tbladt_flat_reqproperty_sitelist    TABLE     �   CREATE TABLE tbladt_flat_reqproperty_sitelist (
    recordid bigint DEFAULT nextval('tbladt_flat_reqproperty_sitelist_seq'::regclass) NOT NULL,
    reqproperty text NOT NULL,
    sitelisttype integer NOT NULL,
    sitelistids text
);
 4   DROP TABLE public.tbladt_flat_reqproperty_sitelist;
       public         wayio    false    292    3            &           1259    17774     tbladt_flat_richmedia_markup_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_flat_richmedia_markup_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tbladt_flat_richmedia_markup_seq;
       public       wayio    false    3            '           1259    17776    tbladt_flat_richmedia_markup    TABLE     [  CREATE TABLE tbladt_flat_richmedia_markup (
    recordid bigint DEFAULT nextval('tbladt_flat_richmedia_markup_seq'::regclass) NOT NULL,
    mediaproviderid integer NOT NULL,
    adexchangeid integer NOT NULL,
    adexchange character varying(50) NOT NULL,
    adexchangestatus integer NOT NULL,
    inappcontent text,
    mobilewebcontent text
);
 0   DROP TABLE public.tbladt_flat_richmedia_markup;
       public         wayio    false    294    3            v           1259    22172    tbladt_flat_strategies    TABLE     c  CREATE TABLE tbladt_flat_strategies (
    strategyid bigint NOT NULL,
    lineitemid bigint NOT NULL,
    advertiserid integer,
    strategyname character varying(500) NOT NULL,
    strategystartdate timestamp(0) without time zone NOT NULL,
    strategyenddate timestamp(0) without time zone NOT NULL,
    highlowctr integer,
    strategypricingtype character varying(50) NOT NULL,
    strategymaxrate double precision NOT NULL,
    minimumcpmrate double precision,
    maximumcpmrate double precision,
    strategypercentage double precision NOT NULL,
    learnerpercent double precision,
    timeframe integer,
    cappercent double precision,
    strategytotalimpressiongoal bigint NOT NULL,
    strategydailyimpressiongoal integer NOT NULL,
    strategytotalclickgoal bigint NOT NULL,
    strategydailyclickgoal integer NOT NULL,
    strategytotalcompletegoal bigint NOT NULL,
    strategydailycompletegoal integer NOT NULL,
    isfrequencycappingon boolean NOT NULL,
    frequencyimpressions integer NOT NULL,
    frequencytimeframe integer NOT NULL,
    frequencyby integer NOT NULL,
    strategystate integer,
    strategystatus integer NOT NULL,
    minimumctrorvtr double precision,
    maximumctrorvtr double precision,
    rtpemodelid integer,
    rtpemodelname character varying(250),
    associatedadexchanges text,
    dealids text,
    devicetypes character varying(100),
    desktop boolean,
    isallsmartphone boolean,
    isalltablets boolean,
    os text,
    osv text,
    make text,
    model text,
    carrier text,
    isallwirelesscarriers boolean,
    isallwifi boolean,
    appsiteproperties character varying(50),
    includedsiteapp text,
    excludedsiteapp text,
    sitelistids text,
    idfa boolean,
    iabcode text,
    includedkeyword text,
    excludedkeyword text,
    geotargettype integer,
    countryiso2code text,
    countryiso3code text,
    statecode text,
    dma text,
    zip text,
    coordinate text,
    proximitydesignid character varying(100),
    gender integer,
    age character varying(25),
    isskewage boolean,
    homebiz integer,
    languagecode text,
    mosaiccode text,
    daypartingrequesttimezone boolean,
    dayparting text,
    temperature character varying(25),
    weathercode text,
    retargetingscriptname character varying(250),
    retargetingdescription character varying(1000),
    retargetinginitialscript text,
    retargetingincupdatescript text,
    retargetingdecupdatescript text,
    retargetingtarget integer,
    retargetingupdatefrequency integer,
    retargetingtype integer,
    datapartnerjson text,
    rtpeclassification integer,
    geopulseaudiencedesignid character varying(100),
    rtpetype integer,
    city text,
    associatedcost text,
    whitelistsiteids text,
    blacklistsiteids text,
    dailylosscap double precision,
    skippability integer,
    barometriccampaignid character varying(50),
    isdeleted boolean DEFAULT false,
    retargetingtargettype integer,
    cparetargetinginitialgoalname text,
    cparetargetinginitialrecencydaysfrom integer,
    cparetargetinginitialrecencydaysto integer,
    cparetargetinginitialconversionstrength text,
    cparetargetinginitialuserfrequency integer,
    cparetargetinginitialfrequency integer,
    cparetargetingdecrementalgoalname text,
    cparetargetingdecrementalrecencydaysfrom integer,
    cparetargetingdecrementalrecencydaysto integer,
    cparetargetingdecrementalconversionstrength text,
    cparetargetingdecrementaluserfrequency integer,
    cparetargetingdecrementalfrequency integer,
    cparetargetingaddunattributedon boolean,
    cparetargetingupdatefrequency integer,
    cparetargetingtype integer
);
 *   DROP TABLE public.tbladt_flat_strategies;
       public         wayio    false    3            (           1259    17788    tbladt_flat_strategy_consumed    TABLE     �   CREATE TABLE tbladt_flat_strategy_consumed (
    strategyid bigint NOT NULL,
    lastconsumedon timestamp(3) without time zone
);
 1   DROP TABLE public.tbladt_flat_strategy_consumed;
       public         wayio    false    3            )           1259    17793 !   tbladt_flat_strategy_creative_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_flat_strategy_creative_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tbladt_flat_strategy_creative_seq;
       public       wayio    false    3            *           1259    17795    tbladt_flat_strategy_creative    TABLE     �   CREATE TABLE tbladt_flat_strategy_creative (
    recordid bigint DEFAULT nextval('tbladt_flat_strategy_creative_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    creativeid bigint
);
 1   DROP TABLE public.tbladt_flat_strategy_creative;
       public         wayio    false    297    3            +           1259    17801    tbladt_flat_tracker_trigger_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_flat_tracker_trigger_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbladt_flat_tracker_trigger_seq;
       public       wayio    false    3            w           1259    22181    tbladt_flat_tracker_trigger    TABLE     �  CREATE TABLE tbladt_flat_tracker_trigger (
    triggerid bigint DEFAULT nextval('tbladt_flat_tracker_trigger_seq'::regclass) NOT NULL,
    triggertypeid smallint NOT NULL,
    moduleids text NOT NULL,
    prevdatakey character varying(50),
    isupdatetracker boolean DEFAULT false NOT NULL,
    isflattableupdated boolean DEFAULT false NOT NULL,
    triggeredby integer NOT NULL,
    triggeredon timestamp(3) without time zone DEFAULT now() NOT NULL,
    issplitted boolean DEFAULT false
);
 /   DROP TABLE public.tbladt_flat_tracker_trigger;
       public         wayio    false    299    3            -           1259    17812 &   tbladt_flat_tracker_trigger_subset_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_flat_tracker_trigger_subset_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.tbladt_flat_tracker_trigger_subset_seq;
       public       wayio    false    3            x           1259    22194 "   tbladt_flat_tracker_trigger_subset    TABLE     7  CREATE TABLE tbladt_flat_tracker_trigger_subset (
    subsetid bigint DEFAULT nextval('tbladt_flat_tracker_trigger_subset_seq'::regclass) NOT NULL,
    triggerid bigint NOT NULL,
    moduleids text NOT NULL,
    isflattableupdated boolean DEFAULT false NOT NULL,
    updatedon timestamp(3) without time zone
);
 6   DROP TABLE public.tbladt_flat_tracker_trigger_subset;
       public         wayio    false    301    3            ,           1259    17807    tbladt_flat_tracker_triggertype    TABLE     �   CREATE TABLE tbladt_flat_tracker_triggertype (
    triggertypeid smallint NOT NULL,
    modulename character varying(15) NOT NULL,
    actionname character varying(50) NOT NULL,
    triggerprocedure character varying(100) NOT NULL
);
 3   DROP TABLE public.tbladt_flat_tracker_triggertype;
       public         wayio    false    3            y           1259    22204    tbladt_gender    TABLE     �   CREATE TABLE tbladt_gender (
    genderid integer NOT NULL,
    gender character varying(50) NOT NULL,
    description character varying(250),
    isactive boolean DEFAULT true NOT NULL
);
 !   DROP TABLE public.tbladt_gender;
       public         wayio    false    3            .           1259    17821     tbladt_griddefaultfiltercriteria    TABLE     k  CREATE TABLE tbladt_griddefaultfiltercriteria (
    gridid integer NOT NULL,
    description character varying(100) NOT NULL,
    filterlabel text,
    filterdata text,
    ownerlabel character varying(50),
    ownerdata character varying(10),
    rangelabel character varying(50),
    rangedata character varying(50),
    columnfilter character varying(1000)
);
 4   DROP TABLE public.tbladt_griddefaultfiltercriteria;
       public         wayio    false    3            /           1259    17829 $   tbladt_gridfiltercriteria_filterdata    TABLE     �   CREATE TABLE tbladt_gridfiltercriteria_filterdata (
    associd integer NOT NULL,
    gridid integer,
    filterdata character varying(50),
    filterlabel character varying(100)
);
 8   DROP TABLE public.tbladt_gridfiltercriteria_filterdata;
       public         wayio    false    3            0           1259    17834    tbladt_hawk_xmlwithopenxml_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_hawk_xmlwithopenxml_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbladt_hawk_xmlwithopenxml_seq;
       public       wayio    false    3            1           1259    17836    tbladt_hawk_xmlwithopenxml    TABLE     �   CREATE TABLE tbladt_hawk_xmlwithopenxml (
    id integer DEFAULT nextval('tbladt_hawk_xmlwithopenxml_seq'::regclass) NOT NULL,
    xmldata xml,
    loadeddatetime timestamp(3) without time zone,
    rawxml text
);
 .   DROP TABLE public.tbladt_hawk_xmlwithopenxml;
       public         wayio    false    304    3            2           1259    17845    tbladt_hawkmonitoringalert_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_hawkmonitoringalert_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbladt_hawkmonitoringalert_seq;
       public       wayio    false    3            3           1259    17847    tbladt_hawkmonitoringalert    TABLE     3  CREATE TABLE tbladt_hawkmonitoringalert (
    hawkmonitoringalertid bigint DEFAULT nextval('tbladt_hawkmonitoringalert_seq'::regclass) NOT NULL,
    errorfrom character varying(100),
    errordescription text,
    recordedon timestamp(3) without time zone,
    createddate timestamp(3) without time zone
);
 .   DROP TABLE public.tbladt_hawkmonitoringalert;
       public         wayio    false    306    3            z           1259    22210    tbladt_iabcategory    TABLE     %  CREATE TABLE tbladt_iabcategory (
    categoryid integer NOT NULL,
    name character varying(100) NOT NULL,
    code character varying(10) NOT NULL,
    parentid integer,
    groupname character varying(50),
    isnegative boolean DEFAULT false,
    isactive boolean DEFAULT true NOT NULL
);
 &   DROP TABLE public.tbladt_iabcategory;
       public         wayio    false    3            4           1259    17859    tbladt_isp_seq    SEQUENCE     p   CREATE SEQUENCE tbladt_isp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tbladt_isp_seq;
       public       wayio    false    3            5           1259    17861 
   tbladt_isp    TABLE     �   CREATE TABLE tbladt_isp (
    ispid integer DEFAULT nextval('tbladt_isp_seq'::regclass) NOT NULL,
    ispname text NOT NULL,
    countryid integer,
    countrycode character varying(50),
    countryname character varying(300),
    isactive boolean
);
    DROP TABLE public.tbladt_isp;
       public         wayio    false    308    3            6           1259    17870    tbladt_isppopular_seq    SEQUENCE     w   CREATE SEQUENCE tbladt_isppopular_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbladt_isppopular_seq;
       public       wayio    false    3            7           1259    17872    tbladt_isppopular    TABLE     �   CREATE TABLE tbladt_isppopular (
    popularispid integer DEFAULT nextval('tbladt_isppopular_seq'::regclass) NOT NULL,
    popularispname text,
    countryid integer,
    ispids text,
    rank integer DEFAULT 0
);
 %   DROP TABLE public.tbladt_isppopular;
       public         wayio    false    310    3            {           1259    22217    tbladt_itemstate    TABLE     �   CREATE TABLE tbladt_itemstate (
    id integer NOT NULL,
    itemstate character varying(50),
    isactive boolean DEFAULT true
);
 $   DROP TABLE public.tbladt_itemstate;
       public         wayio    false    3            |           1259    22223    tbladt_itemstatus    TABLE     �   CREATE TABLE tbladt_itemstatus (
    id integer NOT NULL,
    status character varying(50),
    description character varying(500),
    isautocalculated boolean DEFAULT false,
    isactive boolean DEFAULT true
);
 %   DROP TABLE public.tbladt_itemstatus;
       public         wayio    false    3            8           1259    17888    tbladt_itemstatus_hierarchy    TABLE     �   CREATE TABLE tbladt_itemstatus_hierarchy (
    recordid integer NOT NULL,
    childstatus character varying(500),
    childstatusids character varying(50),
    parentstatus character varying(50),
    parentstatusid integer
);
 /   DROP TABLE public.tbladt_itemstatus_hierarchy;
       public         wayio    false    3            9           1259    17896    tbladt_kpi_seq    SEQUENCE     p   CREATE SEQUENCE tbladt_kpi_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tbladt_kpi_seq;
       public       wayio    false    3            }           1259    22233 
   tbladt_kpi    TABLE     C  CREATE TABLE tbladt_kpi (
    kpiid integer DEFAULT nextval('tbladt_kpi_seq'::regclass) NOT NULL,
    kpi text,
    isavailable boolean DEFAULT false,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
    DROP TABLE public.tbladt_kpi;
       public         wayio    false    313    3            ~           1259    22244    tbladt_language    TABLE     �   CREATE TABLE tbladt_language (
    languageid integer NOT NULL,
    languagecode character varying(5) NOT NULL,
    languagename character varying(50) NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 #   DROP TABLE public.tbladt_language;
       public         wayio    false    3            :           1259    17905    tbladt_lineitem_seq    SEQUENCE     u   CREATE SEQUENCE tbladt_lineitem_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbladt_lineitem_seq;
       public       wayio    false    3                       1259    22250    tbladt_lineitem    TABLE     �  CREATE TABLE tbladt_lineitem (
    lineitemid bigint DEFAULT nextval('tbladt_lineitem_seq'::regclass) NOT NULL,
    campaignid bigint NOT NULL,
    reflineitemid bigint,
    salesforceid character varying(50),
    lineitemname character varying(250) NOT NULL,
    state integer DEFAULT 1,
    status integer DEFAULT 0 NOT NULL,
    approvalstatus integer DEFAULT 2 NOT NULL,
    startdate timestamp(0) without time zone NOT NULL,
    enddate timestamp(0) without time zone NOT NULL,
    thirdpartytype integer DEFAULT 1,
    isoverwritebarometric boolean DEFAULT false,
    barometriccampaignid character varying(50),
    barometriccampaignname character varying(250),
    traktionid character varying(50),
    traktionname character varying(250),
    iolinebudget double precision NOT NULL,
    ratetype character varying(25) NOT NULL,
    ioimpression integer,
    ioclicks integer,
    iocompletes integer,
    clientcpm double precision,
    clientcpc double precision,
    clientcpcv double precision,
    iolineitemid character varying(50) NOT NULL,
    targetmargin double precision DEFAULT 0,
    isaddedvalue boolean DEFAULT false,
    totalimpressiongoal bigint,
    dailyimpressiongoal integer,
    totalclickgoal bigint,
    dailyclickgoal integer,
    totalcompletegoal bigint,
    dailycompletegoal integer,
    isfrequencycappingon boolean DEFAULT false NOT NULL,
    frequencyvalue integer,
    frequencytype integer,
    frequencyby integer,
    isoptimizeron boolean DEFAULT false NOT NULL,
    optimizerid integer,
    rtpemodelid integer,
    ispricefloorfilter boolean DEFAULT false NOT NULL,
    targetctr double precision,
    isyeildoptimized boolean DEFAULT false NOT NULL,
    creativerotationtype character varying(50) DEFAULT 'Random'::character varying NOT NULL,
    ispriority boolean DEFAULT false,
    optimizerpercentage double precision,
    isoptimizedprice boolean DEFAULT false,
    isdynamicscore boolean DEFAULT false,
    impressionsperrun integer DEFAULT 0,
    cpcdelta double precision DEFAULT 0,
    cpmdelta double precision DEFAULT 0,
    scoredelta double precision DEFAULT 0,
    lowbidrate double precision DEFAULT 0,
    highbidrate double precision DEFAULT 0,
    maximumstrategypercentage double precision DEFAULT 0,
    maximumpacingrate double precision DEFAULT 0,
    highpacingrate double precision DEFAULT 0,
    lowpacingrate double precision DEFAULT 0,
    minimumpacingrate double precision,
    minimumcompetition double precision,
    maximumcompetition double precision,
    minimumwinrate double precision,
    maximumwinrate double precision,
    impressionspershortrun integer,
    dynamictargetctr boolean,
    lowstrategycompensation boolean,
    lowstrategyinitminscore double precision,
    lowstrategydynamicminscore boolean,
    maxstrategymultiplier double precision,
    mincpcprice double precision,
    maxcpcprice double precision,
    kpiid integer DEFAULT 0,
    linetypeid integer,
    apiaccessid integer,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone,
    isdeleted boolean DEFAULT false,
    isrejected boolean DEFAULT false
);
 #   DROP TABLE public.tbladt_lineitem;
       public         wayio    false    314    3            ;           1259    17915    tbladt_lineitem_delete_seq    SEQUENCE     |   CREATE SEQUENCE tbladt_lineitem_delete_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbladt_lineitem_delete_seq;
       public       wayio    false    3            <           1259    17917    tbladt_lineitem_delete    TABLE     �  CREATE TABLE tbladt_lineitem_delete (
    lineitemid bigint DEFAULT nextval('tbladt_lineitem_delete_seq'::regclass) NOT NULL,
    campaignid bigint NOT NULL,
    reflineitemid bigint,
    lineitemname character varying(250) NOT NULL,
    status integer NOT NULL,
    approvalstatus integer NOT NULL,
    startdate timestamp(0) without time zone NOT NULL,
    enddate timestamp(0) without time zone NOT NULL,
    traktionid character varying(50),
    traktionname character varying(250),
    iolinebudget double precision NOT NULL,
    ratetype character varying(25) NOT NULL,
    ioimpression integer,
    ioclicks integer,
    iocompletes integer,
    clientcpm double precision,
    clientcpc double precision,
    clientcpcv double precision,
    iolineitemid character varying(50) NOT NULL,
    totalimpressiongoal bigint,
    dailyimpressiongoal integer,
    totalclickgoal bigint,
    dailyclickgoal integer,
    totalcompletegoal bigint,
    dailycompletegoal integer,
    isfrequencycappingon boolean NOT NULL,
    frequencyvalue integer,
    frequencytype integer,
    frequencyby integer,
    isoptimizeron boolean NOT NULL,
    ispricefloorfilter boolean NOT NULL,
    isoptimizedprice boolean,
    isdynamicscore boolean,
    targetctr double precision,
    isyeildoptimized boolean NOT NULL,
    creativerotationtype character varying(50) NOT NULL,
    ispriority boolean,
    targetmargin double precision,
    impressionsperrun integer,
    cpcdelta double precision,
    cpmdelta double precision,
    scoredelta double precision,
    lowbidrate double precision,
    highbidrate double precision,
    maximumstrategypercentage double precision,
    maximumpacingrate double precision,
    highpacingrate double precision,
    lowpacingrate double precision,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 *   DROP TABLE public.tbladt_lineitem_delete;
       public         wayio    false    315    3            =           1259    17924 !   tbladt_lineitem_filtereditems_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_lineitem_filtereditems_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tbladt_lineitem_filtereditems_seq;
       public       wayio    false    3            >           1259    17926    tbladt_lineitem_filtereditems    TABLE     �   CREATE TABLE tbladt_lineitem_filtereditems (
    queryid bigint DEFAULT nextval('tbladt_lineitem_filtereditems_seq'::regclass) NOT NULL,
    lineitemids text NOT NULL,
    updatedon timestamp(0) without time zone DEFAULT now() NOT NULL
);
 1   DROP TABLE public.tbladt_lineitem_filtereditems;
       public         wayio    false    317    3            ?           1259    17936 "   tbladt_lineitem_pacingavailability    TABLE     �   CREATE TABLE tbladt_lineitem_pacingavailability (
    lineitemid bigint NOT NULL,
    processedon timestamp(3) without time zone DEFAULT now()
);
 6   DROP TABLE public.tbladt_lineitem_pacingavailability;
       public         wayio    false    3            @           1259    17942 #   tbladt_lineitem_threshold_reach_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_lineitem_threshold_reach_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tbladt_lineitem_threshold_reach_seq;
       public       wayio    false    3            �           1259    22288    tbladt_lineitem_threshold_reach    TABLE       CREATE TABLE tbladt_lineitem_threshold_reach (
    associd integer DEFAULT nextval('tbladt_lineitem_threshold_reach_seq'::regclass) NOT NULL,
    lineitemid bigint NOT NULL,
    iscompletedearly boolean DEFAULT false,
    isdeathclock boolean DEFAULT false
);
 3   DROP TABLE public.tbladt_lineitem_threshold_reach;
       public         wayio    false    320    3            A           1259    17948    tbladt_lineitem_vendorcost_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_lineitem_vendorcost_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbladt_lineitem_vendorcost_seq;
       public       wayio    false    3            B           1259    17950    tbladt_lineitem_vendorcost    TABLE     �  CREATE TABLE tbladt_lineitem_vendorcost (
    costid bigint DEFAULT nextval('tbladt_lineitem_vendorcost_seq'::regclass) NOT NULL,
    refcostid bigint,
    lineitemid bigint NOT NULL,
    vendorid integer NOT NULL,
    productid integer NOT NULL,
    costtypeid integer NOT NULL,
    vendorcost double precision NOT NULL,
    startdate timestamp(0) without time zone NOT NULL,
    enddate timestamp(0) without time zone NOT NULL
);
 .   DROP TABLE public.tbladt_lineitem_vendorcost;
       public         wayio    false    321    3            C           1259    17956    tbladt_linetype_seq    SEQUENCE     u   CREATE SEQUENCE tbladt_linetype_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbladt_linetype_seq;
       public       wayio    false    3            �           1259    22296    tbladt_linetype    TABLE     u  CREATE TABLE tbladt_linetype (
    linetypeid integer DEFAULT nextval('tbladt_linetype_seq'::regclass) NOT NULL,
    linetype text,
    isbudgetrequired boolean,
    isavailable boolean DEFAULT false,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 #   DROP TABLE public.tbladt_linetype;
       public         wayio    false    323    3            D           1259    17962    tbladt_make_seq    SEQUENCE     q   CREATE SEQUENCE tbladt_make_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbladt_make_seq;
       public       wayio    false    3            E           1259    17964    tbladt_make    TABLE     �   CREATE TABLE tbladt_make (
    makeid integer DEFAULT nextval('tbladt_make_seq'::regclass) NOT NULL,
    makename character varying(300),
    isactive boolean,
    ref_key character varying(50)
);
    DROP TABLE public.tbladt_make;
       public         wayio    false    324    3            �           1259    22307    tbladt_markuptype    TABLE     �   CREATE TABLE tbladt_markuptype (
    markuptypeid integer NOT NULL,
    markuptypecode character varying(50),
    markuptypename character varying(50) NOT NULL,
    isactive boolean DEFAULT true NOT NULL,
    isshowinui boolean DEFAULT false
);
 %   DROP TABLE public.tbladt_markuptype;
       public         wayio    false    3            F           1259    17973    tbladt_mediaprovider_seq    SEQUENCE     z   CREATE SEQUENCE tbladt_mediaprovider_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbladt_mediaprovider_seq;
       public       wayio    false    3            �           1259    22314    tbladt_mediaprovider    TABLE     #  CREATE TABLE tbladt_mediaprovider (
    mediaproviderid integer DEFAULT nextval('tbladt_mediaprovider_seq'::regclass) NOT NULL,
    mediaprovider character varying(100) NOT NULL,
    adformatid integer,
    creativetypeid integer,
    markuptypeid integer,
    isssl boolean DEFAULT false,
    apiid integer,
    creativeattributeids text,
    devicetypeids character varying(500),
    adfeaturesids text,
    previewurl text,
    expandableiframebusterids text,
    videodeliverytypeid integer,
    videomediabitrateid integer,
    videomimetypeid integer,
    videoisscalable boolean,
    isactive boolean DEFAULT true NOT NULL,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 (   DROP TABLE public.tbladt_mediaprovider;
       public         wayio    false    326    3            �           1259    22775    tbladt_mediaprovider_adformat    TABLE     v   CREATE TABLE tbladt_mediaprovider_adformat (
    mediaproviderid integer NOT NULL,
    adformatid integer NOT NULL
);
 1   DROP TABLE public.tbladt_mediaprovider_adformat;
       public         wayio    false    3            �           1259    22780    tbladt_mediaprovider_markup    TABLE     P  CREATE TABLE tbladt_mediaprovider_markup (
    mediaproviderid integer NOT NULL,
    exchangeid integer NOT NULL,
    inappcontent text,
    mobilewebcontent text,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 /   DROP TABLE public.tbladt_mediaprovider_markup;
       public         wayio    false    3            �           1259    22326    tbladt_mediatype    TABLE     �   CREATE TABLE tbladt_mediatype (
    mediatypeid integer NOT NULL,
    mediatypecode character varying(5) NOT NULL,
    mediatypename character varying(50) NOT NULL,
    sourcetypeids character varying(50),
    isactive boolean DEFAULT true NOT NULL
);
 $   DROP TABLE public.tbladt_mediatype;
       public         wayio    false    3            G           1259    17982    tbladt_mosaic_seq    SEQUENCE     s   CREATE SEQUENCE tbladt_mosaic_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tbladt_mosaic_seq;
       public       wayio    false    3            H           1259    17984    tbladt_mosaic    TABLE     �   CREATE TABLE tbladt_mosaic (
    mosaicid bigint DEFAULT nextval('tbladt_mosaic_seq'::regclass) NOT NULL,
    mosaiccode character varying(50),
    mosaicname character varying(250),
    isactive boolean
);
 !   DROP TABLE public.tbladt_mosaic;
       public         wayio    false    327    3            I           1259    17990    tbladt_nagiosalertmonitoring    TABLE     #  CREATE TABLE tbladt_nagiosalertmonitoring (
    alerts character varying(255),
    host character varying(255),
    state character varying(255),
    alertgeneratedfromid integer,
    alertgeneratedfrom character varying(100),
    generatedon timestamp(3) without time zone DEFAULT now()
);
 0   DROP TABLE public.tbladt_nagiosalertmonitoring;
       public         wayio    false    3            J           1259    17997    tbladt_notification_seq    SEQUENCE     y   CREATE SEQUENCE tbladt_notification_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbladt_notification_seq;
       public       wayio    false    3            �           1259    22332    tbladt_notification    TABLE     K  CREATE TABLE tbladt_notification (
    notificationid bigint DEFAULT nextval('tbladt_notification_seq'::regclass) NOT NULL,
    message character varying(1000),
    messagetemplateid integer,
    messageparamnames character varying(100),
    messageparamvalues character varying(500),
    typeid integer,
    requestorid integer,
    issystemgenerated boolean DEFAULT false NOT NULL,
    moduleid bigint,
    moduletype character varying(150),
    needapproval boolean DEFAULT false NOT NULL,
    createddate timestamp(0) without time zone,
    duedate timestamp(0) without time zone
);
 '   DROP TABLE public.tbladt_notification;
       public         wayio    false    330    3            �           1259    22343 7   tbladt_notification_ctrthreshold_strategybelowthreshold    TABLE     �   CREATE TABLE tbladt_notification_ctrthreshold_strategybelowthreshold (
    strategyid bigint NOT NULL,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 K   DROP TABLE public.tbladt_notification_ctrthreshold_strategybelowthreshold;
       public         wayio    false    3            �           1259    22347 -   tbladt_notification_error_campaignstopbidding    TABLE     �   CREATE TABLE tbladt_notification_error_campaignstopbidding (
    campaignid bigint NOT NULL,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 A   DROP TABLE public.tbladt_notification_error_campaignstopbidding;
       public         wayio    false    3            �           1259    22351 2   tbladt_notification_error_creativeblanklandingpage    TABLE     �   CREATE TABLE tbladt_notification_error_creativeblanklandingpage (
    creativeid bigint NOT NULL,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 F   DROP TABLE public.tbladt_notification_error_creativeblanklandingpage;
       public         wayio    false    3            �           1259    22355 1   tbladt_notification_error_creativeduplicate3padid    TABLE     �   CREATE TABLE tbladt_notification_error_creativeduplicate3padid (
    thirdpartyadid character varying(100) NOT NULL,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 E   DROP TABLE public.tbladt_notification_error_creativeduplicate3padid;
       public         wayio    false    3            �           1259    22359 1   tbladt_notification_error_creativenonsslcompliant    TABLE     �   CREATE TABLE tbladt_notification_error_creativenonsslcompliant (
    creativeid bigint NOT NULL,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 E   DROP TABLE public.tbladt_notification_error_creativenonsslcompliant;
       public         wayio    false    3            �           1259    22363 1   tbladt_notification_error_creativeservingblankads    TABLE     �   CREATE TABLE tbladt_notification_error_creativeservingblankads (
    creativeid bigint NOT NULL,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 E   DROP TABLE public.tbladt_notification_error_creativeservingblankads;
       public         wayio    false    3            �           1259    22367 -   tbladt_notification_error_lineitemstopbidding    TABLE     �   CREATE TABLE tbladt_notification_error_lineitemstopbidding (
    lineitemid bigint NOT NULL,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 A   DROP TABLE public.tbladt_notification_error_lineitemstopbidding;
       public         wayio    false    3            K           1259    18024    tbladt_notification_level    TABLE     �   CREATE TABLE tbladt_notification_level (
    levelid integer NOT NULL,
    levelname character varying(50),
    reftablename character varying(200)
);
 -   DROP TABLE public.tbladt_notification_level;
       public         wayio    false    3            L           1259    18029    tbladt_notification_message_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_notification_message_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbladt_notification_message_seq;
       public       wayio    false    3            M           1259    18031    tbladt_notification_message    TABLE     �  CREATE TABLE tbladt_notification_message (
    notificationid bigint DEFAULT nextval('tbladt_notification_message_seq'::regclass) NOT NULL,
    ruleid integer NOT NULL,
    advertiserid integer NOT NULL,
    moduletypeid integer NOT NULL,
    moduleid bigint NOT NULL,
    moduleparentid bigint,
    message text NOT NULL,
    datetimeparameters character varying(250),
    datetimevalues character varying(250),
    generatedon timestamp(3) without time zone DEFAULT now() NOT NULL
);
 /   DROP TABLE public.tbladt_notification_message;
       public         wayio    false    332    3            N           1259    18041 #   tbladt_notification_messagetemplate    TABLE     �   CREATE TABLE tbladt_notification_messagetemplate (
    templateid integer NOT NULL,
    message character varying(1000),
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL
);
 7   DROP TABLE public.tbladt_notification_messagetemplate;
       public         wayio    false    3            �           1259    22371    tbladt_notification_moduletype    TABLE     Q  CREATE TABLE tbladt_notification_moduletype (
    moduletypeid integer NOT NULL,
    moduletype character varying(50) NOT NULL,
    mvccontroler character varying(50),
    mvcaction character varying(50),
    moduleidparam character varying(20),
    parentidparam character varying(20),
    openaspopup boolean DEFAULT false NOT NULL
);
 2   DROP TABLE public.tbladt_notification_moduletype;
       public         wayio    false    3            �           1259    22377 1   tbladt_notification_pacing_lineitemabovethreshold    TABLE     �   CREATE TABLE tbladt_notification_pacing_lineitemabovethreshold (
    lineitemid bigint NOT NULL,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 E   DROP TABLE public.tbladt_notification_pacing_lineitemabovethreshold;
       public         wayio    false    3            �           1259    22381 2   tbladt_notification_pacing_lineitembehindthreshold    TABLE     �   CREATE TABLE tbladt_notification_pacing_lineitembehindthreshold (
    lineitemid bigint NOT NULL,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 F   DROP TABLE public.tbladt_notification_pacing_lineitembehindthreshold;
       public         wayio    false    3            �           1259    22385 3   tbladt_notification_prelaunch_campaignreadytolaunch    TABLE     �   CREATE TABLE tbladt_notification_prelaunch_campaignreadytolaunch (
    campaignid bigint,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 G   DROP TABLE public.tbladt_notification_prelaunch_campaignreadytolaunch;
       public         wayio    false    3            �           1259    22389 3   tbladt_notification_prelaunch_lineitemreadytolaunch    TABLE     �   CREATE TABLE tbladt_notification_prelaunch_lineitemreadytolaunch (
    lineitemid bigint,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 G   DROP TABLE public.tbladt_notification_prelaunch_lineitemreadytolaunch;
       public         wayio    false    3            �           1259    22393    tbladt_notification_rule    TABLE     �  CREATE TABLE tbladt_notification_rule (
    ruleid integer NOT NULL,
    name character varying(250) NOT NULL,
    description character varying(2000),
    defaultdynamicvalue character varying(50),
    dynamicvalue character varying(50),
    typeid integer NOT NULL,
    subtypeid integer NOT NULL,
    levelid integer NOT NULL,
    executiontype integer NOT NULL,
    macros character varying(500),
    defaultmessage text NOT NULL,
    message text,
    links character varying(500),
    priority integer DEFAULT 2 NOT NULL,
    severity integer DEFAULT 4 NOT NULL,
    mailtrigger boolean DEFAULT false NOT NULL,
    procedurename character varying(500),
    isactive boolean DEFAULT true NOT NULL,
    isdeleted boolean DEFAULT false NOT NULL
);
 ,   DROP TABLE public.tbladt_notification_rule;
       public         wayio    false    3            O           1259    18070     tbladt_notification_schedule_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_notification_schedule_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tbladt_notification_schedule_seq;
       public       wayio    false    3            P           1259    18072    tbladt_notification_schedule    TABLE     R  CREATE TABLE tbladt_notification_schedule (
    scheduleid integer DEFAULT nextval('tbladt_notification_schedule_seq'::regclass) NOT NULL,
    ruleid integer,
    defaultoccurancetype integer,
    occurancetype integer,
    defaultrecurrance integer,
    recurrance integer,
    defaultexecutionhour integer,
    executionhour integer
);
 0   DROP TABLE public.tbladt_notification_schedule;
       public         wayio    false    335    3            Q           1259    18078    tbladt_notification_severity    TABLE     s   CREATE TABLE tbladt_notification_severity (
    severityid integer NOT NULL,
    severity character varying(50)
);
 0   DROP TABLE public.tbladt_notification_severity;
       public         wayio    false    3            �           1259    22406 &   tbladt_notification_status_campaignend    TABLE     �   CREATE TABLE tbladt_notification_status_campaignend (
    campaignid bigint NOT NULL,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 :   DROP TABLE public.tbladt_notification_status_campaignend;
       public         wayio    false    3            �           1259    22410 +   tbladt_notification_status_campaignlaunched    TABLE     �   CREATE TABLE tbladt_notification_status_campaignlaunched (
    campaignid bigint NOT NULL,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 ?   DROP TABLE public.tbladt_notification_status_campaignlaunched;
       public         wayio    false    3            �           1259    22414 ,   tbladt_notification_status_campaignlaunching    TABLE     �   CREATE TABLE tbladt_notification_status_campaignlaunching (
    campaignid bigint,
    launcheddate date,
    islaunched boolean DEFAULT false
);
 @   DROP TABLE public.tbladt_notification_status_campaignlaunching;
       public         wayio    false    3            �           1259    22418 ,   tbladt_notification_status_lineitemlaunching    TABLE     �   CREATE TABLE tbladt_notification_status_lineitemlaunching (
    lineitemid bigint,
    launcheddate date,
    islaunched boolean DEFAULT false
);
 @   DROP TABLE public.tbladt_notification_status_lineitemlaunching;
       public         wayio    false    3            R           1259    18095 ,   tbladt_notification_strategy_prioritymessage    TABLE     �   CREATE TABLE tbladt_notification_strategy_prioritymessage (
    strategyid bigint NOT NULL,
    firsttriggeredon timestamp(3) without time zone,
    lasttriggeredon timestamp(3) without time zone
);
 @   DROP TABLE public.tbladt_notification_strategy_prioritymessage;
       public         wayio    false    3            S           1259    18100    tbladt_notification_subtype    TABLE     t   CREATE TABLE tbladt_notification_subtype (
    subtypeid integer NOT NULL,
    subtypename character varying(50)
);
 /   DROP TABLE public.tbladt_notification_subtype;
       public         wayio    false    3            T           1259    18105    tbladt_notification_type    TABLE     �   CREATE TABLE tbladt_notification_type (
    typeid integer NOT NULL,
    typename character varying(50),
    signicon character varying(50),
    typedescription character varying(500)
);
 ,   DROP TABLE public.tbladt_notification_type;
       public         wayio    false    3            �           1259    22422    tbladt_notification_typemaster    TABLE     �   CREATE TABLE tbladt_notification_typemaster (
    typeid integer NOT NULL,
    typename character varying(50) NOT NULL,
    isactive boolean DEFAULT true NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL
);
 2   DROP TABLE public.tbladt_notification_typemaster;
       public         wayio    false    3            �           1259    22429 7   tbladt_notification_vtrthreshold_strategybelowthreshold    TABLE     �   CREATE TABLE tbladt_notification_vtrthreshold_strategybelowthreshold (
    strategyid bigint NOT NULL,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 K   DROP TABLE public.tbladt_notification_vtrthreshold_strategybelowthreshold;
       public         wayio    false    3            �           1259    22433 6   tbladt_notification_winimpratio_lineitemabovethreshold    TABLE     �   CREATE TABLE tbladt_notification_winimpratio_lineitemabovethreshold (
    lineitemid bigint NOT NULL,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 J   DROP TABLE public.tbladt_notification_winimpratio_lineitemabovethreshold;
       public         wayio    false    3            �           1259    22437 7   tbladt_notification_winimpratio_lineitembehindthreshold    TABLE     �   CREATE TABLE tbladt_notification_winimpratio_lineitembehindthreshold (
    lineitemid bigint NOT NULL,
    isnotified boolean DEFAULT false,
    notifiedon timestamp(3) without time zone
);
 K   DROP TABLE public.tbladt_notification_winimpratio_lineitembehindthreshold;
       public         wayio    false    3            �           1259    23011    tbladt_optimizerlogs_seq    SEQUENCE     z   CREATE SEQUENCE tbladt_optimizerlogs_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbladt_optimizerlogs_seq;
       public       wayio    false    3            �           1259    23004    tbladt_optimizerlogs    TABLE     �  CREATE TABLE tbladt_optimizerlogs (
    recordid bigint DEFAULT nextval('tbladt_optimizerlogs_seq'::regclass) NOT NULL,
    lineitemid integer NOT NULL,
    "timestamp" timestamp(0) without time zone NOT NULL,
    winrate double precision,
    clientrate double precision,
    clickconsumedtotal bigint,
    impressionconsumedtotal bigint,
    impressiongoalday bigint,
    impressionconsumedday bigint,
    totalctr double precision,
    temptargetctr double precision,
    deltacpcbidprice double precision,
    deltacpmbidprice double precision,
    deltascore double precision,
    lowerpacingrate double precision,
    upperpacingrate double precision,
    lowerprice double precision,
    upperprice double precision,
    lowerbidsconsumed bigint,
    upperbidsconsumed bigint,
    lowerpassingrequests bigint,
    upperpassingrequests bigint,
    lowerrecentctr double precision,
    upperrecentctr double precision,
    lowerpercent double precision,
    upperminscore double precision,
    lowercompetition double precision,
    uppercompetition double precision,
    lowershortspend double precision,
    uppershortspend double precision,
    lowershortimpressions bigint,
    lowerminscore double precision,
    lowershortbidprice double precision,
    uppershortbidprice double precision,
    lowershortbids bigint,
    uppershortbids bigint,
    upperpercent double precision,
    targetctr double precision,
    "upperShortImpressions" bigint
);
 (   DROP TABLE public.tbladt_optimizerlogs;
       public         wayio    false    720    3            U           1259    18125    tbladt_os_seq    SEQUENCE     o   CREATE SEQUENCE tbladt_os_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tbladt_os_seq;
       public       wayio    false    3            V           1259    18127 	   tbladt_os    TABLE     �   CREATE TABLE tbladt_os (
    osid integer DEFAULT nextval('tbladt_os_seq'::regclass) NOT NULL,
    osname character varying(300),
    isactive boolean,
    ref_key character varying(50)
);
    DROP TABLE public.tbladt_os;
       public         wayio    false    341    3            W           1259    18133    tbladt_osdevicemapping_seq    SEQUENCE     |   CREATE SEQUENCE tbladt_osdevicemapping_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbladt_osdevicemapping_seq;
       public       wayio    false    3            X           1259    18135    tbladt_osdevicemapping    TABLE     L  CREATE TABLE tbladt_osdevicemapping (
    id integer DEFAULT nextval('tbladt_osdevicemapping_seq'::regclass) NOT NULL,
    device_make character varying(100),
    device_model character varying(100),
    is_mobile_phone boolean,
    is_tablet boolean,
    os_name character varying(100),
    osv_normalized character varying(10)
);
 *   DROP TABLE public.tbladt_osdevicemapping;
       public         wayio    false    343    3            Y           1259    18141    tbladt_osversion_seq    SEQUENCE     v   CREATE SEQUENCE tbladt_osversion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tbladt_osversion_seq;
       public       wayio    false    3            �           1259    22726    tbladt_osversion    TABLE       CREATE TABLE tbladt_osversion (
    versionid integer DEFAULT nextval('tbladt_osversion_seq'::regclass) NOT NULL,
    osid integer,
    version character varying(300),
    "Group" character varying(50),
    isactive boolean,
    ref_key character varying(50)
);
 $   DROP TABLE public.tbladt_osversion;
       public         wayio    false    345    3            Z           1259    18143     tbladt_pacing_campaign_today_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_pacing_campaign_today_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tbladt_pacing_campaign_today_seq;
       public       wayio    false    3            [           1259    18145    tbladt_pacing_campaign_today    TABLE       CREATE TABLE tbladt_pacing_campaign_today (
    rowid bigint DEFAULT nextval('tbladt_pacing_campaign_today_seq'::regclass) NOT NULL,
    pacingdate date,
    campaignid bigint,
    pacing double precision,
    is3p bigint,
    datapartner character varying(50)
);
 0   DROP TABLE public.tbladt_pacing_campaign_today;
       public         wayio    false    346    3            \           1259    18151 "   tbladt_pacing_lineitem_history_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_pacing_lineitem_history_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tbladt_pacing_lineitem_history_seq;
       public       wayio    false    3            ]           1259    18153    tbladt_pacing_lineitem_history    TABLE       CREATE TABLE tbladt_pacing_lineitem_history (
    rowid bigint DEFAULT nextval('tbladt_pacing_lineitem_history_seq'::regclass) NOT NULL,
    pacingdate date,
    lineitemid bigint,
    pacing double precision,
    is3p bigint,
    datapartner character varying(50)
);
 2   DROP TABLE public.tbladt_pacing_lineitem_history;
       public         wayio    false    348    3            ^           1259    18159     tbladt_pacing_lineitem_today_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_pacing_lineitem_today_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tbladt_pacing_lineitem_today_seq;
       public       wayio    false    3            _           1259    18161    tbladt_pacing_lineitem_today    TABLE       CREATE TABLE tbladt_pacing_lineitem_today (
    rowid bigint DEFAULT nextval('tbladt_pacing_lineitem_today_seq'::regclass) NOT NULL,
    pacingdate date,
    lineitemid bigint,
    pacing double precision,
    is3p bigint,
    datapartner character varying(50)
);
 0   DROP TABLE public.tbladt_pacing_lineitem_today;
       public         wayio    false    350    3            �           1259    23016    tbladt_pacinglogs_seq    SEQUENCE     w   CREATE SEQUENCE tbladt_pacinglogs_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbladt_pacinglogs_seq;
       public       wayio    false    3            �           1259    23018    tbladt_pacinglogs    TABLE       CREATE TABLE tbladt_pacinglogs (
    recordid bigint DEFAULT nextval('tbladt_pacinglogs_seq'::regclass) NOT NULL,
    "timestamp" timestamp(0) without time zone NOT NULL,
    strategyid integer NOT NULL,
    lineitemstartdate timestamp(0) without time zone,
    lineitemenddate timestamp(0) without time zone,
    overgoal boolean,
    goalratio double precision,
    percentage double precision,
    recentpacingrate double precision,
    minscore double precision,
    maxscore double precision,
    recentimpressions bigint,
    recentwins bigint,
    recentqualifiedrequests bigint,
    price double precision,
    cpcpricing boolean,
    watchdog boolean,
    minuteactivems bigint,
    rtpmodelname character varying(200),
    cumulativeimpressiongoals bigint,
    cumulativebidgoals bigint,
    remainingdayimpressiongoal bigint,
    impressionconsumedday bigint,
    impressiongoalhour bigint,
    impressionconsumedhour bigint,
    remainingdayclickgoal bigint,
    clickconsumedday bigint,
    clickgoalhour bigint,
    clickconsumedhour bigint,
    remainingdaywingoal bigint,
    winconsumedday bigint,
    wingoalhour bigint,
    winconsumedhour bigint,
    remainingdaycompletegoal bigint,
    completeconsumedday bigint,
    completegoalhour bigint,
    completeconsumedhour bigint,
    minuteimpressiongoal bigint,
    minutebidgoal bigint,
    minuteconsumedbids bigint,
    minuteconsumedwins bigint,
    minutepassingrequests bigint,
    minutequalifiedrequests bigint,
    bidsconsumedhour bigint,
    lastfiltercode integer
);
 %   DROP TABLE public.tbladt_pacinglogs;
       public         wayio    false    721    3            i           1259    18210 $   tbladt_platform_blocklist_cookie_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_blocklist_cookie_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.tbladt_platform_blocklist_cookie_seq;
       public       wayio    false    3            j           1259    18212     tbladt_platform_blocklist_cookie    TABLE     ;  CREATE TABLE tbladt_platform_blocklist_cookie (
    recordid bigint DEFAULT nextval('tbladt_platform_blocklist_cookie_seq'::regclass) NOT NULL,
    cuid character varying(255),
    createdby bigint,
    createdon timestamp(3) without time zone,
    updatedby bigint,
    updatedon timestamp(3) without time zone
);
 4   DROP TABLE public.tbladt_platform_blocklist_cookie;
       public         wayio    false    361    3            k           1259    18216     tbladt_platform_blocklist_ip_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_blocklist_ip_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tbladt_platform_blocklist_ip_seq;
       public       wayio    false    3            l           1259    18218    tbladt_platform_blocklist_ip    TABLE     �  CREATE TABLE tbladt_platform_blocklist_ip (
    addressid bigint DEFAULT nextval('tbladt_platform_blocklist_ip_seq'::regclass) NOT NULL,
    ipaddress character varying(100),
    createdby bigint,
    createdon timestamp(3) without time zone,
    updatedby bigint,
    updatedon timestamp(3) without time zone,
    longtermflag integer DEFAULT 0,
    source character varying(255) DEFAULT 'UI'::character varying,
    type character varying(255) DEFAULT 'MISC'::character varying,
    reason text
);
 0   DROP TABLE public.tbladt_platform_blocklist_ip;
       public         wayio    false    363    3            m           1259    18228 &   tbladt_platform_blocklist_keywords_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_blocklist_keywords_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.tbladt_platform_blocklist_keywords_seq;
       public       wayio    false    3            n           1259    18230 "   tbladt_platform_blocklist_keywords    TABLE     1  CREATE TABLE tbladt_platform_blocklist_keywords (
    keywordid bigint DEFAULT nextval('tbladt_platform_blocklist_keywords_seq'::regclass) NOT NULL,
    keyword text,
    createdby bigint,
    createdon timestamp(3) without time zone,
    updatedon timestamp(3) without time zone,
    updatedby bigint
);
 6   DROP TABLE public.tbladt_platform_blocklist_keywords;
       public         wayio    false    365    3            o           1259    18237 %   tbladt_platform_blocklist_siteapp_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_blocklist_siteapp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.tbladt_platform_blocklist_siteapp_seq;
       public       wayio    false    3            p           1259    18239 !   tbladt_platform_blocklist_siteapp    TABLE     {  CREATE TABLE tbladt_platform_blocklist_siteapp (
    recordid bigint DEFAULT nextval('tbladt_platform_blocklist_siteapp_seq'::regclass) NOT NULL,
    propertyid bigint NOT NULL,
    propertyname character varying(255),
    reqproperty text,
    createdby bigint,
    createdon timestamp(3) without time zone,
    updatedon timestamp(3) without time zone,
    updatedby bigint
);
 5   DROP TABLE public.tbladt_platform_blocklist_siteapp;
       public         wayio    false    367    3            q           1259    18248 #   tbladt_platform_blocklist_wayid_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_blocklist_wayid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tbladt_platform_blocklist_wayid_seq;
       public       wayio    false    3            r           1259    18250    tbladt_platform_blocklist_wayid    TABLE     :  CREATE TABLE tbladt_platform_blocklist_wayid (
    recordid bigint DEFAULT nextval('tbladt_platform_blocklist_wayid_seq'::regclass) NOT NULL,
    wayid character varying(255),
    createdby bigint,
    createdon timestamp(3) without time zone,
    updatedby bigint,
    updatedon timestamp(3) without time zone
);
 3   DROP TABLE public.tbladt_platform_blocklist_wayid;
       public         wayio    false    369    3            e           1259    18196 $   tbladt_platform_blocklisttracker_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_blocklisttracker_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.tbladt_platform_blocklisttracker_seq;
       public       wayio    false    3            f           1259    18198     tbladt_platform_blocklisttracker    TABLE       CREATE TABLE tbladt_platform_blocklisttracker (
    blockedtrackid bigint DEFAULT nextval('tbladt_platform_blocklisttracker_seq'::regclass) NOT NULL,
    blockedtypeenum integer,
    blockedtype character varying(30) NOT NULL,
    blockedon timestamp(3) without time zone
);
 4   DROP TABLE public.tbladt_platform_blocklisttracker;
       public         wayio    false    357    3            g           1259    18202 ,   tbladt_platform_blocklisttracker_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_blocklisttracker_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.tbladt_platform_blocklisttracker_archive_seq;
       public       wayio    false    3            h           1259    18204 (   tbladt_platform_blocklisttracker_archive    TABLE     ^  CREATE TABLE tbladt_platform_blocklisttracker_archive (
    recordid bigint DEFAULT nextval('tbladt_platform_blocklisttracker_archive_seq'::regclass) NOT NULL,
    trackerkey character varying(50) NOT NULL,
    blockedtrackid bigint,
    blockedtypeenum integer,
    blockedtype character varying(30),
    blockedon timestamp(3) without time zone
);
 <   DROP TABLE public.tbladt_platform_blocklisttracker_archive;
       public         wayio    false    359    3            s           1259    18254    tbladt_platform_creativetracker    TABLE     �   CREATE TABLE tbladt_platform_creativetracker (
    creativeid bigint NOT NULL,
    loggedby integer NOT NULL,
    loggedon timestamp(3) without time zone DEFAULT now() NOT NULL
);
 3   DROP TABLE public.tbladt_platform_creativetracker;
       public         wayio    false    3            t           1259    18260 +   tbladt_platform_creativetracker_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_creativetracker_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.tbladt_platform_creativetracker_archive_seq;
       public       wayio    false    3            u           1259    18262 '   tbladt_platform_creativetracker_archive    TABLE     D  CREATE TABLE tbladt_platform_creativetracker_archive (
    recordid bigint DEFAULT nextval('tbladt_platform_creativetracker_archive_seq'::regclass) NOT NULL,
    trackerkey character varying(50) NOT NULL,
    creativeid bigint NOT NULL,
    loggedby integer NOT NULL,
    loggedon timestamp(3) without time zone NOT NULL
);
 ;   DROP TABLE public.tbladt_platform_creativetracker_archive;
       public         wayio    false    372    3            v           1259    18268 !   tbladt_platform_dealidtracker_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_dealidtracker_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tbladt_platform_dealidtracker_seq;
       public       wayio    false    3            w           1259    18270    tbladt_platform_dealidtracker    TABLE     f  CREATE TABLE tbladt_platform_dealidtracker (
    dealtrackid bigint DEFAULT nextval('tbladt_platform_dealidtracker_seq'::regclass) NOT NULL,
    adexchangeid integer NOT NULL,
    adexchangename character varying(50) NOT NULL,
    dealid character varying(100) NOT NULL,
    loggedby integer NOT NULL,
    loggedon timestamp(3) without time zone NOT NULL
);
 1   DROP TABLE public.tbladt_platform_dealidtracker;
       public         wayio    false    374    3            x           1259    18276 )   tbladt_platform_dealidtracker_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_dealidtracker_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.tbladt_platform_dealidtracker_archive_seq;
       public       wayio    false    3            y           1259    18278 %   tbladt_platform_dealidtracker_archive    TABLE     �  CREATE TABLE tbladt_platform_dealidtracker_archive (
    recordid bigint DEFAULT nextval('tbladt_platform_dealidtracker_archive_seq'::regclass) NOT NULL,
    trackerkey character varying(50) NOT NULL,
    adexchangeid integer NOT NULL,
    adexchangename character varying(50),
    dealid character varying(100) NOT NULL,
    loggedby integer NOT NULL,
    loggedon timestamp(3) without time zone NOT NULL
);
 9   DROP TABLE public.tbladt_platform_dealidtracker_archive;
       public         wayio    false    376    3            �           1259    22792    tbladt_platform_lineitemtracker    TABLE     �   CREATE TABLE tbladt_platform_lineitemtracker (
    campaignid bigint NOT NULL,
    lineitemid bigint NOT NULL,
    loggedby integer NOT NULL,
    loggedon timestamp(3) without time zone DEFAULT now() NOT NULL
);
 3   DROP TABLE public.tbladt_platform_lineitemtracker;
       public         wayio    false    3            z           1259    18284 +   tbladt_platform_lineitemtracker_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_lineitemtracker_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.tbladt_platform_lineitemtracker_archive_seq;
       public       wayio    false    3            {           1259    18286 '   tbladt_platform_lineitemtracker_archive    TABLE     d  CREATE TABLE tbladt_platform_lineitemtracker_archive (
    recordid bigint DEFAULT nextval('tbladt_platform_lineitemtracker_archive_seq'::regclass) NOT NULL,
    trackerkey character varying(50) NOT NULL,
    campaignid bigint NOT NULL,
    lineitemid bigint NOT NULL,
    loggedby integer NOT NULL,
    loggedon timestamp(3) without time zone NOT NULL
);
 ;   DROP TABLE public.tbladt_platform_lineitemtracker_archive;
       public         wayio    false    378    3            |           1259    18292    tbladt_platform_optimizer_seq    SEQUENCE        CREATE SEQUENCE tbladt_platform_optimizer_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tbladt_platform_optimizer_seq;
       public       wayio    false    3            }           1259    18294    tbladt_platform_optimizer    TABLE     t  CREATE TABLE tbladt_platform_optimizer (
    optimizerid integer DEFAULT nextval('tbladt_platform_optimizer_seq'::regclass) NOT NULL,
    optimizername character varying(100) NOT NULL,
    pricingtype character varying(25) NOT NULL,
    rtpemodelid integer,
    targetmargin double precision,
    targetctr double precision,
    optimizerpercentage double precision,
    isoptimizedprice boolean,
    isdynamicscore boolean,
    impressionsperrun integer,
    scoredelta double precision,
    ratedelta double precision,
    lowbidrate double precision,
    highbidrate double precision,
    maximumstrategypercentage double precision,
    maximumpacingrate double precision,
    highpacingrate double precision,
    lowpacingrate double precision,
    minimumpacingrate double precision,
    minimumcompetition double precision,
    maximumcompetition double precision,
    minimumwinrate double precision,
    maximumwinrate double precision,
    impressionspershortrun integer,
    dynamictargetctr boolean,
    lowstrategycompensation boolean,
    lowstrategyinitminscore double precision,
    lowstrategydynamicminscore boolean,
    maxstrategymultiplier double precision,
    minimumrate double precision,
    maximumrate double precision,
    highctrmaxcpcorcpcv double precision,
    lowctrmaxcpcorcpcv double precision,
    highctrmaxcpmrate double precision,
    lowctrmaxcpmrate double precision,
    highctrmincpmrate double precision,
    lowctrmincpmrate double precision,
    dynamictimescalemultiplier boolean,
    timescalelengtheningimpratio double precision,
    timescaleshorteningimpratio double precision,
    minimumtimescalemultiplier double precision,
    maximumtimescalemultiplier double precision,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    createdby integer DEFAULT 0 NOT NULL,
    updatedon timestamp(0) without time zone,
    updatedby integer
);
 -   DROP TABLE public.tbladt_platform_optimizer;
       public         wayio    false    380    3            �           1259    22798 "   tbladt_platform_optimizer_adformat    TABLE     w   CREATE TABLE tbladt_platform_optimizer_adformat (
    optimizerid integer NOT NULL,
    adformatid integer NOT NULL
);
 6   DROP TABLE public.tbladt_platform_optimizer_adformat;
       public         wayio    false    3            �           1259    18312 !   tbladt_platform_optimizer_default    TABLE       CREATE TABLE tbladt_platform_optimizer_default (
    pricingtype character varying(25),
    targetmargin double precision,
    targetctr double precision,
    optimizerpercentage double precision,
    isoptimizedprice boolean,
    isdynamicscore boolean,
    impressionsperrun integer,
    scoredelta double precision,
    ratedelta double precision,
    lowbidrate double precision,
    highbidrate double precision,
    maximumstrategypercentage double precision,
    maximumpacingrate double precision,
    highpacingrate double precision,
    lowpacingrate double precision,
    minimumpacingrate double precision,
    minimumcompetition double precision,
    maximumcompetition double precision,
    minimumwinrate double precision,
    maximumwinrate double precision,
    impressionspershortrun integer,
    dynamictargetctr boolean,
    lowstrategycompensation boolean,
    lowstrategyinitminscore double precision,
    lowstrategydynamicminscore boolean,
    maxstrategymultiplier double precision,
    minimumrate double precision,
    maximumrate double precision,
    highctrmaxcpcorcpcv double precision,
    lowctrmaxcpcorcpcv double precision,
    highctrmaxcpmrate double precision,
    lowctrmaxcpmrate double precision,
    highctrmincpmrate double precision,
    lowctrmincpmrate double precision,
    dynamictimescalemultiplier boolean,
    timescalelengtheningimpratio double precision,
    timescaleshorteningimpratio double precision,
    minimumtimescalemultiplier double precision,
    maximumtimescalemultiplier double precision
);
 5   DROP TABLE public.tbladt_platform_optimizer_default;
       public         wayio    false    3            ~           1259    18302 %   tbladt_platform_optimizersettings_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_optimizersettings_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.tbladt_platform_optimizersettings_seq;
       public       wayio    false    3                       1259    18304 !   tbladt_platform_optimizersettings    TABLE     �  CREATE TABLE tbladt_platform_optimizersettings (
    recordid integer DEFAULT nextval('tbladt_platform_optimizersettings_seq'::regclass) NOT NULL,
    optimizerpercentage double precision DEFAULT 0.90,
    isoptimizedprice boolean,
    isdynamicscore boolean,
    impressionsperrun integer,
    cpcdelta double precision,
    cpmdelta double precision,
    scoredelta double precision,
    lowbidrate double precision,
    highbidrate double precision,
    maximumstrategypercentage double precision,
    maximumpacingrate double precision,
    highpacingrate double precision,
    lowpacingrate double precision,
    minimumpacingrate double precision,
    minimumcompetition double precision,
    maximumcompetition double precision,
    minimumwinrate double precision,
    maximumwinrate double precision,
    impressionspershortrun integer,
    dynamictargetctr boolean,
    lowstrategycompensation boolean,
    lowstrategyinitminscore double precision,
    lowstrategydynamicminscore boolean,
    maxstrategymultiplier double precision,
    mincpcprice double precision,
    maxcpcprice double precision,
    highctrmaxcpc double precision,
    lowctrmaxcpc double precision,
    highctrmaxcpmrate double precision,
    lowctrmaxcpmrate double precision,
    highctrmincpmrate double precision,
    lowctrmincpmrate double precision,
    updatedby integer NOT NULL,
    updatedon timestamp(0) without time zone DEFAULT now() NOT NULL
);
 5   DROP TABLE public.tbladt_platform_optimizersettings;
       public         wayio    false    382    3            �           1259    22803 &   tbladt_platform_richmediamarkuptracker    TABLE     %  CREATE TABLE tbladt_platform_richmediamarkuptracker (
    richmediaproviderid integer NOT NULL,
    adexchangeid integer DEFAULT 0 NOT NULL,
    adexchangename character varying(50) NOT NULL,
    loggedby integer NOT NULL,
    loggedon timestamp(3) without time zone DEFAULT now() NOT NULL
);
 :   DROP TABLE public.tbladt_platform_richmediamarkuptracker;
       public         wayio    false    3            �           1259    18315 2   tbladt_platform_richmediamarkuptracker_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_richmediamarkuptracker_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.tbladt_platform_richmediamarkuptracker_archive_seq;
       public       wayio    false    3            �           1259    18317 .   tbladt_platform_richmediamarkuptracker_archive    TABLE     �  CREATE TABLE tbladt_platform_richmediamarkuptracker_archive (
    recordid bigint DEFAULT nextval('tbladt_platform_richmediamarkuptracker_archive_seq'::regclass) NOT NULL,
    trackerkey character varying(50) NOT NULL,
    richmediaproviderid integer NOT NULL,
    adexchangeid integer NOT NULL,
    adexchangename character varying(50) NOT NULL,
    loggedby integer NOT NULL,
    loggedon timestamp(3) without time zone NOT NULL
);
 B   DROP TABLE public.tbladt_platform_richmediamarkuptracker_archive;
       public         wayio    false    385    3            �           1259    18323 #   tbladt_platform_sitelisttracker_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_sitelisttracker_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tbladt_platform_sitelisttracker_seq;
       public       wayio    false    3            �           1259    18325    tbladt_platform_sitelisttracker    TABLE     �   CREATE TABLE tbladt_platform_sitelisttracker (
    id bigint DEFAULT nextval('tbladt_platform_sitelisttracker_seq'::regclass) NOT NULL,
    referenceid bigint NOT NULL,
    sitelisttype integer NOT NULL
);
 3   DROP TABLE public.tbladt_platform_sitelisttracker;
       public         wayio    false    387    3            �           1259    18329 +   tbladt_platform_sitelisttracker_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_sitelisttracker_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.tbladt_platform_sitelisttracker_archive_seq;
       public       wayio    false    3            �           1259    18331 '   tbladt_platform_sitelisttracker_archive    TABLE     �  CREATE TABLE tbladt_platform_sitelisttracker_archive (
    recordid bigint DEFAULT nextval('tbladt_platform_sitelisttracker_archive_seq'::regclass) NOT NULL,
    trackerkey character varying(50) NOT NULL,
    id bigint NOT NULL,
    referenceid bigint NOT NULL,
    sitelisttype integer NOT NULL,
    loggedby integer NOT NULL,
    loggedon timestamp(3) without time zone NOT NULL
);
 ;   DROP TABLE public.tbladt_platform_sitelisttracker_archive;
       public         wayio    false    389    3            �           1259    18337    tbladt_platform_strategytracker    TABLE     �   CREATE TABLE tbladt_platform_strategytracker (
    strategyid bigint NOT NULL,
    lineitemid bigint,
    loggedby integer NOT NULL,
    loggedon timestamp(3) without time zone DEFAULT now() NOT NULL
);
 3   DROP TABLE public.tbladt_platform_strategytracker;
       public         wayio    false    3            �           1259    18343 +   tbladt_platform_strategytracker_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_strategytracker_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.tbladt_platform_strategytracker_archive_seq;
       public       wayio    false    3            �           1259    18345 '   tbladt_platform_strategytracker_archive    TABLE     [  CREATE TABLE tbladt_platform_strategytracker_archive (
    recordid bigint DEFAULT nextval('tbladt_platform_strategytracker_archive_seq'::regclass) NOT NULL,
    trackerkey character varying(50) NOT NULL,
    strategyid bigint NOT NULL,
    lineitemid bigint,
    loggedby integer NOT NULL,
    loggedon timestamp(3) without time zone NOT NULL
);
 ;   DROP TABLE public.tbladt_platform_strategytracker_archive;
       public         wayio    false    392    3            �           1259    18351    tbladt_platform_tracker_seq    SEQUENCE     }   CREATE SEQUENCE tbladt_platform_tracker_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbladt_platform_tracker_seq;
       public       wayio    false    3            �           1259    18353    tbladt_platform_tracker    TABLE     �   CREATE TABLE tbladt_platform_tracker (
    trackid bigint DEFAULT nextval('tbladt_platform_tracker_seq'::regclass) NOT NULL,
    tracktype character varying(50),
    tackedon timestamp(3) without time zone DEFAULT now()
);
 +   DROP TABLE public.tbladt_platform_tracker;
       public         wayio    false    394    3            �           1259    18360 #   tbladt_platform_tracker_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_tracker_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tbladt_platform_tracker_archive_seq;
       public       wayio    false    3            �           1259    18362    tbladt_platform_tracker_archive    TABLE     �   CREATE TABLE tbladt_platform_tracker_archive (
    trackid bigint DEFAULT nextval('tbladt_platform_tracker_archive_seq'::regclass) NOT NULL,
    tracktype character varying(50),
    tackedon timestamp(3) without time zone
);
 3   DROP TABLE public.tbladt_platform_tracker_archive;
       public         wayio    false    396    3            �           1259    18366 #   tbladt_platform_variabletracker_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_variabletracker_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tbladt_platform_variabletracker_seq;
       public       wayio    false    3            �           1259    18368    tbladt_platform_variabletracker    TABLE     �   CREATE TABLE tbladt_platform_variabletracker (
    trackerid bigint DEFAULT nextval('tbladt_platform_variabletracker_seq'::regclass) NOT NULL,
    loggedby integer,
    loggedon timestamp(3) without time zone DEFAULT now()
);
 3   DROP TABLE public.tbladt_platform_variabletracker;
       public         wayio    false    398    3            �           1259    18375 +   tbladt_platform_variabletracker_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platform_variabletracker_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.tbladt_platform_variabletracker_archive_seq;
       public       wayio    false    3            �           1259    18377 '   tbladt_platform_variabletracker_archive    TABLE       CREATE TABLE tbladt_platform_variabletracker_archive (
    recordid bigint DEFAULT nextval('tbladt_platform_variabletracker_archive_seq'::regclass) NOT NULL,
    trackerkey character varying(50) NOT NULL,
    loggedby integer,
    loggedon timestamp(3) without time zone
);
 ;   DROP TABLE public.tbladt_platform_variabletracker_archive;
       public         wayio    false    400    3            `           1259    18167    tbladt_platformadjustertracker    TABLE     �   CREATE TABLE tbladt_platformadjustertracker (
    creativeid bigint NOT NULL,
    logdate timestamp(3) without time zone DEFAULT now() NOT NULL
);
 2   DROP TABLE public.tbladt_platformadjustertracker;
       public         wayio    false    3            a           1259    18173    tbladt_platformcuidlist_seq    SEQUENCE     }   CREATE SEQUENCE tbladt_platformcuidlist_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbladt_platformcuidlist_seq;
       public       wayio    false    3            b           1259    18175    tbladt_platformcuidlist    TABLE     �   CREATE TABLE tbladt_platformcuidlist (
    recordid bigint DEFAULT nextval('tbladt_platformcuidlist_seq'::regclass) NOT NULL,
    cuid character varying(50)
);
 +   DROP TABLE public.tbladt_platformcuidlist;
       public         wayio    false    353    3            c           1259    18181 %   tbladt_platformsoftlaunchsettings_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_platformsoftlaunchsettings_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.tbladt_platformsoftlaunchsettings_seq;
       public       wayio    false    3            �           1259    22441 !   tbladt_platformsoftlaunchsettings    TABLE     �  CREATE TABLE tbladt_platformsoftlaunchsettings (
    rateid integer DEFAULT nextval('tbladt_platformsoftlaunchsettings_seq'::regclass) NOT NULL,
    ratetype character varying(50),
    totalimpressions bigint,
    totalimpressionsmultiplier numeric(8,2),
    totalimpressionshide boolean DEFAULT false,
    totalclicks bigint,
    totalclicksmultiplier numeric(8,2),
    totalclickshide boolean DEFAULT false,
    totalcompletes bigint,
    totalcompletesmultiplier numeric(8,2),
    totalcompleteshide boolean DEFAULT false,
    dailyimpressiongoal bigint,
    dailyimpressiongoalhide boolean DEFAULT false,
    dailyclicks bigint,
    dailyclickshide boolean DEFAULT false,
    dailycompletes bigint,
    dailycompleteshide boolean DEFAULT false
);
 5   DROP TABLE public.tbladt_platformsoftlaunchsettings;
       public         wayio    false    355    3            d           1259    18187    tbladt_platformvariable    TABLE     m  CREATE TABLE tbladt_platformvariable (
    budgetthreshold1 integer NOT NULL,
    budgetthreshold2 integer NOT NULL,
    geoweightingfactor double precision NOT NULL,
    pacingwarningalert integer,
    pacingredalert integer,
    minimumcpmrate numeric(18,2),
    maximumcpmrate numeric(18,2),
    dailyimpressiongoal integer DEFAULT 0,
    rtpelearnerimpressionpercent double precision DEFAULT 0 NOT NULL,
    updatedby integer NOT NULL,
    updatedon timestamp(0) without time zone DEFAULT now() NOT NULL,
    totalimpressions bigint DEFAULT 0,
    totalclicks bigint DEFAULT 0,
    totalcompletes bigint DEFAULT 0
);
 +   DROP TABLE public.tbladt_platformvariable;
       public         wayio    false    3            �           1259    22883    tbladt_privilege    TABLE     v   CREATE TABLE tbladt_privilege (
    privilegeid integer NOT NULL,
    privilegename character varying(50) NOT NULL
);
 $   DROP TABLE public.tbladt_privilege;
       public         wayio    false    3            �           1259    18383    tbladt_process_startpos_seq    SEQUENCE     }   CREATE SEQUENCE tbladt_process_startpos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbladt_process_startpos_seq;
       public       wayio    false    3            �           1259    18385    tbladt_process_startpos    TABLE     �   CREATE TABLE tbladt_process_startpos (
    id integer DEFAULT nextval('tbladt_process_startpos_seq'::regclass) NOT NULL,
    processname character varying(50),
    startpos integer NOT NULL
);
 +   DROP TABLE public.tbladt_process_startpos;
       public         wayio    false    402    3            �           1259    18504    tbladt_region_seq    SEQUENCE     s   CREATE SEQUENCE tbladt_region_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tbladt_region_seq;
       public       wayio    false    3            �           1259    22471    tbladt_region    TABLE     )  CREATE TABLE tbladt_region (
    regionid integer DEFAULT nextval('tbladt_region_seq'::regclass) NOT NULL,
    countryid integer NOT NULL,
    regioncode character varying(5),
    regionname character varying(50) NOT NULL,
    isactive boolean DEFAULT true NOT NULL,
    rank integer DEFAULT 0
);
 !   DROP TABLE public.tbladt_region;
       public         wayio    false    424    3            �           1259    18391    tbladt_rfptoolconfiguration_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_rfptoolconfiguration_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbladt_rfptoolconfiguration_seq;
       public       wayio    false    3            �           1259    18393    tbladt_rfptoolconfiguration    TABLE     ;  CREATE TABLE tbladt_rfptoolconfiguration (
    toolid integer DEFAULT nextval('tbladt_rfptoolconfiguration_seq'::regclass) NOT NULL,
    name character varying(100) NOT NULL,
    apitoken character varying(500),
    updatedby integer NOT NULL,
    updatedon timestamp(0) without time zone DEFAULT now() NOT NULL
);
 /   DROP TABLE public.tbladt_rfptoolconfiguration;
       public         wayio    false    404    3            �           1259    22479    tbladt_richmediasdk    TABLE     �   CREATE TABLE tbladt_richmediasdk (
    sdkid integer NOT NULL,
    sdkname character varying(50) NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 '   DROP TABLE public.tbladt_richmediasdk;
       public         wayio    false    3            �           1259    18513    tbladt_role_seq    SEQUENCE     q   CREATE SEQUENCE tbladt_role_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbladt_role_seq;
       public       wayio    false    3            �           1259    22485    tbladt_role    TABLE     �  CREATE TABLE tbladt_role (
    roleid integer DEFAULT nextval('tbladt_role_seq'::regclass) NOT NULL,
    name character varying(50) NOT NULL,
    roletype integer DEFAULT 3 NOT NULL,
    assigneetype integer DEFAULT 0 NOT NULL,
    isactive boolean DEFAULT true NOT NULL,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone,
    displayrank integer DEFAULT 0
);
    DROP TABLE public.tbladt_role;
       public         wayio    false    425    3            �           1259    18527    tbladt_role_action_seq    SEQUENCE     x   CREATE SEQUENCE tbladt_role_action_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tbladt_role_action_seq;
       public       wayio    false    3            �           1259    18529    tbladt_role_action    TABLE       CREATE TABLE tbladt_role_action (
    recordid bigint DEFAULT nextval('tbladt_role_action_seq'::regclass) NOT NULL,
    roleid integer NOT NULL,
    actionid integer NOT NULL,
    updatedby integer NOT NULL,
    updatedon timestamp(0) without time zone DEFAULT now() NOT NULL
);
 &   DROP TABLE public.tbladt_role_action;
       public         wayio    false    427    3            �           1259    18536 !   tbladt_role_notification_rule_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_role_notification_rule_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tbladt_role_notification_rule_seq;
       public       wayio    false    3            �           1259    18538    tbladt_role_notification_rule    TABLE       CREATE TABLE tbladt_role_notification_rule (
    recordid bigint DEFAULT nextval('tbladt_role_notification_rule_seq'::regclass) NOT NULL,
    roleid integer NOT NULL,
    ruleid integer NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 1   DROP TABLE public.tbladt_role_notification_rule;
       public         wayio    false    429    3            �           1259    22888    tbladt_roleprivilege    TABLE     Z   CREATE TABLE tbladt_roleprivilege (
    roleid integer NOT NULL,
    privilegeids text
);
 (   DROP TABLE public.tbladt_roleprivilege;
       public         wayio    false    3            �           1259    18521    tbladt_roletype    TABLE     �   CREATE TABLE tbladt_roletype (
    roletypeid integer NOT NULL,
    name character varying(50),
    updatedby integer,
    updatedon timestamp(0) without time zone DEFAULT now()
);
 #   DROP TABLE public.tbladt_roletype;
       public         wayio    false    3            �           1259    18447     tbladt_rtpe_callback_tracker_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_rtpe_callback_tracker_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tbladt_rtpe_callback_tracker_seq;
       public       wayio    false    3            �           1259    18449    tbladt_rtpe_callback_tracker    TABLE     Q  CREATE TABLE tbladt_rtpe_callback_tracker (
    id bigint DEFAULT nextval('tbladt_rtpe_callback_tracker_seq'::regclass) NOT NULL,
    moduleid integer NOT NULL,
    name character varying(500) NOT NULL,
    ismodel boolean NOT NULL,
    trackingdate timestamp(0) without time zone DEFAULT now() NOT NULL,
    isvalid boolean NOT NULL
);
 0   DROP TABLE public.tbladt_rtpe_callback_tracker;
       public         wayio    false    414    3            �           1259    18459 (   tbladt_rtpe_callback_tracker_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_rtpe_callback_tracker_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.tbladt_rtpe_callback_tracker_archive_seq;
       public       wayio    false    3            �           1259    18461 $   tbladt_rtpe_callback_tracker_archive    TABLE     a  CREATE TABLE tbladt_rtpe_callback_tracker_archive (
    id bigint DEFAULT nextval('tbladt_rtpe_callback_tracker_archive_seq'::regclass) NOT NULL,
    moduleid integer NOT NULL,
    name character varying(500) NOT NULL,
    ismodel boolean NOT NULL,
    trackingdate timestamp(0) without time zone DEFAULT now() NOT NULL,
    isvalid boolean NOT NULL
);
 8   DROP TABLE public.tbladt_rtpe_callback_tracker_archive;
       public         wayio    false    416    3            �           1259    18471    tbladt_rtpe_tracker_seq    SEQUENCE     y   CREATE SEQUENCE tbladt_rtpe_tracker_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbladt_rtpe_tracker_seq;
       public       wayio    false    3            �           1259    18473    tbladt_rtpe_tracker    TABLE     �  CREATE TABLE tbladt_rtpe_tracker (
    id bigint DEFAULT nextval('tbladt_rtpe_tracker_seq'::regclass) NOT NULL,
    modelid integer NOT NULL,
    name character varying(500) NOT NULL,
    type integer NOT NULL,
    classification integer,
    isactive boolean,
    operation integer NOT NULL,
    updatedby character varying(100),
    trackingdate timestamp(0) without time zone NOT NULL
);
 '   DROP TABLE public.tbladt_rtpe_tracker;
       public         wayio    false    418    3            �           1259    18482    tbladt_rtpe_tracker_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_rtpe_tracker_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbladt_rtpe_tracker_archive_seq;
       public       wayio    false    3            �           1259    18484    tbladt_rtpe_tracker_archive    TABLE     �  CREATE TABLE tbladt_rtpe_tracker_archive (
    recordid bigint DEFAULT nextval('tbladt_rtpe_tracker_archive_seq'::regclass) NOT NULL,
    trackerkey character varying(50),
    modelid integer,
    name character varying(500),
    type integer,
    classification integer,
    isactive boolean,
    operation integer,
    updatedby character varying(100),
    trackingdate timestamp(0) without time zone
);
 /   DROP TABLE public.tbladt_rtpe_tracker_archive;
       public         wayio    false    420    3            �           1259    18493    tbladt_rtpe_tracker_dummy_seq    SEQUENCE        CREATE SEQUENCE tbladt_rtpe_tracker_dummy_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tbladt_rtpe_tracker_dummy_seq;
       public       wayio    false    3            �           1259    18495    tbladt_rtpe_tracker_dummy    TABLE     �  CREATE TABLE tbladt_rtpe_tracker_dummy (
    id bigint DEFAULT nextval('tbladt_rtpe_tracker_dummy_seq'::regclass) NOT NULL,
    modelid integer NOT NULL,
    name character varying(500) NOT NULL,
    type integer NOT NULL,
    classification integer,
    isactive boolean,
    operation integer NOT NULL,
    updatedby character varying(100),
    trackingdate timestamp(0) without time zone NOT NULL
);
 -   DROP TABLE public.tbladt_rtpe_tracker_dummy;
       public         wayio    false    422    3            �           1259    18403    tbladt_rtpemodel_seq    SEQUENCE     v   CREATE SEQUENCE tbladt_rtpemodel_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tbladt_rtpemodel_seq;
       public       wayio    false    3            �           1259    22453    tbladt_rtpemodel    TABLE     �  CREATE TABLE tbladt_rtpemodel (
    modelid integer DEFAULT nextval('tbladt_rtpemodel_seq'::regclass) NOT NULL,
    name character varying(100) NOT NULL,
    modeltype integer,
    classification integer,
    description character varying(1000),
    eqfile character varying(120),
    lufile character varying(120),
    isactive boolean DEFAULT true NOT NULL,
    isarchived boolean DEFAULT false,
    isexpired boolean DEFAULT false,
    filestatus integer DEFAULT 2 NOT NULL,
    lastvalidfilestatuson timestamp(3) without time zone,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 $   DROP TABLE public.tbladt_rtpemodel;
       public         wayio    false    406    3            �           1259    22467    tbladt_rtpemodel_biddinginfo    TABLE     �   CREATE TABLE tbladt_rtpemodel_biddinginfo (
    modelid integer,
    modelname character varying(100),
    isbidding boolean DEFAULT false,
    lastbiddingtime timestamp(0) without time zone
);
 0   DROP TABLE public.tbladt_rtpemodel_biddinginfo;
       public         wayio    false    3            �           1259    18412    tbladt_rtpemodel_file_seq    SEQUENCE     {   CREATE SEQUENCE tbladt_rtpemodel_file_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tbladt_rtpemodel_file_seq;
       public       wayio    false    3            �           1259    18414    tbladt_rtpemodel_file    TABLE     �   CREATE TABLE tbladt_rtpemodel_file (
    fileid bigint DEFAULT nextval('tbladt_rtpemodel_file_seq'::regclass) NOT NULL,
    modelid integer NOT NULL,
    filename character varying(500) NOT NULL
);
 )   DROP TABLE public.tbladt_rtpemodel_file;
       public         wayio    false    407    3            �           1259    18423 !   tbladt_rtpemodel_requiredfile_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_rtpemodel_requiredfile_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tbladt_rtpemodel_requiredfile_seq;
       public       wayio    false    3            �           1259    18425    tbladt_rtpemodel_requiredfile    TABLE     �   CREATE TABLE tbladt_rtpemodel_requiredfile (
    recordid integer DEFAULT nextval('tbladt_rtpemodel_requiredfile_seq'::regclass) NOT NULL,
    modelid integer,
    requiredtfid bigint
);
 1   DROP TABLE public.tbladt_rtpemodel_requiredfile;
       public         wayio    false    409    3            �           1259    18431    tbladt_rtpemodel_type    TABLE     w   CREATE TABLE tbladt_rtpemodel_type (
    modeltypeid integer NOT NULL,
    modeltype character varying(50) NOT NULL
);
 )   DROP TABLE public.tbladt_rtpemodel_type;
       public         wayio    false    3            �           1259    18436    tbladt_rtpeofflearner_seq    SEQUENCE     {   CREATE SEQUENCE tbladt_rtpeofflearner_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tbladt_rtpeofflearner_seq;
       public       wayio    false    3            �           1259    18438    tbladt_rtpeofflearner    TABLE     Y  CREATE TABLE tbladt_rtpeofflearner (
    offlearnerid integer DEFAULT nextval('tbladt_rtpeofflearner_seq'::regclass) NOT NULL,
    timeunit integer,
    impressioncount bigint,
    impressionpercent double precision,
    initialscript text,
    incrementalupdatescript text,
    decrementalupdatescript text,
    scriptrerunfrequency integer
);
 )   DROP TABLE public.tbladt_rtpeofflearner;
       public         wayio    false    412    3            �           1259    18544 $   tbladt_salesforcedata_bulkinsert_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_salesforcedata_bulkinsert_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.tbladt_salesforcedata_bulkinsert_seq;
       public       wayio    false    3            �           1259    18546     tbladt_salesforcedata_bulkinsert    TABLE     Y  CREATE TABLE tbladt_salesforcedata_bulkinsert (
    recordid bigint DEFAULT nextval('tbladt_salesforcedata_bulkinsert_seq'::regclass) NOT NULL,
    apisessionid character varying(50) NOT NULL,
    advertiserid integer,
    sfadvertiserid character varying(50),
    campaignid bigint,
    campaignsfid character varying(50),
    sfopportunityid character varying(50),
    lineitemid bigint,
    lineitemsfid character varying(50),
    strategyid bigint,
    strategysfid character varying(50),
    status integer DEFAULT 0 NOT NULL,
    logdate timestamp(3) without time zone DEFAULT now() NOT NULL
);
 4   DROP TABLE public.tbladt_salesforcedata_bulkinsert;
       public         wayio    false    431    3            �           1259    18554    tbladt_siteapp_seq    SEQUENCE     t   CREATE SEQUENCE tbladt_siteapp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbladt_siteapp_seq;
       public       wayio    false    3            �           1259    22496    tbladt_siteapp    TABLE     ]  CREATE TABLE tbladt_siteapp (
    siteappid integer DEFAULT nextval('tbladt_siteapp_seq'::regclass) NOT NULL,
    name character varying(500) NOT NULL,
    publisherid character varying(500) NOT NULL,
    websiteid character varying(500),
    adexchangeid integer NOT NULL,
    issite boolean NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 "   DROP TABLE public.tbladt_siteapp;
       public         wayio    false    433    3            �           1259    22506    tbladt_siteapp_inventory    TABLE     �  CREATE TABLE tbladt_siteapp_inventory (
    inventoryid bigint NOT NULL,
    adexchange character varying(50),
    preference character varying(50),
    websiteid character varying(50),
    sitebaseurl character varying(300),
    sitedomain character varying(300),
    appbundle character varying(200),
    isactive boolean,
    isblocked boolean DEFAULT false,
    isblocked_rm boolean DEFAULT false
);
 ,   DROP TABLE public.tbladt_siteapp_inventory;
       public         wayio    false    3            �           1259    18560    tbladt_siteappproperties    TABLE     �   CREATE TABLE tbladt_siteappproperties (
    property_id integer NOT NULL,
    dte date,
    req_property character varying(255),
    property_name character varying(255),
    type character varying(7)
);
 ,   DROP TABLE public.tbladt_siteappproperties;
       public         wayio    false    3            �           1259    18571 %   tbladt_siteappproperties_delete_stage    TABLE     Y   CREATE TABLE tbladt_siteappproperties_delete_stage (
    property_id integer NOT NULL
);
 9   DROP TABLE public.tbladt_siteappproperties_delete_stage;
       public         wayio    false    3            �           1259    18568 .   tbladt_siteappproperties_deletedata_from_pgsql    TABLE     b   CREATE TABLE tbladt_siteappproperties_deletedata_from_pgsql (
    property_id integer NOT NULL
);
 B   DROP TABLE public.tbladt_siteappproperties_deletedata_from_pgsql;
       public         wayio    false    3            �           1259    18574 #   tbladt_siteappproperties_removedata    TABLE     W   CREATE TABLE tbladt_siteappproperties_removedata (
    property_id integer NOT NULL
);
 7   DROP TABLE public.tbladt_siteappproperties_removedata;
       public         wayio    false    3            �           1259    18577    tbladt_siteappproperties_stage    TABLE     �   CREATE TABLE tbladt_siteappproperties_stage (
    property_id integer NOT NULL,
    dte date,
    req_property character varying(255),
    property_name character varying(255),
    type character varying(7),
    rnk integer
);
 2   DROP TABLE public.tbladt_siteappproperties_stage;
       public         wayio    false    3            �           1259    18585 #   tbladt_siteappproperties_updatedids    TABLE     y   CREATE TABLE tbladt_siteappproperties_updatedids (
    property_id integer NOT NULL,
    action character varying(20)
);
 7   DROP TABLE public.tbladt_siteappproperties_updatedids;
       public         wayio    false    3            �           1259    18635    tbladt_sitelist_sendcsv_seq    SEQUENCE     }   CREATE SEQUENCE tbladt_sitelist_sendcsv_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbladt_sitelist_sendcsv_seq;
       public       wayio    false    3            �           1259    22525    tbladt_sitelist_sendcsv    TABLE     0  CREATE TABLE tbladt_sitelist_sendcsv (
    recordid bigint DEFAULT nextval('tbladt_sitelist_sendcsv_seq'::regclass) NOT NULL,
    sitelistids text,
    mailid text,
    createdon timestamp(0) without time zone DEFAULT now(),
    zipfilename character varying(200),
    isdeleted boolean DEFAULT false
);
 +   DROP TABLE public.tbladt_sitelist_sendcsv;
       public         wayio    false    449    3            �           1259    18642    tbladt_sitelist_tracker_seq    SEQUENCE     }   CREATE SEQUENCE tbladt_sitelist_tracker_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbladt_sitelist_tracker_seq;
       public       wayio    false    3            �           1259    18644    tbladt_sitelist_tracker    TABLE     �   CREATE TABLE tbladt_sitelist_tracker (
    trackerid bigint DEFAULT nextval('tbladt_sitelist_tracker_seq'::regclass) NOT NULL,
    sitelistid bigint,
    operation character varying(50),
    tackedon timestamp(3) without time zone
);
 +   DROP TABLE public.tbladt_sitelist_tracker;
       public         wayio    false    450    3            �           1259    18650 #   tbladt_sitelist_tracker_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_sitelist_tracker_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tbladt_sitelist_tracker_archive_seq;
       public       wayio    false    3            �           1259    18652    tbladt_sitelist_tracker_archive    TABLE     �   CREATE TABLE tbladt_sitelist_tracker_archive (
    trackerid bigint DEFAULT nextval('tbladt_sitelist_tracker_archive_seq'::regclass) NOT NULL,
    sitelistid bigint,
    operation character varying(50),
    tackedon timestamp(3) without time zone
);
 3   DROP TABLE public.tbladt_sitelist_tracker_archive;
       public         wayio    false    452    3            �           1259    18593    tbladt_sitelistassoc_seq    SEQUENCE     z   CREATE SEQUENCE tbladt_sitelistassoc_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbladt_sitelistassoc_seq;
       public       wayio    false    3            �           1259    18595    tbladt_sitelistassoc    TABLE     �   CREATE TABLE tbladt_sitelistassoc (
    recordid bigint DEFAULT nextval('tbladt_sitelistassoc_seq'::regclass) NOT NULL,
    sitelistid bigint,
    propertyid bigint
);
 (   DROP TABLE public.tbladt_sitelistassoc;
       public         wayio    false    440    3            �           1259    18601     tbladt_sitelistassoc_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_sitelistassoc_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tbladt_sitelistassoc_archive_seq;
       public       wayio    false    3            �           1259    18603    tbladt_sitelistassoc_archive    TABLE     �   CREATE TABLE tbladt_sitelistassoc_archive (
    recordid bigint DEFAULT nextval('tbladt_sitelistassoc_archive_seq'::regclass) NOT NULL,
    sitelistid bigint,
    propertyid bigint
);
 0   DROP TABLE public.tbladt_sitelistassoc_archive;
       public         wayio    false    442    3            �           1259    18609 %   tbladt_sitelistassoc_intermediate_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_sitelistassoc_intermediate_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.tbladt_sitelistassoc_intermediate_seq;
       public       wayio    false    3            �           1259    22516 !   tbladt_sitelistassoc_intermediate    TABLE     \  CREATE TABLE tbladt_sitelistassoc_intermediate (
    recordid bigint DEFAULT nextval('tbladt_sitelistassoc_intermediate_seq'::regclass) NOT NULL,
    recordguid character varying(100),
    propertyid bigint,
    propertyname text,
    reqproperty text,
    isshow boolean DEFAULT true,
    createdon timestamp(0) without time zone DEFAULT now()
);
 5   DROP TABLE public.tbladt_sitelistassoc_intermediate;
       public         wayio    false    444    3            �           1259    18615    tbladt_sitelistmaster_seq    SEQUENCE     {   CREATE SEQUENCE tbladt_sitelistmaster_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tbladt_sitelistmaster_seq;
       public       wayio    false    3            �           1259    18617    tbladt_sitelistmaster    TABLE       CREATE TABLE tbladt_sitelistmaster (
    sitelistid bigint DEFAULT nextval('tbladt_sitelistmaster_seq'::regclass) NOT NULL,
    sitelistname character varying(500),
    listtype boolean,
    description text,
    status integer,
    createdby integer,
    createdon timestamp(0) without time zone DEFAULT now(),
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 )   DROP TABLE public.tbladt_sitelistmaster;
       public         wayio    false    445    3            �           1259    18627 !   tbladt_sitelistmaster_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_sitelistmaster_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tbladt_sitelistmaster_archive_seq;
       public       wayio    false    3            �           1259    18629    tbladt_sitelistmaster_archive    TABLE     �   CREATE TABLE tbladt_sitelistmaster_archive (
    sitelistid bigint DEFAULT nextval('tbladt_sitelistmaster_archive_seq'::regclass) NOT NULL,
    listtype boolean,
    status integer
);
 1   DROP TABLE public.tbladt_sitelistmaster_archive;
       public         wayio    false    447    3            �           1259    18658    tbladt_sqlerrorlog_seq    SEQUENCE     x   CREATE SEQUENCE tbladt_sqlerrorlog_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tbladt_sqlerrorlog_seq;
       public       wayio    false    3            �           1259    18660    tbladt_sqlerrorlog    TABLE     �  CREATE TABLE tbladt_sqlerrorlog (
    errorid bigint DEFAULT nextval('tbladt_sqlerrorlog_seq'::regclass) NOT NULL,
    sourcemodule character varying(100),
    errornumber character varying(100),
    errorseverity character varying(100),
    errorstate character varying(100),
    errorprocedure character varying(100),
    errorline character varying(100),
    errormessage text,
    occuredon timestamp(3) without time zone DEFAULT now() NOT NULL
);
 &   DROP TABLE public.tbladt_sqlerrorlog;
       public         wayio    false    454    3            �           1259    18670    tbladt_strategy_seq    SEQUENCE     u   CREATE SEQUENCE tbladt_strategy_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbladt_strategy_seq;
       public       wayio    false    3            �           1259    22536    tbladt_strategy    TABLE     �  CREATE TABLE tbladt_strategy (
    strategyid bigint DEFAULT nextval('tbladt_strategy_seq'::regclass) NOT NULL,
    lineitemid bigint NOT NULL,
    refstrategyid bigint,
    salesforceid character varying(50),
    strategyname character varying(500) NOT NULL,
    startdate timestamp(0) without time zone,
    enddate timestamp(0) without time zone,
    state integer DEFAULT 3,
    status integer DEFAULT 6,
    pricingtype character varying(25),
    maxrate double precision NOT NULL,
    minimumcpmrate numeric(18,2),
    maximumcpmrate numeric(18,2) NOT NULL,
    highlowctr integer DEFAULT 0,
    lasthighlowctr integer DEFAULT 0,
    isfrequencycappingon boolean DEFAULT false NOT NULL,
    frequencyvalue integer,
    frequencytype integer,
    frequencyby integer,
    percentage double precision,
    rtpelearnerimpressionpercent double precision,
    dailylosscap double precision,
    isallvendorcost boolean,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone,
    apiaccessid integer,
    skippability integer DEFAULT '-1'::integer,
    isdeleted boolean DEFAULT false,
    isrejected boolean DEFAULT false
);
 #   DROP TABLE public.tbladt_strategy;
       public         wayio    false    456    3            �           1259    18689    tbladt_strategy_adexchange_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_adexchange_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbladt_strategy_adexchange_seq;
       public       wayio    false    3            �           1259    18691    tbladt_strategy_adexchange    TABLE     �   CREATE TABLE tbladt_strategy_adexchange (
    recordid bigint DEFAULT nextval('tbladt_strategy_adexchange_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    adexchangeid integer NOT NULL
);
 .   DROP TABLE public.tbladt_strategy_adexchange;
       public         wayio    false    459    3            �           1259    18697    tbladt_strategy_audience_seq    SEQUENCE     ~   CREATE SEQUENCE tbladt_strategy_audience_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbladt_strategy_audience_seq;
       public       wayio    false    3            �           1259    18699    tbladt_strategy_audience    TABLE     �   CREATE TABLE tbladt_strategy_audience (
    recordid bigint DEFAULT nextval('tbladt_strategy_audience_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    audiencesegmentid bigint
);
 ,   DROP TABLE public.tbladt_strategy_audience;
       public         wayio    false    461    3            �           1259    18705 )   tbladt_strategy_audience_intermediate_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_audience_intermediate_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.tbladt_strategy_audience_intermediate_seq;
       public       wayio    false    3            �           1259    22554 %   tbladt_strategy_audience_intermediate    TABLE     >  CREATE TABLE tbladt_strategy_audience_intermediate (
    recordid bigint DEFAULT nextval('tbladt_strategy_audience_intermediate_seq'::regclass) NOT NULL,
    recordguid character varying(100),
    audiencesegmentid bigint,
    isshow boolean DEFAULT true,
    createdon timestamp(0) without time zone DEFAULT now()
);
 9   DROP TABLE public.tbladt_strategy_audience_intermediate;
       public         wayio    false    463    3            �           1259    18718    tbladt_strategy_carriers_seq    SEQUENCE     ~   CREATE SEQUENCE tbladt_strategy_carriers_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbladt_strategy_carriers_seq;
       public       wayio    false    3            �           1259    18720    tbladt_strategy_carriers    TABLE     �   CREATE TABLE tbladt_strategy_carriers (
    recordid bigint DEFAULT nextval('tbladt_strategy_carriers_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    carrierids text NOT NULL,
    isallwirelesscarriers boolean
);
 ,   DROP TABLE public.tbladt_strategy_carriers;
       public         wayio    false    466    3            �           1259    18729 #   tbladt_strategy_content_keyword_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_content_keyword_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tbladt_strategy_content_keyword_seq;
       public       wayio    false    3            �           1259    22560    tbladt_strategy_content_keyword    TABLE     �   CREATE TABLE tbladt_strategy_content_keyword (
    recordid bigint DEFAULT nextval('tbladt_strategy_content_keyword_seq'::regclass) NOT NULL,
    strategyid bigint,
    keyword character varying(200),
    isincluded boolean DEFAULT true
);
 3   DROP TABLE public.tbladt_strategy_content_keyword;
       public         wayio    false    468    3            �           1259    18735 (   tbladt_strategy_content_keyword_temp_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_content_keyword_temp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.tbladt_strategy_content_keyword_temp_seq;
       public       wayio    false    3            �           1259    18737 $   tbladt_strategy_content_keyword_temp    TABLE     Q  CREATE TABLE tbladt_strategy_content_keyword_temp (
    recordid bigint DEFAULT nextval('tbladt_strategy_content_keyword_temp_seq'::regclass) NOT NULL,
    recordguid character varying(50),
    strategyid bigint,
    keyword character varying(200),
    isincluded boolean,
    createddate timestamp(3) without time zone DEFAULT now()
);
 8   DROP TABLE public.tbladt_strategy_content_keyword_temp;
       public         wayio    false    469    3            �           1259    18744    tbladt_strategy_coordinate_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_coordinate_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbladt_strategy_coordinate_seq;
       public       wayio    false    3            �           1259    18746    tbladt_strategy_coordinate    TABLE     >  CREATE TABLE tbladt_strategy_coordinate (
    recordid bigint DEFAULT nextval('tbladt_strategy_coordinate_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL,
    radius double precision,
    minradius double precision DEFAULT 0
);
 .   DROP TABLE public.tbladt_strategy_coordinate;
       public         wayio    false    471    3            �           1259    18753    tbladt_strategy_country_seq    SEQUENCE     }   CREATE SEQUENCE tbladt_strategy_country_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbladt_strategy_country_seq;
       public       wayio    false    3            �           1259    18755    tbladt_strategy_country    TABLE     �   CREATE TABLE tbladt_strategy_country (
    recordid bigint DEFAULT nextval('tbladt_strategy_country_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    countryids text NOT NULL
);
 +   DROP TABLE public.tbladt_strategy_country;
       public         wayio    false    473    3            �           1259    18711 "   tbladt_strategy_cparetargeting_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_cparetargeting_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tbladt_strategy_cparetargeting_seq;
       public       wayio    false    3            �           1259    18713    tbladt_strategy_cparetargeting    TABLE     �  CREATE TABLE tbladt_strategy_cparetargeting (
    recordid bigint DEFAULT nextval('tbladt_strategy_cparetargeting_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    cparetargetingon boolean NOT NULL,
    initialgoalname character varying(100),
    initialrecencydaysfrom integer,
    initialrecencydaysto integer,
    initialconversionstrength character varying(100),
    initialuserfrequency integer,
    initialfrequency integer,
    decrementalgoalname character varying(100),
    decrementalrecencydaysfrom integer,
    decrementalrecencydaysto integer,
    decrementalconversionstrength character varying(100),
    decrementaluserfrequency integer,
    decrementalfrequency integer,
    addunattributedon boolean,
    updatefrequency integer,
    retargetingtype integer,
    createdon timestamp(3) without time zone DEFAULT now(),
    createdby integer,
    updatedon timestamp(3) without time zone,
    updatedby integer
);
 2   DROP TABLE public.tbladt_strategy_cparetargeting;
       public         wayio    false    464    3            �           1259    18764    tbladt_strategy_creative_seq    SEQUENCE     ~   CREATE SEQUENCE tbladt_strategy_creative_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbladt_strategy_creative_seq;
       public       wayio    false    3            �           1259    18766    tbladt_strategy_creative    TABLE     �   CREATE TABLE tbladt_strategy_creative (
    recordid bigint DEFAULT nextval('tbladt_strategy_creative_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    creativeids text,
    isallcreative boolean
);
 ,   DROP TABLE public.tbladt_strategy_creative;
       public         wayio    false    475    3            �           1259    18784    tbladt_strategy_dayparting_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_dayparting_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbladt_strategy_dayparting_seq;
       public       wayio    false    3            �           1259    18786    tbladt_strategy_dayparting    TABLE       CREATE TABLE tbladt_strategy_dayparting (
    recordid bigint DEFAULT nextval('tbladt_strategy_dayparting_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    fromtime character varying(10) NOT NULL,
    totime character varying(10) NOT NULL,
    timezoneid integer NOT NULL,
    mon boolean NOT NULL,
    tue boolean NOT NULL,
    wed boolean NOT NULL,
    thu boolean NOT NULL,
    fri boolean NOT NULL,
    sat boolean NOT NULL,
    sun boolean NOT NULL,
    isrequesttimezone boolean DEFAULT false NOT NULL
);
 .   DROP TABLE public.tbladt_strategy_dayparting;
       public         wayio    false    479    3            �           1259    18792    tbladt_strategy_dealid_seq    SEQUENCE     |   CREATE SEQUENCE tbladt_strategy_dealid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbladt_strategy_dealid_seq;
       public       wayio    false    3            �           1259    18794    tbladt_strategy_dealid    TABLE     �   CREATE TABLE tbladt_strategy_dealid (
    recordid bigint DEFAULT nextval('tbladt_strategy_dealid_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    dealdbid integer NOT NULL
);
 *   DROP TABLE public.tbladt_strategy_dealid;
       public         wayio    false    481    3            �           1259    18800    tbladt_strategy_demographic_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_demographic_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbladt_strategy_demographic_seq;
       public       wayio    false    3            �           1259    22567    tbladt_strategy_demographic    TABLE     �  CREATE TABLE tbladt_strategy_demographic (
    recordid bigint DEFAULT nextval('tbladt_strategy_demographic_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    genderid integer,
    agefrom integer,
    ageupto integer,
    skipagetarget boolean DEFAULT true,
    skewagetarget boolean DEFAULT false,
    minincome integer,
    maxincome integer,
    languageids text,
    behaviorids text,
    homeorbusiness integer DEFAULT 0
);
 /   DROP TABLE public.tbladt_strategy_demographic;
       public         wayio    false    483    3            �           1259    18806    tbladt_strategy_device_seq    SEQUENCE     |   CREATE SEQUENCE tbladt_strategy_device_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbladt_strategy_device_seq;
       public       wayio    false    3            �           1259    18808    tbladt_strategy_device    TABLE     �   CREATE TABLE tbladt_strategy_device (
    recordid bigint DEFAULT nextval('tbladt_strategy_device_seq'::regclass) NOT NULL,
    strategyid bigint,
    makeid integer,
    deviceid integer
);
 *   DROP TABLE public.tbladt_strategy_device;
       public         wayio    false    484    3            �           1259    18773    tbladt_strategy_dma_seq    SEQUENCE     y   CREATE SEQUENCE tbladt_strategy_dma_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbladt_strategy_dma_seq;
       public       wayio    false    3            �           1259    18775    tbladt_strategy_dma    TABLE     �   CREATE TABLE tbladt_strategy_dma (
    recordid bigint DEFAULT nextval('tbladt_strategy_dma_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    dmaids text NOT NULL
);
 '   DROP TABLE public.tbladt_strategy_dma;
       public         wayio    false    477    3            �           1259    18814    tbladt_strategy_iabcategory_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_iabcategory_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbladt_strategy_iabcategory_seq;
       public       wayio    false    3            �           1259    18816    tbladt_strategy_iabcategory    TABLE     �   CREATE TABLE tbladt_strategy_iabcategory (
    recordid bigint DEFAULT nextval('tbladt_strategy_iabcategory_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    categoryids text NOT NULL
);
 /   DROP TABLE public.tbladt_strategy_iabcategory;
       public         wayio    false    486    3            �           1259    18825    tbladt_strategy_isp_seq    SEQUENCE     y   CREATE SEQUENCE tbladt_strategy_isp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbladt_strategy_isp_seq;
       public       wayio    false    3            �           1259    18827    tbladt_strategy_isp    TABLE     �   CREATE TABLE tbladt_strategy_isp (
    recordid bigint DEFAULT nextval('tbladt_strategy_isp_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    ispids text NOT NULL,
    isallwifi boolean
);
 '   DROP TABLE public.tbladt_strategy_isp;
       public         wayio    false    488    3            �           1259    18836    tbladt_strategy_keyword_seq    SEQUENCE     }   CREATE SEQUENCE tbladt_strategy_keyword_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbladt_strategy_keyword_seq;
       public       wayio    false    3            �           1259    18838    tbladt_strategy_keyword    TABLE     �   CREATE TABLE tbladt_strategy_keyword (
    recordid bigint DEFAULT nextval('tbladt_strategy_keyword_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    includedkeywords text,
    excludedkeywords text
);
 +   DROP TABLE public.tbladt_strategy_keyword;
       public         wayio    false    490    3            �           1259    18847    tbladt_strategy_mosaic_seq    SEQUENCE     |   CREATE SEQUENCE tbladt_strategy_mosaic_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbladt_strategy_mosaic_seq;
       public       wayio    false    3            �           1259    18849    tbladt_strategy_mosaic    TABLE     �   CREATE TABLE tbladt_strategy_mosaic (
    recordid bigint DEFAULT nextval('tbladt_strategy_mosaic_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    mosaicids text NOT NULL
);
 *   DROP TABLE public.tbladt_strategy_mosaic;
       public         wayio    false    492    3            �           1259    18858    tbladt_strategy_optimizeddata    TABLE     �   CREATE TABLE tbladt_strategy_optimizeddata (
    strategyid bigint NOT NULL,
    optimizedmaxrate double precision,
    optimizedrtlmvalue double precision,
    optimizedminscore double precision,
    optimizedmaxscore double precision
);
 1   DROP TABLE public.tbladt_strategy_optimizeddata;
       public         wayio    false    3            �           1259    18863    tbladt_strategy_os_seq    SEQUENCE     x   CREATE SEQUENCE tbladt_strategy_os_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tbladt_strategy_os_seq;
       public       wayio    false    3            �           1259    18865    tbladt_strategy_os    TABLE     �   CREATE TABLE tbladt_strategy_os (
    recordid bigint DEFAULT nextval('tbladt_strategy_os_seq'::regclass) NOT NULL,
    strategyid bigint,
    osid integer,
    osversionid integer
);
 &   DROP TABLE public.tbladt_strategy_os;
       public         wayio    false    495    3            �           1259    18871    tbladt_strategy_postalcode_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_postalcode_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbladt_strategy_postalcode_seq;
       public       wayio    false    3            �           1259    18873    tbladt_strategy_postalcode    TABLE     �   CREATE TABLE tbladt_strategy_postalcode (
    recordid bigint DEFAULT nextval('tbladt_strategy_postalcode_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    zipcodes text NOT NULL
);
 .   DROP TABLE public.tbladt_strategy_postalcode;
       public         wayio    false    497    3            �           1259    18888    tbladt_strategy_region_city_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_region_city_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbladt_strategy_region_city_seq;
       public       wayio    false    3            �           1259    18890    tbladt_strategy_region_city    TABLE     �   CREATE TABLE tbladt_strategy_region_city (
    recordid bigint DEFAULT nextval('tbladt_strategy_region_city_seq'::regclass) NOT NULL,
    strategyregionid bigint,
    cityid bigint
);
 /   DROP TABLE public.tbladt_strategy_region_city;
       public         wayio    false    500    3            �           1259    18896    tbladt_strategy_regions_seq    SEQUENCE     }   CREATE SEQUENCE tbladt_strategy_regions_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbladt_strategy_regions_seq;
       public       wayio    false    3            �           1259    22588    tbladt_strategy_regions    TABLE       CREATE TABLE tbladt_strategy_regions (
    recordid bigint DEFAULT nextval('tbladt_strategy_regions_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    regionids text,
    countryid integer,
    stateid bigint,
    isallcityselected boolean DEFAULT true
);
 +   DROP TABLE public.tbladt_strategy_regions;
       public         wayio    false    502    3            �           1259    18902    tbladt_strategy_retargeting_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_retargeting_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbladt_strategy_retargeting_seq;
       public       wayio    false    3            �           1259    18904    tbladt_strategy_retargeting    TABLE       CREATE TABLE tbladt_strategy_retargeting (
    recordid bigint DEFAULT nextval('tbladt_strategy_retargeting_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    retargetingon boolean NOT NULL,
    scriptname character varying(100) NOT NULL,
    description character varying(1000),
    initialscript text NOT NULL,
    incrementalupdatescript text NOT NULL,
    decrementalupdatescript text NOT NULL,
    targetingtype integer NOT NULL,
    rerunfrequency integer NOT NULL,
    targetingcriteria integer NOT NULL
);
 /   DROP TABLE public.tbladt_strategy_retargeting;
       public         wayio    false    503    3            �           1259    18882    tbladt_strategy_rtpe_seq    SEQUENCE     z   CREATE SEQUENCE tbladt_strategy_rtpe_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbladt_strategy_rtpe_seq;
       public       wayio    false    3            �           1259    22579    tbladt_strategy_rtpe    TABLE     X  CREATE TABLE tbladt_strategy_rtpe (
    recordid bigint DEFAULT nextval('tbladt_strategy_rtpe_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    isrtpeon boolean DEFAULT false,
    rtlmvalue double precision,
    modelid integer NOT NULL,
    minimumctrvtr double precision DEFAULT 0,
    maximumctrvtr double precision DEFAULT 1
);
 (   DROP TABLE public.tbladt_strategy_rtpe;
       public         wayio    false    499    3            �           1259    18913    tbladt_strategy_siteapp_seq    SEQUENCE     }   CREATE SEQUENCE tbladt_strategy_siteapp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbladt_strategy_siteapp_seq;
       public       wayio    false    3            �           1259    18915    tbladt_strategy_siteapp    TABLE       CREATE TABLE tbladt_strategy_siteapp (
    recordid bigint DEFAULT nextval('tbladt_strategy_siteapp_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    propertyid bigint NOT NULL,
    propertyname text DEFAULT 0,
    reqproperty text,
    createdby bigint,
    createdon timestamp(3) without time zone,
    updatedon timestamp(3) without time zone,
    updatedby bigint
);
 +   DROP TABLE public.tbladt_strategy_siteapp;
       public         wayio    false    505    3            �           1259    18925 %   tbladt_strategy_siteapp_inventory_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_siteapp_inventory_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.tbladt_strategy_siteapp_inventory_seq;
       public       wayio    false    3            �           1259    18927 !   tbladt_strategy_siteapp_inventory    TABLE     �   CREATE TABLE tbladt_strategy_siteapp_inventory (
    recordid bigint DEFAULT nextval('tbladt_strategy_siteapp_inventory_seq'::regclass) NOT NULL,
    strategyid bigint,
    inventoryid bigint NOT NULL
);
 5   DROP TABLE public.tbladt_strategy_siteapp_inventory;
       public         wayio    false    507    3            �           1259    18933 )   tbladt_strategy_siteapp_inventorytemp_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_siteapp_inventorytemp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.tbladt_strategy_siteapp_inventorytemp_seq;
       public       wayio    false    3            �           1259    18935 %   tbladt_strategy_siteapp_inventorytemp    TABLE     �   CREATE TABLE tbladt_strategy_siteapp_inventorytemp (
    recordid bigint DEFAULT nextval('tbladt_strategy_siteapp_inventorytemp_seq'::regclass) NOT NULL,
    strategyid bigint,
    inventoryid bigint,
    isdeleted boolean,
    userid integer
);
 9   DROP TABLE public.tbladt_strategy_siteapp_inventorytemp;
       public         wayio    false    509    3            �           1259    18941    tbladt_strategy_sitelist_seq    SEQUENCE     ~   CREATE SEQUENCE tbladt_strategy_sitelist_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbladt_strategy_sitelist_seq;
       public       wayio    false    3                        1259    18943    tbladt_strategy_sitelist    TABLE     �   CREATE TABLE tbladt_strategy_sitelist (
    recordid bigint DEFAULT nextval('tbladt_strategy_sitelist_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    sitelistid bigint
);
 ,   DROP TABLE public.tbladt_strategy_sitelist;
       public         wayio    false    511    3                       1259    18949 $   tbladt_strategy_sitelist_archive_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_sitelist_archive_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.tbladt_strategy_sitelist_archive_seq;
       public       wayio    false    3                       1259    18951     tbladt_strategy_sitelist_archive    TABLE     �   CREATE TABLE tbladt_strategy_sitelist_archive (
    recordid bigint DEFAULT nextval('tbladt_strategy_sitelist_archive_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    sitelistid bigint
);
 4   DROP TABLE public.tbladt_strategy_sitelist_archive;
       public         wayio    false    513    3                       1259    18957    tbladt_strategy_targets_seq    SEQUENCE     }   CREATE SEQUENCE tbladt_strategy_targets_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbladt_strategy_targets_seq;
       public       wayio    false    3            �           1259    22598    tbladt_strategy_targets    TABLE     �  CREATE TABLE tbladt_strategy_targets (
    recordid integer DEFAULT nextval('tbladt_strategy_targets_seq'::regclass) NOT NULL,
    strategyid bigint,
    appsite_isblacklisted boolean,
    appsiteproperties character varying(50),
    isrequesttimezone boolean,
    isdesktop boolean DEFAULT false,
    istargetosonly boolean DEFAULT true,
    isallsmartphone boolean DEFAULT false,
    isalltablets boolean DEFAULT false,
    devicetypes character varying(50),
    isidfa boolean,
    geotargettype integer DEFAULT 1,
    proximitydesignid character varying(50),
    isexchangeoverwrite boolean DEFAULT false,
    geopulseaudiencedesignid character varying(50),
    retargetingtargettype integer
);
 +   DROP TABLE public.tbladt_strategy_targets;
       public         wayio    false    515    3                       1259    18963 "   tbladt_strategy_targets_dayparting    TABLE     �   CREATE TABLE tbladt_strategy_targets_dayparting (
    historyid character varying(50),
    strategyid bigint,
    isrequesttimezone boolean,
    updatedby integer,
    updatedon timestamp(0) without time zone
);
 6   DROP TABLE public.tbladt_strategy_targets_dayparting;
       public         wayio    false    3                       1259    18966 "   tbladt_strategy_targets_delete_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_targets_delete_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tbladt_strategy_targets_delete_seq;
       public       wayio    false    3                       1259    18968    tbladt_strategy_targets_delete    TABLE     �  CREATE TABLE tbladt_strategy_targets_delete (
    recordid integer DEFAULT nextval('tbladt_strategy_targets_delete_seq'::regclass) NOT NULL,
    strategyid bigint,
    appsite_isblacklisted boolean,
    appsiteproperties character varying(50),
    isrequesttimezone boolean,
    isdesktop boolean,
    istargetosonly boolean,
    isallsmartphone boolean,
    isalltablets boolean,
    isidfa boolean
);
 2   DROP TABLE public.tbladt_strategy_targets_delete;
       public         wayio    false    517    3                       1259    18972    tbladt_strategy_vendorcost_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_vendorcost_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.tbladt_strategy_vendorcost_seq;
       public       wayio    false    3                       1259    18974    tbladt_strategy_vendorcost    TABLE     �   CREATE TABLE tbladt_strategy_vendorcost (
    recordid bigint DEFAULT nextval('tbladt_strategy_vendorcost_seq'::regclass) NOT NULL,
    strategyid bigint,
    costid bigint
);
 .   DROP TABLE public.tbladt_strategy_vendorcost;
       public         wayio    false    519    3            	           1259    18980    tbladt_strategy_weather_seq    SEQUENCE     }   CREATE SEQUENCE tbladt_strategy_weather_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbladt_strategy_weather_seq;
       public       wayio    false    3            �           1259    22610    tbladt_strategy_weather    TABLE     &  CREATE TABLE tbladt_strategy_weather (
    recordid bigint DEFAULT nextval('tbladt_strategy_weather_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    weatherids text,
    tempfrom integer,
    tempto integer,
    iscelsius boolean,
    skiptemperaturetarget boolean DEFAULT true
);
 +   DROP TABLE public.tbladt_strategy_weather;
       public         wayio    false    521    3            
           1259    18986 "   tbladt_strategy_weather_delete_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_strategy_weather_delete_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tbladt_strategy_weather_delete_seq;
       public       wayio    false    3                       1259    18988    tbladt_strategy_weather_delete    TABLE     '  CREATE TABLE tbladt_strategy_weather_delete (
    recordid bigint DEFAULT nextval('tbladt_strategy_weather_delete_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    weatherids text,
    tempfrom integer,
    tempto integer,
    iscelsius boolean,
    skiptemperaturetarget boolean
);
 2   DROP TABLE public.tbladt_strategy_weather_delete;
       public         wayio    false    522    3            �           1259    18680    tbladt_strategyosmapping_seq    SEQUENCE     ~   CREATE SEQUENCE tbladt_strategyosmapping_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbladt_strategyosmapping_seq;
       public       wayio    false    3            �           1259    18682    tbladt_strategyosmapping    TABLE     �   CREATE TABLE tbladt_strategyosmapping (
    recordid integer DEFAULT nextval('tbladt_strategyosmapping_seq'::regclass) NOT NULL,
    strategyid bigint,
    osname character varying(500),
    refkey character varying(50)
);
 ,   DROP TABLE public.tbladt_strategyosmapping;
       public         wayio    false    457    3            �           1259    25188    tbladt_strategysiteapp_seq    SEQUENCE     |   CREATE SEQUENCE tbladt_strategysiteapp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbladt_strategysiteapp_seq;
       public       wayio    false    3            �           1259    25156    tbladt_strategysiteapp    TABLE     �   CREATE TABLE tbladt_strategysiteapp (
    recordid bigint DEFAULT nextval('tbladt_strategysiteapp_seq'::regclass) NOT NULL,
    strategyid bigint NOT NULL,
    properties text
);
 *   DROP TABLE public.tbladt_strategysiteapp;
       public         wayio    false    767    3                       1259    18995    tbladt_tableaureport_seq    SEQUENCE     z   CREATE SEQUENCE tbladt_tableaureport_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbladt_tableaureport_seq;
       public       wayio    false    3            �           1259    22620    tbladt_tableaureport    TABLE     	  CREATE TABLE tbladt_tableaureport (
    reportid bigint DEFAULT nextval('tbladt_tableaureport_seq'::regclass) NOT NULL,
    reportname character varying(500) NOT NULL,
    description character varying(500),
    reportlink character varying(500) NOT NULL,
    width integer,
    height integer,
    isactive boolean DEFAULT true NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    createdby integer DEFAULT 0 NOT NULL,
    updatedon timestamp(0) without time zone,
    updatedby integer
);
 (   DROP TABLE public.tbladt_tableaureport;
       public         wayio    false    524    3            �           1259    22632    tbladt_timezone    TABLE     u  CREATE TABLE tbladt_timezone (
    timezoneid integer NOT NULL,
    timezonecode character varying(10),
    timezonename character varying(50) NOT NULL,
    utcoffset character varying(10) NOT NULL,
    standardid character varying(50),
    timezonegroup character varying(50),
    isdstallowed boolean DEFAULT false NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 #   DROP TABLE public.tbladt_timezone;
       public         wayio    false    3                       1259    19004 ,   tbladt_tracker_prevdata_strategycreative_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_tracker_prevdata_strategycreative_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.tbladt_tracker_prevdata_strategycreative_seq;
       public       wayio    false    3                       1259    19006 (   tbladt_tracker_prevdata_strategycreative    TABLE     L  CREATE TABLE tbladt_tracker_prevdata_strategycreative (
    recordid bigint DEFAULT nextval('tbladt_tracker_prevdata_strategycreative_seq'::regclass) NOT NULL,
    datakey character varying(50) NOT NULL,
    strategyid bigint NOT NULL,
    creativeid bigint NOT NULL,
    "timestamp" timestamp(0) without time zone DEFAULT now()
);
 <   DROP TABLE public.tbladt_tracker_prevdata_strategycreative;
       public         wayio    false    525    3                       1259    19013    tbladt_user_seq    SEQUENCE     q   CREATE SEQUENCE tbladt_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbladt_user_seq;
       public       wayio    false    3            �           1259    22639    tbladt_user    TABLE     �  CREATE TABLE tbladt_user (
    userid integer DEFAULT nextval('tbladt_user_seq'::regclass) NOT NULL,
    companyid integer NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    email character varying(100) NOT NULL,
    password character varying(200) NOT NULL,
    phoneno character varying(30),
    street character varying(250),
    city character varying(50),
    state character varying(50),
    country character varying(50),
    zip character varying(10),
    imageurl character varying(500),
    timezoneid integer,
    roleid integer NOT NULL,
    issysadmin boolean DEFAULT false NOT NULL,
    isactive boolean DEFAULT true NOT NULL,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone,
    salt character varying(50) NOT NULL,
    gender integer DEFAULT 1 NOT NULL,
    birthday timestamp(0) without time zone,
    idnum character varying(100)
);
    DROP TABLE public.tbladt_user;
       public         wayio    false    527    3                       1259    19037    tbladt_user_notification_seq    SEQUENCE     ~   CREATE SEQUENCE tbladt_user_notification_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbladt_user_notification_seq;
       public       wayio    false    3            �           1259    22663    tbladt_user_notification    TABLE       CREATE TABLE tbladt_user_notification (
    associd bigint DEFAULT nextval('tbladt_user_notification_seq'::regclass) NOT NULL,
    notificationid bigint NOT NULL,
    userid integer NOT NULL,
    isnew boolean DEFAULT true NOT NULL,
    isarchived boolean DEFAULT false NOT NULL
);
 ,   DROP TABLE public.tbladt_user_notification;
       public         wayio    false    531    3                       1259    19043 $   tbladt_user_notification_message_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_user_notification_message_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.tbladt_user_notification_message_seq;
       public       wayio    false    3            �           1259    22671     tbladt_user_notification_message    TABLE     I  CREATE TABLE tbladt_user_notification_message (
    associd bigint DEFAULT nextval('tbladt_user_notification_message_seq'::regclass) NOT NULL,
    notificationid bigint NOT NULL,
    userid integer NOT NULL,
    referedby integer,
    markedasread boolean DEFAULT false NOT NULL,
    isarchived boolean DEFAULT false NOT NULL
);
 4   DROP TABLE public.tbladt_user_notification_message;
       public         wayio    false    532    3                       1259    19019    tbladt_usergridcolumnfilter_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_usergridcolumnfilter_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbladt_usergridcolumnfilter_seq;
       public       wayio    false    3                       1259    19021    tbladt_usergridcolumnfilter    TABLE        CREATE TABLE tbladt_usergridcolumnfilter (
    criteriaid bigint DEFAULT nextval('tbladt_usergridcolumnfilter_seq'::regclass) NOT NULL,
    userid integer NOT NULL,
    gridid integer NOT NULL,
    columnfilter text,
    updatedon timestamp(0) without time zone DEFAULT now() NOT NULL
);
 /   DROP TABLE public.tbladt_usergridcolumnfilter;
       public         wayio    false    528    3                       1259    19031 !   tbladt_usergridfiltercriteria_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_usergridfiltercriteria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tbladt_usergridfiltercriteria_seq;
       public       wayio    false    3            �           1259    22651    tbladt_usergridfiltercriteria    TABLE     _  CREATE TABLE tbladt_usergridfiltercriteria (
    criteriaid bigint DEFAULT nextval('tbladt_usergridfiltercriteria_seq'::regclass) NOT NULL,
    userid integer NOT NULL,
    gridid integer NOT NULL,
    filterlabel text,
    filterdata text,
    ownerlabel character varying(50),
    ownerdata character varying(10),
    rangelabel character varying(50),
    rangedata character varying(50),
    show1p boolean DEFAULT true,
    show3p boolean DEFAULT true,
    updatedon timestamp(0) without time zone DEFAULT now() NOT NULL,
    sortcolumn character varying(50),
    sortdirection character varying(10)
);
 1   DROP TABLE public.tbladt_usergridfiltercriteria;
       public         wayio    false    530    3            �           1259    22912    tbladt_userverifycode_seq    SEQUENCE     {   CREATE SEQUENCE tbladt_userverifycode_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 5;
 0   DROP SEQUENCE public.tbladt_userverifycode_seq;
       public       wayio    false    3            �           1259    22904    tbladt_userverifycode    TABLE     �  CREATE TABLE tbladt_userverifycode (
    userverifycodeid integer DEFAULT nextval('tbladt_userverifycode_seq'::regclass) NOT NULL,
    userid integer NOT NULL,
    confirmcode character varying(50) NOT NULL,
    expirydate timestamp without time zone NOT NULL,
    type integer NOT NULL,
    created timestamp without time zone NOT NULL,
    lastmodified timestamp without time zone,
    verifycode character varying(100) NOT NULL,
    isactive boolean NOT NULL
);
 )   DROP TABLE public.tbladt_userverifycode;
       public         wayio    false    717    3                       1259    19049    tbladt_vendor_seq    SEQUENCE     s   CREATE SEQUENCE tbladt_vendor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tbladt_vendor_seq;
       public       wayio    false    3            �           1259    22679    tbladt_vendor    TABLE     �  CREATE TABLE tbladt_vendor (
    vendorid integer DEFAULT nextval('tbladt_vendor_seq'::regclass) NOT NULL,
    vendorname character varying(100) NOT NULL,
    description text,
    createdby integer NOT NULL,
    createdon timestamp(0) without time zone DEFAULT now() NOT NULL,
    updatedby integer,
    updatedon timestamp(0) without time zone,
    isactive boolean DEFAULT true NOT NULL
);
 !   DROP TABLE public.tbladt_vendor;
       public         wayio    false    533    3                       1259    19061    tbladt_vendor_product_seq    SEQUENCE     {   CREATE SEQUENCE tbladt_vendor_product_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tbladt_vendor_product_seq;
       public       wayio    false    3                       1259    19063    tbladt_vendor_product    TABLE     �   CREATE TABLE tbladt_vendor_product (
    productid integer DEFAULT nextval('tbladt_vendor_product_seq'::regclass) NOT NULL,
    vendorid integer NOT NULL,
    productname character varying(100) NOT NULL
);
 )   DROP TABLE public.tbladt_vendor_product;
       public         wayio    false    534    3                       1259    19069 "   tbladt_vendor_product_costtype_seq    SEQUENCE     �   CREATE SEQUENCE tbladt_vendor_product_costtype_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tbladt_vendor_product_costtype_seq;
       public       wayio    false    3            �           1259    22690    tbladt_vendor_product_costtype    TABLE     @  CREATE TABLE tbladt_vendor_product_costtype (
    recordid integer DEFAULT nextval('tbladt_vendor_product_costtype_seq'::regclass) NOT NULL,
    vendorid integer NOT NULL,
    productid integer NOT NULL,
    costcategoryid integer NOT NULL,
    costtypeid integer NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 2   DROP TABLE public.tbladt_vendor_product_costtype;
       public         wayio    false    536    3            �           1259    22697    tbladt_weather    TABLE     �   CREATE TABLE tbladt_weather (
    weatherid integer NOT NULL,
    weathercode character varying(10) NOT NULL,
    weathercondition character varying(50) NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);
 "   DROP TABLE public.tbladt_weather;
       public         wayio    false    3                       1259    19082    tblmig_adexchange_seq    SEQUENCE     w   CREATE SEQUENCE tblmig_adexchange_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tblmig_adexchange_seq;
       public       wayio    false    3                       1259    19084    tblmig_adexchange    TABLE     �   CREATE TABLE tblmig_adexchange (
    id integer DEFAULT nextval('tblmig_adexchange_seq'::regclass) NOT NULL,
    adexid integer
);
 %   DROP TABLE public.tblmig_adexchange;
       public         wayio    false    537    3                       1259    19088    tblmig_advertiser_seq    SEQUENCE     w   CREATE SEQUENCE tblmig_advertiser_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tblmig_advertiser_seq;
       public       wayio    false    3                       1259    19090    tblmig_advertiser    TABLE     �   CREATE TABLE tblmig_advertiser (
    id integer DEFAULT nextval('tblmig_advertiser_seq'::regclass) NOT NULL,
    advertiserid integer
);
 %   DROP TABLE public.tblmig_advertiser;
       public         wayio    false    539    3                       1259    19094    tblmig_asset_seq    SEQUENCE     r   CREATE SEQUENCE tblmig_asset_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tblmig_asset_seq;
       public       wayio    false    3                       1259    19096    tblmig_asset    TABLE     �   CREATE TABLE tblmig_asset (
    id integer DEFAULT nextval('tblmig_asset_seq'::regclass) NOT NULL,
    lineitemid integer,
    strategyid integer,
    oldcreativeid integer,
    assetid integer,
    oldcampaignid integer,
    status integer
);
     DROP TABLE public.tblmig_asset;
       public         wayio    false    541    3                       1259    19100    tblmig_campaign_seq    SEQUENCE     u   CREATE SEQUENCE tblmig_campaign_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tblmig_campaign_seq;
       public       wayio    false    3                        1259    19102    tblmig_campaign    TABLE     �   CREATE TABLE tblmig_campaign (
    id integer DEFAULT nextval('tblmig_campaign_seq'::regclass) NOT NULL,
    campaignid integer
);
 #   DROP TABLE public.tblmig_campaign;
       public         wayio    false    543    3            �           1259    22703    tblmig_campaign_bm    TABLE     �   CREATE TABLE tblmig_campaign_bm (
    campaignid bigint NOT NULL,
    barometriccampaignid character varying(50),
    barometriccampaignname character varying(250),
    hasmultibm boolean DEFAULT false NOT NULL
);
 &   DROP TABLE public.tblmig_campaign_bm;
       public         wayio    false    3            %           1259    19127    tblmig_campaign_bm_effected    TABLE     �   CREATE TABLE tblmig_campaign_bm_effected (
    campaignid bigint NOT NULL,
    barometriccampaignid character varying(50),
    barometriccampaignname character varying(250)
);
 /   DROP TABLE public.tblmig_campaign_bm_effected;
       public         wayio    false    3            !           1259    19106    tblmig_campaignadvusermap_seq    SEQUENCE        CREATE SEQUENCE tblmig_campaignadvusermap_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tblmig_campaignadvusermap_seq;
       public       wayio    false    3            "           1259    19108    tblmig_campaignadvusermap    TABLE     �   CREATE TABLE tblmig_campaignadvusermap (
    id integer DEFAULT nextval('tblmig_campaignadvusermap_seq'::regclass) NOT NULL,
    campaignname character varying(500),
    advertiserid integer,
    userid integer
);
 -   DROP TABLE public.tblmig_campaignadvusermap;
       public         wayio    false    545    3            #           1259    19115    tblmig_campaignmap_seq    SEQUENCE     x   CREATE SEQUENCE tblmig_campaignmap_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tblmig_campaignmap_seq;
       public       wayio    false    3            $           1259    19117    tblmig_campaignmap    TABLE       CREATE TABLE tblmig_campaignmap (
    id integer DEFAULT nextval('tblmig_campaignmap_seq'::regclass) NOT NULL,
    campaignname character varying(500),
    advertiserid integer,
    campaignids text,
    userid integer,
    salesforceid character varying(500)
);
 &   DROP TABLE public.tblmig_campaignmap;
       public         wayio    false    547    3            &           1259    19130    tblmig_carriers_seq    SEQUENCE     u   CREATE SEQUENCE tblmig_carriers_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tblmig_carriers_seq;
       public       wayio    false    3            '           1259    19132    tblmig_carriers    TABLE     �   CREATE TABLE tblmig_carriers (
    id integer DEFAULT nextval('tblmig_carriers_seq'::regclass) NOT NULL,
    mobileoperatorid integer
);
 #   DROP TABLE public.tblmig_carriers;
       public         wayio    false    550    3            )           1259    19142    tblmig_creative_bm    TABLE       CREATE TABLE tblmig_creative_bm (
    creativeid bigint NOT NULL,
    barometricplacementid character varying(50),
    barometricplacementname character varying(250),
    barometricplacementcturl character varying(1000),
    barometricplacementautocreationid character varying(50)
);
 &   DROP TABLE public.tblmig_creative_bm;
       public         wayio    false    3            *           1259    19148    tblmig_creative_status    TABLE     �   CREATE TABLE tblmig_creative_status (
    creativeid bigint NOT NULL,
    oldcreativeid integer,
    oldstatus integer NOT NULL,
    newsatus boolean
);
 *   DROP TABLE public.tblmig_creative_status;
       public         wayio    false    3            (           1259    19136    tblmig_creativeproperties    TABLE       CREATE TABLE tblmig_creativeproperties (
    id integer NOT NULL,
    creativesourcetypeid integer,
    creativesource character varying(1000),
    rawfilename character varying(256),
    dimensionid integer NOT NULL,
    bannerheight integer NOT NULL,
    bannerwidth integer NOT NULL,
    banneradimageurlpath character varying(500),
    adtag text,
    creativeduration integer,
    videodeliverytype smallint,
    videoscalable smallint,
    iscompanionad boolean,
    mediabitrate integer,
    rtbapi integer NOT NULL,
    nativeiconsourcetypeid integer,
    nativerawfilename character varying(256),
    nativeiconsource character varying(512),
    nativetitle character varying(255),
    nativecta character varying(50),
    nativetext character varying(512),
    nativefallbackurl text,
    nativebundle character varying(255),
    nativestarrating double precision,
    rmproviderid integer,
    rmdisplaymode integer,
    rmsdkid integer,
    richmediauniqueid character varying(100),
    rmplacementid character varying(100)
);
 -   DROP TABLE public.tblmig_creativeproperties;
       public         wayio    false    3            +           1259    19151    tblmig_iabcategory_seq    SEQUENCE     x   CREATE SEQUENCE tblmig_iabcategory_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tblmig_iabcategory_seq;
       public       wayio    false    3            ,           1259    19153    tblmig_iabcategory    TABLE     �   CREATE TABLE tblmig_iabcategory (
    id integer DEFAULT nextval('tblmig_iabcategory_seq'::regclass) NOT NULL,
    iabcategoryid integer
);
 &   DROP TABLE public.tblmig_iabcategory;
       public         wayio    false    555    3            -           1259    19157    tblmig_isp_seq    SEQUENCE     p   CREATE SEQUENCE tblmig_isp_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tblmig_isp_seq;
       public       wayio    false    3            .           1259    19159 
   tblmig_isp    TABLE        CREATE TABLE tblmig_isp (
    id integer DEFAULT nextval('tblmig_isp_seq'::regclass) NOT NULL,
    mobileoperatorid integer
);
    DROP TABLE public.tblmig_isp;
       public         wayio    false    557    3            /           1259    19163    tblmig_lineitemmap_seq    SEQUENCE     x   CREATE SEQUENCE tblmig_lineitemmap_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tblmig_lineitemmap_seq;
       public       wayio    false    3            0           1259    19165    tblmig_lineitemmap    TABLE     �   CREATE TABLE tblmig_lineitemmap (
    id integer DEFAULT nextval('tblmig_lineitemmap_seq'::regclass) NOT NULL,
    lineitemname character varying(500),
    campaignid integer
);
 &   DROP TABLE public.tblmig_lineitemmap;
       public         wayio    false    559    3            1           1259    19172    tblmig_make_seq    SEQUENCE     q   CREATE SEQUENCE tblmig_make_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tblmig_make_seq;
       public       wayio    false    3            2           1259    19174    tblmig_make    TABLE     w   CREATE TABLE tblmig_make (
    id integer DEFAULT nextval('tblmig_make_seq'::regclass) NOT NULL,
    makeid integer
);
    DROP TABLE public.tblmig_make;
       public         wayio    false    561    3            3           1259    19178    tblmig_makedevice_seq    SEQUENCE     w   CREATE SEQUENCE tblmig_makedevice_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tblmig_makedevice_seq;
       public       wayio    false    3            4           1259    19180    tblmig_makedevice    TABLE     �   CREATE TABLE tblmig_makedevice (
    id integer DEFAULT nextval('tblmig_makedevice_seq'::regclass) NOT NULL,
    deviceid integer,
    makeid integer
);
 %   DROP TABLE public.tblmig_makedevice;
       public         wayio    false    563    3            5           1259    19184    tblmig_mediaprovider_seq    SEQUENCE     z   CREATE SEQUENCE tblmig_mediaprovider_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tblmig_mediaprovider_seq;
       public       wayio    false    3            6           1259    19186    tblmig_mediaprovider    TABLE     �   CREATE TABLE tblmig_mediaprovider (
    id integer DEFAULT nextval('tblmig_mediaprovider_seq'::regclass) NOT NULL,
    mediaproviderid integer
);
 (   DROP TABLE public.tblmig_mediaprovider;
       public         wayio    false    565    3            <           1259    19204    tblmig_optimizer_types    TABLE       CREATE TABLE tblmig_optimizer_types (
    optimizerid double precision,
    optimizername character varying(255),
    pricingtype character varying(255),
    rtpemodel character varying(255),
    rtpemodelid integer,
    targetmargin double precision,
    targetctr double precision,
    optimizerpercentage double precision,
    isoptimizedprice double precision,
    isdynamicscore double precision,
    impressionsperrun double precision,
    scoredelta double precision,
    cpcdelta double precision,
    lowbidrate double precision,
    highbidrate double precision,
    maximumstrategypercentage double precision,
    maximumpacingrate double precision,
    highpacingrate double precision,
    lowpacingrate double precision,
    minimumpacingrate double precision,
    minimumcompetition double precision,
    maximumcompetition double precision,
    minimumwinrate double precision,
    maximumwinrate double precision,
    impressionspershortrun double precision,
    dynamictargetctr double precision,
    lowstrategycompensation double precision,
    lowstrategyinitminscore double precision,
    lowstrategydynamicminscore double precision,
    maxstrategymultiplier double precision,
    minimumrate double precision,
    maximumrate double precision,
    highctrmaxcpcorcpcv double precision,
    lowctrmaxcpcorcpcv double precision,
    highctrmaxcpmrate double precision,
    lowctrmaxcpmrate double precision,
    highctrmincpmrate double precision,
    lowctrmincpmrate double precision,
    dynamictimescalemultiplier double precision,
    timescalelengtheningimpratio double precision,
    timescaleshorteningimpratio double precision,
    minimumtimescalemultiplier double precision,
    maximumtimescalemultiplier double precision,
    creative character varying(255)
);
 *   DROP TABLE public.tblmig_optimizer_types;
       public         wayio    false    3            7           1259    19190    tblmig_os_seq    SEQUENCE     o   CREATE SEQUENCE tblmig_os_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tblmig_os_seq;
       public       wayio    false    3            8           1259    19192 	   tblmig_os    TABLE     q   CREATE TABLE tblmig_os (
    id integer DEFAULT nextval('tblmig_os_seq'::regclass) NOT NULL,
    osid integer
);
    DROP TABLE public.tblmig_os;
       public         wayio    false    567    3            9           1259    19196    tblmig_osv_seq    SEQUENCE     p   CREATE SEQUENCE tblmig_osv_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tblmig_osv_seq;
       public       wayio    false    3            :           1259    19198 
   tblmig_osv    TABLE     z   CREATE TABLE tblmig_osv (
    id integer DEFAULT nextval('tblmig_osv_seq'::regclass) NOT NULL,
    osversionid integer
);
    DROP TABLE public.tblmig_osv;
       public         wayio    false    569    3            ;           1259    19202    tblmig_osv_group_seq    SEQUENCE     v   CREATE SEQUENCE tblmig_osv_group_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tblmig_osv_group_seq;
       public       wayio    false    3            �           1259    22743    tblmig_osv_group    TABLE       CREATE TABLE tblmig_osv_group (
    id integer DEFAULT nextval('tblmig_osv_group_seq'::regclass) NOT NULL,
    refosvid integer,
    osid integer,
    osversion character varying(300),
    "Group" character varying(50),
    ref_key character varying(50)
);
 $   DROP TABLE public.tblmig_osv_group;
       public         wayio    false    571    3            ?           1259    19216    tblmig_region_seq    SEQUENCE     s   CREATE SEQUENCE tblmig_region_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tblmig_region_seq;
       public       wayio    false    3            @           1259    19218    tblmig_region    TABLE     �   CREATE TABLE tblmig_region (
    id integer DEFAULT nextval('tblmig_region_seq'::regclass) NOT NULL,
    stategeotargetid integer
);
 !   DROP TABLE public.tblmig_region;
       public         wayio    false    575    3            =           1259    19210    tblmig_rtpemodel_seq    SEQUENCE     v   CREATE SEQUENCE tblmig_rtpemodel_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tblmig_rtpemodel_seq;
       public       wayio    false    3            >           1259    19212    tblmig_rtpemodel    TABLE     �   CREATE TABLE tblmig_rtpemodel (
    id integer DEFAULT nextval('tblmig_rtpemodel_seq'::regclass) NOT NULL,
    modelid integer
);
 $   DROP TABLE public.tblmig_rtpemodel;
       public         wayio    false    573    3            A           1259    19222    tblmig_strategymap_seq    SEQUENCE     x   CREATE SEQUENCE tblmig_strategymap_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tblmig_strategymap_seq;
       public       wayio    false    3            B           1259    19224    tblmig_strategymap    TABLE     &  CREATE TABLE tblmig_strategymap (
    id integer DEFAULT nextval('tblmig_strategymap_seq'::regclass) NOT NULL,
    recordid integer,
    oldcampaignid integer,
    campaignname character varying(500),
    strategyname character varying(500),
    lineitemid integer,
    onlinestatus integer
);
 &   DROP TABLE public.tblmig_strategymap;
       public         wayio    false    577    3            C           1259    19231    tblmig_user_seq    SEQUENCE     q   CREATE SEQUENCE tblmig_user_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tblmig_user_seq;
       public       wayio    false    3            D           1259    19233    tblmig_user    TABLE     w   CREATE TABLE tblmig_user (
    id integer DEFAULT nextval('tblmig_user_seq'::regclass) NOT NULL,
    userid integer
);
    DROP TABLE public.tblmig_user;
       public         wayio    false    579    3            E           1259    19237    tblmig_vendor_costtype    TABLE     �   CREATE TABLE tblmig_vendor_costtype (
    vendor character varying(255),
    product character varying(255),
    description character varying(255),
    categories character varying(255),
    costtype character varying(255)
);
 *   DROP TABLE public.tblmig_vendor_costtype;
       public         wayio    false    3            �           1259    22837    tblqa_dummyadvertiser_seq    SEQUENCE     {   CREATE SEQUENCE tblqa_dummyadvertiser_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.tblqa_dummyadvertiser_seq;
       public       wayio    false    3            �           1259    22839    tblqa_dummyadvertiser    TABLE     �   CREATE TABLE tblqa_dummyadvertiser (
    recordid integer DEFAULT nextval('tblqa_dummyadvertiser_seq'::regclass) NOT NULL,
    advertiserid integer NOT NULL
);
 )   DROP TABLE public.tblqa_dummyadvertiser;
       public         wayio    false    707    3            �           1259    22860    tempadexmarkup    VIEW     I  CREATE VIEW tempadexmarkup AS
 SELECT tbladt_mediaprovider_markup.mediaproviderid,
    tbladt_mediaprovider_markup.exchangeid AS adexchangeid,
    tbladt_mediaprovider_markup.inappcontent,
    tbladt_mediaprovider_markup.mobilewebcontent
   FROM tbladt_mediaprovider_markup
  WHERE (tbladt_mediaprovider_markup.exchangeid <> 0);
 !   DROP VIEW public.tempadexmarkup;
       public       wayio    false    700    700    700    700    3            �           1259    22864    tempalladexmarkup    VIEW     u  CREATE VIEW tempalladexmarkup AS
 SELECT tempadexmarkup.mediaproviderid,
    tempadexmarkup.adexchangeid,
    tempadexmarkup.inappcontent,
    tempadexmarkup.mobilewebcontent,
    0 AS isdefaultmarkup
   FROM tempadexmarkup
UNION
 SELECT mpm.mediaproviderid,
    adex.adexchangeid,
    mpm.inappcontent,
    mpm.mobilewebcontent,
    1 AS isdefaultmarkup
   FROM ((tbladt_mediaprovider_markup mpm
     CROSS JOIN tbladt_adexchange adex)
     LEFT JOIN tempadexmarkup tam ON (((mpm.mediaproviderid = tam.mediaproviderid) AND (adex.adexchangeid = tam.adexchangeid))))
  WHERE ((mpm.exchangeid = 0) AND (tam.adexchangeid IS NULL));
 $   DROP VIEW public.tempalladexmarkup;
       public       wayio    false    709    709    700    700    700    587    700    709    709    3            �           1259    23927    vwadt_flat_lineitem_cost    VIEW     �  CREATE VIEW vwadt_flat_lineitem_cost AS
 SELECT li.lineitemid,
    ( SELECT string_agg(concat(v.vendorname, ',', vp.productname, ',', ct.costtype, ',', to_char(lvc.startdate, 'yyyy-MM-dd HH24:mi'::text), ',', to_char(lvc.enddate, 'yyyy-MM-dd HH24:mi'::text), ',', lvc.vendorcost), '|'::text) AS string_agg
           FROM (((tbladt_lineitem_vendorcost lvc
             JOIN tbladt_vendor v ON (((lvc.vendorid = v.vendorid) AND (lvc.lineitemid = li.lineitemid) AND (v.isactive = true))))
             JOIN tbladt_vendor_product vp ON (((lvc.productid = vp.productid) AND (v.vendorid = vp.vendorid))))
             JOIN tbladt_costtype ct ON (((lvc.costtypeid = ct.costtypeid) AND (ct.isactive = true))))) AS vendorcost
   FROM tbladt_lineitem li;
 +   DROP VIEW public.vwadt_flat_lineitem_cost;
       public       wayio    false    535    691    691    691    639    600    600    600    535    535    322    322    322    322    322    322    322    3            �           1259    24981    vwadt_flat_adv_cmp_li    VIEW     	  CREATE VIEW vwadt_flat_adv_cmp_li AS
 SELECT adv.advertiserid,
    adv.name AS advertisername,
    COALESCE(adv.domain, ''::character varying) AS advertiserdomain,
    ( SELECT string_agg((tbladt_iabcategory.code)::text, '|'::text) AS string_agg
           FROM tbladt_iabcategory
          WHERE (tbladt_iabcategory.categoryid = ANY (ARRAY[adv.categoryid, adv.categoryid2]))) AS advertisercategorycodes,
    ( SELECT string_agg((tbladt_iabcategory.name)::text, '|'::text) AS string_agg
           FROM tbladt_iabcategory
          WHERE (tbladt_iabcategory.categoryid = ANY (ARRAY[adv.categoryid, adv.categoryid2]))) AS advertisercategorynames,
    adv.istestadvertiser,
    cmp.campaignid,
    cmp.name AS campaignname,
    cmp.startdate AS campaignstartdate,
    cmp.enddate AS campaignenddate,
    COALESCE(cmp.externalio, ''::character varying) AS campaignexternalio,
    cmp.approvalstatus AS campaignapprovalstatus,
    cmp.state AS campaignstate,
    cmp.status AS campaignstatus,
    li.lineitemid,
    li.lineitemname,
    li.startdate AS lineitemstartdate,
    li.enddate AS lineitemenddate,
        CASE
            WHEN (cmp.isdeleted = true) THEN true
            ELSE li.isdeleted
        END AS isdeleted,
        CASE COALESCE(li.thirdpartytype, 0)
            WHEN 1 THEN
            CASE
                WHEN (NULLIF((li.barometriccampaignid)::text, '0'::text) IS NULL) THEN 0
                ELSE 1
            END
            WHEN 2 THEN
            CASE
                WHEN (NULLIF((li.traktionid)::text, ''::text) IS NULL) THEN 0
                ELSE 2
            END
            ELSE 0
        END AS thirdpartytypeid,
    COALESCE(li.traktionid, ''::character varying) AS traktionid,
    COALESCE((li.barometriccampaignid)::bigint, (0)::bigint) AS barometriccampaignid,
    COALESCE((adv.barometricadvertiserid)::bigint, (0)::bigint) AS barometricadvertiserid,
    li.iolinebudget,
    replace((li.ratetype)::text, '^^'::text, ' '::text) AS ratetype,
    COALESCE(li.ioimpression, 0) AS ioimpression,
    COALESCE(li.ioclicks, 0) AS ioclicks,
    COALESCE(li.iocompletes, 0) AS iocompletes,
        CASE li.ratetype
            WHEN 'CPM'::text THEN COALESCE(li.clientcpm, (0)::double precision)
            WHEN 'CPC'::text THEN COALESCE(li.clientcpc, (0)::double precision)
            WHEN 'CPCV'::text THEN COALESCE(li.clientcpcv, (0)::double precision)
            WHEN 'Added^^Value'::text THEN COALESCE(li.clientcpm, (0)::double precision)
            ELSE (0)::double precision
        END AS clientrate,
    COALESCE(li.targetmargin, (0)::double precision) AS targetmargin,
    COALESCE(li.iolineitemid, ''::character varying) AS iolineitemid,
    COALESCE(li.totalimpressiongoal, (0)::bigint) AS totalimpressiongoal,
    COALESCE(li.dailyimpressiongoal, 0) AS dailyimpressiongoal,
    COALESCE(li.totalclickgoal, (0)::bigint) AS totalclickgoal,
    COALESCE(li.dailyclickgoal, 0) AS dailyclickgoal,
    COALESCE(li.totalcompletegoal, (0)::bigint) AS totalcompletegoal,
    COALESCE(li.dailycompletegoal, 0) AS dailycompletegoal,
    li.isfrequencycappingon,
        CASE
            WHEN (li.isfrequencycappingon = true) THEN COALESCE(li.frequencyvalue, 0)
            ELSE 0
        END AS frequencyimpressions,
        CASE
            WHEN (li.isfrequencycappingon = true) THEN COALESCE(li.frequencytype, 0)
            ELSE 0
        END AS frequencytimeframe,
        CASE
            WHEN (li.isfrequencycappingon = true) THEN COALESCE(li.frequencyby, 0)
            ELSE 0
        END AS frequencyby,
    li.isoptimizeron,
    COALESCE(li.targetctr, COALESCE(po.targetctr, (0)::double precision)) AS targetctr,
    COALESCE(li.optimizerpercentage, COALESCE(po.optimizerpercentage, (0)::double precision)) AS optimizerpercentage,
    COALESCE(po.isoptimizedprice, false) AS isoptimizedprice,
    COALESCE(po.isdynamicscore, false) AS isdynamicscore,
    COALESCE(po.impressionsperrun, 0) AS impressionsperrun,
    COALESCE(po.scoredelta, (0)::double precision) AS scoredelta,
    COALESCE(po.ratedelta, (0)::double precision) AS ratedelta,
    COALESCE(po.lowbidrate, (0)::double precision) AS lowbidrate,
    COALESCE(po.highbidrate, (0)::double precision) AS highbidrate,
    COALESCE(po.maximumstrategypercentage, (0)::double precision) AS maxstrategypercentage,
    COALESCE(po.maximumpacingrate, (0)::double precision) AS maxpacingrate,
    COALESCE(po.highpacingrate, (0)::double precision) AS highpacingrate,
    COALESCE(po.lowpacingrate, (0)::double precision) AS lowpacingrate,
    COALESCE(po.minimumpacingrate, (0)::double precision) AS minpacingrate,
    COALESCE(po.minimumcompetition, (0)::double precision) AS mincompetition,
    COALESCE(po.maximumcompetition, (0)::double precision) AS maxcompetition,
    COALESCE(po.minimumwinrate, (0)::double precision) AS minwinrate,
    COALESCE(po.maximumwinrate, (0)::double precision) AS maxwinrate,
    COALESCE(po.impressionspershortrun, 0) AS impressionspershortrun,
    COALESCE(po.dynamictargetctr, false) AS dynamictargetctr,
    COALESCE(po.lowstrategycompensation, false) AS lowstrategycompensation,
    COALESCE(po.lowstrategyinitminscore, (0)::double precision) AS lowstrategyinitminscore,
    COALESCE(po.lowstrategydynamicminscore, false) AS lowstrategydynamicminscore,
    COALESCE(po.maxstrategymultiplier, (0)::double precision) AS maxstrategymultiplier,
    COALESCE(po.minimumrate, (0)::double precision) AS minrate,
    COALESCE(po.maximumrate, (0)::double precision) AS maxrate,
    COALESCE(po.dynamictimescalemultiplier, false) AS dynamictimescalemultiplier,
    COALESCE(po.timescalelengtheningimpratio, (0.00)::double precision) AS timescalelengtheningimpratio,
    COALESCE(po.timescaleshorteningimpratio, (0.00)::double precision) AS timescaleshorteningimpratio,
    COALESCE(po.minimumtimescalemultiplier, (0.00)::double precision) AS mintimescalemultiplier,
    COALESCE(po.maximumtimescalemultiplier, (0.00)::double precision) AS maxtimescalemultiplier,
    li.ispricefloorfilter,
    COALESCE(li.ispriority, false) AS isprioritylineitem,
    li.approvalstatus AS lineitemapprovalstatus,
    li.state AS lineitemstate,
    li.status AS lineitemstatus,
    COALESCE(flc.vendorcost, ''::text) AS vendorcost,
    now() AS lastupdatetime
   FROM ((((tbladt_advertiser adv
     JOIN tbladt_campaign cmp ON (((adv.advertiserid = cmp.advertiserid) AND (cmp.isrejected = false))))
     JOIN tbladt_lineitem li ON (((cmp.campaignid = li.campaignid) AND (li.isrejected = false))))
     JOIN vwadt_flat_lineitem_cost flc ON ((li.lineitemid = flc.lineitemid)))
     LEFT JOIN tbladt_platform_optimizer po ON ((li.optimizerid = po.optimizerid)));
 (   DROP VIEW public.vwadt_flat_adv_cmp_li;
       public       wayio    false    639    639    639    639    639    639    639    639    639    639    639    639    634    634    634    598    598    598    598    598    598    598    598    598    598    598    588    588    588    588    588    588    588    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    381    639    639    639    639    724    724    639    639    639    639    639    639    639    639    639    639    639    639    639    639    639    639    639    639    639    639    639    639    639    3            �           1259    25173    vwadt_flat_crt_displayad    VIEW     �  CREATE VIEW vwadt_flat_crt_displayad AS
 SELECT cafd.creativeid,
    COALESCE(cafd.mediasource, ''::text) AS creativeadsource,
    COALESCE(cafd.mediaproviderid, 0) AS richmediaproviderid,
    COALESCE(crt.api, 0) AS richmediasdk,
    COALESCE(cafd.uniquecreativeid, ''::character varying) AS richmediauniquecreativeid,
    COALESCE(cafd.placementid, ''::character varying) AS richmediaplacementid,
    cafd.dimensionid AS creativeformatid,
    cd.width AS creativewidth,
    cd.height AS creativeheight
   FROM ((tbladt_creative_adformat_display cafd
     JOIN tbladt_creative crt ON ((cafd.creativeid = crt.creativeid)))
     JOIN tbladt_creativedimension cd ON ((cafd.dimensionid = cd.dimensionid)));
 +   DROP VIEW public.vwadt_flat_crt_displayad;
       public       wayio    false    602    604    262    262    262    262    262    604    604    602    262    3            �           1259    24966    vwadt_flat_crt    VIEW     �'  CREATE VIEW vwadt_flat_crt AS
 SELECT crt.creativeid,
    adv.advertiserid,
    adv.name AS advertisername,
    cmp.campaignid,
    cmp.name AS campaignname,
    0 AS lineitemid,
    ''::text AS lineitemname,
    crt.creativename,
    crt.startdate AS creativestartdate,
    crt.enddate AS creativeenddate,
    COALESCE(crt.adformatid, 0) AS adformat,
    crt.creativetypeid AS creativetype,
    COALESCE(crt.clickthroughurl, ''::character varying) AS clickthroughurl,
    COALESCE(crt.landingpageurl, ''::character varying) AS landingpageurl,
    COALESCE(crt.isssl, true) AS ssltype,
    COALESCE(
        CASE
            WHEN ((cmp.barometriccampaignid)::text = ''::text) THEN '0'::character varying
            ELSE cmp.barometriccampaignid
        END, '0'::character varying) AS barometriccampaignid,
    COALESCE(
        CASE
            WHEN ((crt.barometricplacementid)::text = ''::text) THEN '0'::character varying
            ELSE crt.barometricplacementid
        END, '0'::character varying) AS barometricplacementid,
    COALESCE(crt.barometricplacementcturl, ''::character varying) AS barometricclickthroughurl,
    crt.state AS creativestate,
    crt.status AS creativestatus,
    crt.isdeleted,
    crt.istransactioncompleted,
    COALESCE(crtp.creativemediatypeid, 0) AS mediatype,
    COALESCE(crtp.creativemarkuptypeid, 0) AS markuptype,
    COALESCE(vcd.creativewidth, 0) AS creativewidth,
    COALESCE(vcd.creativeheight, 0) AS creativeheight,
    COALESCE(crtp.creativesource, ''::text) AS creativeadsource,
    COALESCE(crtp.adtag, ''::text) AS htmljsadtag,
    COALESCE(crtp.previewurl, ''::character varying) AS htmljspreviewurl,
        CASE
            WHEN ((crt.mediatypeid = 3) AND (crtp.creativesourcetypeid = ANY (ARRAY[1, 2]))) THEN 1
            WHEN ((crt.mediatypeid = 3) AND (crtp.creativesourcetypeid = ANY (ARRAY[3, 4]))) THEN 2
            WHEN ((crt.mediatypeid = 4) AND (crtp.nativevideosourcetypeid = ANY (ARRAY[1, 2]))) THEN 1
            WHEN ((crt.mediatypeid = 4) AND (crtp.nativevideosourcetypeid = ANY (ARRAY[3, 4]))) THEN 2
            ELSE 0
        END AS videosourcetype,
    COALESCE(
        CASE
            WHEN (tvc.isvideocreative = 1) THEN crtp.videoduration
            ELSE 0
        END, 0) AS videoduration,
    COALESCE(
        CASE
            WHEN (tvc.isvideocreative = 1) THEN crtp.videodeliverytype
            ELSE 0
        END, 0) AS videodeliverytype,
    COALESCE(
        CASE
            WHEN (tvc.isvideocreative = 1) THEN crtp.videomimetype
            ELSE 0
        END, 0) AS videomimetype,
    COALESCE(
        CASE
            WHEN (tvc.isvideocreative = 1) THEN crtp.videoisscalable
            ELSE 0
        END, 0) AS videoscalable,
    COALESCE(
        CASE
            WHEN (tvc.isvideocreative = 1) THEN crtp.videoapi
            ELSE 0
        END, 0) AS videoapi,
    COALESCE(
        CASE
            WHEN (tvc.isvideocreative = 1) THEN crtp.mediabitrate
            ELSE 0
        END, 0) AS mediabitrate,
    COALESCE(cpad.cadsource, ''::text) AS videocompanionadsource,
    COALESCE(cpad.cadwidth, 0) AS videocompanionadwidth,
    COALESCE(cpad.cadheight, 0) AS videocompanionadheight,
    COALESCE(cpad.cadclickthroughurl, ''::character varying) AS videocompanionadclickurl,
    COALESCE(
        CASE
            WHEN (crt.creativetypeid = 4) THEN crtp.creativesource
            ELSE ''::text
        END, ''::text) AS nativeimagesource,
    COALESCE(
        CASE
            WHEN (crt.creativetypeid = 4) THEN crtp.width
            ELSE 0
        END, 0) AS nativeimagewidth,
    COALESCE(
        CASE
            WHEN (crt.creativetypeid = 4) THEN crtp.height
            ELSE 0
        END, 0) AS nativeimageheight,
    COALESCE(crtp.nativeiconsource, ''::text) AS nativeiconsource,
    COALESCE(crtp.nativeiconwidth, 0) AS nativeiconwidth,
    COALESCE(crtp.nativeiconheight, 0) AS nativeiconheight,
    COALESCE(crtp.nativelogosource, ''::text) AS nativelogosource,
    COALESCE(crtp.nativelogowidth, 0) AS nativelogowidth,
    COALESCE(crtp.nativelogoheight, 0) AS nativelogoheight,
    COALESCE(crtp.nativetitle, ''::character varying) AS nativetitle,
    COALESCE(crtp.nativetext, ''::character varying) AS nativetext,
    COALESCE(crtp.nativedescription, ''::text) AS nativedescription,
    COALESCE(crtp.nativecalltoaction, ''::character varying) AS nativecalltoaction,
    COALESCE(crtp.nativefallbackurl, ''::character varying) AS nativefallbackurl,
    COALESCE(crtp.nativebundleid, ''::character varying) AS nativebundleid,
    COALESCE(crtp.nativestarrating, (0.0)::double precision) AS nativestarrating,
    COALESCE(
        CASE
            WHEN (tvc.isvideocreative = 1) THEN crtp.nativevideosource
            ELSE ''::text
        END, ''::text) AS nativevideosource,
    COALESCE(crtp.rmproviderid, 0) AS richmediaproviderid,
    COALESCE(crtp.rmdisplaymode, 0) AS richmediadisplaymode,
    COALESCE(crtp.rmsdkid, 0) AS richmediasdk,
    COALESCE(crtp.rmuniquecreativeid, ''::character varying) AS richmediauniquecreativeid,
    COALESCE(crtp.rmplacementid, ''::character varying) AS richmediaplacementid,
    COALESCE(iab.iabcreativeattribute, ''::text) AS iabcreativeattribute,
    COALESCE(adx.adxcreativeattribute, ''::text) AS adxcreativeattribute,
    COALESCE(cv.creativevendor, ''::text) AS creativevendor,
    COALESCE(vt.videotrackingevents, ''::text) AS videotrackingevents,
    COALESCE(ac.generictrackingtags, ''::text) AS generictrackingtags,
    (COALESCE(anca.appnexus_objectid, 0))::bigint AS appnexus_creativeid
   FROM ((((((((((((tbladt_creative crt
     JOIN vwadt_flat_crt_displayad vcd ON ((vcd.creativeid = crt.creativeid)))
     JOIN tbladt_campaign cmp ON (((crt.campaignid = cmp.campaignid) AND (COALESCE(crt.adformatid, 0) = 1) AND (crt.isrejected = false))))
     JOIN tbladt_advertiser adv ON ((cmp.advertiserid = adv.advertiserid)))
     LEFT JOIN tbladt_creativeproperties crtp ON ((crt.creativeid = crtp.creativeid)))
     LEFT JOIN tbladt_creative_companionad cpad ON (((crt.creativeid = cpad.creativeid) AND (crtp.iscompanionad = true))))
     LEFT JOIN tbladt_adxappnexus_creativeapproval anca ON (((crt.creativeid = anca.creativeid) AND (anca.isdeletefromappnexus = false) AND (anca.approvalstatus = 1) AND (anca.appnexus_objectid IS NOT NULL))))
     JOIN ( SELECT crt_1.creativeid,
                CASE crt_1.mediatypeid
                    WHEN 3 THEN 1
                    WHEN 4 THEN
                    CASE
                        WHEN (crtp_1.nativevideosourcetypeid > 0) THEN 1
                        ELSE 0
                    END
                    ELSE 0
                END AS isvideocreative
           FROM (tbladt_creative crt_1
             LEFT JOIN tbladt_creativeproperties crtp_1 ON ((crt_1.creativeid = crtp_1.creativeid)))) tvc ON ((tvc.creativeid = crt.creativeid)))
     LEFT JOIN ( SELECT crt_1.creativeid,
            COALESCE(string_agg((ca.attributecodeid)::text, '|'::text), ''::text) AS iabcreativeattribute
           FROM (( SELECT tbladt_creative.creativeid,
                    unnest(string_to_array(tbladt_creative.creativeattributeids, ','::text)) AS item
                   FROM tbladt_creative) crt_1
             JOIN tbladt_creativeattribute ca ON ((((crt_1.item)::integer = ca.attributeid) AND ((ca.attributecode)::text = 'IAB'::text))))
          GROUP BY crt_1.creativeid) iab ON ((crt.creativeid = iab.creativeid)))
     LEFT JOIN ( SELECT crt_1.creativeid,
            COALESCE(string_agg((ca.attributecodeid)::text, '|'::text), ''::text) AS adxcreativeattribute
           FROM (( SELECT tbladt_creative.creativeid,
                    unnest(string_to_array(tbladt_creative.creativeattributeids, ','::text)) AS item
                   FROM tbladt_creative) crt_1
             JOIN tbladt_creativeattribute ca ON ((((crt_1.item)::integer = ca.attributeid) AND ((ca.attributecode)::text = 'Adx'::text))))
          GROUP BY crt_1.creativeid) adx ON ((crt.creativeid = adx.creativeid)))
     LEFT JOIN ( SELECT crt_1.creativeid,
            COALESCE(string_agg((ca.vendorcode)::text, '|'::text), ''::text) AS creativevendor
           FROM (( SELECT tbladt_creative.creativeid,
                    unnest(string_to_array(tbladt_creative.creativevendorids, ','::text)) AS item
                   FROM tbladt_creative) crt_1
             JOIN tbladt_creativevendor ca ON (((crt_1.item)::integer = ca.vendorid)))
          GROUP BY crt_1.creativeid) cv ON ((crt.creativeid = cv.creativeid)))
     LEFT JOIN ( SELECT crt_1.creativeid,
            COALESCE(string_agg(concat(cret.trackingid, ',', cret.trackingtag), '|'::text), ''::text) AS videotrackingevents
           FROM ((tbladt_creative crt_1
             JOIN tbladt_creative_eventtracking cret ON ((cret.creativeid = crt_1.creativeid)))
             JOIN tbladt_creative_trackingmaster crtm ON (((cret.trackingid = crtm.trackingid) AND (NULLIF(cret.trackingtag, ''::text) IS NOT NULL) AND (crtm.isactive = true) AND (crtm.isvideotracking = true))))
          GROUP BY crt_1.creativeid) vt ON (((crt.creativeid = vt.creativeid) AND (tvc.isvideocreative = 1))))
     LEFT JOIN ( SELECT crt_1.creativeid,
            ('{"tags": ['::text || string_agg(concat('{"type":"', cret.trackingid, '", "markup":"', replace(replace(replace(replace(cret.trackingtag, chr(13), ' '::text), chr(10), ' '::text), '\'::text, '\\'::text), '"'::text, '\"'::text), '", "mediatype":"',
                CASE COALESCE(cret.mediatype, 0)
                    WHEN 0 THEN 'none'::text
                    WHEN 1 THEN 'all'::text
                    WHEN 2 THEN 'app'::text
                    WHEN 3 THEN 'site'::text
                    ELSE 'none'::text
                END, '"}'), ','::text)) AS generictrackingtags
           FROM ((tbladt_creative crt_1
             JOIN tbladt_creative_eventtracking cret ON ((cret.creativeid = crt_1.creativeid)))
             JOIN tbladt_creative_trackingmaster crtm ON (((cret.trackingid = crtm.trackingid) AND (NULLIF(cret.trackingtag, ''::text) IS NOT NULL) AND (crtm.isactive = true) AND (crtm.isvideotracking = false))))
          GROUP BY crt_1.creativeid) ac ON ((crt.creativeid = ac.creativeid)));
 !   DROP VIEW public.vwadt_flat_crt;
       public       wayio    false    258    258    258    258    258    258    258    258    258    258    258    258    258    258    258    258    258    258    258    258    258    766    766    766    623    623    623    616    616    616    616    608    608    603    603    603    602    602    602    602    602    602    602    602    602    602    602    602    602    602    602    602    602    602    602    602    598    598    598    598    589    589    589    589    588    588    267    267    267    267    267    258    258    258    258    258    258    258    258    258    258    258    258    258    258    258    3            �           1259    24956    vwadt_flat_crt_generic    VIEW     Y  CREATE VIEW vwadt_flat_crt_generic AS
 SELECT crt.creativeid,
    adv.advertiserid,
    adv.name AS advertisername,
    cmp.campaignid,
    cmp.name AS campaignname,
    0 AS lineitemid,
    ''::text AS lineitemname,
    crt.creativename,
    crt.adformatid AS adformat,
        CASE
            WHEN ((crt.startdate IS NULL) OR (crt.enddate IS NULL)) THEN cmp.startdate
            ELSE crt.startdate
        END AS creativestartdate,
        CASE
            WHEN ((crt.startdate IS NULL) OR (crt.enddate IS NULL)) THEN cmp.enddate
            ELSE crt.enddate
        END AS creativeenddate,
    crt.creativetypeid AS creativetype,
        CASE
            WHEN (crt.adformatid = ANY (ARRAY[1, 2, 3])) THEN
            CASE
                WHEN (COALESCE(crt.api, 0) = ANY (ARRAY[3, 5])) THEN 5
                ELSE 1
            END
            WHEN (crt.adformatid = 4) THEN 3
            WHEN (crt.adformatid = 5) THEN 4
            ELSE 0
        END AS mediatype,
    COALESCE(crt.markuptypeid, 0) AS markuptype,
    COALESCE(crt.previewurl, ''::character varying) AS htmljspreviewurl,
    COALESCE(crt.clickthroughurl, ''::character varying) AS clickthroughurl,
    COALESCE(crt.landingpageurl, ''::character varying) AS landingpageurl,
    COALESCE(crt.isssl, true) AS ssltype,
    COALESCE(
        CASE
            WHEN ((cmp.barometriccampaignid)::text = ''::text) THEN '0'::character varying
            ELSE cmp.barometriccampaignid
        END, '0'::character varying) AS barometriccampaignid,
    COALESCE(
        CASE
            WHEN ((crt.barometricplacementid)::text = ''::text) THEN '0'::character varying
            ELSE crt.barometricplacementid
        END, '0'::character varying) AS barometricplacementid,
    COALESCE(crt.barometricplacementcturl, ''::character varying) AS barometricclickthroughurl,
    crt.state AS creativestate,
    crt.status AS creativestatus,
    crt.isdeleted,
    COALESCE(crt.api, 0) AS creativeapi,
    COALESCE(crt.overriddenadtag, ''::text) AS htmljsadtag,
    (COALESCE(anca.appnexus_objectid, 0))::bigint AS appnexus_creativeid,
    COALESCE(iab.iabcreativeattribute, ''::text) AS iabcreativeattribute,
    COALESCE(adx.adxcreativeattribute, ''::text) AS adxcreativeattribute,
    COALESCE(cv.creativevendor, ''::text) AS creativevendor,
    COALESCE(af.adfeature, ''::text) AS adfeature
   FROM (((((((tbladt_creative crt
     JOIN tbladt_campaign cmp ON (((crt.campaignid = cmp.campaignid) AND (COALESCE(crt.adformatid, 0) > 0) AND (crt.isrejected = false))))
     JOIN tbladt_advertiser adv ON ((cmp.advertiserid = adv.advertiserid)))
     LEFT JOIN tbladt_adxappnexus_creativeapproval anca ON (((crt.creativeid = anca.creativeid) AND (anca.isdeletefromappnexus = false) AND (anca.approvalstatus = 1) AND (anca.appnexus_objectid IS NOT NULL))))
     LEFT JOIN ( SELECT crt_1.creativeid,
            COALESCE(string_agg((ca.attributecodeid)::text, '|'::text), ''::text) AS iabcreativeattribute
           FROM (( SELECT tbladt_creative.creativeid,
                    unnest(string_to_array(tbladt_creative.creativeattributeids, ','::text)) AS item
                   FROM tbladt_creative) crt_1
             JOIN tbladt_creativeattribute ca ON ((((crt_1.item)::integer = ca.attributeid) AND ((ca.attributecode)::text = 'IAB'::text))))
          GROUP BY crt_1.creativeid) iab ON ((crt.creativeid = iab.creativeid)))
     LEFT JOIN ( SELECT crt_1.creativeid,
            COALESCE(string_agg((ca.attributecodeid)::text, '|'::text), ''::text) AS adxcreativeattribute
           FROM (( SELECT tbladt_creative.creativeid,
                    unnest(string_to_array(tbladt_creative.creativeattributeids, ','::text)) AS item
                   FROM tbladt_creative) crt_1
             JOIN tbladt_creativeattribute ca ON ((((crt_1.item)::integer = ca.attributeid) AND ((ca.attributecode)::text = 'Adx'::text))))
          GROUP BY crt_1.creativeid) adx ON ((crt.creativeid = adx.creativeid)))
     LEFT JOIN ( SELECT crt_1.creativeid,
            COALESCE(string_agg((ca.vendorcode)::text, '|'::text), ''::text) AS creativevendor
           FROM (( SELECT tbladt_creative.creativeid,
                    unnest(string_to_array(tbladt_creative.creativevendorids, ','::text)) AS item
                   FROM tbladt_creative) crt_1
             JOIN tbladt_creativevendor ca ON (((crt_1.item)::integer = ca.vendorid)))
          GROUP BY crt_1.creativeid) cv ON ((crt.creativeid = cv.creativeid)))
     LEFT JOIN ( SELECT crt_1.creativeid,
            COALESCE(string_agg((ca.adfeature)::text, '|'::text), ''::text) AS adfeature
           FROM (( SELECT tbladt_creative.creativeid,
                    unnest(string_to_array(tbladt_creative.adfeatureids, ','::text)) AS item
                   FROM tbladt_creative) crt_1
             JOIN tbladt_creative_adfeature ca ON (((crt_1.item)::integer = ca.adfeatureid)))
          GROUP BY crt_1.creativeid) af ON ((crt.creativeid = cv.creativeid)));
 )   DROP VIEW public.vwadt_flat_crt_generic;
       public       wayio    false    602    602    602    602    602    602    602    602    602    598    598    598    598    598    598    589    589    589    589    588    588    610    610    608    608    603    603    603    602    602    602    602    602    602    602    602    602    602    602    602    602    602    3            �           1259    24997    vwadt_flat_crt_setup    VIEW     G  CREATE VIEW vwadt_flat_crt_setup AS
 SELECT vwadt_flat_crt.creativeid,
    vwadt_flat_crt.advertiserid,
    vwadt_flat_crt.advertisername,
    vwadt_flat_crt.campaignid,
    vwadt_flat_crt.campaignname,
    vwadt_flat_crt.lineitemid,
    vwadt_flat_crt.lineitemname,
    vwadt_flat_crt.creativename,
    vwadt_flat_crt.creativestartdate,
    vwadt_flat_crt.creativeenddate,
    vwadt_flat_crt.adformat,
    vwadt_flat_crt.creativetype,
    vwadt_flat_crt.mediatype,
    vwadt_flat_crt.markuptype,
    vwadt_flat_crt.iabcreativeattribute,
    vwadt_flat_crt.adxcreativeattribute,
    ''::text AS adfeature,
    vwadt_flat_crt.creativevendor,
    vwadt_flat_crt.clickthroughurl,
    vwadt_flat_crt.landingpageurl,
    vwadt_flat_crt.ssltype,
    vwadt_flat_crt.barometriccampaignid,
    vwadt_flat_crt.barometricplacementid,
    vwadt_flat_crt.barometricclickthroughurl,
    vwadt_flat_crt.creativestate,
    vwadt_flat_crt.creativestatus,
    vwadt_flat_crt.isdeleted,
    vwadt_flat_crt.istransactioncompleted,
    0 AS creativeapi,
    vwadt_flat_crt.creativewidth,
    vwadt_flat_crt.creativeheight,
    vwadt_flat_crt.creativeadsource,
    vwadt_flat_crt.htmljsadtag,
    vwadt_flat_crt.htmljspreviewurl,
    ''::text AS iframebuster,
    vwadt_flat_crt.videosourcetype,
    vwadt_flat_crt.videoduration,
    vwadt_flat_crt.videodeliverytype,
    vwadt_flat_crt.videomimetype,
    vwadt_flat_crt.videoscalable,
    vwadt_flat_crt.videoapi,
    vwadt_flat_crt.mediabitrate,
    vwadt_flat_crt.videocompanionadsource,
    vwadt_flat_crt.videocompanionadwidth,
    vwadt_flat_crt.videocompanionadheight,
    vwadt_flat_crt.videocompanionadclickurl,
    vwadt_flat_crt.videotrackingevents,
    vwadt_flat_crt.nativeimagesource,
    vwadt_flat_crt.nativeimagewidth,
    vwadt_flat_crt.nativeimageheight,
    vwadt_flat_crt.nativeiconsource,
    vwadt_flat_crt.nativeiconwidth,
    vwadt_flat_crt.nativeiconheight,
    vwadt_flat_crt.nativelogosource,
    vwadt_flat_crt.nativelogowidth,
    vwadt_flat_crt.nativelogoheight,
    vwadt_flat_crt.nativetitle,
    vwadt_flat_crt.nativetext,
    vwadt_flat_crt.nativedescription,
    vwadt_flat_crt.nativecalltoaction,
    vwadt_flat_crt.nativefallbackurl,
    vwadt_flat_crt.nativebundleid,
    vwadt_flat_crt.nativestarrating,
    vwadt_flat_crt.nativevideosource,
    vwadt_flat_crt.richmediaproviderid,
    vwadt_flat_crt.richmediadisplaymode,
    vwadt_flat_crt.richmediasdk,
    vwadt_flat_crt.richmediauniquecreativeid,
    vwadt_flat_crt.richmediaplacementid,
    vwadt_flat_crt.generictrackingtags,
    vwadt_flat_crt.appnexus_creativeid,
    0 AS creativeformatid
   FROM vwadt_flat_crt
  WHERE (vwadt_flat_crt.adformat > 0)
UNION ALL
 SELECT vwadt_flat_crt_generic.creativeid,
    vwadt_flat_crt_generic.advertiserid,
    vwadt_flat_crt_generic.advertisername,
    vwadt_flat_crt_generic.campaignid,
    vwadt_flat_crt_generic.campaignname,
    vwadt_flat_crt_generic.lineitemid,
    vwadt_flat_crt_generic.lineitemname,
    vwadt_flat_crt_generic.creativename,
    vwadt_flat_crt_generic.creativestartdate,
    vwadt_flat_crt_generic.creativeenddate,
    vwadt_flat_crt_generic.adformat,
    vwadt_flat_crt_generic.creativetype,
    vwadt_flat_crt_generic.mediatype,
    vwadt_flat_crt_generic.markuptype,
    vwadt_flat_crt_generic.iabcreativeattribute,
    vwadt_flat_crt_generic.adxcreativeattribute,
    vwadt_flat_crt_generic.adfeature,
    vwadt_flat_crt_generic.creativevendor,
    vwadt_flat_crt_generic.clickthroughurl,
    vwadt_flat_crt_generic.landingpageurl,
    vwadt_flat_crt_generic.ssltype,
    vwadt_flat_crt_generic.barometriccampaignid,
    vwadt_flat_crt_generic.barometricplacementid,
    vwadt_flat_crt_generic.barometricclickthroughurl,
    vwadt_flat_crt_generic.creativestate,
    vwadt_flat_crt_generic.creativestatus,
    vwadt_flat_crt_generic.isdeleted,
    true AS istransactioncompleted,
    vwadt_flat_crt_generic.creativeapi,
    0 AS creativewidth,
    0 AS creativeheight,
    ''::text AS creativeadsource,
    vwadt_flat_crt_generic.htmljsadtag,
    vwadt_flat_crt_generic.htmljspreviewurl,
    ''::text AS iframebuster,
    0 AS videosourcetype,
    0 AS videoduration,
    0 AS videodeliverytype,
    0 AS videomimetype,
    0 AS videoscalable,
    0 AS videoapi,
    0 AS mediabitrate,
    ''::text AS videocompanionadsource,
    0 AS videocompanionadwidth,
    0 AS videocompanionadheight,
    ''::character varying AS videocompanionadclickurl,
    ''::text AS videotrackingevents,
    ''::text AS nativeimagesource,
    0 AS nativeimagewidth,
    0 AS nativeimageheight,
    ''::text AS nativeiconsource,
    0 AS nativeiconwidth,
    0 AS nativeiconheight,
    ''::text AS nativelogosource,
    0 AS nativelogowidth,
    0 AS nativelogoheight,
    ''::character varying AS nativetitle,
    ''::character varying AS nativetext,
    ''::text AS nativedescription,
    ''::character varying AS nativecalltoaction,
    ''::character varying AS nativefallbackurl,
    ''::character varying AS nativebundleid,
    0.00 AS nativestarrating,
    ''::text AS nativevideosource,
    0 AS richmediaproviderid,
    0 AS richmediadisplaymode,
    0 AS richmediasdk,
    ''::character varying AS richmediauniquecreativeid,
    ''::character varying AS richmediaplacementid,
    ''::text AS generictrackingtags,
    vwadt_flat_crt_generic.appnexus_creativeid,
    0 AS creativeformatid
   FROM vwadt_flat_crt_generic
  WHERE (vwadt_flat_crt_generic.adformat = 0);
 '   DROP VIEW public.vwadt_flat_crt_setup;
       public       wayio    false    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    752    752    752    752    752    752    752    752    752    752    752    752    752    752    752    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    753    752    752    752    752    752    752    752    752    752    752    752    752    752    752    752    752    3            �           1259    24047    vwadt_flat_stg_cost    VIEW     �  CREATE VIEW vwadt_flat_stg_cost AS
 SELECT s.strategyid,
        CASE
            WHEN (s.isallvendorcost = true) THEN ( SELECT vwadt_flat_lineitem_cost.vendorcost
               FROM vwadt_flat_lineitem_cost
              WHERE (vwadt_flat_lineitem_cost.lineitemid = s.lineitemid))
            ELSE tc.associatedcost
        END AS associatedcost
   FROM (tbladt_strategy s
     LEFT JOIN ( SELECT svc.strategyid,
            lvc.lineitemid,
            string_agg(concat(v.vendorname, ',', vp.productname, ',', ct.costtype, ',', to_char(lvc.startdate, 'yyyy-MM-dd HH24:mi'::text), ',', to_char(lvc.enddate, 'yyyy-MM-dd HH24:mi'::text), ',', lvc.vendorcost), '|'::text) AS associatedcost
           FROM ((((tbladt_lineitem_vendorcost lvc
             JOIN tbladt_strategy_vendorcost svc ON ((lvc.costid = svc.costid)))
             JOIN tbladt_vendor v ON (((lvc.vendorid = v.vendorid) AND (v.isactive = true))))
             JOIN tbladt_vendor_product vp ON (((lvc.productid = vp.productid) AND (v.vendorid = vp.vendorid))))
             JOIN tbladt_costtype ct ON (((lvc.costtypeid = ct.costtypeid) AND (ct.isactive = true))))
          GROUP BY svc.strategyid, lvc.lineitemid) tc ON (((s.strategyid = tc.strategyid) AND (s.lineitemid = tc.lineitemid))));
 &   DROP VIEW public.vwadt_flat_stg_cost;
       public       wayio    false    691    691    677    677    677    600    600    600    535    535    535    520    520    322    322    322    322    322    322    322    322    724    724    691    3            �           1259    24052    vwadt_flat_stg    VIEW     �  CREATE VIEW vwadt_flat_stg AS
 SELECT stg.strategyid,
    stg.lineitemid,
    cmp.advertiserid,
    stg.strategyname,
    stg.startdate AS strategystartdate,
    stg.enddate AS strategyenddate,
    COALESCE(stg.highlowctr, 0) AS highlowctr,
    COALESCE(stg.pricingtype, ''::character varying) AS strategypricingtype,
    stg.maxrate AS strategymaxrate,
    COALESCE(stg.minimumcpmrate, (0)::numeric) AS minimumcpmrate,
    COALESCE(stg.maximumcpmrate, (0)::numeric) AS maximumcpmrate,
    (COALESCE(stg.percentage, (0)::double precision) * (100)::double precision) AS strategypercentage,
    COALESCE(stg.rtpelearnerimpressionpercent, COALESCE(pv.rtpelearnerimpressionpercent, (0.00)::double precision)) AS learnerpercent,
    COALESCE(rol.timeunit, 0) AS timeframe,
    COALESCE(rol.impressionpercent, (0.00)::double precision) AS cappercent,
    floor(((COALESCE(li.totalimpressiongoal, (0)::bigint))::double precision * COALESCE(stg.percentage, (0)::double precision))) AS strategytotalimpressiongoal,
    floor(((COALESCE(li.dailyimpressiongoal, 0))::double precision * COALESCE(stg.percentage, (0)::double precision))) AS strategydailyimpressiongoal,
    floor(((COALESCE(li.totalclickgoal, (0)::bigint))::double precision * COALESCE(stg.percentage, (0)::double precision))) AS strategytotalclickgoal,
    floor(((COALESCE(li.dailyclickgoal, 0))::double precision * COALESCE(stg.percentage, (0)::double precision))) AS strategydailyclickgoal,
    floor(((COALESCE(li.totalcompletegoal, (0)::bigint))::double precision * COALESCE(stg.percentage, (0)::double precision))) AS strategytotalcompletegoal,
    floor(((COALESCE(li.dailycompletegoal, 0))::double precision * COALESCE(stg.percentage, (0)::double precision))) AS strategydailycompletegoal,
        CASE
            WHEN (stg.isfrequencycappingon IS NULL) THEN COALESCE(li.isfrequencycappingon, false)
            ELSE stg.isfrequencycappingon
        END AS isfrequencycappingon,
        CASE
            WHEN (stg.isfrequencycappingon = true) THEN COALESCE(stg.frequencyvalue, 0)
            WHEN (li.isfrequencycappingon = true) THEN COALESCE(li.frequencyvalue, 0)
            ELSE 0
        END AS frequencyimpressions,
        CASE
            WHEN (stg.isfrequencycappingon = true) THEN COALESCE(stg.frequencytype, 0)
            WHEN (li.isfrequencycappingon = true) THEN COALESCE(li.frequencytype, 0)
            ELSE 0
        END AS frequencytimeframe,
        CASE
            WHEN (stg.isfrequencycappingon = true) THEN COALESCE(stg.frequencyby, 0)
            WHEN (li.isfrequencycappingon = true) THEN COALESCE(li.frequencyby, 0)
            ELSE 0
        END AS frequencyby,
    stg.state AS strategystate,
    stg.status AS strategystatus,
    stg.isdeleted,
    COALESCE(fsc.associatedcost, ''::text) AS associatedcost,
    COALESCE(stg.dailylosscap, (0)::double precision) AS dailylosscap,
    COALESCE(stg.skippability, '-1'::integer) AS skippability,
    cmp.barometriccampaignid
   FROM (((((tbladt_strategy stg
     JOIN tbladt_lineitem li ON (((stg.lineitemid = li.lineitemid) AND (stg.isrejected = false))))
     JOIN tbladt_campaign cmp ON ((li.campaignid = cmp.campaignid)))
     JOIN vwadt_flat_stg_cost fsc ON ((stg.strategyid = fsc.strategyid)))
     LEFT JOIN ( SELECT tbladt_platformvariable.rtpelearnerimpressionpercent
           FROM tbladt_platformvariable) pv ON ((1 = 1)))
     LEFT JOIN ( SELECT tbladt_rtpeofflearner.timeunit,
            tbladt_rtpeofflearner.impressionpercent
           FROM tbladt_rtpeofflearner) rol ON ((1 = 1)));
 !   DROP VIEW public.vwadt_flat_stg;
       public       wayio    false    677    598    598    598    356    413    413    677    639    639    639    639    639    639    639    639    639    677    677    677    677    677    677    677    677    677    677    677    677    677    677    677    677    639    745    745    677    677    677    677    639    639    3            �           1259    23937    vwadt_flat_stg_adexchange    VIEW     �  CREATE VIEW vwadt_flat_stg_adexchange AS
 SELECT t.strategyid,
    COALESCE(( SELECT string_agg((aex.name)::text, '|'::text) AS string_agg
           FROM (tbladt_adexchange aex
             JOIN tbladt_strategy_adexchange stex ON (((aex.adexchangeid = stex.adexchangeid) AND (stex.strategyid = t.strategyid) AND (aex.status = 1))))), ''::text) AS adexchanges
   FROM ( SELECT DISTINCT tbladt_strategy_adexchange.strategyid
           FROM tbladt_strategy_adexchange) t;
 ,   DROP VIEW public.vwadt_flat_stg_adexchange;
       public       wayio    false    460    587    460    587    587    3            �           1259    23990    vwadt_flat_stg_age    VIEW     �  CREATE VIEW vwadt_flat_stg_age AS
 SELECT tbladt_strategy_demographic.strategyid,
        CASE
            WHEN (COALESCE(tbladt_strategy_demographic.skipagetarget, true) = true) THEN ''::text
            ELSE concat(COALESCE(tbladt_strategy_demographic.agefrom, 14), '|', COALESCE(tbladt_strategy_demographic.ageupto, 90))
        END AS age,
    COALESCE(tbladt_strategy_demographic.skewagetarget, false) AS isskewage
   FROM tbladt_strategy_demographic;
 %   DROP VIEW public.vwadt_flat_stg_age;
       public       wayio    false    680    680    680    680    680    3            �           1259    24071    vwadt_flat_stg_audience    VIEW     �  CREATE VIEW vwadt_flat_stg_audience AS
 SELECT a.strategyid,
    concat('{"strategyid":"', a.strategyid, '","dmp":[', string_agg(concat('{"datapartner":"', a.datapartner, '","segmentid":[', a.segmentids, ']}'), ','::text), ']}') AS datapartnerjson
   FROM ( SELECT sa.strategyid,
            lower((aud.datapartner)::text) AS datapartner,
            string_agg(DISTINCT (aud.segmentid)::text, ','::text) AS segmentids
           FROM (tbladt_audience aud
             JOIN tbladt_strategy_audience sa ON ((aud.audiencesegmentid = sa.audiencesegmentid)))
          GROUP BY sa.strategyid, (lower((aud.datapartner)::text))) a
  GROUP BY a.strategyid;
 *   DROP VIEW public.vwadt_flat_stg_audience;
       public       wayio    false    462    462    212    212    212    3            �           1259    24036    vwadt_flat_stg_carrier    VIEW     l  CREATE VIEW vwadt_flat_stg_carrier AS
 SELECT tsc.strategyid,
    tsc.carrier,
    COALESCE(scrr.isallwirelesscarriers, false) AS isallwirelesscarriers,
    COALESCE(sisp.isallwifi, false) AS isallwifi
   FROM ((( SELECT t.strategyid,
            COALESCE(string_agg(t.carrier, '|'::text), ''::text) AS carrier
           FROM ( SELECT sc.strategyid,
                    c.carriername AS carrier
                   FROM (tbladt_carriers c
                     JOIN ( SELECT tbladt_strategy_carriers.strategyid,
                            unnest(string_to_array(tbladt_strategy_carriers.carrierids, ','::text)) AS item
                           FROM tbladt_strategy_carriers) sc ON (((c.carrierid = (sc.item)::integer) AND (c.isactive = true))))
                UNION
                 SELECT si.strategyid,
                    isp.ispname AS carrier
                   FROM (tbladt_isp isp
                     JOIN ( SELECT tbladt_strategy_isp.strategyid,
                            unnest(string_to_array(tbladt_strategy_isp.ispids, ','::text)) AS item
                           FROM tbladt_strategy_isp) si ON (((isp.ispid = (si.item)::integer) AND (isp.isactive = true))))) t
          GROUP BY t.strategyid) tsc
     LEFT JOIN tbladt_strategy_carriers scrr ON ((tsc.strategyid = scrr.strategyid)))
     LEFT JOIN tbladt_strategy_isp sisp ON ((tsc.strategyid = sisp.strategyid)));
 )   DROP VIEW public.vwadt_flat_stg_carrier;
       public       wayio    false    242    309    309    309    467    467    467    489    489    489    242    242    3            �           1259    23982    vwadt_flat_stg_coordinate    VIEW        CREATE VIEW vwadt_flat_stg_coordinate AS
 SELECT t.strategyid,
    COALESCE(string_agg(concat(t.latitude, ',', t.longitude, ',', t.radius, ',', t.minradius), '|'::text), ''::text) AS coordinate
   FROM tbladt_strategy_coordinate t
  GROUP BY t.strategyid;
 ,   DROP VIEW public.vwadt_flat_stg_coordinate;
       public       wayio    false    472    472    472    472    472    3            �           1259    23961    vwadt_flat_stg_country    VIEW     (  CREATE VIEW vwadt_flat_stg_country AS
 SELECT sc.strategyid,
    COALESCE(string_agg((c.iso_2_code)::text, '|'::text), ''::text) AS countryiso2code,
    COALESCE(string_agg((c.iso_3_code)::text, '|'::text), ''::text) AS countryiso3code
   FROM (( SELECT tbladt_strategy_country.strategyid,
            unnest(string_to_array(tbladt_strategy_country.countryids, ','::text)) AS countryid
           FROM tbladt_strategy_country) sc
     JOIN tbladt_country c ON (((sc.countryid = (c.countryid)::text) AND (c.isactive = true))))
  GROUP BY sc.strategyid;
 )   DROP VIEW public.vwadt_flat_stg_country;
       public       wayio    false    601    601    601    601    474    474    3            �           1259    25103    vwadt_flat_stg_crt    VIEW     �  CREATE VIEW vwadt_flat_stg_crt AS
 SELECT sc.strategyid,
    tc.creativeid
   FROM ((tbladt_strategy_creative sc
     JOIN tbladt_strategy s ON (((sc.strategyid = s.strategyid) AND (sc.isallcreative = false) AND (s.isdeleted = false) AND (s.isrejected = false))))
     JOIN ( SELECT tsc.strategyid,
            (tsc.item)::integer AS creativeid
           FROM (( SELECT tbladt_strategy_creative.strategyid,
                    unnest(string_to_array(tbladt_strategy_creative.creativeids, ','::text)) AS item
                   FROM tbladt_strategy_creative) tsc
             JOIN tbladt_creative cr ON ((((tsc.item)::integer = cr.creativeid) AND (cr.isdeleted = false) AND (cr.isrejected = false))))) tc ON ((sc.strategyid = tc.strategyid)))
UNION
 SELECT sc.strategyid,
    cr.creativeid
   FROM (((tbladt_strategy_creative sc
     JOIN tbladt_strategy s ON (((sc.strategyid = s.strategyid) AND (sc.isallcreative = true) AND (s.isdeleted = false) AND (s.isrejected = false))))
     JOIN tbladt_lineitem li ON ((s.lineitemid = li.lineitemid)))
     JOIN tbladt_creative cr ON (((li.campaignid = cr.campaignid) AND (COALESCE(cr.adformatid, 0) > 0) AND (cr.isdeleted = false) AND (cr.isrejected = false))));
 %   DROP VIEW public.vwadt_flat_stg_crt;
       public       wayio    false    602    602    602    602    602    639    677    639    476    476    476    677    677    677    3            �           1259    24008    vwadt_flat_stg_dayparting    VIEW     �  CREATE VIEW vwadt_flat_stg_dayparting AS
 SELECT dp.strategyid,
    COALESCE(string_agg(concat(dp.fromtime, ',', dp.totime, ',', COALESCE(tz.timezonename, ''::character varying), ',', dp.mon, ',', dp.tue, ',', dp.wed, ',', dp.thu, ',', dp.fri, ',', dp.sat, ',', dp.sun), '|'::text), 'ALL'::text) AS dayparting
   FROM (tbladt_strategy_dayparting dp
     LEFT JOIN tbladt_timezone tz ON ((dp.timezoneid = tz.timezoneid)))
  GROUP BY dp.strategyid;
 ,   DROP VIEW public.vwadt_flat_stg_dayparting;
       public       wayio    false    480    480    480    480    480    480    686    686    480    480    480    480    480    3            �           1259    23942    vwadt_flat_stg_dealid    VIEW        CREATE VIEW vwadt_flat_stg_dealid AS
 SELECT ts.strategyid,
    string_agg(concat(ts.adexchangename, ',', ts.dealids), '|'::text) AS dealids
   FROM ( SELECT tsd.strategyid,
            tsd.adexchangeid,
            tsd.adexchangename,
            COALESCE(string_agg((tsd.dealid)::text, ','::text), ''::text) AS dealids
           FROM ( SELECT std.strategyid,
                    di.adexchangeid,
                    adx.name AS adexchangename,
                    di.dealid
                   FROM ((tbladt_strategy_dealid std
                     JOIN tbladt_dealid di ON ((std.dealdbid = di.id)))
                     JOIN tbladt_adexchange adx ON ((di.adexchangeid = adx.adexchangeid)))) tsd
          GROUP BY tsd.strategyid, tsd.adexchangeid, tsd.adexchangename) ts
  GROUP BY ts.strategyid;
 (   DROP VIEW public.vwadt_flat_stg_dealid;
       public       wayio    false    482    587    587    627    627    627    482    3            �           1259    24062    vwadt_flat_stg_device    VIEW     !  CREATE VIEW vwadt_flat_stg_device AS
 SELECT t.strategyid,
    string_agg((t.osname)::text, '|'::text) AS os,
    string_agg((t.version)::text, '|'::text) AS osv,
    string_agg((t.makename)::text, '|'::text) AS make,
    string_agg((t.devicename)::text, '|'::text) AS model
   FROM ( SELECT stgt.strategyid,
            od.os_name AS osname,
            od.osv_normalized AS version,
            od.device_make AS makename,
            od.device_model AS devicename
           FROM (tbladt_strategy_targets stgt
             JOIN tbladt_osdevicemapping od ON ((((stgt.isalltablets = true) AND (od.is_tablet = true)) OR ((stgt.isallsmartphone = true) AND (od.is_mobile_phone = true)))))
        UNION
         SELECT som.strategyid,
            os.osname,
            osv.version,
            m.makename,
            d.devicename
           FROM ((((tbladt_strategyosmapping som
             LEFT JOIN tbladt_osversion osv ON (((som.refkey)::text = (osv.ref_key)::text)))
             LEFT JOIN tbladt_os os ON ((osv.osid = os.osid)))
             LEFT JOIN tbladt_device d ON (((som.refkey)::text = (d.ref_key)::text)))
             LEFT JOIN tbladt_make m ON ((d.makeid = m.makeid)))
        UNION
         SELECT sost.strategyid,
            os.osname,
            osv.version,
            NULL::character varying AS makename,
            NULL::character varying AS devicename
           FROM ((tbladt_strategy_os sost
             LEFT JOIN tbladt_os os ON (((sost.osid = os.osid) AND (os.isactive = true))))
             LEFT JOIN tbladt_osversion osv ON (((sost.osversionid = osv.versionid) AND (osv.isactive = true))))
        UNION
         SELECT sdt.strategyid,
            NULL::character varying AS osname,
            NULL::character varying AS version,
            m.makename,
            d.devicename
           FROM ((tbladt_strategy_device sdt
             LEFT JOIN tbladt_make m ON (((sdt.makeid = m.makeid) AND (m.isactive = true))))
             LEFT JOIN tbladt_device d ON (((sdt.deviceid = d.deviceid) AND (d.isactive = true))))) t
  GROUP BY t.strategyid;
 (   DROP VIEW public.vwadt_flat_stg_device;
       public       wayio    false    696    342    458    458    485    485    485    496    496    496    683    683    683    695    695    695    695    695    696    696    344    696    696    342    342    325    325    325    344    344    344    344    344    3            �           1259    23973    vwadt_flat_stg_dma    VIEW     �  CREATE VIEW vwadt_flat_stg_dma AS
 SELECT t.strategyid,
    COALESCE(string_agg((d.dmacode)::text, '|'::text), ''::text) AS dma
   FROM (( SELECT tbladt_strategy_dma.strategyid,
            unnest(string_to_array(tbladt_strategy_dma.dmaids, ','::text)) AS item
           FROM tbladt_strategy_dma) t
     JOIN tbladt_dma d ON (((d.dmaid = (t.item)::integer) AND (d.isactive = true))))
  GROUP BY t.strategyid;
 %   DROP VIEW public.vwadt_flat_stg_dma;
       public       wayio    false    478    478    624    624    624    3            �           1259    23986    vwadt_flat_stg_gender    VIEW     �   CREATE VIEW vwadt_flat_stg_gender AS
 SELECT sd.strategyid,
    COALESCE(sd.genderid, 5) AS gender
   FROM tbladt_strategy_demographic sd;
 (   DROP VIEW public.vwadt_flat_stg_gender;
       public       wayio    false    680    680    3            �           1259    23994    vwadt_flat_stg_homebiz    VIEW     �   CREATE VIEW vwadt_flat_stg_homebiz AS
 SELECT tbladt_strategy_demographic.strategyid,
    COALESCE(tbladt_strategy_demographic.homeorbusiness, 0) AS homebiz
   FROM tbladt_strategy_demographic;
 )   DROP VIEW public.vwadt_flat_stg_homebiz;
       public       wayio    false    680    680    3            �           1259    24026    vwadt_flat_stg_iab    VIEW     �  CREATE VIEW vwadt_flat_stg_iab AS
 SELECT sic.strategyid,
    COALESCE(string_agg((ic.code)::text, ','::text), ''::text) AS iabcode
   FROM (( SELECT tbladt_strategy_iabcategory.strategyid,
            unnest(string_to_array(tbladt_strategy_iabcategory.categoryids, ','::text)) AS item
           FROM tbladt_strategy_iabcategory) sic
     JOIN tbladt_iabcategory ic ON (((sic.item)::integer = ic.categoryid)))
  GROUP BY sic.strategyid;
 %   DROP VIEW public.vwadt_flat_stg_iab;
       public       wayio    false    634    634    487    487    3            �           1259    23957    vwadt_flat_stg_keyword    VIEW       CREATE VIEW vwadt_flat_stg_keyword AS
 SELECT ki.strategyid,
    COALESCE(string_agg((
        CASE
            WHEN (ki.isincluded = true) THEN ki.keyword
            ELSE NULL::character varying
        END)::text, '|'::text), ''::text) AS includedkeyword,
    COALESCE(string_agg((
        CASE
            WHEN (ki.isincluded = true) THEN ki.keyword
            ELSE NULL::character varying
        END)::text, '|'::text), ''::text) AS excludedkeyword
   FROM tbladt_strategy_content_keyword ki
  GROUP BY ki.strategyid;
 )   DROP VIEW public.vwadt_flat_stg_keyword;
       public       wayio    false    679    679    679    3            �           1259    23998    vwadt_flat_stg_language    VIEW     �  CREATE VIEW vwadt_flat_stg_language AS
 SELECT sd.strategyid,
    COALESCE(string_agg((l.languagecode)::text, '|'::text), ''::text) AS languagecode
   FROM (( SELECT tbladt_strategy_demographic.strategyid,
            unnest(string_to_array(tbladt_strategy_demographic.languageids, ','::text)) AS item
           FROM tbladt_strategy_demographic) sd
     JOIN tbladt_language l ON ((((sd.item)::integer = l.languageid) AND (l.isactive = true))))
  GROUP BY sd.strategyid;
 *   DROP VIEW public.vwadt_flat_stg_language;
       public       wayio    false    638    638    638    680    680    3            �           1259    24003    vwadt_flat_stg_mosaic    VIEW     �  CREATE VIEW vwadt_flat_stg_mosaic AS
 SELECT sm.strategyid,
    COALESCE(string_agg((m.mosaiccode)::text, '|'::text), ''::text) AS mosaiccode
   FROM (( SELECT tbladt_strategy_mosaic.strategyid,
            unnest(string_to_array(tbladt_strategy_mosaic.mosaicids, ','::text)) AS item
           FROM tbladt_strategy_mosaic) sm
     JOIN tbladt_mosaic m ON ((((sm.item)::integer = m.mosaicid) AND (m.isactive = true))))
  GROUP BY sm.strategyid;
 (   DROP VIEW public.vwadt_flat_stg_mosaic;
       public       wayio    false    493    493    328    328    328    3            �           1259    24021     vwadt_flat_stg_pixel_retargeting    VIEW     �  CREATE VIEW vwadt_flat_stg_pixel_retargeting AS
 SELECT c.strategyid,
    c.cparetargetinginitialrecencydaysfrom,
    c.cparetargetinginitialrecencydaysto,
    c.cparetargetinginitialconversionstrength,
    c.cparetargetinginitialuserfrequency,
    c.cparetargetinginitialfrequency,
    c.cparetargetingdecrementalrecencydaysfrom,
    c.cparetargetingdecrementalrecencydaysto,
    c.cparetargetingdecrementalconversionstrength,
    c.cparetargetingdecrementaluserfrequency,
    c.cparetargetingdecrementalfrequency,
    c.cparetargetingaddunattributedon,
    c.cparetargetingupdatefrequency,
    c.cparetargetingtype,
    a.cparetargetinginitialgoalname,
    b.cparetargetingdecrementalgoalname
   FROM ((( SELECT tbladt_strategy_cparetargeting.strategyid,
                CASE
                    WHEN (tbladt_strategy_cparetargeting.cparetargetingon = true) THEN tbladt_strategy_cparetargeting.initialrecencydaysfrom
                    ELSE 0
                END AS cparetargetinginitialrecencydaysfrom,
                CASE
                    WHEN (tbladt_strategy_cparetargeting.cparetargetingon = true) THEN tbladt_strategy_cparetargeting.initialrecencydaysto
                    ELSE 0
                END AS cparetargetinginitialrecencydaysto,
                CASE
                    WHEN (tbladt_strategy_cparetargeting.cparetargetingon = true) THEN replace((tbladt_strategy_cparetargeting.initialconversionstrength)::text, ','::text, '|'::text)
                    ELSE ''::text
                END AS cparetargetinginitialconversionstrength,
                CASE
                    WHEN (tbladt_strategy_cparetargeting.cparetargetingon = true) THEN tbladt_strategy_cparetargeting.initialuserfrequency
                    ELSE 0
                END AS cparetargetinginitialuserfrequency,
                CASE
                    WHEN (tbladt_strategy_cparetargeting.cparetargetingon = true) THEN tbladt_strategy_cparetargeting.initialfrequency
                    ELSE 0
                END AS cparetargetinginitialfrequency,
                CASE
                    WHEN (tbladt_strategy_cparetargeting.cparetargetingon = true) THEN tbladt_strategy_cparetargeting.decrementalrecencydaysfrom
                    ELSE 0
                END AS cparetargetingdecrementalrecencydaysfrom,
                CASE
                    WHEN (tbladt_strategy_cparetargeting.cparetargetingon = true) THEN tbladt_strategy_cparetargeting.decrementalrecencydaysto
                    ELSE 0
                END AS cparetargetingdecrementalrecencydaysto,
                CASE
                    WHEN (tbladt_strategy_cparetargeting.cparetargetingon = true) THEN replace((tbladt_strategy_cparetargeting.decrementalconversionstrength)::text, ','::text, '|'::text)
                    ELSE ''::text
                END AS cparetargetingdecrementalconversionstrength,
                CASE
                    WHEN (tbladt_strategy_cparetargeting.cparetargetingon = true) THEN tbladt_strategy_cparetargeting.decrementaluserfrequency
                    ELSE 0
                END AS cparetargetingdecrementaluserfrequency,
                CASE
                    WHEN (tbladt_strategy_cparetargeting.cparetargetingon = true) THEN tbladt_strategy_cparetargeting.decrementalfrequency
                    ELSE 0
                END AS cparetargetingdecrementalfrequency,
                CASE
                    WHEN (tbladt_strategy_cparetargeting.cparetargetingon = true) THEN tbladt_strategy_cparetargeting.addunattributedon
                    ELSE false
                END AS cparetargetingaddunattributedon,
                CASE
                    WHEN ((tbladt_strategy_cparetargeting.cparetargetingon = true) AND (tbladt_strategy_cparetargeting.addunattributedon = true)) THEN tbladt_strategy_cparetargeting.updatefrequency
                    ELSE 0
                END AS cparetargetingupdatefrequency,
                CASE
                    WHEN ((tbladt_strategy_cparetargeting.cparetargetingon = true) AND (tbladt_strategy_cparetargeting.addunattributedon = true)) THEN tbladt_strategy_cparetargeting.retargetingtype
                    ELSE 0
                END AS cparetargetingtype
           FROM tbladt_strategy_cparetargeting) c
     JOIN ( SELECT stcpa.strategyid,
                CASE
                    WHEN (stcpa.cparetargetingon = true) THEN COALESCE(string_agg((gn.goalname)::text, '|'::text), ''::text)
                    ELSE ''::text
                END AS cparetargetinginitialgoalname
           FROM (( SELECT tbladt_strategy_cparetargeting.strategyid,
                    tbladt_strategy_cparetargeting.cparetargetingon,
                    unnest(string_to_array((tbladt_strategy_cparetargeting.initialgoalname)::text, ','::text)) AS item
                   FROM tbladt_strategy_cparetargeting) stcpa
             JOIN tbladt_cparetargeting_goal_name gn ON (((stcpa.item)::integer = gn.goalid)))
          GROUP BY stcpa.strategyid, stcpa.cparetargetingon) a ON ((c.strategyid = a.strategyid)))
     JOIN ( SELECT stcpa.strategyid,
                CASE
                    WHEN (stcpa.cparetargetingon = true) THEN COALESCE(string_agg((gn.goalname)::text, '|'::text), ''::text)
                    ELSE ''::text
                END AS cparetargetingdecrementalgoalname
           FROM (( SELECT tbladt_strategy_cparetargeting.strategyid,
                    tbladt_strategy_cparetargeting.cparetargetingon,
                    unnest(string_to_array((tbladt_strategy_cparetargeting.decrementalgoalname)::text, ','::text)) AS item
                   FROM tbladt_strategy_cparetargeting) stcpa
             JOIN tbladt_cparetargeting_goal_name gn ON (((stcpa.item)::integer = gn.goalid)))
          GROUP BY stcpa.strategyid, stcpa.cparetargetingon) b ON ((a.strategyid = b.strategyid)));
 3   DROP VIEW public.vwadt_flat_stg_pixel_retargeting;
       public       wayio    false    465    465    465    465    465    465    465    465    465    465    465    465    594    594    465    465    465    465    465    3            �           1259    23978    vwadt_flat_stg_postalcode    VIEW     �   CREATE VIEW vwadt_flat_stg_postalcode AS
 SELECT tbladt_strategy_postalcode.strategyid,
    replace(COALESCE(tbladt_strategy_postalcode.zipcodes, ''::text), ','::text, '|'::text) AS zip
   FROM tbladt_strategy_postalcode;
 ,   DROP VIEW public.vwadt_flat_stg_postalcode;
       public       wayio    false    498    498    3            �           1259    23966    vwadt_flat_stg_region    VIEW     �  CREATE VIEW vwadt_flat_stg_region AS
 SELECT t.strategyid,
    COALESCE(string_agg(DISTINCT (t.regioncode)::text, '|'::text), ''::text) AS statecode,
    COALESCE(string_agg((((t.city)::text || '|'::text) || (t.regioncode)::text), ','::text), ''::text) AS city
   FROM ( SELECT sr.strategyid,
            r.regioncode,
            csc.city
           FROM (((tbladt_strategy_regions sr
             LEFT JOIN tbladt_strategy_region_city src ON ((sr.recordid = src.strategyregionid)))
             LEFT JOIN tbladt_region r ON (((sr.stateid = r.regionid) AND (r.isactive = true))))
             LEFT JOIN tbladt_country_state_city csc ON ((csc.recordid = src.cityid)))) t
  GROUP BY t.strategyid;
 (   DROP VIEW public.vwadt_flat_stg_region;
       public       wayio    false    250    501    501    670    682    682    682    670    670    250    3            �           1259    24067    vwadt_flat_stg_retargeting    VIEW     �  CREATE VIEW vwadt_flat_stg_retargeting AS
 SELECT tbladt_strategy_retargeting.strategyid,
        CASE
            WHEN (tbladt_strategy_retargeting.retargetingon = true) THEN tbladt_strategy_retargeting.scriptname
            ELSE ''::character varying
        END AS retargetingscriptname,
        CASE
            WHEN (tbladt_strategy_retargeting.retargetingon = true) THEN tbladt_strategy_retargeting.description
            ELSE ''::character varying
        END AS retargetingdescription,
        CASE
            WHEN (tbladt_strategy_retargeting.retargetingon = true) THEN tbladt_strategy_retargeting.initialscript
            ELSE ''::text
        END AS retargetinginitialscript,
        CASE
            WHEN (tbladt_strategy_retargeting.retargetingon = true) THEN tbladt_strategy_retargeting.incrementalupdatescript
            ELSE ''::text
        END AS retargetingincupdatescript,
        CASE
            WHEN (tbladt_strategy_retargeting.retargetingon = true) THEN tbladt_strategy_retargeting.decrementalupdatescript
            ELSE ''::text
        END AS retargetingdecupdatescript,
        CASE
            WHEN (tbladt_strategy_retargeting.retargetingon = true) THEN tbladt_strategy_retargeting.targetingtype
            ELSE 0
        END AS retargetingtarget,
        CASE
            WHEN (tbladt_strategy_retargeting.retargetingon = true) THEN tbladt_strategy_retargeting.rerunfrequency
            ELSE 0
        END AS retargetingupdatefrequency,
        CASE
            WHEN (tbladt_strategy_retargeting.retargetingon = true) THEN tbladt_strategy_retargeting.targetingcriteria
            ELSE 0
        END AS retargetingtype
   FROM tbladt_strategy_retargeting;
 -   DROP VIEW public.vwadt_flat_stg_retargeting;
       public       wayio    false    504    504    504    504    504    504    504    504    504    504    3            �           1259    23947    vwadt_flat_stg_rtpe    VIEW     �  CREATE VIEW vwadt_flat_stg_rtpe AS
 SELECT sr.strategyid,
    COALESCE(sr.minimumctrvtr, (0)::double precision) AS minimumctrorvtr,
    COALESCE(sr.maximumctrvtr, (1)::double precision) AS maximumctrorvtr,
    COALESCE(sr.modelid, 0) AS rtpemodelid,
        CASE
            WHEN ((sr.modelid IS NULL) OR (sr.modelid = 0)) THEN 'RTPE OFF'::character varying
            WHEN (sr.modelid = '-1'::integer) THEN 'CTR'::character varying
            ELSE COALESCE(rm.name, ''::character varying)
        END AS rtpemodelname,
        CASE
            WHEN (sr.modelid < 1) THEN 1
            ELSE COALESCE(rm.classification, 1)
        END AS rtpeclassification,
        CASE
            WHEN ((sr.modelid IS NULL) OR (sr.modelid = 0)) THEN 0
            WHEN (sr.modelid = '-1'::integer) THEN 1
            ELSE COALESCE(rm.modeltype, 0)
        END AS rtpetype
   FROM (tbladt_strategy_rtpe sr
     LEFT JOIN tbladt_rtpemodel rm ON (((sr.modelid = rm.modelid) AND (rm.isactive = true))));
 &   DROP VIEW public.vwadt_flat_stg_rtpe;
       public       wayio    false    681    668    668    668    668    668    681    681    681    3            �           1259    23952    vwadt_flat_stg_siteapp    VIEW     �  CREATE VIEW vwadt_flat_stg_siteapp AS
 SELECT ts.strategyid,
    COALESCE(string_agg(
        CASE
            WHEN (ts.iswhitelist = true) THEN (ts.sitelistid)::text
            ELSE NULL::text
        END, '|'::text), ''::text) AS whitelistsiteids,
    COALESCE(string_agg(
        CASE
            WHEN (ts.iswhitelist = false) THEN (ts.sitelistid)::text
            ELSE NULL::text
        END, '|'::text), ''::text) AS blacklistsiteids
   FROM ( SELECT ssl.strategyid,
            ssl.sitelistid,
            slm.listtype AS iswhitelist
           FROM (tbladt_strategy_sitelist ssl
             JOIN tbladt_sitelistmaster slm ON (((ssl.sitelistid = slm.sitelistid) AND (slm.status = 1))))) ts
  GROUP BY ts.strategyid;
 )   DROP VIEW public.vwadt_flat_stg_siteapp;
       public       wayio    false    512    512    446    446    446    3            �           1259    24013    vwadt_flat_stg_temperature    VIEW     �  CREATE VIEW vwadt_flat_stg_temperature AS
 SELECT tbladt_strategy_weather.strategyid,
    COALESCE(
        CASE
            WHEN (tbladt_strategy_weather.skiptemperaturetarget = true) THEN NULL::text
            WHEN (tbladt_strategy_weather.iscelsius IS NULL) THEN NULL::text
            WHEN (tbladt_strategy_weather.iscelsius = false) THEN concat(tbladt_strategy_weather.tempfrom, '|', tbladt_strategy_weather.tempto)
            ELSE concat((round((((tbladt_strategy_weather.tempfrom)::numeric * 9.0) / (5)::numeric), 0) + (32)::numeric), '|', (round((((tbladt_strategy_weather.tempto)::numeric * 9.0) / (5)::numeric), 0) + (32)::numeric))
        END, ''::text) AS temperature
   FROM tbladt_strategy_weather;
 -   DROP VIEW public.vwadt_flat_stg_temperature;
       public       wayio    false    684    684    684    684    684    3            �           1259    24057    vwadt_flat_stg_weather    VIEW     �  CREATE VIEW vwadt_flat_stg_weather AS
 SELECT t.strategyid,
    COALESCE(string_agg((w.weathercode)::text, '|'::text), ''::text) AS weathercode
   FROM (( SELECT tbladt_strategy_weather.strategyid,
            unnest(string_to_array(tbladt_strategy_weather.weatherids, ','::text)) AS item
           FROM tbladt_strategy_weather) t
     JOIN tbladt_weather w ON (((w.weatherid = (t.item)::integer) AND (w.isactive = true))))
  GROUP BY t.strategyid;
 )   DROP VIEW public.vwadt_flat_stg_weather;
       public       wayio    false    693    693    693    684    684    3            �           1259    25168    vwadt_strategy_targets    VIEW     �   CREATE VIEW vwadt_strategy_targets AS
 SELECT sd.strategyid,
    string_agg(DISTINCT (d.devicetype)::text, '|'::text) AS devicetypes
   FROM (tbladt_strategy_device sd
     JOIN tbladt_device d ON ((sd.deviceid = d.deviceid)))
  GROUP BY sd.strategyid;
 )   DROP VIEW public.vwadt_strategy_targets;
       public       wayio    false    695    695    485    485    3            �           1259    24076    vwadt_flat_stg_targets    VIEW     �  CREATE VIEW vwadt_flat_stg_targets AS
 SELECT stg.strategyid,
    stg.lineitemid,
    stg.advertiserid,
    stg.strategyname,
    stg.strategystartdate,
    stg.strategyenddate,
    stg.highlowctr,
    stg.strategypricingtype,
    stg.strategymaxrate,
    stg.minimumcpmrate,
    stg.maximumcpmrate,
    stg.strategypercentage,
    stg.learnerpercent,
    stg.timeframe,
    stg.cappercent,
    stg.strategytotalimpressiongoal,
    stg.strategydailyimpressiongoal,
    stg.strategytotalclickgoal,
    stg.strategydailyclickgoal,
    stg.strategytotalcompletegoal,
    stg.strategydailycompletegoal,
    stg.isfrequencycappingon,
    stg.frequencyimpressions,
    stg.frequencytimeframe,
    stg.frequencyby,
    stg.strategystate,
    stg.strategystatus,
    stg.isdeleted,
    stg.associatedcost,
    stg.dailylosscap,
    stg.skippability,
    stg.barometriccampaignid,
    COALESCE(srtpe.minimumctrorvtr, (0)::double precision) AS minimumctrorvtr,
    COALESCE(srtpe.maximumctrorvtr, (1)::double precision) AS maximumctrorvtr,
    COALESCE(srtpe.rtpemodelid, 0) AS rtpemodelid,
    COALESCE(srtpe.rtpemodelname, 'RTPE OFF'::character varying) AS rtpemodelname,
    COALESCE(srtpe.rtpeclassification, 1) AS rtpeclassification,
    COALESCE(srtpe.rtpetype, 0) AS rtpetype,
    COALESCE(sae.adexchanges, ''::text) AS associatedadexchanges,
    COALESCE(sdi.dealids, ''::text) AS dealids,
    replace(COALESCE(vst.devicetypes, ''::text), ','::text, '|'::text) AS devicetypes,
    COALESCE(st.isdesktop, false) AS desktop,
    COALESCE(st.isallsmartphone, false) AS isallsmartphone,
    COALESCE(st.isalltablets, false) AS isalltablets,
    COALESCE(sdv.os, ''::text) AS os,
        CASE
            WHEN (COALESCE(st.istargetosonly, true) = true) THEN ''::text
            ELSE COALESCE(sdv.osv, ''::text)
        END AS osv,
    COALESCE(sdv.make, ''::text) AS make,
    COALESCE(sdv.model, ''::text) AS model,
    COALESCE(scr.carrier, ''::text) AS carrier,
    COALESCE(scr.isallwirelesscarriers, false) AS isallwirelesscarriers,
    COALESCE(scr.isallwifi, false) AS isallwifi,
    replace((COALESCE(st.appsiteproperties, ''::character varying))::text, ','::text, '|'::text) AS appsiteproperties,
    COALESCE(st.isidfa, false) AS idfa,
    COALESCE(ssa.whitelistsiteids, ''::text) AS whitelistsiteids,
    COALESCE(ssa.blacklistsiteids, ''::text) AS blacklistsiteids,
    COALESCE(siab.iabcode, ''::text) AS iabcode,
    COALESCE(skw.includedkeyword, ''::text) AS includedkeyword,
    COALESCE(skw.excludedkeyword, ''::text) AS excludedkeyword,
    COALESCE(scn.countryiso2code, ''::text) AS countryiso2code,
    COALESCE(scn.countryiso3code, ''::text) AS countryiso3code,
    COALESCE(srgn.statecode, ''::text) AS statecode,
    COALESCE(srgn.city, ''::text) AS city,
    COALESCE(sdma.dma, ''::text) AS dma,
    COALESCE(spc.zip, ''::text) AS zip,
    COALESCE(scrd.coordinate, ''::text) AS coordinate,
    COALESCE(st.proximitydesignid, ''::character varying) AS proximitydesignid,
    COALESCE(st.geopulseaudiencedesignid, ''::character varying) AS geopulseaudiencedesignid,
    COALESCE(sgnd.gender, 5) AS gender,
    COALESCE(sag.age, ''::text) AS age,
    COALESCE(sag.isskewage, false) AS isskewage,
    COALESCE(shb.homebiz, 0) AS homebiz,
    COALESCE(slng.languagecode, ''::text) AS languagecode,
    COALESCE(smsc.mosaiccode, ''::text) AS mosaiccode,
    COALESCE(st.isrequesttimezone, false) AS daypartingrequesttimezone,
    COALESCE(sdpt.dayparting, 'ALL'::text) AS dayparting,
    COALESCE(stmp.temperature, ''::text) AS temperature,
    COALESCE(swth.weathercode, ''::text) AS weathercode,
    COALESCE(st.retargetingtargettype, 0) AS retargetingtargettype,
    COALESCE(sprtg.cparetargetinginitialgoalname, ''::text) AS cparetargetinginitialgoalname,
    COALESCE(sprtg.cparetargetinginitialrecencydaysfrom, 0) AS cparetargetinginitialrecencydaysfrom,
    COALESCE(sprtg.cparetargetinginitialrecencydaysto, 0) AS cparetargetinginitialrecencydaysto,
    COALESCE(sprtg.cparetargetinginitialconversionstrength, ''::text) AS cparetargetinginitialconversionstrength,
    COALESCE(sprtg.cparetargetinginitialuserfrequency, 0) AS cparetargetinginitialuserfrequency,
    COALESCE(sprtg.cparetargetinginitialfrequency, 0) AS cparetargetinginitialfrequency,
    COALESCE(sprtg.cparetargetingdecrementalgoalname, ''::text) AS cparetargetingdecrementalgoalname,
    COALESCE(sprtg.cparetargetingdecrementalrecencydaysfrom, 0) AS cparetargetingdecrementalrecencydaysfrom,
    COALESCE(sprtg.cparetargetingdecrementalrecencydaysto, 0) AS cparetargetingdecrementalrecencydaysto,
    COALESCE(sprtg.cparetargetingdecrementalconversionstrength, ''::text) AS cparetargetingdecrementalconversionstrength,
    COALESCE(sprtg.cparetargetingdecrementaluserfrequency, 0) AS cparetargetingdecrementaluserfrequency,
    COALESCE(sprtg.cparetargetingdecrementalfrequency, 0) AS cparetargetingdecrementalfrequency,
    COALESCE(sprtg.cparetargetingaddunattributedon, false) AS cparetargetingaddunattributedon,
    COALESCE(sprtg.cparetargetingupdatefrequency, 0) AS cparetargetingupdatefrequency,
    COALESCE(sprtg.cparetargetingtype, 0) AS cparetargetingtype,
    COALESCE(srtg.retargetingscriptname, ''::character varying) AS retargetingscriptname,
    COALESCE(srtg.retargetingdescription, ''::character varying) AS retargetingdescription,
    COALESCE(srtg.retargetinginitialscript, ''::text) AS retargetinginitialscript,
    COALESCE(srtg.retargetingincupdatescript, ''::text) AS retargetingincupdatescript,
    COALESCE(srtg.retargetingdecupdatescript, ''::text) AS retargetingdecupdatescript,
    COALESCE(srtg.retargetingtarget, 0) AS retargetingtarget,
    COALESCE(srtg.retargetingupdatefrequency, 0) AS retargetingupdatefrequency,
    COALESCE(srtg.retargetingtype, 0) AS retargetingtype,
    COALESCE(saud.datapartnerjson, ''::text) AS datapartnerjson
   FROM ((((((((((((((((((((((((((vwadt_flat_stg stg
     LEFT JOIN vwadt_strategy_targets vst ON ((stg.strategyid = vst.strategyid)))
     LEFT JOIN tbladt_strategy_targets st ON ((stg.strategyid = st.strategyid)))
     LEFT JOIN vwadt_flat_stg_adexchange sae ON ((stg.strategyid = sae.strategyid)))
     LEFT JOIN vwadt_flat_stg_dealid sdi ON ((stg.strategyid = sdi.strategyid)))
     LEFT JOIN vwadt_flat_stg_rtpe srtpe ON ((stg.strategyid = srtpe.strategyid)))
     LEFT JOIN vwadt_flat_stg_device sdv ON ((stg.strategyid = sdv.strategyid)))
     LEFT JOIN vwadt_flat_stg_carrier scr ON ((stg.strategyid = scr.strategyid)))
     LEFT JOIN vwadt_flat_stg_siteapp ssa ON ((stg.strategyid = ssa.strategyid)))
     LEFT JOIN vwadt_flat_stg_iab siab ON ((stg.strategyid = siab.strategyid)))
     LEFT JOIN vwadt_flat_stg_keyword skw ON ((stg.strategyid = skw.strategyid)))
     LEFT JOIN vwadt_flat_stg_country scn ON ((stg.strategyid = scn.strategyid)))
     LEFT JOIN vwadt_flat_stg_region srgn ON ((stg.strategyid = srgn.strategyid)))
     LEFT JOIN vwadt_flat_stg_dma sdma ON ((stg.strategyid = sdma.strategyid)))
     LEFT JOIN vwadt_flat_stg_postalcode spc ON ((stg.strategyid = spc.strategyid)))
     LEFT JOIN vwadt_flat_stg_coordinate scrd ON ((stg.strategyid = scrd.strategyid)))
     LEFT JOIN vwadt_flat_stg_gender sgnd ON ((stg.strategyid = sgnd.strategyid)))
     LEFT JOIN vwadt_flat_stg_age sag ON ((stg.strategyid = sag.strategyid)))
     LEFT JOIN vwadt_flat_stg_homebiz shb ON ((stg.strategyid = shb.strategyid)))
     LEFT JOIN vwadt_flat_stg_language slng ON ((stg.strategyid = slng.strategyid)))
     LEFT JOIN vwadt_flat_stg_mosaic smsc ON ((stg.strategyid = smsc.strategyid)))
     LEFT JOIN vwadt_flat_stg_dayparting sdpt ON ((stg.strategyid = sdpt.strategyid)))
     LEFT JOIN vwadt_flat_stg_temperature stmp ON ((stg.strategyid = stmp.strategyid)))
     LEFT JOIN vwadt_flat_stg_weather swth ON ((stg.strategyid = swth.strategyid)))
     LEFT JOIN vwadt_flat_stg_retargeting srtg ON ((stg.strategyid = srtg.strategyid)))
     LEFT JOIN vwadt_flat_stg_audience saud ON ((stg.strategyid = saud.strategyid)))
     LEFT JOIN vwadt_flat_stg_pixel_retargeting sprtg ON ((stg.strategyid = sprtg.strategyid)));
 )   DROP VIEW public.vwadt_flat_stg_targets;
       public       wayio    false    746    746    746    746    746    746    746    746    746    746    746    746    746    746    746    746    746    746    746    746    746    746    746    744    744    744    744    743    743    742    742    742    683    683    683    683    683    683    683    683    683    683    683    725    725    726    726    727    727    727    727    727    727    727    728    728    728    729    729    729    730    730    730    731    731    731    732    732    733    733    734    734    735    735    736    736    736    737    737    738    738    739    739    740    740    741    741    742    742    742    742    742    742    742    742    742    742    742    742    742    765    765    750    750    749    749    749    749    749    749    749    749    749    748    748    748    748    748    747    747    746    746    746    746    746    746    746    746    746    3            �           1259    25113    vwadt_platform_activecreatives    VIEW     _  CREATE VIEW vwadt_platform_activecreatives AS
 SELECT COALESCE(crt.advertiserid, 0) AS advertiserid,
    COALESCE(crt.advertisername, ''::character varying) AS advertisername,
    COALESCE(crt.campaignid, (0)::bigint) AS campaignid,
    COALESCE(crt.campaignname, ''::character varying) AS campaignname,
    COALESCE(crt.lineitemid, 0) AS lineitemid,
    COALESCE(crt.lineitemname, ''::text) AS lineitemname,
    crt.creativeid,
    COALESCE(crt.adformat, 0) AS adformat,
    crt.creativename,
    crt.creativestartdate,
    crt.creativeenddate,
    crt.creativetype,
    crt.iabcreativeattribute,
    crt.adxcreativeattribute,
    COALESCE(crt.adfeature, ''::text) AS adfeature,
    crt.creativevendor,
    crt.clickthroughurl,
    crt.landingpageurl,
    crt.ssltype,
    COALESCE((crt.barometriccampaignid)::bigint, (0)::bigint) AS barometriccampaignid,
    COALESCE((crt.barometricplacementid)::bigint, (0)::bigint) AS barometricplacementid,
    COALESCE(crt.barometricclickthroughurl, ''::character varying) AS barometricclickthroughurl,
    crt.mediatype,
    crt.markuptype,
    crt.creativewidth,
    crt.creativeheight,
    COALESCE(crt.creativeformatid, 0) AS creativeformatid,
        CASE
            WHEN ((COALESCE(crt.adformat, 0) = ANY (ARRAY[1, 2, 3])) AND (length(crt.htmljsadtag) > 0)) THEN ''::text
            ELSE COALESCE(
            CASE
                WHEN (crt.mediatype = 4) THEN crt.nativevideosource
                ELSE crt.creativeadsource
            END, ''::text)
        END AS creativeadsource,
        CASE
            WHEN (COALESCE(crt.adformat, 0) = ANY (ARRAY[4, 5])) THEN ''::text
            ELSE crt.htmljsadtag
        END AS htmljsadtag,
        CASE
            WHEN (COALESCE(crt.adformat, 0) = 0) THEN
            CASE
                WHEN (crt.mediatype = 1) THEN (crt.creativeadsource)::character varying
                ELSE crt.htmljspreviewurl
            END
            ELSE COALESCE(crt.htmljspreviewurl, ''::character varying)
        END AS iurl,
    COALESCE(crt.iframebuster, ''::text) AS iframebuster,
    crt.videosourcetype,
    crt.videoduration,
    crt.videodeliverytype,
    crt.videomimetype,
        CASE
            WHEN (crt.mediatype = 3) THEN crt.videoscalable
            ELSE 0
        END AS videoscalable,
    crt.videoapi,
    crt.mediabitrate,
    crt.videocompanionadsource,
    crt.videocompanionadwidth,
    crt.videocompanionadheight,
    crt.videocompanionadclickurl,
    crt.videotrackingevents,
    COALESCE(crt.nativetitle, ''::character varying) AS nativetitletext,
    COALESCE(crt.nativeiconsource, ''::text) AS nativeimageiconurl,
    COALESCE(crt.nativeiconheight, 0) AS nativeimageiconheight,
    COALESCE(crt.nativeiconwidth, 0) AS nativeimageiconwidth,
    COALESCE(crt.nativelogosource, ''::text) AS nativeimagelogourl,
    COALESCE(crt.nativelogoheight, 0) AS nativeimagelogoheight,
    COALESCE(crt.nativelogowidth, 0) AS nativeimagelogowidth,
    COALESCE(crt.nativeimagesource, ''::text) AS nativeimagemainurl,
    COALESCE(crt.nativeimageheight, 0) AS nativeimagemainheight,
    COALESCE(crt.nativeimagewidth, 0) AS nativeimagemainwidth,
    COALESCE(crt.nativetext, ''::character varying) AS nativedatasponsoredtext,
    COALESCE(crt.nativedescription, ''::text) AS nativedatadescription,
    COALESCE(crt.nativestarrating, (0.00)::double precision) AS nativedatastarrating,
    COALESCE(crt.nativecalltoaction, ''::character varying) AS nativedatacalltoaction,
        CASE
            WHEN (COALESCE(crt.adformat, 0) = ANY (ARRAY[4, 5])) THEN 0
            ELSE
            CASE
                WHEN ((length(crt.creativeadsource) = 0) AND (length(crt.htmljsadtag) = 0)) THEN crt.richmediaproviderid
                ELSE 0
            END
        END AS richmediaproviderid,
    0 AS richmediadisplaymode,
        CASE
            WHEN (COALESCE(crt.adformat, 0) = ANY (ARRAY[4, 5])) THEN 0
            ELSE
            CASE
                WHEN ((length(crt.creativeadsource) = 0) AND (length(crt.htmljsadtag) = 0)) THEN crt.richmediasdk
                ELSE 0
            END
        END AS richmediasdk,
    COALESCE(crt.richmediauniquecreativeid, ''::character varying) AS richmediauniquecreativeid,
    COALESCE(crt.richmediaplacementid, ''::character varying) AS richmediaplacementid,
        CASE
            WHEN (crt.mediatype = 3) THEN crt.videoapi
            ELSE
            CASE
                WHEN ((length(crt.creativeadsource) = 0) AND (length(crt.htmljsadtag) = 0)) THEN crt.richmediasdk
                ELSE 0
            END
        END AS api,
    crt.generictrackingtags,
    COALESCE(crt.appnexus_creativeid, (0)::bigint) AS appnexuscreativeid,
    tsc.strategyids
   FROM (vwadt_flat_crt_setup crt
     LEFT JOIN ( SELECT vwadt_flat_stg_crt.creativeid,
            string_agg(((vwadt_flat_stg_crt.strategyid)::character varying)::text, '|'::text) AS strategyids
           FROM vwadt_flat_stg_crt
          GROUP BY vwadt_flat_stg_crt.creativeid) tsc ON ((tsc.creativeid = crt.creativeid)))
  WHERE ((crt.istransactioncompleted = true) AND (crt.isdeleted = false) AND (((crt.creativestate = 1) AND (crt.creativeenddate >= now())) OR (EXISTS ( SELECT 1
           FROM tbladt_creative_previewassoc
          WHERE (tbladt_creative_previewassoc.creativeid = crt.creativeid)))) AND (tsc.strategyids IS NOT NULL) AND (NOT (COALESCE(crt.advertiserid, 0) IN ( SELECT tblqa_dummyadvertiser.advertiserid
           FROM tblqa_dummyadvertiser))));
 1   DROP VIEW public.vwadt_platform_activecreatives;
       public       wayio    false    756    756    756    756    756    761    761    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    756    276    708    756    756    756    756    756    756    756    756    756    756    3            �           1259    22874    vwadt_platform_activedealids    VIEW     f  CREATE VIEW vwadt_platform_activedealids AS
 SELECT di.adexchangeid,
    adx.name AS adexchangename,
    di.id,
    ltrim(rtrim((di.dealid)::text)) AS dealid,
    di.name,
    di.type,
    di.cpm,
    di.cpmfilter,
    di.description
   FROM (tbladt_dealid di
     JOIN tbladt_adexchange adx ON (((di.adexchangeid = adx.adexchangeid) AND (di.status = 1))));
 /   DROP VIEW public.vwadt_platform_activedealids;
       public       wayio    false    587    627    627    627    627    587    627    627    627    627    627    3            �           1259    24986    vwadt_platform_activelineitems    VIEW     A  CREATE VIEW vwadt_platform_activelineitems AS
 SELECT fli.advertiserid,
    fli.advertisername,
    fli.advertiserdomain,
    fli.advertisercategorycodes,
    fli.advertisercategorynames,
    fli.istestadvertiser,
    agn.agencyid,
    agn.name AS agencyname,
    fli.campaignid,
    fli.campaignname,
    fli.campaignstartdate,
    fli.campaignenddate,
    fli.campaignexternalio,
    fli.lineitemid,
    fli.lineitemname,
    fli.lineitemstartdate,
    fli.lineitemenddate,
    COALESCE(fli.thirdpartytypeid, 0) AS thirdpartytype,
    fli.traktionid,
    COALESCE(fli.barometricadvertiserid, (0)::bigint) AS barometricadvertiserid,
    COALESCE(fli.barometriccampaignid, (0)::bigint) AS barometriccampaignid,
    fli.iolinebudget,
    fli.ratetype,
    fli.ioimpression,
    fli.ioclicks,
    fli.iocompletes,
    fli.clientrate,
    fli.iolineitemid,
    fli.totalimpressiongoal,
    fli.dailyimpressiongoal,
    fli.totalclickgoal,
    fli.dailyclickgoal,
    fli.totalcompletegoal,
    fli.dailycompletegoal,
    COALESCE(bco.totalbidconsumed, (0)::numeric) AS totalbidconsumed,
    COALESCE(bco.totalwinconsumed, (0)::numeric) AS totalwinconsumed,
    COALESCE(bcd.dailywinconsumed, (0)::numeric) AS dailywinconsumed,
    COALESCE(bco.totalimpressionconsumed, (0)::numeric) AS totalimpressionconsumed,
    COALESCE(bcd.dailyimpressionconsumed, (0)::numeric) AS dailyimpressionconsumed,
    COALESCE(bco.totalclickconsumed, (0)::numeric) AS totalclickconsumed,
    COALESCE(bcd.dailyclickconsumed, (0)::numeric) AS dailyclickconsumed,
    COALESCE(bco.totalcompleteconsumed, (0)::numeric) AS totalcompleteconsumed,
    COALESCE(bcd.dailycompleteconsumed, (0)::numeric) AS dailycompleteconsumed,
    COALESCE(bco.totalbudgetconsumed, (0)::double precision) AS totalbudgetconsumed,
    fli.frequencyimpressions,
    fli.frequencytimeframe,
    fli.frequencyby,
    fli.isoptimizeron,
    COALESCE(fli.optimizerpercentage, (0)::double precision) AS optimizerpercentage,
    fli.targetctr,
    fli.targetmargin,
    fli.isoptimizedprice,
    fli.isdynamicscore,
    fli.impressionsperrun,
    fli.scoredelta,
    fli.ratedelta,
    fli.lowbidrate,
    fli.highbidrate,
    fli.maxstrategypercentage,
    fli.maxpacingrate,
    fli.highpacingrate,
    fli.lowpacingrate,
    COALESCE(fli.minpacingrate, (0)::double precision) AS minpacingrate,
    COALESCE(fli.mincompetition, (0)::double precision) AS mincompetition,
    COALESCE(fli.maxcompetition, (0)::double precision) AS maxcompetition,
    COALESCE(fli.minwinrate, (0)::double precision) AS minwinrate,
    COALESCE(fli.maxwinrate, (0)::double precision) AS maxwinrate,
    COALESCE(fli.impressionspershortrun, 0) AS impressionspershortrun,
    COALESCE(fli.dynamictargetctr, false) AS dynamictargetctr,
    COALESCE(fli.lowstrategycompensation, false) AS lowstrategycompensation,
    COALESCE(fli.lowstrategyinitminscore, (0)::double precision) AS lowstrategyinitminscore,
    COALESCE(fli.lowstrategydynamicminscore, false) AS lowstrategydynamicminscore,
    COALESCE(fli.maxstrategymultiplier, (0)::double precision) AS maxstrategymultiplier,
    COALESCE(fli.minrate, (0)::double precision) AS minrate,
    COALESCE(fli.maxrate, (0)::double precision) AS maxrate,
    COALESCE(fli.dynamictimescalemultiplier, false) AS dynamictimescalemultiplier,
    COALESCE(fli.timescalelengtheningimpratio, (0)::double precision) AS timescalelengtheningimpratio,
    COALESCE(fli.timescaleshorteningimpratio, (0)::double precision) AS timescaleshorteningimpratio,
    COALESCE(fli.mintimescalemultiplier, (0)::double precision) AS mintimescalemultiplier,
    COALESCE(fli.maxtimescalemultiplier, (0)::double precision) AS maxtimescalemultiplier,
    fli.ispricefloorfilter,
    fli.isprioritylineitem,
    COALESCE(fli.vendorcost, ''::text) AS vendorcost,
    flic.lastconsumedon AS lastconsumedtimestamp,
    fli.lastupdatetime
   FROM (((((vwadt_flat_adv_cmp_li fli
     JOIN tbladt_advertiser adv ON (((fli.advertiserid = adv.advertiserid) AND (fli.isdeleted = false) AND (fli.campaignenddate >= now()) AND (fli.campaignapprovalstatus = 2) AND ((fli.campaignstate = 1) OR ((fli.campaignstate = 3) AND (fli.campaignstatus = 5))) AND (fli.lineitemenddate >= now()) AND (fli.lineitemapprovalstatus = 2) AND ((fli.lineitemstate = 1) OR ((fli.lineitemstate = 3) AND (fli.lineitemstatus = 5))) AND (NOT (fli.advertiserid IN ( SELECT tblqa_dummyadvertiser.advertiserid
           FROM tblqa_dummyadvertiser))))))
     JOIN tbladt_agency agn ON ((adv.agencyid = agn.agencyid)))
     LEFT JOIN tbladt_flat_lineitem_consumed flic ON ((fli.lineitemid = flic.lineitemid)))
     LEFT JOIN ( SELECT sum(COALESCE(tbladt_biddingstatistics_consumed_overall.totalbids, (0)::bigint)) AS totalbidconsumed,
            sum(COALESCE(tbladt_biddingstatistics_consumed_overall.totalwins, (0)::bigint)) AS totalwinconsumed,
            sum(COALESCE(tbladt_biddingstatistics_consumed_overall.totalimpressions, (0)::bigint)) AS totalimpressionconsumed,
            sum(COALESCE(tbladt_biddingstatistics_consumed_overall.totalclicks, (0)::bigint)) AS totalclickconsumed,
            sum(COALESCE(tbladt_biddingstatistics_consumed_overall.totalcompletes, (0)::bigint)) AS totalcompleteconsumed,
            sum(COALESCE(tbladt_biddingstatistics_consumed_overall.totalpayout, (0)::double precision)) AS totalbudgetconsumed,
            tbladt_biddingstatistics_consumed_overall.lineitemid
           FROM tbladt_biddingstatistics_consumed_overall
          GROUP BY tbladt_biddingstatistics_consumed_overall.lineitemid) bco ON ((bco.lineitemid = fli.lineitemid)))
     LEFT JOIN ( SELECT sum(COALESCE(tbladt_biddingstatistics_consumed_daily_est.totalwins, (0)::bigint)) AS dailywinconsumed,
            sum(COALESCE(tbladt_biddingstatistics_consumed_daily_est.totalimpressions, (0)::bigint)) AS dailyimpressionconsumed,
            sum(COALESCE(tbladt_biddingstatistics_consumed_daily_est.totalclicks, (0)::bigint)) AS dailyclickconsumed,
            sum(COALESCE(tbladt_biddingstatistics_consumed_daily_est.totalcompletes, (0)::bigint)) AS dailycompleteconsumed,
            tbladt_biddingstatistics_consumed_daily_est.lineitemid
           FROM tbladt_biddingstatistics_consumed_daily_est
          WHERE (date_trunc('day'::text, tbladt_biddingstatistics_consumed_daily_est."timestamp") = date_trunc('day'::text, now()))
          GROUP BY tbladt_biddingstatistics_consumed_daily_est.lineitemid) bcd ON ((bcd.lineitemid = fli.lineitemid)));
 1   DROP VIEW public.vwadt_platform_activelineitems;
       public       wayio    false    754    209    209    223    223    223    223    223    223    227    227    227    227    227    227    227    290    290    588    588    708    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    754    3            �           1259    22869 %   vwadt_platform_activerichmediamarkups    VIEW       CREATE VIEW vwadt_platform_activerichmediamarkups AS
 SELECT aexm.mediaproviderid,
    mp.mediaprovider,
    aexm.adexchangeid,
    aex.name AS adexchange,
    aex.status AS adexchangestatus,
    COALESCE(aexm.inappcontent, ''::text) AS inappcontent,
    COALESCE(aexm.mobilewebcontent, ''::text) AS mobilewebcontent
   FROM ((tempalladexmarkup aexm
     JOIN tbladt_mediaprovider mp ON ((aexm.mediaproviderid = mp.mediaproviderid)))
     JOIN tbladt_adexchange aex ON ((aexm.adexchangeid = aex.adexchangeid)))
  WHERE (aex.status = 1);
 8   DROP VIEW public.vwadt_platform_activerichmediamarkups;
       public       wayio    false    710    710    710    710    643    643    587    587    587    3            �           1259    22879    vwadt_platform_activesitelist    VIEW     \  CREATE VIEW vwadt_platform_activesitelist AS
 SELECT tbladt_flat_reqproperty_sitelist.recordid AS id,
    tbladt_flat_reqproperty_sitelist.reqproperty AS appsiteproperty,
    tbladt_flat_reqproperty_sitelist.sitelisttype,
    COALESCE(tbladt_flat_reqproperty_sitelist.sitelistids, ''::text) AS sitelistids
   FROM tbladt_flat_reqproperty_sitelist;
 0   DROP VIEW public.vwadt_platform_activesitelist;
       public       wayio    false    293    293    293    293    3            �           1259    25108    vwadt_platform_activestrategies    VIEW     2  CREATE VIEW vwadt_platform_activestrategies AS
 SELECT stgt.lineitemid,
    stgt.strategyid,
    stgt.strategyname,
    stgt.strategystartdate,
    stgt.strategyenddate,
    COALESCE(stgt.highlowctr, 0) AS highlowctr,
    stgt.strategypricingtype,
    stgt.strategymaxrate,
    stgt.minimumcpmrate,
    stgt.maximumcpmrate,
    stgt.strategypercentage,
    COALESCE(stgt.learnerpercent, (0.00)::double precision) AS learnerpercent,
    COALESCE(stgt.timeframe, 0) AS timeframe,
    COALESCE(stgt.cappercent, (0.00)::double precision) AS cappercent,
    stgt.strategytotalimpressiongoal,
    stgt.strategydailyimpressiongoal,
    stgt.strategytotalclickgoal,
    stgt.strategydailyclickgoal,
    stgt.strategytotalcompletegoal,
    stgt.strategydailycompletegoal,
    COALESCE(bco.totalbids, (0)::numeric) AS totalbidconsumed,
    COALESCE(bco.totalwins, (0)::numeric) AS totalwinconsumed,
    COALESCE(bcd.totalwins, (0)::numeric) AS dailywinconsumed,
    COALESCE(bco.totalimpressions, (0)::numeric) AS totalimpressionconsumed,
    COALESCE(bcd.totalimpressions, (0)::numeric) AS dailyimpressionconsumed,
    COALESCE(bco.totalclicks, (0)::numeric) AS totalclickconsumed,
    COALESCE(bcd.totalclicks, (0)::numeric) AS dailyclickconsumed,
    COALESCE(bco.totalcompletes, (0)::numeric) AS totalcompleteconsumed,
    COALESCE(bcd.totalcompletes, (0)::numeric) AS dailycompleteconsumed,
    stgt.frequencyimpressions,
    stgt.frequencytimeframe,
    stgt.frequencyby,
    stgt.minimumctrorvtr AS minctr,
    stgt.maximumctrorvtr AS maxctr,
    (stgt.rtpemodelid)::character varying(1) AS rtpemodelid,
    COALESCE(stgt.rtpeclassification, 1) AS rtpeclassification,
    COALESCE(stgt.rtpetype, 0) AS rtpetype,
    stgt.associatedadexchanges,
    COALESCE(stgt.dealids, ''::text) AS dealids,
    COALESCE(NULLIF(stgt.devicetypes, ''::text), '4|5'::text) AS devicetypes,
    stgt.desktop,
        CASE
            WHEN (NULLIF(stgt.devicetypes, ''::text) IS NULL) THEN true
            ELSE stgt.isallsmartphone
        END AS isallsmartphone,
        CASE
            WHEN (NULLIF(stgt.devicetypes, ''::text) IS NULL) THEN true
            ELSE stgt.isalltablets
        END AS isalltablets,
    stgt.os,
    stgt.osv,
    stgt.make,
    stgt.model,
    stgt.carrier,
    stgt.isallwirelesscarriers,
    stgt.isallwifi,
    stgt.appsiteproperties,
    stgt.idfa,
    stgt.iabcode,
    stgt.includedkeyword,
    stgt.excludedkeyword,
    COALESCE(stgt.whitelistsiteids, ''::text) AS whitelistsiteids,
    COALESCE(stgt.blacklistsiteids, ''::text) AS blacklistsiteids,
    stgt.countryiso2code,
    stgt.countryiso3code,
    stgt.statecode,
    stgt.city,
    stgt.dma,
    stgt.zip,
    stgt.coordinate,
    COALESCE(stgt.proximitydesignid, ''::character varying) AS proximitydesignid,
    COALESCE(stgt.geopulseaudiencedesignid, ''::character varying) AS proximityaudiencedesignid,
    stgt.gender,
    stgt.age,
    stgt.isskewage,
    stgt.homebiz,
    stgt.languagecode,
    stgt.mosaiccode,
    stgt.daypartingrequesttimezone,
    stgt.dayparting,
    stgt.temperature,
    stgt.weathercode,
    COALESCE(stgt.retargetingtargettype, 0) AS retargetingtargettype,
    COALESCE(stgt.cparetargetinginitialgoalname, ''::text) AS cparetargetinginitialgoalname,
    COALESCE(stgt.cparetargetinginitialrecencydaysfrom, 0) AS cparetargetinginitialrecencydaysfrom,
    COALESCE(stgt.cparetargetinginitialrecencydaysto, 0) AS cparetargetinginitialrecencydaysto,
    COALESCE(stgt.cparetargetinginitialconversionstrength, ''::text) AS cparetargetinginitialconversionstrength,
    COALESCE(stgt.cparetargetinginitialuserfrequency, 0) AS cparetargetinginitialuserfrequency,
    COALESCE(stgt.cparetargetinginitialfrequency, 0) AS cparetargetinginitialfrequency,
    COALESCE(stgt.cparetargetingdecrementalgoalname, ''::text) AS cparetargetingdecrementalgoalname,
    COALESCE(stgt.cparetargetingdecrementalrecencydaysfrom, 0) AS cparetargetingdecrementalrecencydaysfrom,
    COALESCE(stgt.cparetargetingdecrementalrecencydaysto, 0) AS cparetargetingdecrementalrecencydaysto,
    COALESCE(stgt.cparetargetingdecrementalconversionstrength, ''::text) AS cparetargetingdecrementalconversionstrength,
    COALESCE(stgt.cparetargetingdecrementaluserfrequency, 0) AS cparetargetingdecrementaluserfrequency,
    COALESCE(stgt.cparetargetingdecrementalfrequency, 0) AS cparetargetingdecrementalfrequency,
    COALESCE(stgt.cparetargetingaddunattributedon, false) AS cparetargetingaddunattributedon,
    COALESCE(stgt.cparetargetingupdatefrequency, 0) AS cparetargetingupdatefrequency,
    COALESCE(stgt.cparetargetingtype, 0) AS cparetargetingtype,
    COALESCE(stgt.retargetingscriptname, ''::character varying) AS retargetingscriptname,
    COALESCE(stgt.retargetingdescription, ''::character varying) AS retargetingdescription,
    COALESCE(stgt.retargetinginitialscript, ''::text) AS retargetinginitialscript,
    COALESCE(stgt.retargetingincupdatescript, ''::text) AS retargetingincupdatescript,
    COALESCE(stgt.retargetingdecupdatescript, ''::text) AS retargetingdecupdatescript,
    COALESCE(stgt.retargetingtarget, 0) AS retargetingtarget,
    COALESCE(stgt.retargetingupdatefrequency, 0) AS retargetingupdatefrequency,
    COALESCE(stgt.retargetingtype, 0) AS retargetingtype,
    COALESCE(stgt.datapartnerjson, ''::text) AS datapartnerjson,
    COALESCE(stgt.associatedcost, ''::text) AS associatedcost,
    COALESCE(stgt.dailylosscap, (0)::double precision) AS dailylosscap,
    COALESCE(stgt.skippability, '-1'::integer) AS skippability,
    tsc.creativeids,
    COALESCE((stgt.barometriccampaignid)::bigint, (0)::bigint) AS barometriccampaignid,
    fsc.lastconsumedon AS lastconsumedtimestamp
   FROM ((((vwadt_flat_stg_targets stgt
     LEFT JOIN tbladt_flat_strategy_consumed fsc ON ((stgt.strategyid = fsc.strategyid)))
     LEFT JOIN ( SELECT sum(tbladt_biddingstatistics_consumed_overall.totalbids) AS totalbids,
            sum(tbladt_biddingstatistics_consumed_overall.totalwins) AS totalwins,
            sum(tbladt_biddingstatistics_consumed_overall.totalimpressions) AS totalimpressions,
            sum(tbladt_biddingstatistics_consumed_overall.totalclicks) AS totalclicks,
            sum(tbladt_biddingstatistics_consumed_overall.totalcompletes) AS totalcompletes,
            tbladt_biddingstatistics_consumed_overall.strategyid
           FROM tbladt_biddingstatistics_consumed_overall
          GROUP BY tbladt_biddingstatistics_consumed_overall.strategyid) bco ON ((bco.strategyid = stgt.strategyid)))
     LEFT JOIN ( SELECT sum(tbladt_biddingstatistics_consumed_daily_est.totalwins) AS totalwins,
            sum(tbladt_biddingstatistics_consumed_daily_est.totalimpressions) AS totalimpressions,
            sum(tbladt_biddingstatistics_consumed_daily_est.totalclicks) AS totalclicks,
            sum(tbladt_biddingstatistics_consumed_daily_est.totalcompletes) AS totalcompletes,
            tbladt_biddingstatistics_consumed_daily_est.strategyid
           FROM tbladt_biddingstatistics_consumed_daily_est
          WHERE (date_trunc('day'::text, tbladt_biddingstatistics_consumed_daily_est."timestamp") = date_trunc('day'::text, now()))
          GROUP BY tbladt_biddingstatistics_consumed_daily_est.strategyid) bcd ON ((bcd.strategyid = stgt.strategyid)))
     LEFT JOIN ( SELECT vwadt_flat_stg_crt.strategyid,
            string_agg(((vwadt_flat_stg_crt.creativeid)::character varying)::text, '|'::text) AS creativeids
           FROM vwadt_flat_stg_crt
          GROUP BY vwadt_flat_stg_crt.strategyid) tsc ON ((tsc.strategyid = stgt.strategyid)))
  WHERE ((stgt.strategyenddate >= now()) AND (stgt.isdeleted = false) AND ((stgt.strategystate = 1) OR ((stgt.strategystate = 3) AND (stgt.strategystatus = 5))));
 2   DROP VIEW public.vwadt_platform_activestrategies;
       public       wayio    false    751    761    761    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    751    296    296    227    227    227    227    227    227    223    223    223    223    223    223    3            �           1259    22823    vwadt_platformblockedlist    VIEW     }  CREATE VIEW vwadt_platformblockedlist AS
 SELECT ( SELECT COALESCE(string_agg(ltrim(rtrim(tbladt_platform_blocklist_siteapp.reqproperty)), '|'::text), ''::text) AS "coalesce"
           FROM tbladt_platform_blocklist_siteapp) AS blockedsiteapps,
    ( SELECT COALESCE(string_agg(tbladt_platform_blocklist_keywords.keyword, '|'::text), ''::text) AS "coalesce"
           FROM tbladt_platform_blocklist_keywords) AS blacklistedkeywords,
    ( SELECT COALESCE(string_agg((tbladt_platform_blocklist_ip.ipaddress)::text, '|'::text), ''::text) AS "coalesce"
           FROM tbladt_platform_blocklist_ip
          WHERE ((tbladt_platform_blocklist_ip.longtermflag = 0) AND ((tbladt_platform_blocklist_ip.type)::text = 'Misc'::text))) AS miscnoncidr,
    ( SELECT COALESCE(string_agg((tbladt_platform_blocklist_ip.ipaddress)::text, '|'::text), ''::text) AS "coalesce"
           FROM tbladt_platform_blocklist_ip
          WHERE ((tbladt_platform_blocklist_ip.longtermflag = 0) AND ((tbladt_platform_blocklist_ip.type)::text = 'Fraud'::text))) AS fraudnoncidr,
    ( SELECT COALESCE(string_agg((tbladt_platform_blocklist_ip.ipaddress)::text, '|'::text), ''::text) AS "coalesce"
           FROM tbladt_platform_blocklist_ip
          WHERE ((tbladt_platform_blocklist_ip.longtermflag = 0) AND ((tbladt_platform_blocklist_ip.type)::text = 'Data Center'::text))) AS datacenternoncidr,
    ( SELECT COALESCE(string_agg((tbladt_platform_blocklist_ip.ipaddress)::text, '|'::text), ''::text) AS "coalesce"
           FROM tbladt_platform_blocklist_ip
          WHERE ((tbladt_platform_blocklist_ip.longtermflag = 0) AND ((tbladt_platform_blocklist_ip.type)::text = 'Proxy'::text))) AS proxynoncidr,
    ( SELECT COALESCE(string_agg((tbladt_platform_blocklist_ip.ipaddress)::text, '|'::text), ''::text) AS "coalesce"
           FROM tbladt_platform_blocklist_ip
          WHERE ((tbladt_platform_blocklist_ip.longtermflag = 0) AND ((tbladt_platform_blocklist_ip.type)::text = 'Opt Out'::text))) AS optoutnoncidr,
    ( SELECT COALESCE(string_agg((tbladt_platform_blocklist_wayid.wayid)::text, '|'::text), ''::text) AS "coalesce"
           FROM tbladt_platform_blocklist_wayid) AS wayids;
 ,   DROP VIEW public.vwadt_platformblockedlist;
       public       wayio    false    366    368    370    364    364    364    3            �           1259    22828    vwadt_platformcidriplist    VIEW     7  CREATE VIEW vwadt_platformcidriplist AS
 SELECT ( SELECT COALESCE(string_agg((tbladt_platform_blocklist_ip.ipaddress)::text, '|'::text), ''::text) AS "coalesce"
           FROM tbladt_platform_blocklist_ip
          WHERE ((tbladt_platform_blocklist_ip.longtermflag = 0) AND ((tbladt_platform_blocklist_ip.type)::text = 'Misc'::text))) AS misccidr,
    ( SELECT COALESCE(string_agg((tbladt_platform_blocklist_ip.ipaddress)::text, '|'::text), ''::text) AS "coalesce"
           FROM tbladt_platform_blocklist_ip
          WHERE ((tbladt_platform_blocklist_ip.longtermflag = 0) AND ((tbladt_platform_blocklist_ip.type)::text = 'Fraud'::text))) AS fraudcidr,
    ( SELECT COALESCE(string_agg((tbladt_platform_blocklist_ip.ipaddress)::text, '|'::text), ''::text) AS "coalesce"
           FROM tbladt_platform_blocklist_ip
          WHERE ((tbladt_platform_blocklist_ip.longtermflag = 0) AND ((tbladt_platform_blocklist_ip.type)::text = 'Data Center'::text))) AS datacentercidr,
    ( SELECT COALESCE(string_agg((tbladt_platform_blocklist_ip.ipaddress)::text, '|'::text), ''::text) AS "coalesce"
           FROM tbladt_platform_blocklist_ip
          WHERE ((tbladt_platform_blocklist_ip.longtermflag = 0) AND ((tbladt_platform_blocklist_ip.type)::text = 'Proxy'::text))) AS proxycidr,
    ( SELECT COALESCE(string_agg((tbladt_platform_blocklist_ip.ipaddress)::text, '|'::text), ''::text) AS "coalesce"
           FROM tbladt_platform_blocklist_ip
          WHERE ((tbladt_platform_blocklist_ip.longtermflag = 0) AND ((tbladt_platform_blocklist_ip.type)::text = 'Opt Out'::text))) AS optoutcidr;
 +   DROP VIEW public.vwadt_platformcidriplist;
       public       wayio    false    364    364    364    3            �           1259    22833    vwadt_platformcuidlist    VIEW     �   CREATE VIEW vwadt_platformcuidlist AS
 SELECT ( SELECT COALESCE(string_agg((tbladt_platform_blocklist_cookie.cuid)::text, '|'::text), ''::text) AS "coalesce"
           FROM tbladt_platform_blocklist_cookie) AS cuid;
 )   DROP VIEW public.vwadt_platformcuidlist;
       public       wayio    false    362    3            ;          0    25062    adx_performance_tracking 
   TABLE DATA               �   COPY adx_performance_tracking (recordid, adexchange, "timestamp", requests, qps, nobids, bids, wins, imps, clicks, completes, avgbidresponsetime, avgnobidresponsetime, createdate, updatedate, bidders) FROM stdin;
    public       wayio    false    759   [�	      <          0    25071    bidder_performance_tracking 
   TABLE DATA               �   COPY bidder_performance_tracking (recordid, bidderagentid, "timestamp", requests, qps, nobids, bids, wins, imps, clicks, completes, avgbidresponsetime, avgnobidresponsetime, createdate, updatedate, bidders) FROM stdin;
    public       wayio    false    760   x�	      2          0    17175 %   tbladt_3psegmentreportrequest_trigger 
   TABLE DATA               �   COPY tbladt_3psegmentreportrequest_trigger (requestid, requestbyemailids, year, month, dbvdname, requestedon, processedon, filename, requestedby) FROM stdin;
    public       wayio    false    197   ��	      �          0    21809    tbladt_action 
   TABLE DATA               f   COPY tbladt_action (actionid, name, code, isforadmin, isforsaonly, isactive, displayrank) FROM stdin;
    public       wayio    false    586   ۇ	      �          0    21819    tbladt_adexchange 
   TABLE DATA               �   COPY tbladt_adexchange (adexchangeid, name, adminemail, adminphoneno, website, street, city, state, country, zip, status, creativetypes, devicetypes, isapprovalrequired, isrtpeenable, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    587   ��	      3          0    17185 #   tbladt_adexchanges_requiredapproval 
   TABLE DATA               T   COPY tbladt_adexchanges_requiredapproval (adexchangeid, name, procname) FROM stdin;
    public       wayio    false    198   
�	      �          0    21832    tbladt_advertiser 
   TABLE DATA               �  COPY tbladt_advertiser (advertiserid, name, icon, agencyid, categoryid, categoryid2, domain, sfadvertiserid, assigneduserid, barometricadvertiserid, barometricadvertisername, istestadvertiser, contactfname, contactlname, contactemail, contactphoneno, contactaddress1, contactaddress2, contactcity, contactstate, contactcountry, contactzip, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    588   '�	      8          0    17218    tbladt_advertiser_assignee 
   TABLE DATA               M   COPY tbladt_advertiser_assignee (recordid, advertiserid, userid) FROM stdin;
    public       wayio    false    203   Ǌ	      :          0    17226    tbladt_advertiser_delete 
   TABLE DATA               K  COPY tbladt_advertiser_delete (advertiserid, name, agencyid, categoryid, categoryid2, domain, assigneduserid, istestadvertiser, contactfname, contactlname, contactemail, contactphoneno, contactaddress1, contactaddress2, contactcity, contactstate, contactcountry, contactzip, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    205   
�	      �          0    21843 #   tbladt_adxappnexus_creativeapproval 
   TABLE DATA               �   COPY tbladt_adxappnexus_creativeapproval (recordid, creativeid, appnexus_objectid, iscreativemodified, issentforapproval, isdeletefromappnexus, approvalstatusvalue, approvalstatus, approvalsenton, activatedon, lastbiddingdate, statusmessage) FROM stdin;
    public       wayio    false    589   '�	      <          0    17239 '   tbladt_adxappnexus_creativerejected_log 
   TABLE DATA               u   COPY tbladt_adxappnexus_creativerejected_log (creativeid, appnexus_objectid, rejectedon, audit_feedback) FROM stdin;
    public       wayio    false    207   D�	      >          0    17247    tbladt_agency 
   TABLE DATA               �   COPY tbladt_agency (agencyid, name, website, contactfname, contactlname, contactemail, contactphoneno, contactaddress1, contactaddress2, contactcity, contactstate, contactcountry, contactzip, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    209   a�	      ?          0    17257    tbladt_alertmonitoring 
   TABLE DATA               o   COPY tbladt_alertmonitoring (alerts, count, alertgeneratedfromid, alertgeneratedfrom, generatedon) FROM stdin;
    public       wayio    false    210   ��	      �          0    20953    tbladt_apisecurity_group 
   TABLE DATA               �   COPY tbladt_apisecurity_group (groupid, groupname, securitykey, webuserid, webuserpassword, securitylevel, isactive) FROM stdin;
    public       wayio    false    584   ��	      �          0    21802    tbladt_apisecurity_user 
   TABLE DATA               v   COPY tbladt_apisecurity_user (userid, groupid, username, ipaddress, webuserid, webuserpassword, isactive) FROM stdin;
    public       wayio    false    585   ۋ	      A          0    17263    tbladt_audience 
   TABLE DATA               �   COPY tbladt_audience (audiencesegmentid, datapartner, segmentname, segmentid, fullpath, cacheupdatekey, cacheupdatetime) FROM stdin;
    public       wayio    false    212   ��	      C          0    17274    tbladt_auditlog 
   TABLE DATA               ?   COPY tbladt_auditlog (recordid, data, "timestamp") FROM stdin;
    public       wayio    false    214   8�	      �          0    21857 &   tbladt_backgroundprocess_configuration 
   TABLE DATA               �   COPY tbladt_backgroundprocess_configuration (flatupdate_maxprocessingrecords, flatupdate_maxsubsetrecords, isuatappnexusallowed) FROM stdin;
    public       wayio    false    590   U�	      �          0    21861 +   tbladt_barocreativeplacement_update_trigger 
   TABLE DATA               �   COPY tbladt_barocreativeplacement_update_trigger (triggerid, moduletype, triggerby, triggeron, isprocessed, processedon) FROM stdin;
    public       wayio    false    591   r�	      E          0    17299 4   tbladt_barocreativeplacement_update_trigger_creative 
   TABLE DATA               ^   COPY tbladt_barocreativeplacement_update_trigger_creative (triggerid, creativeid) FROM stdin;
    public       wayio    false    216   ��	      F          0    17302 #   tbladt_barometricawsalertmonitoring 
   TABLE DATA               �   COPY tbladt_barometricawsalertmonitoring (alerts, alertsource, awsurl, mailbody, alertgeneratedfromid, alertgeneratedfrom, generatedon) FROM stdin;
    public       wayio    false    217   ��	      �          0    21869    tbladt_behavior 
   TABLE DATA               B   COPY tbladt_behavior (behaviorid, behavior, isactive) FROM stdin;
    public       wayio    false    592   Ɍ	      H          0    17314    tbladt_biddingstatistics 
   TABLE DATA               �   COPY tbladt_biddingstatistics (recordid, "timestamp", adexchangeid, campaignid, lineitemid, strategyid, creativeid, totalbids, totalwins, totalimpressions, totalclicks, totalcompletes, totalpayout, revenue, updatedon, cpmcost, cpccost) FROM stdin;
    public       wayio    false    219   �	      J          0    17323 '   tbladt_biddingstatistics_consumed_daily 
   TABLE DATA               �   COPY tbladt_biddingstatistics_consumed_daily (recordid, "timestamp", lineitemid, strategyid, totalbids, totalwins, totalimpressions, totalclicks, totalcompletes, totalpayout) FROM stdin;
    public       wayio    false    221   �	      L          0    17331 +   tbladt_biddingstatistics_consumed_daily_est 
   TABLE DATA               �   COPY tbladt_biddingstatistics_consumed_daily_est (recordid, "timestamp", lineitemid, strategyid, totalbids, totalwins, totalimpressions, totalclicks, totalcompletes, totalpayout) FROM stdin;
    public       wayio    false    223    �	      N          0    17339 0   tbladt_biddingstatistics_consumed_daily_est_temp 
   TABLE DATA               �   COPY tbladt_biddingstatistics_consumed_daily_est_temp (recordid, "timestamp", lineitemid, strategyid, totalbids, totalwins, totalimpressions, totalclicks, totalcompletes, totalpayout) FROM stdin;
    public       wayio    false    225   =�	      P          0    17347 )   tbladt_biddingstatistics_consumed_overall 
   TABLE DATA               �   COPY tbladt_biddingstatistics_consumed_overall (recordid, lineitemid, strategyid, totalbids, totalwins, totalimpressions, totalclicks, totalcompletes, totalpayout, cpmcost, cpccost) FROM stdin;
    public       wayio    false    227   Z�	      R          0    17355 .   tbladt_biddingstatistics_consumed_overall_temp 
   TABLE DATA               �   COPY tbladt_biddingstatistics_consumed_overall_temp (recordid, lineitemid, strategyid, totalbids, totalwins, totalimpressions, totalclicks, totalcompletes, totalpayout) FROM stdin;
    public       wayio    false    229   w�	      T          0    17363 '   tbladt_biddingstatistics_dashboardgraph 
   TABLE DATA               �   COPY tbladt_biddingstatistics_dashboardgraph (recordid, adexchangeid, campaignid, totalbids, totalwins, totalclicks, totalcompletes, updatedate) FROM stdin;
    public       wayio    false    231   ��	      V          0    17371 "   tbladt_biddingstatistics_last2days 
   TABLE DATA               �   COPY tbladt_biddingstatistics_last2days (id, totalbids, totalimpressionswon, totalclicks, totalpayoput, date, campaignid, creativeid, siteid, appid, platformid, osversionid, deviceid, adexchangeid, rtpeenabled, totalimppixels, totalcomplete) FROM stdin;
    public       wayio    false    233   ��	      8          0    23893    tbladt_bidmetrics 
   TABLE DATA               �   COPY tbladt_bidmetrics ("timestamp", class, lineitemid, strategyid, creativeid, adexchange, bidderagentid, sum, pricecpmsum, pricecpmmean, pricecpmdev, pricecpmmin, pricecpmmax, timemssum, timemsmean, timemsdev, timemsmin, timemsmax) FROM stdin;
    public       wayio    false    723   ΍	      �          0    21896    tbladt_campaign 
   TABLE DATA               >  COPY tbladt_campaign (campaignid, advertiserid, name, startdate, enddate, state, status, approvalstatus, externalio, sfopportunityid, assigneduserid, isoverrideassignee, createdby, createdon, updatedby, updatedon, apiaccessid, barometriccampaignid, barometriccampaignname, isdeleted, isrejected, iobudget) FROM stdin;
    public       wayio    false    598   �	      �          0    19310    tbladt_campaign_assignee 
   TABLE DATA               I   COPY tbladt_campaign_assignee (recordid, campaignid, userid) FROM stdin;
    public       wayio    false    583   `�	      Y          0    17405    tbladt_campaign_temp 
   TABLE DATA               �   COPY tbladt_campaign_temp (campaignid, advertiserid, name, startdate, enddate, approvalstatus, externalio, assigneduserid, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    236   ��	      [          0    17414    tbladt_campaign_watcher 
   TABLE DATA               I   COPY tbladt_campaign_watcher (watcherid, campaignid, userid) FROM stdin;
    public       wayio    false    238   ��	      ]          0    17422    tbladt_carrierpopular 
   TABLE DATA               k   COPY tbladt_carrierpopular (popularcarrierid, popularcarriername, countryid, carrierids, rank) FROM stdin;
    public       wayio    false    240   ֐	      _          0    17434    tbladt_carriers 
   TABLE DATA               i   COPY tbladt_carriers (carrierid, carriername, countryid, countrycode, countryname, isactive) FROM stdin;
    public       wayio    false    242   �	      a          0    17445    tbladt_clonetrigger 
   TABLE DATA               r   COPY tbladt_clonetrigger (triggerid, module, moduleids, clonecount, status, triggeredby, triggeredon) FROM stdin;
    public       wayio    false    244   7�	      c          0    17458    tbladt_commonwords 
   TABLE DATA               5   COPY tbladt_commonwords (recordid, word) FROM stdin;
    public       wayio    false    246   T�	      �          0    21912    tbladt_company 
   TABLE DATA               �   COPY tbladt_company (companyid, name, website, email, phoneno, street, city, state, country, zip, timezoneid, isactive, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    599   q�	      e          0    17470    tbladt_costcategory 
   TABLE DATA               D   COPY tbladt_costcategory (costcategoryid, costcategory) FROM stdin;
    public       wayio    false    248   ��	      �          0    21923    tbladt_costtype 
   TABLE DATA               B   COPY tbladt_costtype (costtypeid, costtype, isactive) FROM stdin;
    public       wayio    false    600   ��	      �          0    21929    tbladt_country 
   TABLE DATA               [   COPY tbladt_country (countryid, countryname, iso_2_code, iso_3_code, isactive) FROM stdin;
    public       wayio    false    601   ȑ	      g          0    17486    tbladt_country_state_city 
   TABLE DATA               v   COPY tbladt_country_state_city (recordid, countryid, country, stateid, state, city, createdon, updatedon) FROM stdin;
    public       wayio    false    250   ��	      i          0    17495    tbladt_country_state_city_stage 
   TABLE DATA               R   COPY tbladt_country_state_city_stage (recordid, country, state, city) FROM stdin;
    public       wayio    false    252   �	      �          0    21875 )   tbladt_cparetargeting_conversion_strength 
   TABLE DATA               h   COPY tbladt_cparetargeting_conversion_strength (conversionid, conversionstrength, isactive) FROM stdin;
    public       wayio    false    593   1�	      �          0    21879    tbladt_cparetargeting_goal_name 
   TABLE DATA               N   COPY tbladt_cparetargeting_goal_name (goalid, goalname, isactive) FROM stdin;
    public       wayio    false    594   N�	      �          0    21884 &   tbladt_cparetargeting_retargeting_type 
   TABLE DATA               g   COPY tbladt_cparetargeting_retargeting_type (retargetingtypeid, retargetingtype, isactive) FROM stdin;
    public       wayio    false    595   k�	      �          0    21888 &   tbladt_cparetargeting_update_frequency 
   TABLE DATA               g   COPY tbladt_cparetargeting_update_frequency (updatefrequencyid, updatefrequency, isactive) FROM stdin;
    public       wayio    false    596   ��	      �          0    21892 $   tbladt_cparetargeting_user_frequency 
   TABLE DATA               a   COPY tbladt_cparetargeting_user_frequency (userfrequencyid, userfrequency, isactive) FROM stdin;
    public       wayio    false    597   ��	      �          0    21935    tbladt_creative 
   TABLE DATA               O  COPY tbladt_creative (creativeid, lineitemid, refcreativeid, adformatid, templateid, markupsourceid, groupid, creativename, thirdpartyadid, startdate, enddate, creativetypeid, mediatypeid, markuptypeid, creativeattributeids, adfeatureids, previewurl, clickthroughurl, landingpageurl, rotationpercentage, istransactioncompleted, state, status, creativevendorids, isssl, api, barometricplacementid, barometricplacementname, barometricplacementcturl, barometricplacementautocreationid, overriddenadtag, createdby, createdon, updatedby, updatedon, campaignid, isdeleted, isrejected) FROM stdin;
    public       wayio    false    602   	      �          0    22001    tbladt_creative_adfeature 
   TABLE DATA               N   COPY tbladt_creative_adfeature (adfeatureid, adfeature, isactive) FROM stdin;
    public       wayio    false    610   ��	      �          0    22007    tbladt_creative_adformat 
   TABLE DATA               Y   COPY tbladt_creative_adformat (adformatid, adformat, adformatcode, isactive) FROM stdin;
    public       wayio    false    611   ē	      '          0    22762    tbladt_creative_adformat_api 
   TABLE DATA               B   COPY tbladt_creative_adformat_api (adformatid, apiid) FROM stdin;
    public       wayio    false    698   %�	      s          0    17568     tbladt_creative_adformat_display 
   TABLE DATA               �   COPY tbladt_creative_adformat_display (creativeid, mediasourcetypeid, rawfilename, mediasource, mediaproviderid, uniquecreativeid, placementid, dimensionid, height, width) FROM stdin;
    public       wayio    false    262   B�	      t          0    17576 #   tbladt_creative_adformat_expandable 
   TABLE DATA               �   COPY tbladt_creative_adformat_expandable (creativeid, mediasourcetypeid, rawfilename, mediasource, mediaproviderid, uniquecreativeid, placementid, dimensionid, height, width, iframebuster) FROM stdin;
    public       wayio    false    263   l�	      u          0    17584 %   tbladt_creative_adformat_interstitial 
   TABLE DATA               �   COPY tbladt_creative_adformat_interstitial (creativeid, mediasourcetypeid, rawfilename, mediasource, mediaproviderid, uniquecreativeid, placementid, dimensionid, height, width) FROM stdin;
    public       wayio    false    264   ��	      v          0    17592    tbladt_creative_adformat_native 
   TABLE DATA               <  COPY tbladt_creative_adformat_native (creativeid, mediasourcetypeid, rawfilename, mediasource, mediaproviderid, uniquecreativeid, placementid, dimensionid, height, width, iconmediasourcetypeid, iconrawfilename, iconmediasource, icondimensionid, iconheight, iconwidth, logomediasourcetypeid, logorawfilename, logomediasource, logodimensionid, logoheight, logowidth, title, sponsoredtext, description, calltoaction, starrating, videosourcetypeid, videorawfilename, videosource, videoduration, videodeliverytypeid, videomediabitrateid, videomimetypeid, videoapi) FROM stdin;
    public       wayio    false    265   ��	      �          0    22013    tbladt_creative_adformat_video 
   TABLE DATA               m  COPY tbladt_creative_adformat_video (creativeid, mediasourcetypeid, rawfilename, mediasource, mediaproviderid, uniquecreativeid, placementid, dimensionid, height, width, mimetypeid, deliverytypeid, isscalable, mediabitrateid, duration, hascompanionad, cadsourcetypeid, cadrawfilename, cadsource, caddimensionid, cadheight, cadwidth, cadclickthroughurl) FROM stdin;
    public       wayio    false    612   �	      �          0    21995    tbladt_creative_api 
   TABLE DATA               <   COPY tbladt_creative_api (apiid, api, isactive) FROM stdin;
    public       wayio    false    609   ��	      x          0    17605    tbladt_creative_companionad 
   TABLE DATA               �   COPY tbladt_creative_companionad (recordid, creativeid, cadsourcetypeid, cadrawfilename, cadsource, caddimensionid, cadheight, cadwidth, cadclickthroughurl) FROM stdin;
    public       wayio    false    267   �	      z          0    17616    tbladt_creative_delete 
   TABLE DATA               I  COPY tbladt_creative_delete (creativeid, lineitemid, refcreativeid, groupid, creativename, thirdpartyadid, startdate, enddate, mediatypeid, creativeattributeids, clickthroughurl, landingpageurl, rotationpercentage, status, isssl, createdby, createdon, updatedby, updatedon, istransactioncompleted, creativevendorids) FROM stdin;
    public       wayio    false    269   8�	      �          0    22022    tbladt_creative_deliverytype 
   TABLE DATA               W   COPY tbladt_creative_deliverytype (deliverytypeid, deliverytype, isactive) FROM stdin;
    public       wayio    false    613   U�	      �          0    22028    tbladt_creative_dimension 
   TABLE DATA               w   COPY tbladt_creative_dimension (dimensionid, adformatid, dimension, width, height, ispredefined, isactive) FROM stdin;
    public       wayio    false    614   }�	      |          0    17632 !   tbladt_creative_dimension_tracker 
   TABLE DATA               P   COPY tbladt_creative_dimension_tracker (creativeformatid, loggedon) FROM stdin;
    public       wayio    false    271   ��	      ~          0    17638 )   tbladt_creative_dimension_tracker_archive 
   TABLE DATA               b   COPY tbladt_creative_dimension_tracker_archive (recordid, creativeformatid, loggedon) FROM stdin;
    public       wayio    false    273   ��	      �          0    22036    tbladt_creative_dummy 
   TABLE DATA               2  COPY tbladt_creative_dummy (creativeid, lineitemid, refcreativeid, adformatid, templateid, markupsourceid, groupid, creativename, thirdpartyadid, startdate, enddate, creativetypeid, mediatypeid, markuptypeid, creativeattributeids, adfeatureids, previewurl, clickthroughurl, landingpageurl, rotationpercentage, istransactioncompleted, state, status, creativevendorids, isssl, api, barometricplacementid, barometricplacementname, barometricplacementcturl, barometricplacementautocreationid, overriddenadtag, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    615   ԕ	      �          0    22050    tbladt_creative_eventtracking 
   TABLE DATA               �   COPY tbladt_creative_eventtracking (recordid, creativeid, trackingid, trackingtag, isvideo, barometricplacementid, mediatype) FROM stdin;
    public       wayio    false    616   �	      �          0    22060    tbladt_creative_iframebuster 
   TABLE DATA               s   COPY tbladt_creative_iframebuster (iframebusterid, iframebustercode, iframebuster, vendorid, isactive) FROM stdin;
    public       wayio    false    617   �	      �          0    22066    tbladt_creative_markup_source 
   TABLE DATA               X   COPY tbladt_creative_markup_source (markupsourceid, markupsource, isactive) FROM stdin;
    public       wayio    false    618   ?�	      �          0    22072    tbladt_creative_mediabitrate 
   TABLE DATA               W   COPY tbladt_creative_mediabitrate (mediabitrateid, mediabitrate, isactive) FROM stdin;
    public       wayio    false    619   f�	      �          0    22078    tbladt_creative_mediafiletype 
   TABLE DATA               Z   COPY tbladt_creative_mediafiletype (mediafiletypeid, mediafiletype, isactive) FROM stdin;
    public       wayio    false    620   ��	      �          0    22084    tbladt_creative_mediasourcetype 
   TABLE DATA               q   COPY tbladt_creative_mediasourcetype (mediasourcetypeid, mediasourcetype, mediafiletypeid, isactive) FROM stdin;
    public       wayio    false    621   ��	      �          0    22090    tbladt_creative_mimetype 
   TABLE DATA               \   COPY tbladt_creative_mimetype (mimetypeid, mimetype, mediafiletypeid, isactive) FROM stdin;
    public       wayio    false    622   Ֆ	      �          0    17675    tbladt_creative_previewassoc 
   TABLE DATA               Q   COPY tbladt_creative_previewassoc (creativeid, updatedby, updatedon) FROM stdin;
    public       wayio    false    276   ��	      �          0    22096    tbladt_creative_trackingmaster 
   TABLE DATA               �   COPY tbladt_creative_trackingmaster (trackingid, trackingtype, isvideotracking, appnexuseventtypeid, appnexuseventtypename, isactive) FROM stdin;
    public       wayio    false    623   �	      �          0    21951    tbladt_creativeattribute 
   TABLE DATA               q   COPY tbladt_creativeattribute (attributeid, attributecode, attributename, attributecodeid, isactive) FROM stdin;
    public       wayio    false    603   8�	      k          0    17510    tbladt_creativeattributecode 
   TABLE DATA               \   COPY tbladt_creativeattributecode (recordid, attributeid, attributecode, isadx) FROM stdin;
    public       wayio    false    254   j�	      �          0    21957    tbladt_creativedimension 
   TABLE DATA               \   COPY tbladt_creativedimension (dimensionid, dimension, width, height, isactive) FROM stdin;
    public       wayio    false    604   ��	      �          0    21964    tbladt_creativegroup 
   TABLE DATA               �   COPY tbladt_creativegroup (groupid, lineitemid, groupname, status, startdate, enddate, mediatypeid, dimensionid, width, height, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    605   ��	      o          0    17529    tbladt_creativeproperties 
   TABLE DATA               F  COPY tbladt_creativeproperties (recordid, creativeid, creativemediatypeid, creativemarkuptypeid, creativesourcetypeid, rawfilepath, creativesource, dimensionid, height, width, previewurl, adtag, videoduration, videodeliverytype, videoisscalable, iscompanionad, mediabitrate, videoapi, videomimetype, nativeiconsourcetypeid, nativeiconrawfilename, nativeiconsource, nativeicondimensionid, nativeiconheight, nativeiconwidth, nativelogosourcetypeid, nativelogorawfilename, nativelogosource, nativelogodimensionid, nativelogoheight, nativelogowidth, nativetitle, nativecalltoaction, nativetext, nativedescription, nativefallbackurl, nativebundleid, nativestarrating, nativevideosourcetypeid, nativevideorawfilename, nativevideosource, rmproviderid, rmdisplaymode, rmsdkid, rmuniquecreativeid, rmplacementid, updatedby, updatedon) FROM stdin;
    public       wayio    false    258   З	      q          0    17540     tbladt_creativeproperties_delete 
   TABLE DATA               �  COPY tbladt_creativeproperties_delete (recordid, creativeid, creativesourcetypeid, rawfilepath, creativesource, dimensionid, height, width, previewurl, adtag, videoduration, videodeliverytype, videoisscalable, iscompanionad, mediabitrate, videoapi, nativeiconsourcetypeid, nativeiconrawfilename, nativeiconsource, nativetitle, nativecalltoaction, nativetext, nativefallbackurl, nativebundleid, nativestarrating, rmproviderid, rmdisplaymode, rmsdkid, rmuniquecreativeid, rmplacementid) FROM stdin;
    public       wayio    false    260   �	      �          0    21975    tbladt_creativesourcetype 
   TABLE DATA               P   COPY tbladt_creativesourcetype (sourcetypeid, sourcetype, isactive) FROM stdin;
    public       wayio    false    606   
�	      �          0    21981    tbladt_creativetype 
   TABLE DATA               s   COPY tbladt_creativetype (creativetypeid, creativetypecode, creativetypename, sourcetypeids, isactive) FROM stdin;
    public       wayio    false    607   7�	      �          0    21987    tbladt_creativevendor 
   TABLE DATA               _   COPY tbladt_creativevendor (vendorid, vendorcode, vendorname, isactive, isdeleted) FROM stdin;
    public       wayio    false    608   T�	      �          0    22120    tbladt_datatransformation 
   TABLE DATA               �   COPY tbladt_datatransformation (transformationid, transformationname, description, transformationtype, transformationfile, isactive, isarchived, isexpired, filestatus, lastvalidfilestatuson, createdon, createdby, updatedon, updatedby) FROM stdin;
    public       wayio    false    626   ��	      �          0    17702 &   tbladt_datatransformation_requiredfile 
   TABLE DATA               ]   COPY tbladt_datatransformation_requiredfile (id, transformationid, requiredtfid) FROM stdin;
    public       wayio    false    280   ��	      �          0    22134    tbladt_dealid 
   TABLE DATA               �   COPY tbladt_dealid (id, name, adexchangeid, dealid, type, cpm, cpmfilter, status, description, createdby, createdon, updatedby, updatedon, cacheupdatekey, cacheupdatetime, needcacheremove) FROM stdin;
    public       wayio    false    627   ��	      �          0    17717 -   tbladt_dealidbiddingstatistics_consumed_daily 
   TABLE DATA               �   COPY tbladt_dealidbiddingstatistics_consumed_daily (recordid, dealdbid, adexchangeid, creativeid, totalbids, totalimpressionswon, totalimppixels, totalclicks, totalcomplete, totalpayout, processedon) FROM stdin;
    public       wayio    false    283   ؘ	      $          0    22718    tbladt_device 
   TABLE DATA               f   COPY tbladt_device (deviceid, makeid, devicename, "group", isactive, ref_key, devicetype) FROM stdin;
    public       wayio    false    695   ��	      �          0    17732    tbladt_device_os_make_type 
   TABLE DATA               S   COPY tbladt_device_os_make_type (id, deviceos, devicemake, devicetype) FROM stdin;
    public       wayio    false    287   4�	      �          0    17725    tbladt_devicetype 
   TABLE DATA               O   COPY tbladt_devicetype (deviceid, devicename, indexno, deviceicon) FROM stdin;
    public       wayio    false    285   Q�	      �          0    22102 
   tbladt_dma 
   TABLE DATA               ]   COPY tbladt_dma (dmaid, countryid, dmacode, dmaname, dmaalternatename, isactive) FROM stdin;
    public       wayio    false    624   n�	      �          0    22108    tbladt_dtsx_trigger 
   TABLE DATA               �   COPY tbladt_dtsx_trigger (triggerid, actiontype, filename, paramnames, paramvalues, userid, itemid, triggeredon, status, erroroccured) FROM stdin;
    public       wayio    false    625   ��	      �          0    17738    tbladt_excecutionmessage 
   TABLE DATA               C   COPY tbladt_excecutionmessage (messageid, messagetext) FROM stdin;
    public       wayio    false    288   Ú	      �          0    22145    tbladt_exceldownloadbacklog 
   TABLE DATA               i   COPY tbladt_exceldownloadbacklog (rowid, moduleid, modulename, userid, ispending, createdon) FROM stdin;
    public       wayio    false    628   ��	      �          0    22153    tbladt_flat_creative 
   TABLE DATA               �  COPY tbladt_flat_creative (creativeid, advertiserid, advertisername, campaignid, campaignname, lineitemid, lineitemname, creativename, creativestartdate, creativeenddate, adformat, creativetype, iabcreativeattribute, adxcreativeattribute, adfeature, creativevendor, iframebuster, clickthroughurl, landingpageurl, creativeapi, ssltype, barometriccampaignid, barometricplacementid, barometricclickthroughurl, creativestate, creativestatus, istransactioncompleted, mediatype, markuptype, creativewidth, creativeheight, creativeformatid, creativeadsource, htmljsadtag, htmljspreviewurl, videosourcetype, videoduration, videodeliverytype, videomimetype, videoscalable, videoapi, mediabitrate, videocompanionadsource, videocompanionadwidth, videocompanionadheight, videocompanionadclickurl, videotrackingevents, nativeimagesource, nativeimagewidth, nativeimageheight, nativeiconsource, nativeiconwidth, nativeiconheight, nativelogosource, nativelogowidth, nativelogoheight, nativetitle, nativetext, nativedescription, nativecalltoaction, nativefallbackurl, nativebundleid, nativestarrating, nativevideosource, richmediaproviderid, richmediadisplaymode, richmediasdk, richmediauniquecreativeid, richmediaplacementid, generictrackingtags, appnexus_creativeid, isdeleted) FROM stdin;
    public       wayio    false    629   ��	      �          0    17752    tbladt_flat_lineitem_consumed 
   TABLE DATA               L   COPY tbladt_flat_lineitem_consumed (lineitemid, lastconsumedon) FROM stdin;
    public       wayio    false    290   �	      3          0    22973    tbladt_flat_lineitems 
   TABLE DATA               �  COPY tbladt_flat_lineitems (recordid, advertiserid, advertisername, advertiserdomain, advertisercategorycodes, advertisercategorynames, istestadvertiser, campaignid, campaignname, campaignstartdate, campaignenddate, campaignexternalio, campaignapprovalstatus, campaignstate, campaignstatus, lineitemid, lineitemname, lineitemstartdate, lineitemenddate, thirdpartytypeid, traktionid, barometricadvertiserid, barometriccampaignid, iolinebudget, ratetype, ioimpression, ioclicks, iocompletes, clientrate, targetmargin, iolineitemid, totalimpressiongoal, dailyimpressiongoal, totalclickgoal, dailyclickgoal, totalcompletegoal, dailycompletegoal, isfrequencycappingon, frequencyimpressions, frequencytimeframe, frequencyby, isoptimizeron, targetctr, optimizerpercentage, isoptimizedprice, isdynamicscore, impressionsperrun, scoredelta, ratedelta, lowbidrate, highbidrate, maxstrategypercentage, maxpacingrate, highpacingrate, lowpacingrate, minpacingrate, mincompetition, maxcompetition, minwinrate, maxwinrate, impressionspershortrun, dynamictargetctr, lowstrategycompensation, lowstrategyinitminscore, lowstrategydynamicminscore, maxstrategymultiplier, minrate, maxrate, ispricefloorfilter, isprioritylineitem, lineitemapprovalstatus, lineitemstate, lineitemstatus, lastupdatetime, dynamictimescalemultiplier, timescalelengtheningimpratio, timescaleshorteningimpratio, mintimescalemultiplier, maxtimescalemultiplier, vendorcost, isdeleted) FROM stdin;
    public       wayio    false    718   7�	      �          0    17765     tbladt_flat_reqproperty_sitelist 
   TABLE DATA               e   COPY tbladt_flat_reqproperty_sitelist (recordid, reqproperty, sitelisttype, sitelistids) FROM stdin;
    public       wayio    false    293   T�	      �          0    17776    tbladt_flat_richmedia_markup 
   TABLE DATA               �   COPY tbladt_flat_richmedia_markup (recordid, mediaproviderid, adexchangeid, adexchange, adexchangestatus, inappcontent, mobilewebcontent) FROM stdin;
    public       wayio    false    295   q�	      �          0    22172    tbladt_flat_strategies 
   TABLE DATA               �  COPY tbladt_flat_strategies (strategyid, lineitemid, advertiserid, strategyname, strategystartdate, strategyenddate, highlowctr, strategypricingtype, strategymaxrate, minimumcpmrate, maximumcpmrate, strategypercentage, learnerpercent, timeframe, cappercent, strategytotalimpressiongoal, strategydailyimpressiongoal, strategytotalclickgoal, strategydailyclickgoal, strategytotalcompletegoal, strategydailycompletegoal, isfrequencycappingon, frequencyimpressions, frequencytimeframe, frequencyby, strategystate, strategystatus, minimumctrorvtr, maximumctrorvtr, rtpemodelid, rtpemodelname, associatedadexchanges, dealids, devicetypes, desktop, isallsmartphone, isalltablets, os, osv, make, model, carrier, isallwirelesscarriers, isallwifi, appsiteproperties, includedsiteapp, excludedsiteapp, sitelistids, idfa, iabcode, includedkeyword, excludedkeyword, geotargettype, countryiso2code, countryiso3code, statecode, dma, zip, coordinate, proximitydesignid, gender, age, isskewage, homebiz, languagecode, mosaiccode, daypartingrequesttimezone, dayparting, temperature, weathercode, retargetingscriptname, retargetingdescription, retargetinginitialscript, retargetingincupdatescript, retargetingdecupdatescript, retargetingtarget, retargetingupdatefrequency, retargetingtype, datapartnerjson, rtpeclassification, geopulseaudiencedesignid, rtpetype, city, associatedcost, whitelistsiteids, blacklistsiteids, dailylosscap, skippability, barometriccampaignid, isdeleted, retargetingtargettype, cparetargetinginitialgoalname, cparetargetinginitialrecencydaysfrom, cparetargetinginitialrecencydaysto, cparetargetinginitialconversionstrength, cparetargetinginitialuserfrequency, cparetargetinginitialfrequency, cparetargetingdecrementalgoalname, cparetargetingdecrementalrecencydaysfrom, cparetargetingdecrementalrecencydaysto, cparetargetingdecrementalconversionstrength, cparetargetingdecrementaluserfrequency, cparetargetingdecrementalfrequency, cparetargetingaddunattributedon, cparetargetingupdatefrequency, cparetargetingtype) FROM stdin;
    public       wayio    false    630   ��	      �          0    17788    tbladt_flat_strategy_consumed 
   TABLE DATA               L   COPY tbladt_flat_strategy_consumed (strategyid, lastconsumedon) FROM stdin;
    public       wayio    false    296   ��	      �          0    17795    tbladt_flat_strategy_creative 
   TABLE DATA               R   COPY tbladt_flat_strategy_creative (recordid, strategyid, creativeid) FROM stdin;
    public       wayio    false    298   ț	      �          0    22181    tbladt_flat_tracker_trigger 
   TABLE DATA               �   COPY tbladt_flat_tracker_trigger (triggerid, triggertypeid, moduleids, prevdatakey, isupdatetracker, isflattableupdated, triggeredby, triggeredon, issplitted) FROM stdin;
    public       wayio    false    631   �	      �          0    22194 "   tbladt_flat_tracker_trigger_subset 
   TABLE DATA               t   COPY tbladt_flat_tracker_trigger_subset (subsetid, triggerid, moduleids, isflattableupdated, updatedon) FROM stdin;
    public       wayio    false    632   �	      �          0    17807    tbladt_flat_tracker_triggertype 
   TABLE DATA               k   COPY tbladt_flat_tracker_triggertype (triggertypeid, modulename, actionname, triggerprocedure) FROM stdin;
    public       wayio    false    300   �	      �          0    22204    tbladt_gender 
   TABLE DATA               I   COPY tbladt_gender (genderid, gender, description, isactive) FROM stdin;
    public       wayio    false    633   <�	      �          0    17821     tbladt_griddefaultfiltercriteria 
   TABLE DATA               �   COPY tbladt_griddefaultfiltercriteria (gridid, description, filterlabel, filterdata, ownerlabel, ownerdata, rangelabel, rangedata, columnfilter) FROM stdin;
    public       wayio    false    302   ��	      �          0    17829 $   tbladt_gridfiltercriteria_filterdata 
   TABLE DATA               a   COPY tbladt_gridfiltercriteria_filterdata (associd, gridid, filterdata, filterlabel) FROM stdin;
    public       wayio    false    303   ��	      �          0    17836    tbladt_hawk_xmlwithopenxml 
   TABLE DATA               R   COPY tbladt_hawk_xmlwithopenxml (id, xmldata, loadeddatetime, rawxml) FROM stdin;
    public       wayio    false    305   ܜ	      �          0    17847    tbladt_hawkmonitoringalert 
   TABLE DATA               z   COPY tbladt_hawkmonitoringalert (hawkmonitoringalertid, errorfrom, errordescription, recordedon, createddate) FROM stdin;
    public       wayio    false    307   ��	      �          0    22210    tbladt_iabcategory 
   TABLE DATA               h   COPY tbladt_iabcategory (categoryid, name, code, parentid, groupname, isnegative, isactive) FROM stdin;
    public       wayio    false    634   �	      �          0    17861 
   tbladt_isp 
   TABLE DATA               \   COPY tbladt_isp (ispid, ispname, countryid, countrycode, countryname, isactive) FROM stdin;
    public       wayio    false    309   �	      �          0    17872    tbladt_isppopular 
   TABLE DATA               [   COPY tbladt_isppopular (popularispid, popularispname, countryid, ispids, rank) FROM stdin;
    public       wayio    false    311   0�	      �          0    22217    tbladt_itemstate 
   TABLE DATA               <   COPY tbladt_itemstate (id, itemstate, isactive) FROM stdin;
    public       wayio    false    635   Z�	      �          0    22223    tbladt_itemstatus 
   TABLE DATA               Y   COPY tbladt_itemstatus (id, status, description, isautocalculated, isactive) FROM stdin;
    public       wayio    false    636   w�	      �          0    17888    tbladt_itemstatus_hierarchy 
   TABLE DATA               s   COPY tbladt_itemstatus_hierarchy (recordid, childstatus, childstatusids, parentstatus, parentstatusid) FROM stdin;
    public       wayio    false    312   ��	      �          0    22233 
   tbladt_kpi 
   TABLE DATA               b   COPY tbladt_kpi (kpiid, kpi, isavailable, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    637   ��	      �          0    22244    tbladt_language 
   TABLE DATA               T   COPY tbladt_language (languageid, languagecode, languagename, isactive) FROM stdin;
    public       wayio    false    638   β	      �          0    22250    tbladt_lineitem 
   TABLE DATA               �  COPY tbladt_lineitem (lineitemid, campaignid, reflineitemid, salesforceid, lineitemname, state, status, approvalstatus, startdate, enddate, thirdpartytype, isoverwritebarometric, barometriccampaignid, barometriccampaignname, traktionid, traktionname, iolinebudget, ratetype, ioimpression, ioclicks, iocompletes, clientcpm, clientcpc, clientcpcv, iolineitemid, targetmargin, isaddedvalue, totalimpressiongoal, dailyimpressiongoal, totalclickgoal, dailyclickgoal, totalcompletegoal, dailycompletegoal, isfrequencycappingon, frequencyvalue, frequencytype, frequencyby, isoptimizeron, optimizerid, rtpemodelid, ispricefloorfilter, targetctr, isyeildoptimized, creativerotationtype, ispriority, optimizerpercentage, isoptimizedprice, isdynamicscore, impressionsperrun, cpcdelta, cpmdelta, scoredelta, lowbidrate, highbidrate, maximumstrategypercentage, maximumpacingrate, highpacingrate, lowpacingrate, minimumpacingrate, minimumcompetition, maximumcompetition, minimumwinrate, maximumwinrate, impressionspershortrun, dynamictargetctr, lowstrategycompensation, lowstrategyinitminscore, lowstrategydynamicminscore, maxstrategymultiplier, mincpcprice, maxcpcprice, kpiid, linetypeid, apiaccessid, createdby, createdon, updatedby, updatedon, isdeleted, isrejected) FROM stdin;
    public       wayio    false    639   �	      �          0    17917    tbladt_lineitem_delete 
   TABLE DATA                 COPY tbladt_lineitem_delete (lineitemid, campaignid, reflineitemid, lineitemname, status, approvalstatus, startdate, enddate, traktionid, traktionname, iolinebudget, ratetype, ioimpression, ioclicks, iocompletes, clientcpm, clientcpc, clientcpcv, iolineitemid, totalimpressiongoal, dailyimpressiongoal, totalclickgoal, dailyclickgoal, totalcompletegoal, dailycompletegoal, isfrequencycappingon, frequencyvalue, frequencytype, frequencyby, isoptimizeron, ispricefloorfilter, isoptimizedprice, isdynamicscore, targetctr, isyeildoptimized, creativerotationtype, ispriority, targetmargin, impressionsperrun, cpcdelta, cpmdelta, scoredelta, lowbidrate, highbidrate, maximumstrategypercentage, maximumpacingrate, highpacingrate, lowpacingrate, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    316   4�	      �          0    17926    tbladt_lineitem_filtereditems 
   TABLE DATA               Q   COPY tbladt_lineitem_filtereditems (queryid, lineitemids, updatedon) FROM stdin;
    public       wayio    false    318   Q�	      �          0    17936 "   tbladt_lineitem_pacingavailability 
   TABLE DATA               N   COPY tbladt_lineitem_pacingavailability (lineitemid, processedon) FROM stdin;
    public       wayio    false    319   n�	      �          0    22288    tbladt_lineitem_threshold_reach 
   TABLE DATA               g   COPY tbladt_lineitem_threshold_reach (associd, lineitemid, iscompletedearly, isdeathclock) FROM stdin;
    public       wayio    false    640   ��	      �          0    17950    tbladt_lineitem_vendorcost 
   TABLE DATA               �   COPY tbladt_lineitem_vendorcost (costid, refcostid, lineitemid, vendorid, productid, costtypeid, vendorcost, startdate, enddate) FROM stdin;
    public       wayio    false    322   ��	      �          0    22296    tbladt_linetype 
   TABLE DATA               �   COPY tbladt_linetype (linetypeid, linetype, isbudgetrequired, isavailable, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    641   ŵ	      �          0    17964    tbladt_make 
   TABLE DATA               C   COPY tbladt_make (makeid, makename, isactive, ref_key) FROM stdin;
    public       wayio    false    325   �	      �          0    22307    tbladt_markuptype 
   TABLE DATA               h   COPY tbladt_markuptype (markuptypeid, markuptypecode, markuptypename, isactive, isshowinui) FROM stdin;
    public       wayio    false    642   ��	      �          0    22314    tbladt_mediaprovider 
   TABLE DATA               \  COPY tbladt_mediaprovider (mediaproviderid, mediaprovider, adformatid, creativetypeid, markuptypeid, isssl, apiid, creativeattributeids, devicetypeids, adfeaturesids, previewurl, expandableiframebusterids, videodeliverytypeid, videomediabitrateid, videomimetypeid, videoisscalable, isactive, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    643   6�	      (          0    22775    tbladt_mediaprovider_adformat 
   TABLE DATA               M   COPY tbladt_mediaprovider_adformat (mediaproviderid, adformatid) FROM stdin;
    public       wayio    false    699   S�	      )          0    22780    tbladt_mediaprovider_markup 
   TABLE DATA               �   COPY tbladt_mediaprovider_markup (mediaproviderid, exchangeid, inappcontent, mobilewebcontent, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    700   p�	      �          0    22326    tbladt_mediatype 
   TABLE DATA               g   COPY tbladt_mediatype (mediatypeid, mediatypecode, mediatypename, sourcetypeids, isactive) FROM stdin;
    public       wayio    false    644   ��	      �          0    17984    tbladt_mosaic 
   TABLE DATA               L   COPY tbladt_mosaic (mosaicid, mosaiccode, mosaicname, isactive) FROM stdin;
    public       wayio    false    328   ��	      �          0    17990    tbladt_nagiosalertmonitoring 
   TABLE DATA               {   COPY tbladt_nagiosalertmonitoring (alerts, host, state, alertgeneratedfromid, alertgeneratedfrom, generatedon) FROM stdin;
    public       wayio    false    329   ߶	      �          0    22332    tbladt_notification 
   TABLE DATA               �   COPY tbladt_notification (notificationid, message, messagetemplateid, messageparamnames, messageparamvalues, typeid, requestorid, issystemgenerated, moduleid, moduletype, needapproval, createddate, duedate) FROM stdin;
    public       wayio    false    645   ��	      �          0    22343 7   tbladt_notification_ctrthreshold_strategybelowthreshold 
   TABLE DATA               n   COPY tbladt_notification_ctrthreshold_strategybelowthreshold (strategyid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    646   �	      �          0    22347 -   tbladt_notification_error_campaignstopbidding 
   TABLE DATA               d   COPY tbladt_notification_error_campaignstopbidding (campaignid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    647   6�	      �          0    22351 2   tbladt_notification_error_creativeblanklandingpage 
   TABLE DATA               i   COPY tbladt_notification_error_creativeblanklandingpage (creativeid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    648   S�	      �          0    22355 1   tbladt_notification_error_creativeduplicate3padid 
   TABLE DATA               l   COPY tbladt_notification_error_creativeduplicate3padid (thirdpartyadid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    649   p�	      �          0    22359 1   tbladt_notification_error_creativenonsslcompliant 
   TABLE DATA               h   COPY tbladt_notification_error_creativenonsslcompliant (creativeid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    650   ��	      �          0    22363 1   tbladt_notification_error_creativeservingblankads 
   TABLE DATA               h   COPY tbladt_notification_error_creativeservingblankads (creativeid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    651   ��	      �          0    22367 -   tbladt_notification_error_lineitemstopbidding 
   TABLE DATA               d   COPY tbladt_notification_error_lineitemstopbidding (lineitemid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    652   Ƿ	      �          0    18024    tbladt_notification_level 
   TABLE DATA               N   COPY tbladt_notification_level (levelid, levelname, reftablename) FROM stdin;
    public       wayio    false    331   �	      �          0    18031    tbladt_notification_message 
   TABLE DATA               �   COPY tbladt_notification_message (notificationid, ruleid, advertiserid, moduletypeid, moduleid, moduleparentid, message, datetimeparameters, datetimevalues, generatedon) FROM stdin;
    public       wayio    false    333   �	      �          0    18041 #   tbladt_notification_messagetemplate 
   TABLE DATA               V   COPY tbladt_notification_messagetemplate (templateid, message, createdon) FROM stdin;
    public       wayio    false    334   �	      �          0    22371    tbladt_notification_moduletype 
   TABLE DATA               �   COPY tbladt_notification_moduletype (moduletypeid, moduletype, mvccontroler, mvcaction, moduleidparam, parentidparam, openaspopup) FROM stdin;
    public       wayio    false    653   ;�	      �          0    22377 1   tbladt_notification_pacing_lineitemabovethreshold 
   TABLE DATA               h   COPY tbladt_notification_pacing_lineitemabovethreshold (lineitemid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    654   X�	      �          0    22381 2   tbladt_notification_pacing_lineitembehindthreshold 
   TABLE DATA               i   COPY tbladt_notification_pacing_lineitembehindthreshold (lineitemid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    655   u�	      �          0    22385 3   tbladt_notification_prelaunch_campaignreadytolaunch 
   TABLE DATA               j   COPY tbladt_notification_prelaunch_campaignreadytolaunch (campaignid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    656   ��	      �          0    22389 3   tbladt_notification_prelaunch_lineitemreadytolaunch 
   TABLE DATA               j   COPY tbladt_notification_prelaunch_lineitemreadytolaunch (lineitemid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    657   ��	      �          0    22393    tbladt_notification_rule 
   TABLE DATA                 COPY tbladt_notification_rule (ruleid, name, description, defaultdynamicvalue, dynamicvalue, typeid, subtypeid, levelid, executiontype, macros, defaultmessage, message, links, priority, severity, mailtrigger, procedurename, isactive, isdeleted) FROM stdin;
    public       wayio    false    658   ̸	      �          0    18072    tbladt_notification_schedule 
   TABLE DATA               �   COPY tbladt_notification_schedule (scheduleid, ruleid, defaultoccurancetype, occurancetype, defaultrecurrance, recurrance, defaultexecutionhour, executionhour) FROM stdin;
    public       wayio    false    336   �	      �          0    18078    tbladt_notification_severity 
   TABLE DATA               E   COPY tbladt_notification_severity (severityid, severity) FROM stdin;
    public       wayio    false    337   �	                 0    22406 &   tbladt_notification_status_campaignend 
   TABLE DATA               ]   COPY tbladt_notification_status_campaignend (campaignid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    659   #�	                0    22410 +   tbladt_notification_status_campaignlaunched 
   TABLE DATA               b   COPY tbladt_notification_status_campaignlaunched (campaignid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    660   @�	                0    22414 ,   tbladt_notification_status_campaignlaunching 
   TABLE DATA               e   COPY tbladt_notification_status_campaignlaunching (campaignid, launcheddate, islaunched) FROM stdin;
    public       wayio    false    661   ]�	                0    22418 ,   tbladt_notification_status_lineitemlaunching 
   TABLE DATA               e   COPY tbladt_notification_status_lineitemlaunching (lineitemid, launcheddate, islaunched) FROM stdin;
    public       wayio    false    662   z�	      �          0    18095 ,   tbladt_notification_strategy_prioritymessage 
   TABLE DATA               n   COPY tbladt_notification_strategy_prioritymessage (strategyid, firsttriggeredon, lasttriggeredon) FROM stdin;
    public       wayio    false    338   ��	      �          0    18100    tbladt_notification_subtype 
   TABLE DATA               F   COPY tbladt_notification_subtype (subtypeid, subtypename) FROM stdin;
    public       wayio    false    339   ��	      �          0    18105    tbladt_notification_type 
   TABLE DATA               X   COPY tbladt_notification_type (typeid, typename, signicon, typedescription) FROM stdin;
    public       wayio    false    340   ѹ	                0    22422    tbladt_notification_typemaster 
   TABLE DATA               X   COPY tbladt_notification_typemaster (typeid, typename, isactive, createdon) FROM stdin;
    public       wayio    false    663   �	                0    22429 7   tbladt_notification_vtrthreshold_strategybelowthreshold 
   TABLE DATA               n   COPY tbladt_notification_vtrthreshold_strategybelowthreshold (strategyid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    664   �	                0    22433 6   tbladt_notification_winimpratio_lineitemabovethreshold 
   TABLE DATA               m   COPY tbladt_notification_winimpratio_lineitemabovethreshold (lineitemid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    665   (�	                0    22437 7   tbladt_notification_winimpratio_lineitembehindthreshold 
   TABLE DATA               n   COPY tbladt_notification_winimpratio_lineitembehindthreshold (lineitemid, isnotified, notifiedon) FROM stdin;
    public       wayio    false    666   E�	      4          0    23004    tbladt_optimizerlogs 
   TABLE DATA               �  COPY tbladt_optimizerlogs (recordid, lineitemid, "timestamp", winrate, clientrate, clickconsumedtotal, impressionconsumedtotal, impressiongoalday, impressionconsumedday, totalctr, temptargetctr, deltacpcbidprice, deltacpmbidprice, deltascore, lowerpacingrate, upperpacingrate, lowerprice, upperprice, lowerbidsconsumed, upperbidsconsumed, lowerpassingrequests, upperpassingrequests, lowerrecentctr, upperrecentctr, lowerpercent, upperminscore, lowercompetition, uppercompetition, lowershortspend, uppershortspend, lowershortimpressions, lowerminscore, lowershortbidprice, uppershortbidprice, lowershortbids, uppershortbids, upperpercent, targetctr, "upperShortImpressions") FROM stdin;
    public       wayio    false    719   b�	      �          0    18127 	   tbladt_os 
   TABLE DATA               =   COPY tbladt_os (osid, osname, isactive, ref_key) FROM stdin;
    public       wayio    false    342   �	      �          0    18135    tbladt_osdevicemapping 
   TABLE DATA               }   COPY tbladt_osdevicemapping (id, device_make, device_model, is_mobile_phone, is_tablet, os_name, osv_normalized) FROM stdin;
    public       wayio    false    344   ��	      %          0    22726    tbladt_osversion 
   TABLE DATA               Y   COPY tbladt_osversion (versionid, osid, version, "Group", isactive, ref_key) FROM stdin;
    public       wayio    false    696   ��	      �          0    18145    tbladt_pacing_campaign_today 
   TABLE DATA               i   COPY tbladt_pacing_campaign_today (rowid, pacingdate, campaignid, pacing, is3p, datapartner) FROM stdin;
    public       wayio    false    347   ֺ	      �          0    18153    tbladt_pacing_lineitem_history 
   TABLE DATA               k   COPY tbladt_pacing_lineitem_history (rowid, pacingdate, lineitemid, pacing, is3p, datapartner) FROM stdin;
    public       wayio    false    349   �	      �          0    18161    tbladt_pacing_lineitem_today 
   TABLE DATA               i   COPY tbladt_pacing_lineitem_today (rowid, pacingdate, lineitemid, pacing, is3p, datapartner) FROM stdin;
    public       wayio    false    351   �	      7          0    23018    tbladt_pacinglogs 
   TABLE DATA               7  COPY tbladt_pacinglogs (recordid, "timestamp", strategyid, lineitemstartdate, lineitemenddate, overgoal, goalratio, percentage, recentpacingrate, minscore, maxscore, recentimpressions, recentwins, recentqualifiedrequests, price, cpcpricing, watchdog, minuteactivems, rtpmodelname, cumulativeimpressiongoals, cumulativebidgoals, remainingdayimpressiongoal, impressionconsumedday, impressiongoalhour, impressionconsumedhour, remainingdayclickgoal, clickconsumedday, clickgoalhour, clickconsumedhour, remainingdaywingoal, winconsumedday, wingoalhour, winconsumedhour, remainingdaycompletegoal, completeconsumedday, completegoalhour, completeconsumedhour, minuteimpressiongoal, minutebidgoal, minuteconsumedbids, minuteconsumedwins, minutepassingrequests, minutequalifiedrequests, bidsconsumedhour, lastfiltercode) FROM stdin;
    public       wayio    false    722   -�	      �          0    18212     tbladt_platform_blocklist_cookie 
   TABLE DATA               o   COPY tbladt_platform_blocklist_cookie (recordid, cuid, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    362   ��	      �          0    18218    tbladt_platform_blocklist_ip 
   TABLE DATA               �   COPY tbladt_platform_blocklist_ip (addressid, ipaddress, createdby, createdon, updatedby, updatedon, longtermflag, source, type, reason) FROM stdin;
    public       wayio    false    364   ��	      �          0    18230 "   tbladt_platform_blocklist_keywords 
   TABLE DATA               u   COPY tbladt_platform_blocklist_keywords (keywordid, keyword, createdby, createdon, updatedon, updatedby) FROM stdin;
    public       wayio    false    366   �	      �          0    18239 !   tbladt_platform_blocklist_siteapp 
   TABLE DATA               �   COPY tbladt_platform_blocklist_siteapp (recordid, propertyid, propertyname, reqproperty, createdby, createdon, updatedon, updatedby) FROM stdin;
    public       wayio    false    368   .�	      �          0    18250    tbladt_platform_blocklist_wayid 
   TABLE DATA               o   COPY tbladt_platform_blocklist_wayid (recordid, wayid, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    370   K�	      �          0    18198     tbladt_platform_blocklisttracker 
   TABLE DATA               l   COPY tbladt_platform_blocklisttracker (blockedtrackid, blockedtypeenum, blockedtype, blockedon) FROM stdin;
    public       wayio    false    358   h�	      �          0    18204 (   tbladt_platform_blocklisttracker_archive 
   TABLE DATA               �   COPY tbladt_platform_blocklisttracker_archive (recordid, trackerkey, blockedtrackid, blockedtypeenum, blockedtype, blockedon) FROM stdin;
    public       wayio    false    360   ��	      �          0    18254    tbladt_platform_creativetracker 
   TABLE DATA               R   COPY tbladt_platform_creativetracker (creativeid, loggedby, loggedon) FROM stdin;
    public       wayio    false    371   ��	      �          0    18262 '   tbladt_platform_creativetracker_archive 
   TABLE DATA               p   COPY tbladt_platform_creativetracker_archive (recordid, trackerkey, creativeid, loggedby, loggedon) FROM stdin;
    public       wayio    false    373   ��	      �          0    18270    tbladt_platform_dealidtracker 
   TABLE DATA               w   COPY tbladt_platform_dealidtracker (dealtrackid, adexchangeid, adexchangename, dealid, loggedby, loggedon) FROM stdin;
    public       wayio    false    375   ��	      �          0    18278 %   tbladt_platform_dealidtracker_archive 
   TABLE DATA               �   COPY tbladt_platform_dealidtracker_archive (recordid, trackerkey, adexchangeid, adexchangename, dealid, loggedby, loggedon) FROM stdin;
    public       wayio    false    377   ��	      *          0    22792    tbladt_platform_lineitemtracker 
   TABLE DATA               ^   COPY tbladt_platform_lineitemtracker (campaignid, lineitemid, loggedby, loggedon) FROM stdin;
    public       wayio    false    701   �	      �          0    18286 '   tbladt_platform_lineitemtracker_archive 
   TABLE DATA               |   COPY tbladt_platform_lineitemtracker_archive (recordid, trackerkey, campaignid, lineitemid, loggedby, loggedon) FROM stdin;
    public       wayio    false    379   3�	      �          0    18294    tbladt_platform_optimizer 
   TABLE DATA               t  COPY tbladt_platform_optimizer (optimizerid, optimizername, pricingtype, rtpemodelid, targetmargin, targetctr, optimizerpercentage, isoptimizedprice, isdynamicscore, impressionsperrun, scoredelta, ratedelta, lowbidrate, highbidrate, maximumstrategypercentage, maximumpacingrate, highpacingrate, lowpacingrate, minimumpacingrate, minimumcompetition, maximumcompetition, minimumwinrate, maximumwinrate, impressionspershortrun, dynamictargetctr, lowstrategycompensation, lowstrategyinitminscore, lowstrategydynamicminscore, maxstrategymultiplier, minimumrate, maximumrate, highctrmaxcpcorcpcv, lowctrmaxcpcorcpcv, highctrmaxcpmrate, lowctrmaxcpmrate, highctrmincpmrate, lowctrmincpmrate, dynamictimescalemultiplier, timescalelengtheningimpratio, timescaleshorteningimpratio, minimumtimescalemultiplier, maximumtimescalemultiplier, createdon, createdby, updatedon, updatedby) FROM stdin;
    public       wayio    false    381   P�	      +          0    22798 "   tbladt_platform_optimizer_adformat 
   TABLE DATA               N   COPY tbladt_platform_optimizer_adformat (optimizerid, adformatid) FROM stdin;
    public       wayio    false    702   m�	      �          0    18312 !   tbladt_platform_optimizer_default 
   TABLE DATA               '  COPY tbladt_platform_optimizer_default (pricingtype, targetmargin, targetctr, optimizerpercentage, isoptimizedprice, isdynamicscore, impressionsperrun, scoredelta, ratedelta, lowbidrate, highbidrate, maximumstrategypercentage, maximumpacingrate, highpacingrate, lowpacingrate, minimumpacingrate, minimumcompetition, maximumcompetition, minimumwinrate, maximumwinrate, impressionspershortrun, dynamictargetctr, lowstrategycompensation, lowstrategyinitminscore, lowstrategydynamicminscore, maxstrategymultiplier, minimumrate, maximumrate, highctrmaxcpcorcpcv, lowctrmaxcpcorcpcv, highctrmaxcpmrate, lowctrmaxcpmrate, highctrmincpmrate, lowctrmincpmrate, dynamictimescalemultiplier, timescalelengtheningimpratio, timescaleshorteningimpratio, minimumtimescalemultiplier, maximumtimescalemultiplier) FROM stdin;
    public       wayio    false    384   ��	      �          0    18304 !   tbladt_platform_optimizersettings 
   TABLE DATA               �  COPY tbladt_platform_optimizersettings (recordid, optimizerpercentage, isoptimizedprice, isdynamicscore, impressionsperrun, cpcdelta, cpmdelta, scoredelta, lowbidrate, highbidrate, maximumstrategypercentage, maximumpacingrate, highpacingrate, lowpacingrate, minimumpacingrate, minimumcompetition, maximumcompetition, minimumwinrate, maximumwinrate, impressionspershortrun, dynamictargetctr, lowstrategycompensation, lowstrategyinitminscore, lowstrategydynamicminscore, maxstrategymultiplier, mincpcprice, maxcpcprice, highctrmaxcpc, lowctrmaxcpc, highctrmaxcpmrate, lowctrmaxcpmrate, highctrmincpmrate, lowctrmincpmrate, updatedby, updatedon) FROM stdin;
    public       wayio    false    383   ��	      ,          0    22803 &   tbladt_platform_richmediamarkuptracker 
   TABLE DATA               �   COPY tbladt_platform_richmediamarkuptracker (richmediaproviderid, adexchangeid, adexchangename, loggedby, loggedon) FROM stdin;
    public       wayio    false    703   ��	      �          0    18317 .   tbladt_platform_richmediamarkuptracker_archive 
   TABLE DATA               �   COPY tbladt_platform_richmediamarkuptracker_archive (recordid, trackerkey, richmediaproviderid, adexchangeid, adexchangename, loggedby, loggedon) FROM stdin;
    public       wayio    false    386   ��	      �          0    18325    tbladt_platform_sitelisttracker 
   TABLE DATA               Q   COPY tbladt_platform_sitelisttracker (id, referenceid, sitelisttype) FROM stdin;
    public       wayio    false    388   ��	      �          0    18331 '   tbladt_platform_sitelisttracker_archive 
   TABLE DATA               �   COPY tbladt_platform_sitelisttracker_archive (recordid, trackerkey, id, referenceid, sitelisttype, loggedby, loggedon) FROM stdin;
    public       wayio    false    390   �	      �          0    18337    tbladt_platform_strategytracker 
   TABLE DATA               ^   COPY tbladt_platform_strategytracker (strategyid, lineitemid, loggedby, loggedon) FROM stdin;
    public       wayio    false    391   8�	      �          0    18345 '   tbladt_platform_strategytracker_archive 
   TABLE DATA               |   COPY tbladt_platform_strategytracker_archive (recordid, trackerkey, strategyid, lineitemid, loggedby, loggedon) FROM stdin;
    public       wayio    false    393   U�	      �          0    18353    tbladt_platform_tracker 
   TABLE DATA               H   COPY tbladt_platform_tracker (trackid, tracktype, tackedon) FROM stdin;
    public       wayio    false    395   r�	      �          0    18362    tbladt_platform_tracker_archive 
   TABLE DATA               P   COPY tbladt_platform_tracker_archive (trackid, tracktype, tackedon) FROM stdin;
    public       wayio    false    397   ��	      �          0    18368    tbladt_platform_variabletracker 
   TABLE DATA               Q   COPY tbladt_platform_variabletracker (trackerid, loggedby, loggedon) FROM stdin;
    public       wayio    false    399   ��	      �          0    18377 '   tbladt_platform_variabletracker_archive 
   TABLE DATA               d   COPY tbladt_platform_variabletracker_archive (recordid, trackerkey, loggedby, loggedon) FROM stdin;
    public       wayio    false    401   ��	      �          0    18167    tbladt_platformadjustertracker 
   TABLE DATA               F   COPY tbladt_platformadjustertracker (creativeid, logdate) FROM stdin;
    public       wayio    false    352   ��	      �          0    18175    tbladt_platformcuidlist 
   TABLE DATA               :   COPY tbladt_platformcuidlist (recordid, cuid) FROM stdin;
    public       wayio    false    354   �	                0    22441 !   tbladt_platformsoftlaunchsettings 
   TABLE DATA               m  COPY tbladt_platformsoftlaunchsettings (rateid, ratetype, totalimpressions, totalimpressionsmultiplier, totalimpressionshide, totalclicks, totalclicksmultiplier, totalclickshide, totalcompletes, totalcompletesmultiplier, totalcompleteshide, dailyimpressiongoal, dailyimpressiongoalhide, dailyclicks, dailyclickshide, dailycompletes, dailycompleteshide) FROM stdin;
    public       wayio    false    667    �	      �          0    18187    tbladt_platformvariable 
   TABLE DATA                 COPY tbladt_platformvariable (budgetthreshold1, budgetthreshold2, geoweightingfactor, pacingwarningalert, pacingredalert, minimumcpmrate, maximumcpmrate, dailyimpressiongoal, rtpelearnerimpressionpercent, updatedby, updatedon, totalimpressions, totalclicks, totalcompletes) FROM stdin;
    public       wayio    false    356   =�	      /          0    22883    tbladt_privilege 
   TABLE DATA               ?   COPY tbladt_privilege (privilegeid, privilegename) FROM stdin;
    public       wayio    false    714   Z�	                 0    18385    tbladt_process_startpos 
   TABLE DATA               E   COPY tbladt_process_startpos (id, processname, startpos) FROM stdin;
    public       wayio    false    403   ��	                0    22471    tbladt_region 
   TABLE DATA               ]   COPY tbladt_region (regionid, countryid, regioncode, regionname, isactive, rank) FROM stdin;
    public       wayio    false    670   ��	                0    18393    tbladt_rfptoolconfiguration 
   TABLE DATA               \   COPY tbladt_rfptoolconfiguration (toolid, name, apitoken, updatedby, updatedon) FROM stdin;
    public       wayio    false    405   ��	                0    22479    tbladt_richmediasdk 
   TABLE DATA               @   COPY tbladt_richmediasdk (sdkid, sdkname, isactive) FROM stdin;
    public       wayio    false    671   ��	                0    22485    tbladt_role 
   TABLE DATA               �   COPY tbladt_role (roleid, name, roletype, assigneetype, isactive, createdby, createdon, updatedby, updatedon, displayrank) FROM stdin;
    public       wayio    false    672   �	                0    18529    tbladt_role_action 
   TABLE DATA               W   COPY tbladt_role_action (recordid, roleid, actionid, updatedby, updatedon) FROM stdin;
    public       wayio    false    428   U�	                0    18538    tbladt_role_notification_rule 
   TABLE DATA               `   COPY tbladt_role_notification_rule (recordid, roleid, ruleid, updatedby, updatedon) FROM stdin;
    public       wayio    false    430   r�	      0          0    22888    tbladt_roleprivilege 
   TABLE DATA               =   COPY tbladt_roleprivilege (roleid, privilegeids) FROM stdin;
    public       wayio    false    715   ��	                0    18521    tbladt_roletype 
   TABLE DATA               J   COPY tbladt_roletype (roletypeid, name, updatedby, updatedon) FROM stdin;
    public       wayio    false    426   ��	                0    18449    tbladt_rtpe_callback_tracker 
   TABLE DATA               c   COPY tbladt_rtpe_callback_tracker (id, moduleid, name, ismodel, trackingdate, isvalid) FROM stdin;
    public       wayio    false    415   ��	                0    18461 $   tbladt_rtpe_callback_tracker_archive 
   TABLE DATA               k   COPY tbladt_rtpe_callback_tracker_archive (id, moduleid, name, ismodel, trackingdate, isvalid) FROM stdin;
    public       wayio    false    417   �	                0    18473    tbladt_rtpe_tracker 
   TABLE DATA               }   COPY tbladt_rtpe_tracker (id, modelid, name, type, classification, isactive, operation, updatedby, trackingdate) FROM stdin;
    public       wayio    false    419   3�	                0    18484    tbladt_rtpe_tracker_archive 
   TABLE DATA               �   COPY tbladt_rtpe_tracker_archive (recordid, trackerkey, modelid, name, type, classification, isactive, operation, updatedby, trackingdate) FROM stdin;
    public       wayio    false    421   P�	                0    18495    tbladt_rtpe_tracker_dummy 
   TABLE DATA               �   COPY tbladt_rtpe_tracker_dummy (id, modelid, name, type, classification, isactive, operation, updatedby, trackingdate) FROM stdin;
    public       wayio    false    423   m�	      	          0    22453    tbladt_rtpemodel 
   TABLE DATA               �   COPY tbladt_rtpemodel (modelid, name, modeltype, classification, description, eqfile, lufile, isactive, isarchived, isexpired, filestatus, lastvalidfilestatuson, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    668   ��	      
          0    22467    tbladt_rtpemodel_biddinginfo 
   TABLE DATA               _   COPY tbladt_rtpemodel_biddinginfo (modelid, modelname, isbidding, lastbiddingtime) FROM stdin;
    public       wayio    false    669   ��	                0    18414    tbladt_rtpemodel_file 
   TABLE DATA               C   COPY tbladt_rtpemodel_file (fileid, modelid, filename) FROM stdin;
    public       wayio    false    408   ��	                0    18425    tbladt_rtpemodel_requiredfile 
   TABLE DATA               Q   COPY tbladt_rtpemodel_requiredfile (recordid, modelid, requiredtfid) FROM stdin;
    public       wayio    false    410   ��	                0    18431    tbladt_rtpemodel_type 
   TABLE DATA               @   COPY tbladt_rtpemodel_type (modeltypeid, modeltype) FROM stdin;
    public       wayio    false    411   ��	      
          0    18438    tbladt_rtpeofflearner 
   TABLE DATA               �   COPY tbladt_rtpeofflearner (offlearnerid, timeunit, impressioncount, impressionpercent, initialscript, incrementalupdatescript, decrementalupdatescript, scriptrerunfrequency) FROM stdin;
    public       wayio    false    413   �	                0    18546     tbladt_salesforcedata_bulkinsert 
   TABLE DATA               �   COPY tbladt_salesforcedata_bulkinsert (recordid, apisessionid, advertiserid, sfadvertiserid, campaignid, campaignsfid, sfopportunityid, lineitemid, lineitemsfid, strategyid, strategysfid, status, logdate) FROM stdin;
    public       wayio    false    432   8�	                0    22496    tbladt_siteapp 
   TABLE DATA               j   COPY tbladt_siteapp (siteappid, name, publisherid, websiteid, adexchangeid, issite, isactive) FROM stdin;
    public       wayio    false    673   U�	                0    22506    tbladt_siteapp_inventory 
   TABLE DATA               �   COPY tbladt_siteapp_inventory (inventoryid, adexchange, preference, websiteid, sitebaseurl, sitedomain, appbundle, isactive, isblocked, isblocked_rm) FROM stdin;
    public       wayio    false    674   r�	                0    18560    tbladt_siteappproperties 
   TABLE DATA               `   COPY tbladt_siteappproperties (property_id, dte, req_property, property_name, type) FROM stdin;
    public       wayio    false    434   ��	      !          0    18571 %   tbladt_siteappproperties_delete_stage 
   TABLE DATA               E   COPY tbladt_siteappproperties_delete_stage (property_id) FROM stdin;
    public       wayio    false    436   ��	                 0    18568 .   tbladt_siteappproperties_deletedata_from_pgsql 
   TABLE DATA               N   COPY tbladt_siteappproperties_deletedata_from_pgsql (property_id) FROM stdin;
    public       wayio    false    435   ��	      "          0    18574 #   tbladt_siteappproperties_removedata 
   TABLE DATA               C   COPY tbladt_siteappproperties_removedata (property_id) FROM stdin;
    public       wayio    false    437   ��	      #          0    18577    tbladt_siteappproperties_stage 
   TABLE DATA               k   COPY tbladt_siteappproperties_stage (property_id, dte, req_property, property_name, type, rnk) FROM stdin;
    public       wayio    false    438   �	      $          0    18585 #   tbladt_siteappproperties_updatedids 
   TABLE DATA               K   COPY tbladt_siteappproperties_updatedids (property_id, action) FROM stdin;
    public       wayio    false    439    �	                0    22525    tbladt_sitelist_sendcsv 
   TABLE DATA               l   COPY tbladt_sitelist_sendcsv (recordid, sitelistids, mailid, createdon, zipfilename, isdeleted) FROM stdin;
    public       wayio    false    676   =�	      0          0    18644    tbladt_sitelist_tracker 
   TABLE DATA               V   COPY tbladt_sitelist_tracker (trackerid, sitelistid, operation, tackedon) FROM stdin;
    public       wayio    false    451   Z�	      2          0    18652    tbladt_sitelist_tracker_archive 
   TABLE DATA               ^   COPY tbladt_sitelist_tracker_archive (trackerid, sitelistid, operation, tackedon) FROM stdin;
    public       wayio    false    453   w�	      &          0    18595    tbladt_sitelistassoc 
   TABLE DATA               I   COPY tbladt_sitelistassoc (recordid, sitelistid, propertyid) FROM stdin;
    public       wayio    false    441   ��	      (          0    18603    tbladt_sitelistassoc_archive 
   TABLE DATA               Q   COPY tbladt_sitelistassoc_archive (recordid, sitelistid, propertyid) FROM stdin;
    public       wayio    false    443   ��	                0    22516 !   tbladt_sitelistassoc_intermediate 
   TABLE DATA               �   COPY tbladt_sitelistassoc_intermediate (recordid, recordguid, propertyid, propertyname, reqproperty, isshow, createdon) FROM stdin;
    public       wayio    false    675   ��	      +          0    18617    tbladt_sitelistmaster 
   TABLE DATA               �   COPY tbladt_sitelistmaster (sitelistid, sitelistname, listtype, description, status, createdby, createdon, updatedby, updatedon) FROM stdin;
    public       wayio    false    446   ��	      -          0    18629    tbladt_sitelistmaster_archive 
   TABLE DATA               N   COPY tbladt_sitelistmaster_archive (sitelistid, listtype, status) FROM stdin;
    public       wayio    false    448   =�	      4          0    18660    tbladt_sqlerrorlog 
   TABLE DATA               �   COPY tbladt_sqlerrorlog (errorid, sourcemodule, errornumber, errorseverity, errorstate, errorprocedure, errorline, errormessage, occuredon) FROM stdin;
    public       wayio    false    455   Z�	                0    22536    tbladt_strategy 
   TABLE DATA               �  COPY tbladt_strategy (strategyid, lineitemid, refstrategyid, salesforceid, strategyname, startdate, enddate, state, status, pricingtype, maxrate, minimumcpmrate, maximumcpmrate, highlowctr, lasthighlowctr, isfrequencycappingon, frequencyvalue, frequencytype, frequencyby, percentage, rtpelearnerimpressionpercent, dailylosscap, isallvendorcost, createdby, createdon, updatedby, updatedon, apiaccessid, skippability, isdeleted, isrejected) FROM stdin;
    public       wayio    false    677   w�	      9          0    18691    tbladt_strategy_adexchange 
   TABLE DATA               Q   COPY tbladt_strategy_adexchange (recordid, strategyid, adexchangeid) FROM stdin;
    public       wayio    false    460   ��	      ;          0    18699    tbladt_strategy_audience 
   TABLE DATA               T   COPY tbladt_strategy_audience (recordid, strategyid, audiencesegmentid) FROM stdin;
    public       wayio    false    462   ��	                0    22554 %   tbladt_strategy_audience_intermediate 
   TABLE DATA               t   COPY tbladt_strategy_audience_intermediate (recordid, recordguid, audiencesegmentid, isshow, createdon) FROM stdin;
    public       wayio    false    678   �	      @          0    18720    tbladt_strategy_carriers 
   TABLE DATA               d   COPY tbladt_strategy_carriers (recordid, strategyid, carrierids, isallwirelesscarriers) FROM stdin;
    public       wayio    false    467   2�	                0    22560    tbladt_strategy_content_keyword 
   TABLE DATA               ]   COPY tbladt_strategy_content_keyword (recordid, strategyid, keyword, isincluded) FROM stdin;
    public       wayio    false    679   j�	      C          0    18737 $   tbladt_strategy_content_keyword_temp 
   TABLE DATA               {   COPY tbladt_strategy_content_keyword_temp (recordid, recordguid, strategyid, keyword, isincluded, createddate) FROM stdin;
    public       wayio    false    470   ��	      E          0    18746    tbladt_strategy_coordinate 
   TABLE DATA               k   COPY tbladt_strategy_coordinate (recordid, strategyid, latitude, longitude, radius, minradius) FROM stdin;
    public       wayio    false    472   ��	      G          0    18755    tbladt_strategy_country 
   TABLE DATA               L   COPY tbladt_strategy_country (recordid, strategyid, countryids) FROM stdin;
    public       wayio    false    474   ��	      >          0    18713    tbladt_strategy_cparetargeting 
   TABLE DATA               �  COPY tbladt_strategy_cparetargeting (recordid, strategyid, cparetargetingon, initialgoalname, initialrecencydaysfrom, initialrecencydaysto, initialconversionstrength, initialuserfrequency, initialfrequency, decrementalgoalname, decrementalrecencydaysfrom, decrementalrecencydaysto, decrementalconversionstrength, decrementaluserfrequency, decrementalfrequency, addunattributedon, updatefrequency, retargetingtype, createdon, createdby, updatedon, updatedby) FROM stdin;
    public       wayio    false    465   ��	      I          0    18766    tbladt_strategy_creative 
   TABLE DATA               ]   COPY tbladt_strategy_creative (recordid, strategyid, creativeids, isallcreative) FROM stdin;
    public       wayio    false    476   �	      M          0    18786    tbladt_strategy_dayparting 
   TABLE DATA               �   COPY tbladt_strategy_dayparting (recordid, strategyid, fromtime, totime, timezoneid, mon, tue, wed, thu, fri, sat, sun, isrequesttimezone) FROM stdin;
    public       wayio    false    480   N�	      O          0    18794    tbladt_strategy_dealid 
   TABLE DATA               I   COPY tbladt_strategy_dealid (recordid, strategyid, dealdbid) FROM stdin;
    public       wayio    false    482   ��	                0    22567    tbladt_strategy_demographic 
   TABLE DATA               �   COPY tbladt_strategy_demographic (recordid, strategyid, genderid, agefrom, ageupto, skipagetarget, skewagetarget, minincome, maxincome, languageids, behaviorids, homeorbusiness) FROM stdin;
    public       wayio    false    680   ��	      R          0    18808    tbladt_strategy_device 
   TABLE DATA               Q   COPY tbladt_strategy_device (recordid, strategyid, makeid, deviceid) FROM stdin;
    public       wayio    false    485   ��	      K          0    18775    tbladt_strategy_dma 
   TABLE DATA               D   COPY tbladt_strategy_dma (recordid, strategyid, dmaids) FROM stdin;
    public       wayio    false    478   ��	      T          0    18816    tbladt_strategy_iabcategory 
   TABLE DATA               Q   COPY tbladt_strategy_iabcategory (recordid, strategyid, categoryids) FROM stdin;
    public       wayio    false    487   ��	      V          0    18827    tbladt_strategy_isp 
   TABLE DATA               O   COPY tbladt_strategy_isp (recordid, strategyid, ispids, isallwifi) FROM stdin;
    public       wayio    false    489   "�	      X          0    18838    tbladt_strategy_keyword 
   TABLE DATA               d   COPY tbladt_strategy_keyword (recordid, strategyid, includedkeywords, excludedkeywords) FROM stdin;
    public       wayio    false    491   Z�	      Z          0    18849    tbladt_strategy_mosaic 
   TABLE DATA               J   COPY tbladt_strategy_mosaic (recordid, strategyid, mosaicids) FROM stdin;
    public       wayio    false    493   ��	      [          0    18858    tbladt_strategy_optimizeddata 
   TABLE DATA               �   COPY tbladt_strategy_optimizeddata (strategyid, optimizedmaxrate, optimizedrtlmvalue, optimizedminscore, optimizedmaxscore) FROM stdin;
    public       wayio    false    494   ��	      ]          0    18865    tbladt_strategy_os 
   TABLE DATA               N   COPY tbladt_strategy_os (recordid, strategyid, osid, osversionid) FROM stdin;
    public       wayio    false    496   ��	      _          0    18873    tbladt_strategy_postalcode 
   TABLE DATA               M   COPY tbladt_strategy_postalcode (recordid, strategyid, zipcodes) FROM stdin;
    public       wayio    false    498   ��	      b          0    18890    tbladt_strategy_region_city 
   TABLE DATA               R   COPY tbladt_strategy_region_city (recordid, strategyregionid, cityid) FROM stdin;
    public       wayio    false    501   1�	                0    22588    tbladt_strategy_regions 
   TABLE DATA               r   COPY tbladt_strategy_regions (recordid, strategyid, regionids, countryid, stateid, isallcityselected) FROM stdin;
    public       wayio    false    682   N�	      e          0    18904    tbladt_strategy_retargeting 
   TABLE DATA               �   COPY tbladt_strategy_retargeting (recordid, strategyid, retargetingon, scriptname, description, initialscript, incrementalupdatescript, decrementalupdatescript, targetingtype, rerunfrequency, targetingcriteria) FROM stdin;
    public       wayio    false    504   ��	                0    22579    tbladt_strategy_rtpe 
   TABLE DATA               y   COPY tbladt_strategy_rtpe (recordid, strategyid, isrtpeon, rtlmvalue, modelid, minimumctrvtr, maximumctrvtr) FROM stdin;
    public       wayio    false    681   ��	      g          0    18915    tbladt_strategy_siteapp 
   TABLE DATA               �   COPY tbladt_strategy_siteapp (recordid, strategyid, propertyid, propertyname, reqproperty, createdby, createdon, updatedon, updatedby) FROM stdin;
    public       wayio    false    506   <�	      i          0    18927 !   tbladt_strategy_siteapp_inventory 
   TABLE DATA               W   COPY tbladt_strategy_siteapp_inventory (recordid, strategyid, inventoryid) FROM stdin;
    public       wayio    false    508   Y�	      k          0    18935 %   tbladt_strategy_siteapp_inventorytemp 
   TABLE DATA               n   COPY tbladt_strategy_siteapp_inventorytemp (recordid, strategyid, inventoryid, isdeleted, userid) FROM stdin;
    public       wayio    false    510   v�	      m          0    18943    tbladt_strategy_sitelist 
   TABLE DATA               M   COPY tbladt_strategy_sitelist (recordid, strategyid, sitelistid) FROM stdin;
    public       wayio    false    512   ��	      o          0    18951     tbladt_strategy_sitelist_archive 
   TABLE DATA               U   COPY tbladt_strategy_sitelist_archive (recordid, strategyid, sitelistid) FROM stdin;
    public       wayio    false    514   ��	                0    22598    tbladt_strategy_targets 
   TABLE DATA               4  COPY tbladt_strategy_targets (recordid, strategyid, appsite_isblacklisted, appsiteproperties, isrequesttimezone, isdesktop, istargetosonly, isallsmartphone, isalltablets, devicetypes, isidfa, geotargettype, proximitydesignid, isexchangeoverwrite, geopulseaudiencedesignid, retargetingtargettype) FROM stdin;
    public       wayio    false    683   ��	      q          0    18963 "   tbladt_strategy_targets_dayparting 
   TABLE DATA               u   COPY tbladt_strategy_targets_dayparting (historyid, strategyid, isrequesttimezone, updatedby, updatedon) FROM stdin;
    public       wayio    false    516   ��	      s          0    18968    tbladt_strategy_targets_delete 
   TABLE DATA               �   COPY tbladt_strategy_targets_delete (recordid, strategyid, appsite_isblacklisted, appsiteproperties, isrequesttimezone, isdesktop, istargetosonly, isallsmartphone, isalltablets, isidfa) FROM stdin;
    public       wayio    false    518   �	      u          0    18974    tbladt_strategy_vendorcost 
   TABLE DATA               K   COPY tbladt_strategy_vendorcost (recordid, strategyid, costid) FROM stdin;
    public       wayio    false    520   $�	                0    22610    tbladt_strategy_weather 
   TABLE DATA               �   COPY tbladt_strategy_weather (recordid, strategyid, weatherids, tempfrom, tempto, iscelsius, skiptemperaturetarget) FROM stdin;
    public       wayio    false    684   A�	      x          0    18988    tbladt_strategy_weather_delete 
   TABLE DATA               �   COPY tbladt_strategy_weather_delete (recordid, strategyid, weatherids, tempfrom, tempto, iscelsius, skiptemperaturetarget) FROM stdin;
    public       wayio    false    523   ��	      7          0    18682    tbladt_strategyosmapping 
   TABLE DATA               Q   COPY tbladt_strategyosmapping (recordid, strategyid, osname, refkey) FROM stdin;
    public       wayio    false    458   ��	      =          0    25156    tbladt_strategysiteapp 
   TABLE DATA               K   COPY tbladt_strategysiteapp (recordid, strategyid, properties) FROM stdin;
    public       wayio    false    764   ��	                0    22620    tbladt_tableaureport 
   TABLE DATA               �   COPY tbladt_tableaureport (reportid, reportname, description, reportlink, width, height, isactive, createdon, createdby, updatedon, updatedby) FROM stdin;
    public       wayio    false    685   ��	                0    22632    tbladt_timezone 
   TABLE DATA               �   COPY tbladt_timezone (timezoneid, timezonecode, timezonename, utcoffset, standardid, timezonegroup, isdstallowed, isactive) FROM stdin;
    public       wayio    false    686   �	      {          0    19006 (   tbladt_tracker_prevdata_strategycreative 
   TABLE DATA               s   COPY tbladt_tracker_prevdata_strategycreative (recordid, datakey, strategyid, creativeid, "timestamp") FROM stdin;
    public       wayio    false    526   ,�	                0    22639    tbladt_user 
   TABLE DATA                 COPY tbladt_user (userid, companyid, firstname, lastname, email, password, phoneno, street, city, state, country, zip, imageurl, timezoneid, roleid, issysadmin, isactive, createdby, createdon, updatedby, updatedon, salt, gender, birthday, idnum) FROM stdin;
    public       wayio    false    687   I�	                0    22663    tbladt_user_notification 
   TABLE DATA               _   COPY tbladt_user_notification (associd, notificationid, userid, isnew, isarchived) FROM stdin;
    public       wayio    false    689   ��	                0    22671     tbladt_user_notification_message 
   TABLE DATA               y   COPY tbladt_user_notification_message (associd, notificationid, userid, referedby, markedasread, isarchived) FROM stdin;
    public       wayio    false    690   �	      ~          0    19021    tbladt_usergridcolumnfilter 
   TABLE DATA               c   COPY tbladt_usergridcolumnfilter (criteriaid, userid, gridid, columnfilter, updatedon) FROM stdin;
    public       wayio    false    529   5�	                0    22651    tbladt_usergridfiltercriteria 
   TABLE DATA               �   COPY tbladt_usergridfiltercriteria (criteriaid, userid, gridid, filterlabel, filterdata, ownerlabel, ownerdata, rangelabel, rangedata, show1p, show3p, updatedon, sortcolumn, sortdirection) FROM stdin;
    public       wayio    false    688   R�	      1          0    22904    tbladt_userverifycode 
   TABLE DATA               �   COPY tbladt_userverifycode (userverifycodeid, userid, confirmcode, expirydate, type, created, lastmodified, verifycode, isactive) FROM stdin;
    public       wayio    false    716   o�	                 0    22679    tbladt_vendor 
   TABLE DATA               y   COPY tbladt_vendor (vendorid, vendorname, description, createdby, createdon, updatedby, updatedon, isactive) FROM stdin;
    public       wayio    false    691   ��	      �          0    19063    tbladt_vendor_product 
   TABLE DATA               J   COPY tbladt_vendor_product (productid, vendorid, productname) FROM stdin;
    public       wayio    false    535   ��	      !          0    22690    tbladt_vendor_product_costtype 
   TABLE DATA               v   COPY tbladt_vendor_product_costtype (recordid, vendorid, productid, costcategoryid, costtypeid, isactive) FROM stdin;
    public       wayio    false    692   ��	      "          0    22697    tbladt_weather 
   TABLE DATA               U   COPY tbladt_weather (weatherid, weathercode, weathercondition, isactive) FROM stdin;
    public       wayio    false    693   �	      �          0    19084    tblmig_adexchange 
   TABLE DATA               0   COPY tblmig_adexchange (id, adexid) FROM stdin;
    public       wayio    false    538   5�	      �          0    19090    tblmig_advertiser 
   TABLE DATA               6   COPY tblmig_advertiser (id, advertiserid) FROM stdin;
    public       wayio    false    540   R�	      �          0    19096    tblmig_asset 
   TABLE DATA               j   COPY tblmig_asset (id, lineitemid, strategyid, oldcreativeid, assetid, oldcampaignid, status) FROM stdin;
    public       wayio    false    542   o�	      �          0    19102    tblmig_campaign 
   TABLE DATA               2   COPY tblmig_campaign (id, campaignid) FROM stdin;
    public       wayio    false    544   ��	      #          0    22703    tblmig_campaign_bm 
   TABLE DATA               k   COPY tblmig_campaign_bm (campaignid, barometriccampaignid, barometriccampaignname, hasmultibm) FROM stdin;
    public       wayio    false    694   ��	      �          0    19127    tblmig_campaign_bm_effected 
   TABLE DATA               h   COPY tblmig_campaign_bm_effected (campaignid, barometriccampaignid, barometriccampaignname) FROM stdin;
    public       wayio    false    549   ��	      �          0    19108    tblmig_campaignadvusermap 
   TABLE DATA               T   COPY tblmig_campaignadvusermap (id, campaignname, advertiserid, userid) FROM stdin;
    public       wayio    false    546   ��	      �          0    19117    tblmig_campaignmap 
   TABLE DATA               h   COPY tblmig_campaignmap (id, campaignname, advertiserid, campaignids, userid, salesforceid) FROM stdin;
    public       wayio    false    548    �	      �          0    19132    tblmig_carriers 
   TABLE DATA               8   COPY tblmig_carriers (id, mobileoperatorid) FROM stdin;
    public       wayio    false    551   �	      �          0    19142    tblmig_creative_bm 
   TABLE DATA               �   COPY tblmig_creative_bm (creativeid, barometricplacementid, barometricplacementname, barometricplacementcturl, barometricplacementautocreationid) FROM stdin;
    public       wayio    false    553   :�	      �          0    19148    tblmig_creative_status 
   TABLE DATA               Y   COPY tblmig_creative_status (creativeid, oldcreativeid, oldstatus, newsatus) FROM stdin;
    public       wayio    false    554   W�	      �          0    19136    tblmig_creativeproperties 
   TABLE DATA               �  COPY tblmig_creativeproperties (id, creativesourcetypeid, creativesource, rawfilename, dimensionid, bannerheight, bannerwidth, banneradimageurlpath, adtag, creativeduration, videodeliverytype, videoscalable, iscompanionad, mediabitrate, rtbapi, nativeiconsourcetypeid, nativerawfilename, nativeiconsource, nativetitle, nativecta, nativetext, nativefallbackurl, nativebundle, nativestarrating, rmproviderid, rmdisplaymode, rmsdkid, richmediauniqueid, rmplacementid) FROM stdin;
    public       wayio    false    552   t�	      �          0    19153    tblmig_iabcategory 
   TABLE DATA               8   COPY tblmig_iabcategory (id, iabcategoryid) FROM stdin;
    public       wayio    false    556   ��	      �          0    19159 
   tblmig_isp 
   TABLE DATA               3   COPY tblmig_isp (id, mobileoperatorid) FROM stdin;
    public       wayio    false    558   ��	      �          0    19165    tblmig_lineitemmap 
   TABLE DATA               C   COPY tblmig_lineitemmap (id, lineitemname, campaignid) FROM stdin;
    public       wayio    false    560   ��	      �          0    19174    tblmig_make 
   TABLE DATA               *   COPY tblmig_make (id, makeid) FROM stdin;
    public       wayio    false    562   ��	      �          0    19180    tblmig_makedevice 
   TABLE DATA               :   COPY tblmig_makedevice (id, deviceid, makeid) FROM stdin;
    public       wayio    false    564   �	      �          0    19186    tblmig_mediaprovider 
   TABLE DATA               <   COPY tblmig_mediaprovider (id, mediaproviderid) FROM stdin;
    public       wayio    false    566   "�	      �          0    19204    tblmig_optimizer_types 
   TABLE DATA               Y  COPY tblmig_optimizer_types (optimizerid, optimizername, pricingtype, rtpemodel, rtpemodelid, targetmargin, targetctr, optimizerpercentage, isoptimizedprice, isdynamicscore, impressionsperrun, scoredelta, cpcdelta, lowbidrate, highbidrate, maximumstrategypercentage, maximumpacingrate, highpacingrate, lowpacingrate, minimumpacingrate, minimumcompetition, maximumcompetition, minimumwinrate, maximumwinrate, impressionspershortrun, dynamictargetctr, lowstrategycompensation, lowstrategyinitminscore, lowstrategydynamicminscore, maxstrategymultiplier, minimumrate, maximumrate, highctrmaxcpcorcpcv, lowctrmaxcpcorcpcv, highctrmaxcpmrate, lowctrmaxcpmrate, highctrmincpmrate, lowctrmincpmrate, dynamictimescalemultiplier, timescalelengtheningimpratio, timescaleshorteningimpratio, minimumtimescalemultiplier, maximumtimescalemultiplier, creative) FROM stdin;
    public       wayio    false    572   ?�	      �          0    19192 	   tblmig_os 
   TABLE DATA               &   COPY tblmig_os (id, osid) FROM stdin;
    public       wayio    false    568   \�	      �          0    19198 
   tblmig_osv 
   TABLE DATA               .   COPY tblmig_osv (id, osversionid) FROM stdin;
    public       wayio    false    570   y�	      &          0    22743    tblmig_osv_group 
   TABLE DATA               T   COPY tblmig_osv_group (id, refosvid, osid, osversion, "Group", ref_key) FROM stdin;
    public       wayio    false    697   ��	      �          0    19218    tblmig_region 
   TABLE DATA               6   COPY tblmig_region (id, stategeotargetid) FROM stdin;
    public       wayio    false    576   ��	      �          0    19212    tblmig_rtpemodel 
   TABLE DATA               0   COPY tblmig_rtpemodel (id, modelid) FROM stdin;
    public       wayio    false    574   ��	      �          0    19224    tblmig_strategymap 
   TABLE DATA               x   COPY tblmig_strategymap (id, recordid, oldcampaignid, campaignname, strategyname, lineitemid, onlinestatus) FROM stdin;
    public       wayio    false    578   ��	      �          0    19233    tblmig_user 
   TABLE DATA               *   COPY tblmig_user (id, userid) FROM stdin;
    public       wayio    false    580   
�	      �          0    19237    tblmig_vendor_costtype 
   TABLE DATA               ]   COPY tblmig_vendor_costtype (vendor, product, description, categories, costtype) FROM stdin;
    public       wayio    false    581   '�	      .          0    22839    tblqa_dummyadvertiser 
   TABLE DATA               @   COPY tblqa_dummyadvertiser (recordid, advertiserid) FROM stdin;
    public       wayio    false    708   D�	      F           0    0    adx_performance_tracking_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('adx_performance_tracking_seq', 15, true);
            public       wayio    false    757            G           0    0    bidder_performance_tracking_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('bidder_performance_tracking_seq', 14, true);
            public       wayio    false    758            H           0    0 )   tbladt_3psegmentreportrequest_trigger_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('tbladt_3psegmentreportrequest_trigger_seq', 1, false);
            public       wayio    false    196            I           0    0    tbladt_adexchange_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('tbladt_adexchange_seq', 22, true);
            public       wayio    false    200            J           0    0    tbladt_advertiser_assignee_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('tbladt_advertiser_assignee_seq', 11, true);
            public       wayio    false    202            K           0    0    tbladt_advertiser_delete_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('tbladt_advertiser_delete_seq', 1, false);
            public       wayio    false    204            L           0    0    tbladt_advertiser_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('tbladt_advertiser_seq', 12, true);
            public       wayio    false    201            M           0    0 '   tbladt_adxappnexus_creativeapproval_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('tbladt_adxappnexus_creativeapproval_seq', 1, false);
            public       wayio    false    206            N           0    0    tbladt_agency_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('tbladt_agency_seq', 1, false);
            public       wayio    false    208            O           0    0    tbladt_apisecurity_user_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('tbladt_apisecurity_user_seq', 1, false);
            public       wayio    false    199            P           0    0    tbladt_audience_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('tbladt_audience_seq', 1, false);
            public       wayio    false    211            Q           0    0    tbladt_auditlog_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('tbladt_auditlog_seq', 1, false);
            public       wayio    false    213            R           0    0 /   tbladt_barocreativeplacement_update_trigger_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('tbladt_barocreativeplacement_update_trigger_seq', 1, false);
            public       wayio    false    215            S           0    0 /   tbladt_biddingstatistics_consumed_daily_est_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('tbladt_biddingstatistics_consumed_daily_est_seq', 1, false);
            public       wayio    false    222            T           0    0 4   tbladt_biddingstatistics_consumed_daily_est_temp_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('tbladt_biddingstatistics_consumed_daily_est_temp_seq', 1, false);
            public       wayio    false    224            U           0    0 +   tbladt_biddingstatistics_consumed_daily_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('tbladt_biddingstatistics_consumed_daily_seq', 1, false);
            public       wayio    false    220            V           0    0 -   tbladt_biddingstatistics_consumed_overall_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('tbladt_biddingstatistics_consumed_overall_seq', 1, false);
            public       wayio    false    226            W           0    0 2   tbladt_biddingstatistics_consumed_overall_temp_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('tbladt_biddingstatistics_consumed_overall_temp_seq', 1, false);
            public       wayio    false    228            X           0    0 +   tbladt_biddingstatistics_dashboardgraph_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('tbladt_biddingstatistics_dashboardgraph_seq', 1, false);
            public       wayio    false    230            Y           0    0 &   tbladt_biddingstatistics_last2days_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('tbladt_biddingstatistics_last2days_seq', 1, false);
            public       wayio    false    232            Z           0    0    tbladt_biddingstatistics_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('tbladt_biddingstatistics_seq', 196124, true);
            public       wayio    false    218            [           0    0    tbladt_campaign_assignee_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('tbladt_campaign_assignee_seq', 10, true);
            public       wayio    false    582            \           0    0    tbladt_campaign_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('tbladt_campaign_seq', 9, true);
            public       wayio    false    235            ]           0    0    tbladt_campaign_watcher_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('tbladt_campaign_watcher_seq', 1, false);
            public       wayio    false    237            ^           0    0    tbladt_carrierpopular_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('tbladt_carrierpopular_seq', 1, false);
            public       wayio    false    239            _           0    0    tbladt_carriers_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('tbladt_carriers_seq', 1, false);
            public       wayio    false    241            `           0    0    tbladt_clonetrigger_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('tbladt_clonetrigger_seq', 1, false);
            public       wayio    false    243            a           0    0    tbladt_commonwords_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('tbladt_commonwords_seq', 1, false);
            public       wayio    false    245            b           0    0    tbladt_company_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('tbladt_company_seq', 1, false);
            public       wayio    false    247            c           0    0    tbladt_country_state_city_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('tbladt_country_state_city_seq', 1, false);
            public       wayio    false    249            d           0    0 #   tbladt_country_state_city_stage_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('tbladt_country_state_city_stage_seq', 1, false);
            public       wayio    false    251            e           0    0 #   tbladt_cparetargeting_goal_name_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('tbladt_cparetargeting_goal_name_seq', 1, false);
            public       wayio    false    234            f           0    0    tbladt_creative_companionad_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('tbladt_creative_companionad_seq', 1, false);
            public       wayio    false    266            g           0    0    tbladt_creative_delete_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('tbladt_creative_delete_seq', 1, false);
            public       wayio    false    268            h           0    0    tbladt_creative_dimension_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('tbladt_creative_dimension_seq', 1, false);
            public       wayio    false    270            i           0    0 -   tbladt_creative_dimension_tracker_archive_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('tbladt_creative_dimension_tracker_archive_seq', 1, false);
            public       wayio    false    272            j           0    0    tbladt_creative_dummy_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('tbladt_creative_dummy_seq', 1, false);
            public       wayio    false    274            k           0    0 !   tbladt_creative_eventtracking_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('tbladt_creative_eventtracking_seq', 1, false);
            public       wayio    false    275            l           0    0    tbladt_creative_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('tbladt_creative_seq', 3, true);
            public       wayio    false    253            m           0    0    tbladt_creativedimension_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('tbladt_creativedimension_seq', 1, false);
            public       wayio    false    255            n           0    0    tbladt_creativegroup_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('tbladt_creativegroup_seq', 1, false);
            public       wayio    false    256            o           0    0 $   tbladt_creativeproperties_delete_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('tbladt_creativeproperties_delete_seq', 1, false);
            public       wayio    false    259            p           0    0    tbladt_creativeproperties_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('tbladt_creativeproperties_seq', 1, false);
            public       wayio    false    257            q           0    0    tbladt_creativevendor_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('tbladt_creativevendor_seq', 1, false);
            public       wayio    false    261            r           0    0 *   tbladt_datatransformation_requiredfile_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('tbladt_datatransformation_requiredfile_seq', 1, false);
            public       wayio    false    279            s           0    0    tbladt_datatransformation_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('tbladt_datatransformation_seq', 1, false);
            public       wayio    false    278            t           0    0    tbladt_dealid_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('tbladt_dealid_seq', 1, false);
            public       wayio    false    281            u           0    0 1   tbladt_dealidbiddingstatistics_consumed_daily_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('tbladt_dealidbiddingstatistics_consumed_daily_seq', 1, false);
            public       wayio    false    282            v           0    0    tbladt_device_os_make_type_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('tbladt_device_os_make_type_seq', 1, false);
            public       wayio    false    286            w           0    0    tbladt_device_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('tbladt_device_seq', 1, false);
            public       wayio    false    284            x           0    0    tbladt_dtsx_trigger_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('tbladt_dtsx_trigger_seq', 1, false);
            public       wayio    false    277            y           0    0    tbladt_exceldownloadbacklog_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('tbladt_exceldownloadbacklog_seq', 1, false);
            public       wayio    false    289            z           0    0    tbladt_flat_lineitems_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('tbladt_flat_lineitems_seq', 1, false);
            public       wayio    false    291            {           0    0 $   tbladt_flat_reqproperty_sitelist_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('tbladt_flat_reqproperty_sitelist_seq', 1, false);
            public       wayio    false    292            |           0    0     tbladt_flat_richmedia_markup_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('tbladt_flat_richmedia_markup_seq', 1, false);
            public       wayio    false    294            }           0    0 !   tbladt_flat_strategy_creative_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('tbladt_flat_strategy_creative_seq', 1, false);
            public       wayio    false    297            ~           0    0    tbladt_flat_tracker_trigger_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('tbladt_flat_tracker_trigger_seq', 1, false);
            public       wayio    false    299                       0    0 &   tbladt_flat_tracker_trigger_subset_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('tbladt_flat_tracker_trigger_subset_seq', 1, false);
            public       wayio    false    301            �           0    0    tbladt_hawk_xmlwithopenxml_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('tbladt_hawk_xmlwithopenxml_seq', 1, false);
            public       wayio    false    304            �           0    0    tbladt_hawkmonitoringalert_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('tbladt_hawkmonitoringalert_seq', 1, false);
            public       wayio    false    306            �           0    0    tbladt_isp_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('tbladt_isp_seq', 1, false);
            public       wayio    false    308            �           0    0    tbladt_isppopular_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('tbladt_isppopular_seq', 1, false);
            public       wayio    false    310            �           0    0    tbladt_kpi_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('tbladt_kpi_seq', 1, false);
            public       wayio    false    313            �           0    0    tbladt_lineitem_delete_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('tbladt_lineitem_delete_seq', 1, false);
            public       wayio    false    315            �           0    0 !   tbladt_lineitem_filtereditems_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('tbladt_lineitem_filtereditems_seq', 1, false);
            public       wayio    false    317            �           0    0    tbladt_lineitem_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('tbladt_lineitem_seq', 23, true);
            public       wayio    false    314            �           0    0 #   tbladt_lineitem_threshold_reach_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('tbladt_lineitem_threshold_reach_seq', 1, false);
            public       wayio    false    320            �           0    0    tbladt_lineitem_vendorcost_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('tbladt_lineitem_vendorcost_seq', 1, false);
            public       wayio    false    321            �           0    0    tbladt_linetype_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('tbladt_linetype_seq', 1, false);
            public       wayio    false    323            �           0    0    tbladt_make_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('tbladt_make_seq', 1, false);
            public       wayio    false    324            �           0    0    tbladt_mediaprovider_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('tbladt_mediaprovider_seq', 1, false);
            public       wayio    false    326            �           0    0    tbladt_mosaic_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('tbladt_mosaic_seq', 1, false);
            public       wayio    false    327            �           0    0    tbladt_notification_message_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('tbladt_notification_message_seq', 1, false);
            public       wayio    false    332            �           0    0     tbladt_notification_schedule_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('tbladt_notification_schedule_seq', 1, false);
            public       wayio    false    335            �           0    0    tbladt_notification_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('tbladt_notification_seq', 1, false);
            public       wayio    false    330            �           0    0    tbladt_optimizerlogs_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('tbladt_optimizerlogs_seq', 1, false);
            public       wayio    false    720            �           0    0    tbladt_os_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('tbladt_os_seq', 1, false);
            public       wayio    false    341            �           0    0    tbladt_osdevicemapping_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('tbladt_osdevicemapping_seq', 1, false);
            public       wayio    false    343            �           0    0    tbladt_osversion_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('tbladt_osversion_seq', 1, false);
            public       wayio    false    345            �           0    0     tbladt_pacing_campaign_today_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('tbladt_pacing_campaign_today_seq', 1, false);
            public       wayio    false    346            �           0    0 "   tbladt_pacing_lineitem_history_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('tbladt_pacing_lineitem_history_seq', 1, false);
            public       wayio    false    348            �           0    0     tbladt_pacing_lineitem_today_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('tbladt_pacing_lineitem_today_seq', 1, false);
            public       wayio    false    350            �           0    0    tbladt_pacinglogs_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('tbladt_pacinglogs_seq', 9108, true);
            public       wayio    false    721            �           0    0 $   tbladt_platform_blocklist_cookie_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('tbladt_platform_blocklist_cookie_seq', 1, false);
            public       wayio    false    361            �           0    0     tbladt_platform_blocklist_ip_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('tbladt_platform_blocklist_ip_seq', 1, false);
            public       wayio    false    363            �           0    0 &   tbladt_platform_blocklist_keywords_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('tbladt_platform_blocklist_keywords_seq', 1, false);
            public       wayio    false    365            �           0    0 %   tbladt_platform_blocklist_siteapp_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('tbladt_platform_blocklist_siteapp_seq', 1, false);
            public       wayio    false    367            �           0    0 #   tbladt_platform_blocklist_wayid_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('tbladt_platform_blocklist_wayid_seq', 1, false);
            public       wayio    false    369            �           0    0 ,   tbladt_platform_blocklisttracker_archive_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('tbladt_platform_blocklisttracker_archive_seq', 1, false);
            public       wayio    false    359            �           0    0 $   tbladt_platform_blocklisttracker_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('tbladt_platform_blocklisttracker_seq', 1, false);
            public       wayio    false    357            �           0    0 +   tbladt_platform_creativetracker_archive_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('tbladt_platform_creativetracker_archive_seq', 1, false);
            public       wayio    false    372            �           0    0 )   tbladt_platform_dealidtracker_archive_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('tbladt_platform_dealidtracker_archive_seq', 1, false);
            public       wayio    false    376            �           0    0 !   tbladt_platform_dealidtracker_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('tbladt_platform_dealidtracker_seq', 1, false);
            public       wayio    false    374            �           0    0 +   tbladt_platform_lineitemtracker_archive_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('tbladt_platform_lineitemtracker_archive_seq', 1, false);
            public       wayio    false    378            �           0    0    tbladt_platform_optimizer_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('tbladt_platform_optimizer_seq', 1, false);
            public       wayio    false    380            �           0    0 %   tbladt_platform_optimizersettings_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('tbladt_platform_optimizersettings_seq', 1, false);
            public       wayio    false    382            �           0    0 2   tbladt_platform_richmediamarkuptracker_archive_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('tbladt_platform_richmediamarkuptracker_archive_seq', 1, false);
            public       wayio    false    385            �           0    0 +   tbladt_platform_sitelisttracker_archive_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('tbladt_platform_sitelisttracker_archive_seq', 1, false);
            public       wayio    false    389            �           0    0 #   tbladt_platform_sitelisttracker_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('tbladt_platform_sitelisttracker_seq', 1, false);
            public       wayio    false    387            �           0    0 +   tbladt_platform_strategytracker_archive_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('tbladt_platform_strategytracker_archive_seq', 1, false);
            public       wayio    false    392            �           0    0 #   tbladt_platform_tracker_archive_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('tbladt_platform_tracker_archive_seq', 1, false);
            public       wayio    false    396            �           0    0    tbladt_platform_tracker_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('tbladt_platform_tracker_seq', 1, false);
            public       wayio    false    394            �           0    0 +   tbladt_platform_variabletracker_archive_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('tbladt_platform_variabletracker_archive_seq', 1, false);
            public       wayio    false    400            �           0    0 #   tbladt_platform_variabletracker_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('tbladt_platform_variabletracker_seq', 1, false);
            public       wayio    false    398            �           0    0    tbladt_platformcuidlist_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('tbladt_platformcuidlist_seq', 1, false);
            public       wayio    false    353            �           0    0 %   tbladt_platformsoftlaunchsettings_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('tbladt_platformsoftlaunchsettings_seq', 1, false);
            public       wayio    false    355            �           0    0    tbladt_process_startpos_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('tbladt_process_startpos_seq', 1, false);
            public       wayio    false    402            �           0    0    tbladt_region_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('tbladt_region_seq', 1, false);
            public       wayio    false    424            �           0    0    tbladt_rfptoolconfiguration_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('tbladt_rfptoolconfiguration_seq', 1, false);
            public       wayio    false    404            �           0    0    tbladt_role_action_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('tbladt_role_action_seq', 1, false);
            public       wayio    false    427            �           0    0 !   tbladt_role_notification_rule_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('tbladt_role_notification_rule_seq', 1, false);
            public       wayio    false    429            �           0    0    tbladt_role_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('tbladt_role_seq', 3, true);
            public       wayio    false    425            �           0    0 (   tbladt_rtpe_callback_tracker_archive_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('tbladt_rtpe_callback_tracker_archive_seq', 1, false);
            public       wayio    false    416            �           0    0     tbladt_rtpe_callback_tracker_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('tbladt_rtpe_callback_tracker_seq', 1, false);
            public       wayio    false    414            �           0    0    tbladt_rtpe_tracker_archive_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('tbladt_rtpe_tracker_archive_seq', 1, false);
            public       wayio    false    420            �           0    0    tbladt_rtpe_tracker_dummy_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('tbladt_rtpe_tracker_dummy_seq', 1, false);
            public       wayio    false    422            �           0    0    tbladt_rtpe_tracker_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('tbladt_rtpe_tracker_seq', 1, false);
            public       wayio    false    418            �           0    0    tbladt_rtpemodel_file_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('tbladt_rtpemodel_file_seq', 1, false);
            public       wayio    false    407            �           0    0 !   tbladt_rtpemodel_requiredfile_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('tbladt_rtpemodel_requiredfile_seq', 1, false);
            public       wayio    false    409            �           0    0    tbladt_rtpemodel_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('tbladt_rtpemodel_seq', 1, false);
            public       wayio    false    406            �           0    0    tbladt_rtpeofflearner_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('tbladt_rtpeofflearner_seq', 1, false);
            public       wayio    false    412            �           0    0 $   tbladt_salesforcedata_bulkinsert_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('tbladt_salesforcedata_bulkinsert_seq', 1, false);
            public       wayio    false    431            �           0    0    tbladt_siteapp_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('tbladt_siteapp_seq', 1, false);
            public       wayio    false    433            �           0    0    tbladt_sitelist_sendcsv_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('tbladt_sitelist_sendcsv_seq', 1, false);
            public       wayio    false    449            �           0    0 #   tbladt_sitelist_tracker_archive_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('tbladt_sitelist_tracker_archive_seq', 1, false);
            public       wayio    false    452            �           0    0    tbladt_sitelist_tracker_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('tbladt_sitelist_tracker_seq', 1, false);
            public       wayio    false    450            �           0    0     tbladt_sitelistassoc_archive_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('tbladt_sitelistassoc_archive_seq', 1, false);
            public       wayio    false    442            �           0    0 %   tbladt_sitelistassoc_intermediate_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('tbladt_sitelistassoc_intermediate_seq', 1, false);
            public       wayio    false    444            �           0    0    tbladt_sitelistassoc_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('tbladt_sitelistassoc_seq', 1, false);
            public       wayio    false    440            �           0    0 !   tbladt_sitelistmaster_archive_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('tbladt_sitelistmaster_archive_seq', 1, false);
            public       wayio    false    447            �           0    0    tbladt_sitelistmaster_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('tbladt_sitelistmaster_seq', 1, false);
            public       wayio    false    445            �           0    0    tbladt_sqlerrorlog_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('tbladt_sqlerrorlog_seq', 1, false);
            public       wayio    false    454            �           0    0    tbladt_strategy_adexchange_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('tbladt_strategy_adexchange_seq', 200, true);
            public       wayio    false    459            �           0    0 )   tbladt_strategy_audience_intermediate_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('tbladt_strategy_audience_intermediate_seq', 1, false);
            public       wayio    false    463            �           0    0    tbladt_strategy_audience_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('tbladt_strategy_audience_seq', 1, true);
            public       wayio    false    461            �           0    0    tbladt_strategy_carriers_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('tbladt_strategy_carriers_seq', 10, true);
            public       wayio    false    466            �           0    0 #   tbladt_strategy_content_keyword_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('tbladt_strategy_content_keyword_seq', 1, false);
            public       wayio    false    468            �           0    0 (   tbladt_strategy_content_keyword_temp_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('tbladt_strategy_content_keyword_temp_seq', 1, false);
            public       wayio    false    469            �           0    0    tbladt_strategy_coordinate_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('tbladt_strategy_coordinate_seq', 42, true);
            public       wayio    false    471            �           0    0    tbladt_strategy_country_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('tbladt_strategy_country_seq', 4, true);
            public       wayio    false    473            �           0    0 "   tbladt_strategy_cparetargeting_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('tbladt_strategy_cparetargeting_seq', 1, false);
            public       wayio    false    464            �           0    0    tbladt_strategy_creative_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('tbladt_strategy_creative_seq', 4, true);
            public       wayio    false    475            �           0    0    tbladt_strategy_dayparting_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('tbladt_strategy_dayparting_seq', 36, true);
            public       wayio    false    479            �           0    0    tbladt_strategy_dealid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('tbladt_strategy_dealid_seq', 2, true);
            public       wayio    false    481            �           0    0    tbladt_strategy_demographic_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('tbladt_strategy_demographic_seq', 4, true);
            public       wayio    false    483            �           0    0    tbladt_strategy_device_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('tbladt_strategy_device_seq', 308, true);
            public       wayio    false    484            �           0    0    tbladt_strategy_dma_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('tbladt_strategy_dma_seq', 4, true);
            public       wayio    false    477            �           0    0    tbladt_strategy_iabcategory_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('tbladt_strategy_iabcategory_seq', 4, true);
            public       wayio    false    486            �           0    0    tbladt_strategy_isp_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('tbladt_strategy_isp_seq', 10, true);
            public       wayio    false    488            �           0    0    tbladt_strategy_keyword_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('tbladt_strategy_keyword_seq', 4, true);
            public       wayio    false    490            �           0    0    tbladt_strategy_mosaic_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('tbladt_strategy_mosaic_seq', 4, true);
            public       wayio    false    492            �           0    0    tbladt_strategy_os_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('tbladt_strategy_os_seq', 1, false);
            public       wayio    false    495            �           0    0    tbladt_strategy_postalcode_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('tbladt_strategy_postalcode_seq', 4, true);
            public       wayio    false    497            �           0    0    tbladt_strategy_region_city_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('tbladt_strategy_region_city_seq', 1, false);
            public       wayio    false    500            �           0    0    tbladt_strategy_regions_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('tbladt_strategy_regions_seq', 4, true);
            public       wayio    false    502            �           0    0    tbladt_strategy_retargeting_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('tbladt_strategy_retargeting_seq', 4, true);
            public       wayio    false    503            �           0    0    tbladt_strategy_rtpe_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('tbladt_strategy_rtpe_seq', 31, true);
            public       wayio    false    499            �           0    0    tbladt_strategy_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('tbladt_strategy_seq', 31, true);
            public       wayio    false    456            �           0    0 %   tbladt_strategy_siteapp_inventory_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('tbladt_strategy_siteapp_inventory_seq', 1, false);
            public       wayio    false    507            �           0    0 )   tbladt_strategy_siteapp_inventorytemp_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('tbladt_strategy_siteapp_inventorytemp_seq', 1, false);
            public       wayio    false    509            �           0    0    tbladt_strategy_siteapp_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('tbladt_strategy_siteapp_seq', 1, false);
            public       wayio    false    505            �           0    0 $   tbladt_strategy_sitelist_archive_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('tbladt_strategy_sitelist_archive_seq', 1, false);
            public       wayio    false    513            �           0    0    tbladt_strategy_sitelist_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('tbladt_strategy_sitelist_seq', 1, false);
            public       wayio    false    511            �           0    0 "   tbladt_strategy_targets_delete_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('tbladt_strategy_targets_delete_seq', 1, false);
            public       wayio    false    517            �           0    0    tbladt_strategy_targets_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('tbladt_strategy_targets_seq', 1, false);
            public       wayio    false    515            �           0    0    tbladt_strategy_vendorcost_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('tbladt_strategy_vendorcost_seq', 1, false);
            public       wayio    false    519            �           0    0 "   tbladt_strategy_weather_delete_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('tbladt_strategy_weather_delete_seq', 1, false);
            public       wayio    false    522            �           0    0    tbladt_strategy_weather_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('tbladt_strategy_weather_seq', 4, true);
            public       wayio    false    521            �           0    0    tbladt_strategyosmapping_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('tbladt_strategyosmapping_seq', 1, false);
            public       wayio    false    457            �           0    0    tbladt_strategysiteapp_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('tbladt_strategysiteapp_seq', 2, true);
            public       wayio    false    767            �           0    0    tbladt_tableaureport_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('tbladt_tableaureport_seq', 1, false);
            public       wayio    false    524            �           0    0 ,   tbladt_tracker_prevdata_strategycreative_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('tbladt_tracker_prevdata_strategycreative_seq', 1, false);
            public       wayio    false    525            �           0    0 $   tbladt_user_notification_message_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('tbladt_user_notification_message_seq', 1, false);
            public       wayio    false    532            �           0    0    tbladt_user_notification_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('tbladt_user_notification_seq', 1, false);
            public       wayio    false    531            �           0    0    tbladt_user_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('tbladt_user_seq', 25, true);
            public       wayio    false    527            �           0    0    tbladt_usergridcolumnfilter_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('tbladt_usergridcolumnfilter_seq', 1, false);
            public       wayio    false    528            �           0    0 !   tbladt_usergridfiltercriteria_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('tbladt_usergridfiltercriteria_seq', 1, false);
            public       wayio    false    530            �           0    0    tbladt_userverifycode_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('tbladt_userverifycode_seq', 40, true);
            public       wayio    false    717            �           0    0 "   tbladt_vendor_product_costtype_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('tbladt_vendor_product_costtype_seq', 1, false);
            public       wayio    false    536            �           0    0    tbladt_vendor_product_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('tbladt_vendor_product_seq', 1, false);
            public       wayio    false    534            �           0    0    tbladt_vendor_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('tbladt_vendor_seq', 1, false);
            public       wayio    false    533            �           0    0    tblmig_adexchange_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('tblmig_adexchange_seq', 1, false);
            public       wayio    false    537            �           0    0    tblmig_advertiser_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('tblmig_advertiser_seq', 1, false);
            public       wayio    false    539            �           0    0    tblmig_asset_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('tblmig_asset_seq', 1, false);
            public       wayio    false    541            �           0    0    tblmig_campaign_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('tblmig_campaign_seq', 1, false);
            public       wayio    false    543            �           0    0    tblmig_campaignadvusermap_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('tblmig_campaignadvusermap_seq', 1, false);
            public       wayio    false    545                        0    0    tblmig_campaignmap_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('tblmig_campaignmap_seq', 1, false);
            public       wayio    false    547                       0    0    tblmig_carriers_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('tblmig_carriers_seq', 1, false);
            public       wayio    false    550                       0    0    tblmig_iabcategory_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('tblmig_iabcategory_seq', 1, false);
            public       wayio    false    555                       0    0    tblmig_isp_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('tblmig_isp_seq', 1, false);
            public       wayio    false    557                       0    0    tblmig_lineitemmap_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('tblmig_lineitemmap_seq', 1, false);
            public       wayio    false    559                       0    0    tblmig_make_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('tblmig_make_seq', 1, false);
            public       wayio    false    561                       0    0    tblmig_makedevice_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('tblmig_makedevice_seq', 1, false);
            public       wayio    false    563                       0    0    tblmig_mediaprovider_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('tblmig_mediaprovider_seq', 1, false);
            public       wayio    false    565                       0    0    tblmig_os_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('tblmig_os_seq', 1, false);
            public       wayio    false    567            	           0    0    tblmig_osv_group_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('tblmig_osv_group_seq', 1, false);
            public       wayio    false    571            
           0    0    tblmig_osv_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('tblmig_osv_seq', 1, false);
            public       wayio    false    569                       0    0    tblmig_region_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('tblmig_region_seq', 1, false);
            public       wayio    false    575                       0    0    tblmig_rtpemodel_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('tblmig_rtpemodel_seq', 1, false);
            public       wayio    false    573                       0    0    tblmig_strategymap_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('tblmig_strategymap_seq', 1, false);
            public       wayio    false    577                       0    0    tblmig_user_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('tblmig_user_seq', 1, false);
            public       wayio    false    579                       0    0    tblqa_dummyadvertiser_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('tblqa_dummyadvertiser_seq', 1, false);
            public       wayio    false    707            �           2606    21818    tbladt_action ix_tbladt_action 
   CONSTRAINT     R   ALTER TABLE ONLY tbladt_action
    ADD CONSTRAINT ix_tbladt_action UNIQUE (code);
 H   ALTER TABLE ONLY public.tbladt_action DROP CONSTRAINT ix_tbladt_action;
       public         wayio    false    586            �           2606    25068 4   adx_performance_tracking pk_adx_performance_tracking 
   CONSTRAINT     q   ALTER TABLE ONLY adx_performance_tracking
    ADD CONSTRAINT pk_adx_performance_tracking PRIMARY KEY (recordid);
 ^   ALTER TABLE ONLY public.adx_performance_tracking DROP CONSTRAINT pk_adx_performance_tracking;
       public         wayio    false    759            �           2606    25076 :   bidder_performance_tracking pk_bidder_performance_tracking 
   CONSTRAINT     w   ALTER TABLE ONLY bidder_performance_tracking
    ADD CONSTRAINT pk_bidder_performance_tracking PRIMARY KEY (recordid);
 d   ALTER TABLE ONLY public.bidder_performance_tracking DROP CONSTRAINT pk_bidder_performance_tracking;
       public         wayio    false    760            f           2606    17184 N   tbladt_3psegmentreportrequest_trigger pk_tbladt_3psegmentreportrequest_trigger 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_3psegmentreportrequest_trigger
    ADD CONSTRAINT pk_tbladt_3psegmentreportrequest_trigger PRIMARY KEY (requestid);
 x   ALTER TABLE ONLY public.tbladt_3psegmentreportrequest_trigger DROP CONSTRAINT pk_tbladt_3psegmentreportrequest_trigger;
       public         wayio    false    197            �           2606    21816    tbladt_action pk_tbladt_action 
   CONSTRAINT     [   ALTER TABLE ONLY tbladt_action
    ADD CONSTRAINT pk_tbladt_action PRIMARY KEY (actionid);
 H   ALTER TABLE ONLY public.tbladt_action DROP CONSTRAINT pk_tbladt_action;
       public         wayio    false    586            �           2606    21831 &   tbladt_adexchange pk_tbladt_adexchange 
   CONSTRAINT     g   ALTER TABLE ONLY tbladt_adexchange
    ADD CONSTRAINT pk_tbladt_adexchange PRIMARY KEY (adexchangeid);
 P   ALTER TABLE ONLY public.tbladt_adexchange DROP CONSTRAINT pk_tbladt_adexchange;
       public         wayio    false    587            h           2606    17189 J   tbladt_adexchanges_requiredapproval pk_tbladt_adexchanges_requiredapproval 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_adexchanges_requiredapproval
    ADD CONSTRAINT pk_tbladt_adexchanges_requiredapproval PRIMARY KEY (adexchangeid);
 t   ALTER TABLE ONLY public.tbladt_adexchanges_requiredapproval DROP CONSTRAINT pk_tbladt_adexchanges_requiredapproval;
       public         wayio    false    198            �           2606    21842 &   tbladt_advertiser pk_tbladt_advertiser 
   CONSTRAINT     g   ALTER TABLE ONLY tbladt_advertiser
    ADD CONSTRAINT pk_tbladt_advertiser PRIMARY KEY (advertiserid);
 P   ALTER TABLE ONLY public.tbladt_advertiser DROP CONSTRAINT pk_tbladt_advertiser;
       public         wayio    false    588            j           2606    17223 8   tbladt_advertiser_assignee pk_tbladt_advertiser_assignee 
   CONSTRAINT     u   ALTER TABLE ONLY tbladt_advertiser_assignee
    ADD CONSTRAINT pk_tbladt_advertiser_assignee PRIMARY KEY (recordid);
 b   ALTER TABLE ONLY public.tbladt_advertiser_assignee DROP CONSTRAINT pk_tbladt_advertiser_assignee;
       public         wayio    false    203            �           2606    21856 J   tbladt_adxappnexus_creativeapproval pk_tbladt_adxappnexus_creativeapproval 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_adxappnexus_creativeapproval
    ADD CONSTRAINT pk_tbladt_adxappnexus_creativeapproval PRIMARY KEY (creativeid);
 t   ALTER TABLE ONLY public.tbladt_adxappnexus_creativeapproval DROP CONSTRAINT pk_tbladt_adxappnexus_creativeapproval;
       public         wayio    false    589            l           2606    17256    tbladt_agency pk_tbladt_agency 
   CONSTRAINT     [   ALTER TABLE ONLY tbladt_agency
    ADD CONSTRAINT pk_tbladt_agency PRIMARY KEY (agencyid);
 H   ALTER TABLE ONLY public.tbladt_agency DROP CONSTRAINT pk_tbladt_agency;
       public         wayio    false    209            �           2606    20959 4   tbladt_apisecurity_group pk_tbladt_apisecurity_group 
   CONSTRAINT     p   ALTER TABLE ONLY tbladt_apisecurity_group
    ADD CONSTRAINT pk_tbladt_apisecurity_group PRIMARY KEY (groupid);
 ^   ALTER TABLE ONLY public.tbladt_apisecurity_group DROP CONSTRAINT pk_tbladt_apisecurity_group;
       public         wayio    false    584            �           2606    21808 2   tbladt_apisecurity_user pk_tbladt_apisecurity_user 
   CONSTRAINT     m   ALTER TABLE ONLY tbladt_apisecurity_user
    ADD CONSTRAINT pk_tbladt_apisecurity_user PRIMARY KEY (userid);
 \   ALTER TABLE ONLY public.tbladt_apisecurity_user DROP CONSTRAINT pk_tbladt_apisecurity_user;
       public         wayio    false    585            n           2606    17271 "   tbladt_audience pk_tbladt_audience 
   CONSTRAINT     h   ALTER TABLE ONLY tbladt_audience
    ADD CONSTRAINT pk_tbladt_audience PRIMARY KEY (audiencesegmentid);
 L   ALTER TABLE ONLY public.tbladt_audience DROP CONSTRAINT pk_tbladt_audience;
       public         wayio    false    212            p           2606    17283 "   tbladt_auditlog pk_tbladt_auditlog 
   CONSTRAINT     _   ALTER TABLE ONLY tbladt_auditlog
    ADD CONSTRAINT pk_tbladt_auditlog PRIMARY KEY (recordid);
 L   ALTER TABLE ONLY public.tbladt_auditlog DROP CONSTRAINT pk_tbladt_auditlog;
       public         wayio    false    214            �           2606    21868 Z   tbladt_barocreativeplacement_update_trigger pk_tbladt_barocreativeplacement_update_trigger 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_barocreativeplacement_update_trigger
    ADD CONSTRAINT pk_tbladt_barocreativeplacement_update_trigger PRIMARY KEY (triggerid);
 �   ALTER TABLE ONLY public.tbladt_barocreativeplacement_update_trigger DROP CONSTRAINT pk_tbladt_barocreativeplacement_update_trigger;
       public         wayio    false    591            �           2606    21874 "   tbladt_behavior pk_tbladt_behavior 
   CONSTRAINT     a   ALTER TABLE ONLY tbladt_behavior
    ADD CONSTRAINT pk_tbladt_behavior PRIMARY KEY (behaviorid);
 L   ALTER TABLE ONLY public.tbladt_behavior DROP CONSTRAINT pk_tbladt_behavior;
       public         wayio    false    592            |           2606    17320 4   tbladt_biddingstatistics pk_tbladt_biddingstatistics 
   CONSTRAINT     q   ALTER TABLE ONLY tbladt_biddingstatistics
    ADD CONSTRAINT pk_tbladt_biddingstatistics PRIMARY KEY (recordid);
 ^   ALTER TABLE ONLY public.tbladt_biddingstatistics DROP CONSTRAINT pk_tbladt_biddingstatistics;
       public         wayio    false    219            �           2606    17328 R   tbladt_biddingstatistics_consumed_daily pk_tbladt_biddingstatistics_consumed_daily 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_biddingstatistics_consumed_daily
    ADD CONSTRAINT pk_tbladt_biddingstatistics_consumed_daily PRIMARY KEY (recordid);
 |   ALTER TABLE ONLY public.tbladt_biddingstatistics_consumed_daily DROP CONSTRAINT pk_tbladt_biddingstatistics_consumed_daily;
       public         wayio    false    221            �           2606    17336 Z   tbladt_biddingstatistics_consumed_daily_est pk_tbladt_biddingstatistics_consumed_daily_est 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_biddingstatistics_consumed_daily_est
    ADD CONSTRAINT pk_tbladt_biddingstatistics_consumed_daily_est PRIMARY KEY (recordid);
 �   ALTER TABLE ONLY public.tbladt_biddingstatistics_consumed_daily_est DROP CONSTRAINT pk_tbladt_biddingstatistics_consumed_daily_est;
       public         wayio    false    223            �           2606    17344 d   tbladt_biddingstatistics_consumed_daily_est_temp pk_tbladt_biddingstatistics_consumed_daily_est_temp 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_biddingstatistics_consumed_daily_est_temp
    ADD CONSTRAINT pk_tbladt_biddingstatistics_consumed_daily_est_temp PRIMARY KEY (recordid);
 �   ALTER TABLE ONLY public.tbladt_biddingstatistics_consumed_daily_est_temp DROP CONSTRAINT pk_tbladt_biddingstatistics_consumed_daily_est_temp;
       public         wayio    false    225            �           2606    17352 V   tbladt_biddingstatistics_consumed_overall pk_tbladt_biddingstatistics_consumed_overall 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_biddingstatistics_consumed_overall
    ADD CONSTRAINT pk_tbladt_biddingstatistics_consumed_overall PRIMARY KEY (recordid);
 �   ALTER TABLE ONLY public.tbladt_biddingstatistics_consumed_overall DROP CONSTRAINT pk_tbladt_biddingstatistics_consumed_overall;
       public         wayio    false    227            �           2606    17360 `   tbladt_biddingstatistics_consumed_overall_temp pk_tbladt_biddingstatistics_consumed_overall_temp 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_biddingstatistics_consumed_overall_temp
    ADD CONSTRAINT pk_tbladt_biddingstatistics_consumed_overall_temp PRIMARY KEY (recordid);
 �   ALTER TABLE ONLY public.tbladt_biddingstatistics_consumed_overall_temp DROP CONSTRAINT pk_tbladt_biddingstatistics_consumed_overall_temp;
       public         wayio    false    229            �           2606    21911 "   tbladt_campaign pk_tbladt_campaign 
   CONSTRAINT     a   ALTER TABLE ONLY tbladt_campaign
    ADD CONSTRAINT pk_tbladt_campaign PRIMARY KEY (campaignid);
 L   ALTER TABLE ONLY public.tbladt_campaign DROP CONSTRAINT pk_tbladt_campaign;
       public         wayio    false    598            �           2606    19315 3   tbladt_campaign_assignee pk_tbladt_campaign_assigne 
   CONSTRAINT     p   ALTER TABLE ONLY tbladt_campaign_assignee
    ADD CONSTRAINT pk_tbladt_campaign_assigne PRIMARY KEY (recordid);
 ]   ALTER TABLE ONLY public.tbladt_campaign_assignee DROP CONSTRAINT pk_tbladt_campaign_assigne;
       public         wayio    false    583            �           2606    17411 ,   tbladt_campaign_temp pk_tbladt_campaign_temp 
   CONSTRAINT     k   ALTER TABLE ONLY tbladt_campaign_temp
    ADD CONSTRAINT pk_tbladt_campaign_temp PRIMARY KEY (campaignid);
 V   ALTER TABLE ONLY public.tbladt_campaign_temp DROP CONSTRAINT pk_tbladt_campaign_temp;
       public         wayio    false    236            �           2606    17419 2   tbladt_campaign_watcher pk_tbladt_campaign_watcher 
   CONSTRAINT     p   ALTER TABLE ONLY tbladt_campaign_watcher
    ADD CONSTRAINT pk_tbladt_campaign_watcher PRIMARY KEY (watcherid);
 \   ALTER TABLE ONLY public.tbladt_campaign_watcher DROP CONSTRAINT pk_tbladt_campaign_watcher;
       public         wayio    false    238            �           2606    17431 .   tbladt_carrierpopular pk_tbladt_carrierpopular 
   CONSTRAINT     s   ALTER TABLE ONLY tbladt_carrierpopular
    ADD CONSTRAINT pk_tbladt_carrierpopular PRIMARY KEY (popularcarrierid);
 X   ALTER TABLE ONLY public.tbladt_carrierpopular DROP CONSTRAINT pk_tbladt_carrierpopular;
       public         wayio    false    240            �           2606    17442 "   tbladt_carriers pk_tbladt_carriers 
   CONSTRAINT     `   ALTER TABLE ONLY tbladt_carriers
    ADD CONSTRAINT pk_tbladt_carriers PRIMARY KEY (carrierid);
 L   ALTER TABLE ONLY public.tbladt_carriers DROP CONSTRAINT pk_tbladt_carriers;
       public         wayio    false    242            �           2606    17455 *   tbladt_clonetrigger pk_tbladt_clonetrigger 
   CONSTRAINT     h   ALTER TABLE ONLY tbladt_clonetrigger
    ADD CONSTRAINT pk_tbladt_clonetrigger PRIMARY KEY (triggerid);
 T   ALTER TABLE ONLY public.tbladt_clonetrigger DROP CONSTRAINT pk_tbladt_clonetrigger;
       public         wayio    false    244            �           2606    17463 (   tbladt_commonwords pk_tbladt_commonwords 
   CONSTRAINT     e   ALTER TABLE ONLY tbladt_commonwords
    ADD CONSTRAINT pk_tbladt_commonwords PRIMARY KEY (recordid);
 R   ALTER TABLE ONLY public.tbladt_commonwords DROP CONSTRAINT pk_tbladt_commonwords;
       public         wayio    false    246            �           2606    21922     tbladt_company pk_tbladt_company 
   CONSTRAINT     ^   ALTER TABLE ONLY tbladt_company
    ADD CONSTRAINT pk_tbladt_company PRIMARY KEY (companyid);
 J   ALTER TABLE ONLY public.tbladt_company DROP CONSTRAINT pk_tbladt_company;
       public         wayio    false    599            �           2606    17474 *   tbladt_costcategory pk_tbladt_costcategory 
   CONSTRAINT     m   ALTER TABLE ONLY tbladt_costcategory
    ADD CONSTRAINT pk_tbladt_costcategory PRIMARY KEY (costcategoryid);
 T   ALTER TABLE ONLY public.tbladt_costcategory DROP CONSTRAINT pk_tbladt_costcategory;
       public         wayio    false    248            �           2606    21928 "   tbladt_costtype pk_tbladt_costtype 
   CONSTRAINT     a   ALTER TABLE ONLY tbladt_costtype
    ADD CONSTRAINT pk_tbladt_costtype PRIMARY KEY (costtypeid);
 L   ALTER TABLE ONLY public.tbladt_costtype DROP CONSTRAINT pk_tbladt_costtype;
       public         wayio    false    600            �           2606    21934     tbladt_country pk_tbladt_country 
   CONSTRAINT     ^   ALTER TABLE ONLY tbladt_country
    ADD CONSTRAINT pk_tbladt_country PRIMARY KEY (countryid);
 J   ALTER TABLE ONLY public.tbladt_country DROP CONSTRAINT pk_tbladt_country;
       public         wayio    false    601            �           2606    17492 6   tbladt_country_state_city pk_tbladt_country_state_city 
   CONSTRAINT     s   ALTER TABLE ONLY tbladt_country_state_city
    ADD CONSTRAINT pk_tbladt_country_state_city PRIMARY KEY (recordid);
 `   ALTER TABLE ONLY public.tbladt_country_state_city DROP CONSTRAINT pk_tbladt_country_state_city;
       public         wayio    false    250            �           2606    17500 B   tbladt_country_state_city_stage pk_tbladt_country_state_city_stage 
   CONSTRAINT        ALTER TABLE ONLY tbladt_country_state_city_stage
    ADD CONSTRAINT pk_tbladt_country_state_city_stage PRIMARY KEY (recordid);
 l   ALTER TABLE ONLY public.tbladt_country_state_city_stage DROP CONSTRAINT pk_tbladt_country_state_city_stage;
       public         wayio    false    252            �           2606    21950 "   tbladt_creative pk_tbladt_creative 
   CONSTRAINT     a   ALTER TABLE ONLY tbladt_creative
    ADD CONSTRAINT pk_tbladt_creative PRIMARY KEY (creativeid);
 L   ALTER TABLE ONLY public.tbladt_creative DROP CONSTRAINT pk_tbladt_creative;
       public         wayio    false    602            �           2606    22006 6   tbladt_creative_adfeature pk_tbladt_creative_adfeature 
   CONSTRAINT     v   ALTER TABLE ONLY tbladt_creative_adfeature
    ADD CONSTRAINT pk_tbladt_creative_adfeature PRIMARY KEY (adfeatureid);
 `   ALTER TABLE ONLY public.tbladt_creative_adfeature DROP CONSTRAINT pk_tbladt_creative_adfeature;
       public         wayio    false    610            f           2606    22766 <   tbladt_creative_adformat_api pk_tbladt_creative_adformat_api 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_creative_adformat_api
    ADD CONSTRAINT pk_tbladt_creative_adformat_api PRIMARY KEY (apiid, adformatid);
 f   ALTER TABLE ONLY public.tbladt_creative_adformat_api DROP CONSTRAINT pk_tbladt_creative_adformat_api;
       public         wayio    false    698    698            �           2606    17575 E   tbladt_creative_adformat_display pk_tbladt_creative_adformat_disaplay 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_creative_adformat_display
    ADD CONSTRAINT pk_tbladt_creative_adformat_disaplay PRIMARY KEY (creativeid);
 o   ALTER TABLE ONLY public.tbladt_creative_adformat_display DROP CONSTRAINT pk_tbladt_creative_adformat_disaplay;
       public         wayio    false    262            �           2606    17583 J   tbladt_creative_adformat_expandable pk_tbladt_creative_adformat_expandable 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_creative_adformat_expandable
    ADD CONSTRAINT pk_tbladt_creative_adformat_expandable PRIMARY KEY (creativeid);
 t   ALTER TABLE ONLY public.tbladt_creative_adformat_expandable DROP CONSTRAINT pk_tbladt_creative_adformat_expandable;
       public         wayio    false    263            �           2606    17591 N   tbladt_creative_adformat_interstitial pk_tbladt_creative_adformat_interstitial 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_creative_adformat_interstitial
    ADD CONSTRAINT pk_tbladt_creative_adformat_interstitial PRIMARY KEY (creativeid);
 x   ALTER TABLE ONLY public.tbladt_creative_adformat_interstitial DROP CONSTRAINT pk_tbladt_creative_adformat_interstitial;
       public         wayio    false    264            �           2606    17599 B   tbladt_creative_adformat_native pk_tbladt_creative_adformat_native 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_creative_adformat_native
    ADD CONSTRAINT pk_tbladt_creative_adformat_native PRIMARY KEY (creativeid);
 l   ALTER TABLE ONLY public.tbladt_creative_adformat_native DROP CONSTRAINT pk_tbladt_creative_adformat_native;
       public         wayio    false    265            �           2606    22021 @   tbladt_creative_adformat_video pk_tbladt_creative_adformat_video 
   CONSTRAINT        ALTER TABLE ONLY tbladt_creative_adformat_video
    ADD CONSTRAINT pk_tbladt_creative_adformat_video PRIMARY KEY (creativeid);
 j   ALTER TABLE ONLY public.tbladt_creative_adformat_video DROP CONSTRAINT pk_tbladt_creative_adformat_video;
       public         wayio    false    612            �           2606    22000 *   tbladt_creative_api pk_tbladt_creative_api 
   CONSTRAINT     d   ALTER TABLE ONLY tbladt_creative_api
    ADD CONSTRAINT pk_tbladt_creative_api PRIMARY KEY (apiid);
 T   ALTER TABLE ONLY public.tbladt_creative_api DROP CONSTRAINT pk_tbladt_creative_api;
       public         wayio    false    609            �           2606    17613 :   tbladt_creative_companionad pk_tbladt_creative_companionad 
   CONSTRAINT     w   ALTER TABLE ONLY tbladt_creative_companionad
    ADD CONSTRAINT pk_tbladt_creative_companionad PRIMARY KEY (recordid);
 d   ALTER TABLE ONLY public.tbladt_creative_companionad DROP CONSTRAINT pk_tbladt_creative_companionad;
       public         wayio    false    267            �           2606    22027 <   tbladt_creative_deliverytype pk_tbladt_creative_deliverytype 
   CONSTRAINT        ALTER TABLE ONLY tbladt_creative_deliverytype
    ADD CONSTRAINT pk_tbladt_creative_deliverytype PRIMARY KEY (deliverytypeid);
 f   ALTER TABLE ONLY public.tbladt_creative_deliverytype DROP CONSTRAINT pk_tbladt_creative_deliverytype;
       public         wayio    false    613            �           2606    22035 6   tbladt_creative_dimension pk_tbladt_creative_dimension 
   CONSTRAINT     v   ALTER TABLE ONLY tbladt_creative_dimension
    ADD CONSTRAINT pk_tbladt_creative_dimension PRIMARY KEY (dimensionid);
 `   ALTER TABLE ONLY public.tbladt_creative_dimension DROP CONSTRAINT pk_tbladt_creative_dimension;
       public         wayio    false    614            �           2606    22049 .   tbladt_creative_dummy pk_tbladt_creative_dummy 
   CONSTRAINT     m   ALTER TABLE ONLY tbladt_creative_dummy
    ADD CONSTRAINT pk_tbladt_creative_dummy PRIMARY KEY (creativeid);
 X   ALTER TABLE ONLY public.tbladt_creative_dummy DROP CONSTRAINT pk_tbladt_creative_dummy;
       public         wayio    false    615            �           2606    22059 >   tbladt_creative_eventtracking pk_tbladt_creative_eventtracking 
   CONSTRAINT     {   ALTER TABLE ONLY tbladt_creative_eventtracking
    ADD CONSTRAINT pk_tbladt_creative_eventtracking PRIMARY KEY (recordid);
 h   ALTER TABLE ONLY public.tbladt_creative_eventtracking DROP CONSTRAINT pk_tbladt_creative_eventtracking;
       public         wayio    false    616            �           2606    22065 <   tbladt_creative_iframebuster pk_tbladt_creative_iframebuster 
   CONSTRAINT        ALTER TABLE ONLY tbladt_creative_iframebuster
    ADD CONSTRAINT pk_tbladt_creative_iframebuster PRIMARY KEY (iframebusterid);
 f   ALTER TABLE ONLY public.tbladt_creative_iframebuster DROP CONSTRAINT pk_tbladt_creative_iframebuster;
       public         wayio    false    617            �           2606    22071 >   tbladt_creative_markup_source pk_tbladt_creative_markup_source 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_creative_markup_source
    ADD CONSTRAINT pk_tbladt_creative_markup_source PRIMARY KEY (markupsourceid);
 h   ALTER TABLE ONLY public.tbladt_creative_markup_source DROP CONSTRAINT pk_tbladt_creative_markup_source;
       public         wayio    false    618            �           2606    22077 <   tbladt_creative_mediabitrate pk_tbladt_creative_mediabitrate 
   CONSTRAINT        ALTER TABLE ONLY tbladt_creative_mediabitrate
    ADD CONSTRAINT pk_tbladt_creative_mediabitrate PRIMARY KEY (mediabitrateid);
 f   ALTER TABLE ONLY public.tbladt_creative_mediabitrate DROP CONSTRAINT pk_tbladt_creative_mediabitrate;
       public         wayio    false    619            �           2606    22083 >   tbladt_creative_mediafiletype pk_tbladt_creative_mediafiletype 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_creative_mediafiletype
    ADD CONSTRAINT pk_tbladt_creative_mediafiletype PRIMARY KEY (mediafiletypeid);
 h   ALTER TABLE ONLY public.tbladt_creative_mediafiletype DROP CONSTRAINT pk_tbladt_creative_mediafiletype;
       public         wayio    false    620            �           2606    22089 B   tbladt_creative_mediasourcetype pk_tbladt_creative_mediasourcetype 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_creative_mediasourcetype
    ADD CONSTRAINT pk_tbladt_creative_mediasourcetype PRIMARY KEY (mediasourcetypeid);
 l   ALTER TABLE ONLY public.tbladt_creative_mediasourcetype DROP CONSTRAINT pk_tbladt_creative_mediasourcetype;
       public         wayio    false    621            �           2606    22095 4   tbladt_creative_mimetype pk_tbladt_creative_mimetype 
   CONSTRAINT     s   ALTER TABLE ONLY tbladt_creative_mimetype
    ADD CONSTRAINT pk_tbladt_creative_mimetype PRIMARY KEY (mimetypeid);
 ^   ALTER TABLE ONLY public.tbladt_creative_mimetype DROP CONSTRAINT pk_tbladt_creative_mimetype;
       public         wayio    false    622            �           2606    17680 >   tbladt_creative_previewassoc pk_tbladt_creative_previewassoc_1 
   CONSTRAINT     }   ALTER TABLE ONLY tbladt_creative_previewassoc
    ADD CONSTRAINT pk_tbladt_creative_previewassoc_1 PRIMARY KEY (creativeid);
 h   ALTER TABLE ONLY public.tbladt_creative_previewassoc DROP CONSTRAINT pk_tbladt_creative_previewassoc_1;
       public         wayio    false    276            �           2606    22101 @   tbladt_creative_trackingmaster pk_tbladt_creative_trackingmaster 
   CONSTRAINT        ALTER TABLE ONLY tbladt_creative_trackingmaster
    ADD CONSTRAINT pk_tbladt_creative_trackingmaster PRIMARY KEY (trackingid);
 j   ALTER TABLE ONLY public.tbladt_creative_trackingmaster DROP CONSTRAINT pk_tbladt_creative_trackingmaster;
       public         wayio    false    623            �           2606    22012 3   tbladt_creative_adformat pk_tbladt_creativeadformat 
   CONSTRAINT     r   ALTER TABLE ONLY tbladt_creative_adformat
    ADD CONSTRAINT pk_tbladt_creativeadformat PRIMARY KEY (adformatid);
 ]   ALTER TABLE ONLY public.tbladt_creative_adformat DROP CONSTRAINT pk_tbladt_creativeadformat;
       public         wayio    false    611            �           2606    21956 4   tbladt_creativeattribute pk_tbladt_creativeattribute 
   CONSTRAINT     t   ALTER TABLE ONLY tbladt_creativeattribute
    ADD CONSTRAINT pk_tbladt_creativeattribute PRIMARY KEY (attributeid);
 ^   ALTER TABLE ONLY public.tbladt_creativeattribute DROP CONSTRAINT pk_tbladt_creativeattribute;
       public         wayio    false    603            �           2606    17514 <   tbladt_creativeattributecode pk_tbladt_creativeattributecode 
   CONSTRAINT     y   ALTER TABLE ONLY tbladt_creativeattributecode
    ADD CONSTRAINT pk_tbladt_creativeattributecode PRIMARY KEY (recordid);
 f   ALTER TABLE ONLY public.tbladt_creativeattributecode DROP CONSTRAINT pk_tbladt_creativeattributecode;
       public         wayio    false    254            �           2606    21963 4   tbladt_creativedimension pk_tbladt_creativedimension 
   CONSTRAINT     t   ALTER TABLE ONLY tbladt_creativedimension
    ADD CONSTRAINT pk_tbladt_creativedimension PRIMARY KEY (dimensionid);
 ^   ALTER TABLE ONLY public.tbladt_creativedimension DROP CONSTRAINT pk_tbladt_creativedimension;
       public         wayio    false    604            �           2606    21974 ,   tbladt_creativegroup pk_tbladt_creativegroup 
   CONSTRAINT     h   ALTER TABLE ONLY tbladt_creativegroup
    ADD CONSTRAINT pk_tbladt_creativegroup PRIMARY KEY (groupid);
 V   ALTER TABLE ONLY public.tbladt_creativegroup DROP CONSTRAINT pk_tbladt_creativegroup;
       public         wayio    false    605            �           2606    17537 6   tbladt_creativeproperties pk_tbladt_creativeproperties 
   CONSTRAINT     s   ALTER TABLE ONLY tbladt_creativeproperties
    ADD CONSTRAINT pk_tbladt_creativeproperties PRIMARY KEY (recordid);
 `   ALTER TABLE ONLY public.tbladt_creativeproperties DROP CONSTRAINT pk_tbladt_creativeproperties;
       public         wayio    false    258            �           2606    21980 6   tbladt_creativesourcetype pk_tbladt_creativesourcetype 
   CONSTRAINT     w   ALTER TABLE ONLY tbladt_creativesourcetype
    ADD CONSTRAINT pk_tbladt_creativesourcetype PRIMARY KEY (sourcetypeid);
 `   ALTER TABLE ONLY public.tbladt_creativesourcetype DROP CONSTRAINT pk_tbladt_creativesourcetype;
       public         wayio    false    606            �           2606    21986 *   tbladt_creativetype pk_tbladt_creativetype 
   CONSTRAINT     m   ALTER TABLE ONLY tbladt_creativetype
    ADD CONSTRAINT pk_tbladt_creativetype PRIMARY KEY (creativetypeid);
 T   ALTER TABLE ONLY public.tbladt_creativetype DROP CONSTRAINT pk_tbladt_creativetype;
       public         wayio    false    607            �           2606    17368 @   tbladt_biddingstatistics_dashboardgraph pk_tbladt_dashboardgraph 
   CONSTRAINT     }   ALTER TABLE ONLY tbladt_biddingstatistics_dashboardgraph
    ADD CONSTRAINT pk_tbladt_dashboardgraph PRIMARY KEY (recordid);
 j   ALTER TABLE ONLY public.tbladt_biddingstatistics_dashboardgraph DROP CONSTRAINT pk_tbladt_dashboardgraph;
       public         wayio    false    231            �           2606    17707 P   tbladt_datatransformation_requiredfile pk_tbladt_datatransformation_requiredfile 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_datatransformation_requiredfile
    ADD CONSTRAINT pk_tbladt_datatransformation_requiredfile PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.tbladt_datatransformation_requiredfile DROP CONSTRAINT pk_tbladt_datatransformation_requiredfile;
       public         wayio    false    280            �           2606    22133 7   tbladt_datatransformation pk_tbladt_datatransformations 
   CONSTRAINT     |   ALTER TABLE ONLY tbladt_datatransformation
    ADD CONSTRAINT pk_tbladt_datatransformations PRIMARY KEY (transformationid);
 a   ALTER TABLE ONLY public.tbladt_datatransformation DROP CONSTRAINT pk_tbladt_datatransformations;
       public         wayio    false    626            �           2606    22144    tbladt_dealid pk_tbladt_dealid 
   CONSTRAINT     U   ALTER TABLE ONLY tbladt_dealid
    ADD CONSTRAINT pk_tbladt_dealid PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tbladt_dealid DROP CONSTRAINT pk_tbladt_dealid;
       public         wayio    false    627            �           2606    17722 ^   tbladt_dealidbiddingstatistics_consumed_daily pk_tbladt_dealidbiddingstatistics_consumed_daily 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_dealidbiddingstatistics_consumed_daily
    ADD CONSTRAINT pk_tbladt_dealidbiddingstatistics_consumed_daily PRIMARY KEY (recordid);
 �   ALTER TABLE ONLY public.tbladt_dealidbiddingstatistics_consumed_daily DROP CONSTRAINT pk_tbladt_dealidbiddingstatistics_consumed_daily;
       public         wayio    false    283            a           2606    22723    tbladt_device pk_tbladt_device 
   CONSTRAINT     [   ALTER TABLE ONLY tbladt_device
    ADD CONSTRAINT pk_tbladt_device PRIMARY KEY (deviceid);
 H   ALTER TABLE ONLY public.tbladt_device DROP CONSTRAINT pk_tbladt_device;
       public         wayio    false    695            �           2606    17737 8   tbladt_device_os_make_type pk_tbladt_device_os_make_type 
   CONSTRAINT     o   ALTER TABLE ONLY tbladt_device_os_make_type
    ADD CONSTRAINT pk_tbladt_device_os_make_type PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.tbladt_device_os_make_type DROP CONSTRAINT pk_tbladt_device_os_make_type;
       public         wayio    false    287            �           2606    17729 &   tbladt_devicetype pk_tbladt_devicetype 
   CONSTRAINT     c   ALTER TABLE ONLY tbladt_devicetype
    ADD CONSTRAINT pk_tbladt_devicetype PRIMARY KEY (deviceid);
 P   ALTER TABLE ONLY public.tbladt_devicetype DROP CONSTRAINT pk_tbladt_devicetype;
       public         wayio    false    285            �           2606    22107    tbladt_dma pk_tbladt_dma 
   CONSTRAINT     R   ALTER TABLE ONLY tbladt_dma
    ADD CONSTRAINT pk_tbladt_dma PRIMARY KEY (dmaid);
 B   ALTER TABLE ONLY public.tbladt_dma DROP CONSTRAINT pk_tbladt_dma;
       public         wayio    false    624            �           2606    17742 4   tbladt_excecutionmessage pk_tbladt_excecutionmessage 
   CONSTRAINT     r   ALTER TABLE ONLY tbladt_excecutionmessage
    ADD CONSTRAINT pk_tbladt_excecutionmessage PRIMARY KEY (messageid);
 ^   ALTER TABLE ONLY public.tbladt_excecutionmessage DROP CONSTRAINT pk_tbladt_excecutionmessage;
       public         wayio    false    288            �           2606    22152 :   tbladt_exceldownloadbacklog pk_tbladt_exceldownloadbacklog 
   CONSTRAINT     t   ALTER TABLE ONLY tbladt_exceldownloadbacklog
    ADD CONSTRAINT pk_tbladt_exceldownloadbacklog PRIMARY KEY (rowid);
 d   ALTER TABLE ONLY public.tbladt_exceldownloadbacklog DROP CONSTRAINT pk_tbladt_exceldownloadbacklog;
       public         wayio    false    628            �           2606    22161 ,   tbladt_flat_creative pk_tbladt_flat_creative 
   CONSTRAINT     k   ALTER TABLE ONLY tbladt_flat_creative
    ADD CONSTRAINT pk_tbladt_flat_creative PRIMARY KEY (creativeid);
 V   ALTER TABLE ONLY public.tbladt_flat_creative DROP CONSTRAINT pk_tbladt_flat_creative;
       public         wayio    false    629            �           2606    17756 I   tbladt_flat_lineitem_consumed pk_tbladt_flat_lineitem_consumed_lineitemid 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_flat_lineitem_consumed
    ADD CONSTRAINT pk_tbladt_flat_lineitem_consumed_lineitemid PRIMARY KEY (lineitemid);
 s   ALTER TABLE ONLY public.tbladt_flat_lineitem_consumed DROP CONSTRAINT pk_tbladt_flat_lineitem_consumed_lineitemid;
       public         wayio    false    290            {           2606    22982 .   tbladt_flat_lineitems pk_tbladt_flat_lineitems 
   CONSTRAINT     k   ALTER TABLE ONLY tbladt_flat_lineitems
    ADD CONSTRAINT pk_tbladt_flat_lineitems PRIMARY KEY (recordid);
 X   ALTER TABLE ONLY public.tbladt_flat_lineitems DROP CONSTRAINT pk_tbladt_flat_lineitems;
       public         wayio    false    718            �           2606    17773 D   tbladt_flat_reqproperty_sitelist pk_tbladt_flat_reqproperty_sitelist 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_flat_reqproperty_sitelist
    ADD CONSTRAINT pk_tbladt_flat_reqproperty_sitelist PRIMARY KEY (recordid);
 n   ALTER TABLE ONLY public.tbladt_flat_reqproperty_sitelist DROP CONSTRAINT pk_tbladt_flat_reqproperty_sitelist;
       public         wayio    false    293            �           2606    17784 <   tbladt_flat_richmedia_markup pk_tbladt_flat_richmedia_markup 
   CONSTRAINT     y   ALTER TABLE ONLY tbladt_flat_richmedia_markup
    ADD CONSTRAINT pk_tbladt_flat_richmedia_markup PRIMARY KEY (recordid);
 f   ALTER TABLE ONLY public.tbladt_flat_richmedia_markup DROP CONSTRAINT pk_tbladt_flat_richmedia_markup;
       public         wayio    false    295            �           2606    22180 0   tbladt_flat_strategies pk_tbladt_flat_strategies 
   CONSTRAINT     o   ALTER TABLE ONLY tbladt_flat_strategies
    ADD CONSTRAINT pk_tbladt_flat_strategies PRIMARY KEY (strategyid);
 Z   ALTER TABLE ONLY public.tbladt_flat_strategies DROP CONSTRAINT pk_tbladt_flat_strategies;
       public         wayio    false    630            �           2606    17792 I   tbladt_flat_strategy_consumed pk_tbladt_flat_strategy_consumed_strategyid 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_flat_strategy_consumed
    ADD CONSTRAINT pk_tbladt_flat_strategy_consumed_strategyid PRIMARY KEY (strategyid);
 s   ALTER TABLE ONLY public.tbladt_flat_strategy_consumed DROP CONSTRAINT pk_tbladt_flat_strategy_consumed_strategyid;
       public         wayio    false    296            �           2606    17800 >   tbladt_flat_strategy_creative pk_tbladt_flat_strategy_creative 
   CONSTRAINT     {   ALTER TABLE ONLY tbladt_flat_strategy_creative
    ADD CONSTRAINT pk_tbladt_flat_strategy_creative PRIMARY KEY (recordid);
 h   ALTER TABLE ONLY public.tbladt_flat_strategy_creative DROP CONSTRAINT pk_tbladt_flat_strategy_creative;
       public         wayio    false    298                       2606    22193 =   tbladt_flat_tracker_trigger pk_tbladt_flat_tableupdatetrigger 
   CONSTRAINT     {   ALTER TABLE ONLY tbladt_flat_tracker_trigger
    ADD CONSTRAINT pk_tbladt_flat_tableupdatetrigger PRIMARY KEY (triggerid);
 g   ALTER TABLE ONLY public.tbladt_flat_tracker_trigger DROP CONSTRAINT pk_tbladt_flat_tableupdatetrigger;
       public         wayio    false    631                       2606    22203 H   tbladt_flat_tracker_trigger_subset pk_tbladt_flat_tracker_trigger_subset 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_flat_tracker_trigger_subset
    ADD CONSTRAINT pk_tbladt_flat_tracker_trigger_subset PRIMARY KEY (subsetid);
 r   ALTER TABLE ONLY public.tbladt_flat_tracker_trigger_subset DROP CONSTRAINT pk_tbladt_flat_tracker_trigger_subset;
       public         wayio    false    632            �           2606    17811 B   tbladt_flat_tracker_triggertype pk_tbladt_flat_tracker_triggertype 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_flat_tracker_triggertype
    ADD CONSTRAINT pk_tbladt_flat_tracker_triggertype PRIMARY KEY (triggertypeid);
 l   ALTER TABLE ONLY public.tbladt_flat_tracker_triggertype DROP CONSTRAINT pk_tbladt_flat_tracker_triggertype;
       public         wayio    false    300                       2606    22209    tbladt_gender pk_tbladt_gender 
   CONSTRAINT     [   ALTER TABLE ONLY tbladt_gender
    ADD CONSTRAINT pk_tbladt_gender PRIMARY KEY (genderid);
 H   ALTER TABLE ONLY public.tbladt_gender DROP CONSTRAINT pk_tbladt_gender;
       public         wayio    false    633            �           2606    17828 D   tbladt_griddefaultfiltercriteria pk_tbladt_griddefaultfiltercriteria 
   CONSTRAINT        ALTER TABLE ONLY tbladt_griddefaultfiltercriteria
    ADD CONSTRAINT pk_tbladt_griddefaultfiltercriteria PRIMARY KEY (gridid);
 n   ALTER TABLE ONLY public.tbladt_griddefaultfiltercriteria DROP CONSTRAINT pk_tbladt_griddefaultfiltercriteria;
       public         wayio    false    302            �           2606    17833 L   tbladt_gridfiltercriteria_filterdata pk_tbladt_gridfiltercriteria_filterdata 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_gridfiltercriteria_filterdata
    ADD CONSTRAINT pk_tbladt_gridfiltercriteria_filterdata PRIMARY KEY (associd);
 v   ALTER TABLE ONLY public.tbladt_gridfiltercriteria_filterdata DROP CONSTRAINT pk_tbladt_gridfiltercriteria_filterdata;
       public         wayio    false    303            �           2606    17855 9   tbladt_hawkmonitoringalert pk_tbladt_hawkmonitoringalerts 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_hawkmonitoringalert
    ADD CONSTRAINT pk_tbladt_hawkmonitoringalerts PRIMARY KEY (hawkmonitoringalertid);
 c   ALTER TABLE ONLY public.tbladt_hawkmonitoringalert DROP CONSTRAINT pk_tbladt_hawkmonitoringalerts;
       public         wayio    false    307                       2606    22216 (   tbladt_iabcategory pk_tbladt_iabcategory 
   CONSTRAINT     g   ALTER TABLE ONLY tbladt_iabcategory
    ADD CONSTRAINT pk_tbladt_iabcategory PRIMARY KEY (categoryid);
 R   ALTER TABLE ONLY public.tbladt_iabcategory DROP CONSTRAINT pk_tbladt_iabcategory;
       public         wayio    false    634            �           2606    17869    tbladt_isp pk_tbladt_isp 
   CONSTRAINT     R   ALTER TABLE ONLY tbladt_isp
    ADD CONSTRAINT pk_tbladt_isp PRIMARY KEY (ispid);
 B   ALTER TABLE ONLY public.tbladt_isp DROP CONSTRAINT pk_tbladt_isp;
       public         wayio    false    309            �           2606    17881 &   tbladt_isppopular pk_tbladt_isppopular 
   CONSTRAINT     g   ALTER TABLE ONLY tbladt_isppopular
    ADD CONSTRAINT pk_tbladt_isppopular PRIMARY KEY (popularispid);
 P   ALTER TABLE ONLY public.tbladt_isppopular DROP CONSTRAINT pk_tbladt_isppopular;
       public         wayio    false    311            	           2606    22222 $   tbladt_itemstate pk_tbladt_itemstate 
   CONSTRAINT     [   ALTER TABLE ONLY tbladt_itemstate
    ADD CONSTRAINT pk_tbladt_itemstate PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tbladt_itemstate DROP CONSTRAINT pk_tbladt_itemstate;
       public         wayio    false    635                       2606    22232 &   tbladt_itemstatus pk_tbladt_itemstatus 
   CONSTRAINT     ]   ALTER TABLE ONLY tbladt_itemstatus
    ADD CONSTRAINT pk_tbladt_itemstatus PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tbladt_itemstatus DROP CONSTRAINT pk_tbladt_itemstatus;
       public         wayio    false    636            �           2606    17895 :   tbladt_itemstatus_hierarchy pk_tbladt_itemstatus_hierarchy 
   CONSTRAINT     w   ALTER TABLE ONLY tbladt_itemstatus_hierarchy
    ADD CONSTRAINT pk_tbladt_itemstatus_hierarchy PRIMARY KEY (recordid);
 d   ALTER TABLE ONLY public.tbladt_itemstatus_hierarchy DROP CONSTRAINT pk_tbladt_itemstatus_hierarchy;
       public         wayio    false    312                       2606    22243    tbladt_kpi pk_tbladt_kpi 
   CONSTRAINT     R   ALTER TABLE ONLY tbladt_kpi
    ADD CONSTRAINT pk_tbladt_kpi PRIMARY KEY (kpiid);
 B   ALTER TABLE ONLY public.tbladt_kpi DROP CONSTRAINT pk_tbladt_kpi;
       public         wayio    false    637                       2606    22249 "   tbladt_language pk_tbladt_language 
   CONSTRAINT     a   ALTER TABLE ONLY tbladt_language
    ADD CONSTRAINT pk_tbladt_language PRIMARY KEY (languageid);
 L   ALTER TABLE ONLY public.tbladt_language DROP CONSTRAINT pk_tbladt_language;
       public         wayio    false    638                       2606    22287 "   tbladt_lineitem pk_tbladt_lineitem 
   CONSTRAINT     a   ALTER TABLE ONLY tbladt_lineitem
    ADD CONSTRAINT pk_tbladt_lineitem PRIMARY KEY (lineitemid);
 L   ALTER TABLE ONLY public.tbladt_lineitem DROP CONSTRAINT pk_tbladt_lineitem;
       public         wayio    false    639                       2606    22295 8   tbladt_lineitem_threshold_reach pk_tbladt_lineitem_assoc 
   CONSTRAINT     t   ALTER TABLE ONLY tbladt_lineitem_threshold_reach
    ADD CONSTRAINT pk_tbladt_lineitem_assoc PRIMARY KEY (associd);
 b   ALTER TABLE ONLY public.tbladt_lineitem_threshold_reach DROP CONSTRAINT pk_tbladt_lineitem_assoc;
       public         wayio    false    640            �           2606    17935 >   tbladt_lineitem_filtereditems pk_tbladt_lineitem_filtereditems 
   CONSTRAINT     z   ALTER TABLE ONLY tbladt_lineitem_filtereditems
    ADD CONSTRAINT pk_tbladt_lineitem_filtereditems PRIMARY KEY (queryid);
 h   ALTER TABLE ONLY public.tbladt_lineitem_filtereditems DROP CONSTRAINT pk_tbladt_lineitem_filtereditems;
       public         wayio    false    318            �           2606    17941 H   tbladt_lineitem_pacingavailability pk_tbladt_lineitem_pacingavailability 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_lineitem_pacingavailability
    ADD CONSTRAINT pk_tbladt_lineitem_pacingavailability PRIMARY KEY (lineitemid);
 r   ALTER TABLE ONLY public.tbladt_lineitem_pacingavailability DROP CONSTRAINT pk_tbladt_lineitem_pacingavailability;
       public         wayio    false    319            �           2606    17955 8   tbladt_lineitem_vendorcost pk_tbladt_lineitem_vendorcost 
   CONSTRAINT     s   ALTER TABLE ONLY tbladt_lineitem_vendorcost
    ADD CONSTRAINT pk_tbladt_lineitem_vendorcost PRIMARY KEY (costid);
 b   ALTER TABLE ONLY public.tbladt_lineitem_vendorcost DROP CONSTRAINT pk_tbladt_lineitem_vendorcost;
       public         wayio    false    322                       2606    22306 "   tbladt_linetype pk_tbladt_linetype 
   CONSTRAINT     a   ALTER TABLE ONLY tbladt_linetype
    ADD CONSTRAINT pk_tbladt_linetype PRIMARY KEY (linetypeid);
 L   ALTER TABLE ONLY public.tbladt_linetype DROP CONSTRAINT pk_tbladt_linetype;
       public         wayio    false    641                       2606    22313 &   tbladt_markuptype pk_tbladt_markuptype 
   CONSTRAINT     g   ALTER TABLE ONLY tbladt_markuptype
    ADD CONSTRAINT pk_tbladt_markuptype PRIMARY KEY (markuptypeid);
 P   ALTER TABLE ONLY public.tbladt_markuptype DROP CONSTRAINT pk_tbladt_markuptype;
       public         wayio    false    642                       2606    22325 ,   tbladt_mediaprovider pk_tbladt_mediaprovider 
   CONSTRAINT     p   ALTER TABLE ONLY tbladt_mediaprovider
    ADD CONSTRAINT pk_tbladt_mediaprovider PRIMARY KEY (mediaproviderid);
 V   ALTER TABLE ONLY public.tbladt_mediaprovider DROP CONSTRAINT pk_tbladt_mediaprovider;
       public         wayio    false    643            h           2606    22779 >   tbladt_mediaprovider_adformat pk_tbladt_mediaprovider_adformat 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_mediaprovider_adformat
    ADD CONSTRAINT pk_tbladt_mediaprovider_adformat PRIMARY KEY (mediaproviderid, adformatid);
 h   ALTER TABLE ONLY public.tbladt_mediaprovider_adformat DROP CONSTRAINT pk_tbladt_mediaprovider_adformat;
       public         wayio    false    699    699            k           2606    22788 :   tbladt_mediaprovider_markup pk_tbladt_mediaprovider_markup 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_mediaprovider_markup
    ADD CONSTRAINT pk_tbladt_mediaprovider_markup PRIMARY KEY (mediaproviderid, exchangeid);
 d   ALTER TABLE ONLY public.tbladt_mediaprovider_markup DROP CONSTRAINT pk_tbladt_mediaprovider_markup;
       public         wayio    false    700    700                       2606    22331 $   tbladt_mediatype pk_tbladt_mediatype 
   CONSTRAINT     d   ALTER TABLE ONLY tbladt_mediatype
    ADD CONSTRAINT pk_tbladt_mediatype PRIMARY KEY (mediatypeid);
 N   ALTER TABLE ONLY public.tbladt_mediatype DROP CONSTRAINT pk_tbladt_mediatype;
       public         wayio    false    644            �           2606    17989    tbladt_mosaic pk_tbladt_mosaic 
   CONSTRAINT     [   ALTER TABLE ONLY tbladt_mosaic
    ADD CONSTRAINT pk_tbladt_mosaic PRIMARY KEY (mosaicid);
 H   ALTER TABLE ONLY public.tbladt_mosaic DROP CONSTRAINT pk_tbladt_mosaic;
       public         wayio    false    328                        2606    22342 *   tbladt_notification pk_tbladt_notification 
   CONSTRAINT     m   ALTER TABLE ONLY tbladt_notification
    ADD CONSTRAINT pk_tbladt_notification PRIMARY KEY (notificationid);
 T   ALTER TABLE ONLY public.tbladt_notification DROP CONSTRAINT pk_tbladt_notification;
       public         wayio    false    645            �           2606    18028 6   tbladt_notification_level pk_tbladt_notification_level 
   CONSTRAINT     r   ALTER TABLE ONLY tbladt_notification_level
    ADD CONSTRAINT pk_tbladt_notification_level PRIMARY KEY (levelid);
 `   ALTER TABLE ONLY public.tbladt_notification_level DROP CONSTRAINT pk_tbladt_notification_level;
       public         wayio    false    331            �           2606    18040 :   tbladt_notification_message pk_tbladt_notification_message 
   CONSTRAINT     }   ALTER TABLE ONLY tbladt_notification_message
    ADD CONSTRAINT pk_tbladt_notification_message PRIMARY KEY (notificationid);
 d   ALTER TABLE ONLY public.tbladt_notification_message DROP CONSTRAINT pk_tbladt_notification_message;
       public         wayio    false    333            �           2606    18049 J   tbladt_notification_messagetemplate pk_tbladt_notification_messagetemplate 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_notification_messagetemplate
    ADD CONSTRAINT pk_tbladt_notification_messagetemplate PRIMARY KEY (templateid);
 t   ALTER TABLE ONLY public.tbladt_notification_messagetemplate DROP CONSTRAINT pk_tbladt_notification_messagetemplate;
       public         wayio    false    334            "           2606    22376 @   tbladt_notification_moduletype pk_tbladt_notification_moduletype 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_notification_moduletype
    ADD CONSTRAINT pk_tbladt_notification_moduletype PRIMARY KEY (moduletypeid);
 j   ALTER TABLE ONLY public.tbladt_notification_moduletype DROP CONSTRAINT pk_tbladt_notification_moduletype;
       public         wayio    false    653            $           2606    22405 4   tbladt_notification_rule pk_tbladt_notification_rule 
   CONSTRAINT     o   ALTER TABLE ONLY tbladt_notification_rule
    ADD CONSTRAINT pk_tbladt_notification_rule PRIMARY KEY (ruleid);
 ^   ALTER TABLE ONLY public.tbladt_notification_rule DROP CONSTRAINT pk_tbladt_notification_rule;
       public         wayio    false    658            �           2606    18077 <   tbladt_notification_schedule pk_tbladt_notification_schedule 
   CONSTRAINT     {   ALTER TABLE ONLY tbladt_notification_schedule
    ADD CONSTRAINT pk_tbladt_notification_schedule PRIMARY KEY (scheduleid);
 f   ALTER TABLE ONLY public.tbladt_notification_schedule DROP CONSTRAINT pk_tbladt_notification_schedule;
       public         wayio    false    336            �           2606    18082 <   tbladt_notification_severity pk_tbladt_notification_severity 
   CONSTRAINT     {   ALTER TABLE ONLY tbladt_notification_severity
    ADD CONSTRAINT pk_tbladt_notification_severity PRIMARY KEY (severityid);
 f   ALTER TABLE ONLY public.tbladt_notification_severity DROP CONSTRAINT pk_tbladt_notification_severity;
       public         wayio    false    337            �           2606    18099 \   tbladt_notification_strategy_prioritymessage pk_tbladt_notification_strategy_prioritymessage 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_notification_strategy_prioritymessage
    ADD CONSTRAINT pk_tbladt_notification_strategy_prioritymessage PRIMARY KEY (strategyid);
 �   ALTER TABLE ONLY public.tbladt_notification_strategy_prioritymessage DROP CONSTRAINT pk_tbladt_notification_strategy_prioritymessage;
       public         wayio    false    338            �           2606    18104 :   tbladt_notification_subtype pk_tbladt_notification_subtype 
   CONSTRAINT     x   ALTER TABLE ONLY tbladt_notification_subtype
    ADD CONSTRAINT pk_tbladt_notification_subtype PRIMARY KEY (subtypeid);
 d   ALTER TABLE ONLY public.tbladt_notification_subtype DROP CONSTRAINT pk_tbladt_notification_subtype;
       public         wayio    false    339            �           2606    18112 4   tbladt_notification_type pk_tbladt_notification_type 
   CONSTRAINT     o   ALTER TABLE ONLY tbladt_notification_type
    ADD CONSTRAINT pk_tbladt_notification_type PRIMARY KEY (typeid);
 ^   ALTER TABLE ONLY public.tbladt_notification_type DROP CONSTRAINT pk_tbladt_notification_type;
       public         wayio    false    340            &           2606    22428 @   tbladt_notification_typemaster pk_tbladt_notification_typemaster 
   CONSTRAINT     {   ALTER TABLE ONLY tbladt_notification_typemaster
    ADD CONSTRAINT pk_tbladt_notification_typemaster PRIMARY KEY (typeid);
 j   ALTER TABLE ONLY public.tbladt_notification_typemaster DROP CONSTRAINT pk_tbladt_notification_typemaster;
       public         wayio    false    663            }           2606    23014 ,   tbladt_optimizerlogs pk_tbladt_optimizerlogs 
   CONSTRAINT     i   ALTER TABLE ONLY tbladt_optimizerlogs
    ADD CONSTRAINT pk_tbladt_optimizerlogs PRIMARY KEY (recordid);
 V   ALTER TABLE ONLY public.tbladt_optimizerlogs DROP CONSTRAINT pk_tbladt_optimizerlogs;
       public         wayio    false    719            �           2606    18140 0   tbladt_osdevicemapping pk_tbladt_osdevicemapping 
   CONSTRAINT     g   ALTER TABLE ONLY tbladt_osdevicemapping
    ADD CONSTRAINT pk_tbladt_osdevicemapping PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.tbladt_osdevicemapping DROP CONSTRAINT pk_tbladt_osdevicemapping;
       public         wayio    false    344                        2606    18150 <   tbladt_pacing_campaign_today pk_tbladt_pacing_campaign_today 
   CONSTRAINT     v   ALTER TABLE ONLY tbladt_pacing_campaign_today
    ADD CONSTRAINT pk_tbladt_pacing_campaign_today PRIMARY KEY (rowid);
 f   ALTER TABLE ONLY public.tbladt_pacing_campaign_today DROP CONSTRAINT pk_tbladt_pacing_campaign_today;
       public         wayio    false    347                       2606    18158 @   tbladt_pacing_lineitem_history pk_tbladt_pacing_lineitem_history 
   CONSTRAINT     z   ALTER TABLE ONLY tbladt_pacing_lineitem_history
    ADD CONSTRAINT pk_tbladt_pacing_lineitem_history PRIMARY KEY (rowid);
 j   ALTER TABLE ONLY public.tbladt_pacing_lineitem_history DROP CONSTRAINT pk_tbladt_pacing_lineitem_history;
       public         wayio    false    349                       2606    18166 <   tbladt_pacing_lineitem_today pk_tbladt_pacing_lineitem_today 
   CONSTRAINT     v   ALTER TABLE ONLY tbladt_pacing_lineitem_today
    ADD CONSTRAINT pk_tbladt_pacing_lineitem_today PRIMARY KEY (rowid);
 f   ALTER TABLE ONLY public.tbladt_pacing_lineitem_today DROP CONSTRAINT pk_tbladt_pacing_lineitem_today;
       public         wayio    false    351                       2606    23026 &   tbladt_pacinglogs pk_tbladt_pacinglogs 
   CONSTRAINT     c   ALTER TABLE ONLY tbladt_pacinglogs
    ADD CONSTRAINT pk_tbladt_pacinglogs PRIMARY KEY (recordid);
 P   ALTER TABLE ONLY public.tbladt_pacinglogs DROP CONSTRAINT pk_tbladt_pacinglogs;
       public         wayio    false    722                       2606    18247 F   tbladt_platform_blocklist_siteapp pk_tbladt_platform_blocklist_siteapp 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_blocklist_siteapp
    ADD CONSTRAINT pk_tbladt_platform_blocklist_siteapp PRIMARY KEY (recordid);
 p   ALTER TABLE ONLY public.tbladt_platform_blocklist_siteapp DROP CONSTRAINT pk_tbladt_platform_blocklist_siteapp;
       public         wayio    false    368                       2606    18209 T   tbladt_platform_blocklisttracker_archive pk_tbladt_platform_blocklisttracker_archive 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_blocklisttracker_archive
    ADD CONSTRAINT pk_tbladt_platform_blocklisttracker_archive PRIMARY KEY (recordid);
 ~   ALTER TABLE ONLY public.tbladt_platform_blocklisttracker_archive DROP CONSTRAINT pk_tbladt_platform_blocklisttracker_archive;
       public         wayio    false    360                       2606    18259 D   tbladt_platform_creativetracker pk_tbladt_platform_creativetracker_1 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_creativetracker
    ADD CONSTRAINT pk_tbladt_platform_creativetracker_1 PRIMARY KEY (creativeid);
 n   ALTER TABLE ONLY public.tbladt_platform_creativetracker DROP CONSTRAINT pk_tbladt_platform_creativetracker_1;
       public         wayio    false    371                       2606    18267 R   tbladt_platform_creativetracker_archive pk_tbladt_platform_creativetracker_archive 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_creativetracker_archive
    ADD CONSTRAINT pk_tbladt_platform_creativetracker_archive PRIMARY KEY (recordid);
 |   ALTER TABLE ONLY public.tbladt_platform_creativetracker_archive DROP CONSTRAINT pk_tbladt_platform_creativetracker_archive;
       public         wayio    false    373                       2606    18275 >   tbladt_platform_dealidtracker pk_tbladt_platform_dealidtracker 
   CONSTRAINT     ~   ALTER TABLE ONLY tbladt_platform_dealidtracker
    ADD CONSTRAINT pk_tbladt_platform_dealidtracker PRIMARY KEY (dealtrackid);
 h   ALTER TABLE ONLY public.tbladt_platform_dealidtracker DROP CONSTRAINT pk_tbladt_platform_dealidtracker;
       public         wayio    false    375                       2606    18283 N   tbladt_platform_dealidtracker_archive pk_tbladt_platform_dealidtracker_archive 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_dealidtracker_archive
    ADD CONSTRAINT pk_tbladt_platform_dealidtracker_archive PRIMARY KEY (recordid);
 x   ALTER TABLE ONLY public.tbladt_platform_dealidtracker_archive DROP CONSTRAINT pk_tbladt_platform_dealidtracker_archive;
       public         wayio    false    377            m           2606    22797 B   tbladt_platform_lineitemtracker pk_tbladt_platform_lineitemtracker 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_lineitemtracker
    ADD CONSTRAINT pk_tbladt_platform_lineitemtracker PRIMARY KEY (campaignid, lineitemid);
 l   ALTER TABLE ONLY public.tbladt_platform_lineitemtracker DROP CONSTRAINT pk_tbladt_platform_lineitemtracker;
       public         wayio    false    701    701                       2606    18291 R   tbladt_platform_lineitemtracker_archive pk_tbladt_platform_lineitemtracker_archive 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_lineitemtracker_archive
    ADD CONSTRAINT pk_tbladt_platform_lineitemtracker_archive PRIMARY KEY (recordid);
 |   ALTER TABLE ONLY public.tbladt_platform_lineitemtracker_archive DROP CONSTRAINT pk_tbladt_platform_lineitemtracker_archive;
       public         wayio    false    379                       2606    18301 6   tbladt_platform_optimizer pk_tbladt_platform_optimizer 
   CONSTRAINT     v   ALTER TABLE ONLY tbladt_platform_optimizer
    ADD CONSTRAINT pk_tbladt_platform_optimizer PRIMARY KEY (optimizerid);
 `   ALTER TABLE ONLY public.tbladt_platform_optimizer DROP CONSTRAINT pk_tbladt_platform_optimizer;
       public         wayio    false    381            o           2606    22802 H   tbladt_platform_optimizer_adformat pk_tbladt_platform_optimizer_adformat 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_optimizer_adformat
    ADD CONSTRAINT pk_tbladt_platform_optimizer_adformat PRIMARY KEY (optimizerid, adformatid);
 r   ALTER TABLE ONLY public.tbladt_platform_optimizer_adformat DROP CONSTRAINT pk_tbladt_platform_optimizer_adformat;
       public         wayio    false    702    702                       2606    18311 F   tbladt_platform_optimizersettings pk_tbladt_platform_optimizersettings 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_optimizersettings
    ADD CONSTRAINT pk_tbladt_platform_optimizersettings PRIMARY KEY (recordid);
 p   ALTER TABLE ONLY public.tbladt_platform_optimizersettings DROP CONSTRAINT pk_tbladt_platform_optimizersettings;
       public         wayio    false    383            q           2606    22809 P   tbladt_platform_richmediamarkuptracker pk_tbladt_platform_richmediamarkuptracker 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_richmediamarkuptracker
    ADD CONSTRAINT pk_tbladt_platform_richmediamarkuptracker PRIMARY KEY (richmediaproviderid, adexchangeid);
 z   ALTER TABLE ONLY public.tbladt_platform_richmediamarkuptracker DROP CONSTRAINT pk_tbladt_platform_richmediamarkuptracker;
       public         wayio    false    703    703                       2606    18322 `   tbladt_platform_richmediamarkuptracker_archive pk_tbladt_platform_richmediamarkuptracker_archive 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_richmediamarkuptracker_archive
    ADD CONSTRAINT pk_tbladt_platform_richmediamarkuptracker_archive PRIMARY KEY (recordid);
 �   ALTER TABLE ONLY public.tbladt_platform_richmediamarkuptracker_archive DROP CONSTRAINT pk_tbladt_platform_richmediamarkuptracker_archive;
       public         wayio    false    386            (           2606    18374 B   tbladt_platform_variabletracker pk_tbladt_platform_settingstracker 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_variabletracker
    ADD CONSTRAINT pk_tbladt_platform_settingstracker PRIMARY KEY (trackerid);
 l   ALTER TABLE ONLY public.tbladt_platform_variabletracker DROP CONSTRAINT pk_tbladt_platform_settingstracker;
       public         wayio    false    399            *           2606    18382 R   tbladt_platform_variabletracker_archive pk_tbladt_platform_settingstracker_archive 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_variabletracker_archive
    ADD CONSTRAINT pk_tbladt_platform_settingstracker_archive PRIMARY KEY (recordid);
 |   ALTER TABLE ONLY public.tbladt_platform_variabletracker_archive DROP CONSTRAINT pk_tbladt_platform_settingstracker_archive;
       public         wayio    false    401                        2606    18336 R   tbladt_platform_sitelisttracker_archive pk_tbladt_platform_sitelisttracker_archive 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_sitelisttracker_archive
    ADD CONSTRAINT pk_tbladt_platform_sitelisttracker_archive PRIMARY KEY (recordid);
 |   ALTER TABLE ONLY public.tbladt_platform_sitelisttracker_archive DROP CONSTRAINT pk_tbladt_platform_sitelisttracker_archive;
       public         wayio    false    390            "           2606    18342 B   tbladt_platform_strategytracker pk_tbladt_platform_strategytracker 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_strategytracker
    ADD CONSTRAINT pk_tbladt_platform_strategytracker PRIMARY KEY (strategyid);
 l   ALTER TABLE ONLY public.tbladt_platform_strategytracker DROP CONSTRAINT pk_tbladt_platform_strategytracker;
       public         wayio    false    391            $           2606    18350 R   tbladt_platform_strategytracker_archive pk_tbladt_platform_strategytracker_archive 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platform_strategytracker_archive
    ADD CONSTRAINT pk_tbladt_platform_strategytracker_archive PRIMARY KEY (recordid);
 |   ALTER TABLE ONLY public.tbladt_platform_strategytracker_archive DROP CONSTRAINT pk_tbladt_platform_strategytracker_archive;
       public         wayio    false    393            &           2606    18359 2   tbladt_platform_tracker pk_tbladt_platform_tracker 
   CONSTRAINT     n   ALTER TABLE ONLY tbladt_platform_tracker
    ADD CONSTRAINT pk_tbladt_platform_tracker PRIMARY KEY (trackid);
 \   ALTER TABLE ONLY public.tbladt_platform_tracker DROP CONSTRAINT pk_tbladt_platform_tracker;
       public         wayio    false    395                       2606    18172 @   tbladt_platformadjustertracker pk_tbladt_platformadjustertracker 
   CONSTRAINT        ALTER TABLE ONLY tbladt_platformadjustertracker
    ADD CONSTRAINT pk_tbladt_platformadjustertracker PRIMARY KEY (creativeid);
 j   ALTER TABLE ONLY public.tbladt_platformadjustertracker DROP CONSTRAINT pk_tbladt_platformadjustertracker;
       public         wayio    false    352            
           2606    18180 2   tbladt_platformcuidlist pk_tbladt_platformcuidlist 
   CONSTRAINT     o   ALTER TABLE ONLY tbladt_platformcuidlist
    ADD CONSTRAINT pk_tbladt_platformcuidlist PRIMARY KEY (recordid);
 \   ALTER TABLE ONLY public.tbladt_platformcuidlist DROP CONSTRAINT pk_tbladt_platformcuidlist;
       public         wayio    false    354            (           2606    22452 F   tbladt_platformsoftlaunchsettings pk_tbladt_platformsoftlaunchsettings 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_platformsoftlaunchsettings
    ADD CONSTRAINT pk_tbladt_platformsoftlaunchsettings PRIMARY KEY (rateid);
 p   ALTER TABLE ONLY public.tbladt_platformsoftlaunchsettings DROP CONSTRAINT pk_tbladt_platformsoftlaunchsettings;
       public         wayio    false    667            ,           2606    18390 2   tbladt_process_startpos pk_tbladt_process_startpos 
   CONSTRAINT     i   ALTER TABLE ONLY tbladt_process_startpos
    ADD CONSTRAINT pk_tbladt_process_startpos PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.tbladt_process_startpos DROP CONSTRAINT pk_tbladt_process_startpos;
       public         wayio    false    403            ,           2606    22478    tbladt_region pk_tbladt_region 
   CONSTRAINT     [   ALTER TABLE ONLY tbladt_region
    ADD CONSTRAINT pk_tbladt_region PRIMARY KEY (regionid);
 H   ALTER TABLE ONLY public.tbladt_region DROP CONSTRAINT pk_tbladt_region;
       public         wayio    false    670            .           2606    18402 :   tbladt_rfptoolconfiguration pk_tbladt_rfptoolconfiguration 
   CONSTRAINT     u   ALTER TABLE ONLY tbladt_rfptoolconfiguration
    ADD CONSTRAINT pk_tbladt_rfptoolconfiguration PRIMARY KEY (toolid);
 d   ALTER TABLE ONLY public.tbladt_rfptoolconfiguration DROP CONSTRAINT pk_tbladt_rfptoolconfiguration;
       public         wayio    false    405            .           2606    22484 *   tbladt_richmediasdk pk_tbladt_richmediasdk 
   CONSTRAINT     d   ALTER TABLE ONLY tbladt_richmediasdk
    ADD CONSTRAINT pk_tbladt_richmediasdk PRIMARY KEY (sdkid);
 T   ALTER TABLE ONLY public.tbladt_richmediasdk DROP CONSTRAINT pk_tbladt_richmediasdk;
       public         wayio    false    671            0           2606    22495    tbladt_role pk_tbladt_role 
   CONSTRAINT     U   ALTER TABLE ONLY tbladt_role
    ADD CONSTRAINT pk_tbladt_role PRIMARY KEY (roleid);
 D   ALTER TABLE ONLY public.tbladt_role DROP CONSTRAINT pk_tbladt_role;
       public         wayio    false    672            D           2606    18535 (   tbladt_role_action pk_tbladt_role_action 
   CONSTRAINT     e   ALTER TABLE ONLY tbladt_role_action
    ADD CONSTRAINT pk_tbladt_role_action PRIMARY KEY (recordid);
 R   ALTER TABLE ONLY public.tbladt_role_action DROP CONSTRAINT pk_tbladt_role_action;
       public         wayio    false    428            F           2606    18543 >   tbladt_role_notification_rule pk_tbladt_role_notification_rule 
   CONSTRAINT     {   ALTER TABLE ONLY tbladt_role_notification_rule
    ADD CONSTRAINT pk_tbladt_role_notification_rule PRIMARY KEY (recordid);
 h   ALTER TABLE ONLY public.tbladt_role_notification_rule DROP CONSTRAINT pk_tbladt_role_notification_rule;
       public         wayio    false    430            B           2606    18526 "   tbladt_roletype pk_tbladt_roletype 
   CONSTRAINT     a   ALTER TABLE ONLY tbladt_roletype
    ADD CONSTRAINT pk_tbladt_roletype PRIMARY KEY (roletypeid);
 L   ALTER TABLE ONLY public.tbladt_roletype DROP CONSTRAINT pk_tbladt_roletype;
       public         wayio    false    426            8           2606    18458 <   tbladt_rtpe_callback_tracker pk_tbladt_rtpe_callback_tracker 
   CONSTRAINT     s   ALTER TABLE ONLY tbladt_rtpe_callback_tracker
    ADD CONSTRAINT pk_tbladt_rtpe_callback_tracker PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.tbladt_rtpe_callback_tracker DROP CONSTRAINT pk_tbladt_rtpe_callback_tracker;
       public         wayio    false    415            :           2606    18470 L   tbladt_rtpe_callback_tracker_archive pk_tbladt_rtpe_callback_tracker_archive 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_rtpe_callback_tracker_archive
    ADD CONSTRAINT pk_tbladt_rtpe_callback_tracker_archive PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.tbladt_rtpe_callback_tracker_archive DROP CONSTRAINT pk_tbladt_rtpe_callback_tracker_archive;
       public         wayio    false    417            <           2606    18481 *   tbladt_rtpe_tracker pk_tbladt_rtpe_tracker 
   CONSTRAINT     a   ALTER TABLE ONLY tbladt_rtpe_tracker
    ADD CONSTRAINT pk_tbladt_rtpe_tracker PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.tbladt_rtpe_tracker DROP CONSTRAINT pk_tbladt_rtpe_tracker;
       public         wayio    false    419            >           2606    18492 :   tbladt_rtpe_tracker_archive pk_tbladt_rtpe_tracker_archive 
   CONSTRAINT     w   ALTER TABLE ONLY tbladt_rtpe_tracker_archive
    ADD CONSTRAINT pk_tbladt_rtpe_tracker_archive PRIMARY KEY (recordid);
 d   ALTER TABLE ONLY public.tbladt_rtpe_tracker_archive DROP CONSTRAINT pk_tbladt_rtpe_tracker_archive;
       public         wayio    false    421            @           2606    18503 6   tbladt_rtpe_tracker_dummy pk_tbladt_rtpe_tracker_dummy 
   CONSTRAINT     m   ALTER TABLE ONLY tbladt_rtpe_tracker_dummy
    ADD CONSTRAINT pk_tbladt_rtpe_tracker_dummy PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.tbladt_rtpe_tracker_dummy DROP CONSTRAINT pk_tbladt_rtpe_tracker_dummy;
       public         wayio    false    423            *           2606    22466 $   tbladt_rtpemodel pk_tbladt_rtpemodel 
   CONSTRAINT     `   ALTER TABLE ONLY tbladt_rtpemodel
    ADD CONSTRAINT pk_tbladt_rtpemodel PRIMARY KEY (modelid);
 N   ALTER TABLE ONLY public.tbladt_rtpemodel DROP CONSTRAINT pk_tbladt_rtpemodel;
       public         wayio    false    668            0           2606    18422 .   tbladt_rtpemodel_file pk_tbladt_rtpemodel_file 
   CONSTRAINT     i   ALTER TABLE ONLY tbladt_rtpemodel_file
    ADD CONSTRAINT pk_tbladt_rtpemodel_file PRIMARY KEY (fileid);
 X   ALTER TABLE ONLY public.tbladt_rtpemodel_file DROP CONSTRAINT pk_tbladt_rtpemodel_file;
       public         wayio    false    408            2           2606    18430 >   tbladt_rtpemodel_requiredfile pk_tbladt_rtpemodel_requiredfile 
   CONSTRAINT     {   ALTER TABLE ONLY tbladt_rtpemodel_requiredfile
    ADD CONSTRAINT pk_tbladt_rtpemodel_requiredfile PRIMARY KEY (recordid);
 h   ALTER TABLE ONLY public.tbladt_rtpemodel_requiredfile DROP CONSTRAINT pk_tbladt_rtpemodel_requiredfile;
       public         wayio    false    410            4           2606    18435 .   tbladt_rtpemodel_type pk_tbladt_rtpemodel_type 
   CONSTRAINT     n   ALTER TABLE ONLY tbladt_rtpemodel_type
    ADD CONSTRAINT pk_tbladt_rtpemodel_type PRIMARY KEY (modeltypeid);
 X   ALTER TABLE ONLY public.tbladt_rtpemodel_type DROP CONSTRAINT pk_tbladt_rtpemodel_type;
       public         wayio    false    411            6           2606    18446 .   tbladt_rtpeofflearner pk_tbladt_rtpeofflearner 
   CONSTRAINT     o   ALTER TABLE ONLY tbladt_rtpeofflearner
    ADD CONSTRAINT pk_tbladt_rtpeofflearner PRIMARY KEY (offlearnerid);
 X   ALTER TABLE ONLY public.tbladt_rtpeofflearner DROP CONSTRAINT pk_tbladt_rtpeofflearner;
       public         wayio    false    413            H           2606    18553 D   tbladt_salesforcedata_bulkinsert pk_tbladt_salesforcedata_bulkinsert 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_salesforcedata_bulkinsert
    ADD CONSTRAINT pk_tbladt_salesforcedata_bulkinsert PRIMARY KEY (recordid);
 n   ALTER TABLE ONLY public.tbladt_salesforcedata_bulkinsert DROP CONSTRAINT pk_tbladt_salesforcedata_bulkinsert;
       public         wayio    false    432            3           2606    22505    tbladt_siteapp pk_tbladt_site 
   CONSTRAINT     [   ALTER TABLE ONLY tbladt_siteapp
    ADD CONSTRAINT pk_tbladt_site PRIMARY KEY (siteappid);
 G   ALTER TABLE ONLY public.tbladt_siteapp DROP CONSTRAINT pk_tbladt_site;
       public         wayio    false    673            5           2606    22515 4   tbladt_siteapp_inventory pk_tbladt_siteapp_inventory 
   CONSTRAINT     t   ALTER TABLE ONLY tbladt_siteapp_inventory
    ADD CONSTRAINT pk_tbladt_siteapp_inventory PRIMARY KEY (inventoryid);
 ^   ALTER TABLE ONLY public.tbladt_siteapp_inventory DROP CONSTRAINT pk_tbladt_siteapp_inventory;
       public         wayio    false    674            L           2606    18584 @   tbladt_siteappproperties_stage pk_tbladt_siteappproperties_stage 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_siteappproperties_stage
    ADD CONSTRAINT pk_tbladt_siteappproperties_stage PRIMARY KEY (property_id);
 j   ALTER TABLE ONLY public.tbladt_siteappproperties_stage DROP CONSTRAINT pk_tbladt_siteappproperties_stage;
       public         wayio    false    438            N           2606    18589 J   tbladt_siteappproperties_updatedids pk_tbladt_siteappproperties_updatedids 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_siteappproperties_updatedids
    ADD CONSTRAINT pk_tbladt_siteappproperties_updatedids PRIMARY KEY (property_id);
 t   ALTER TABLE ONLY public.tbladt_siteappproperties_updatedids DROP CONSTRAINT pk_tbladt_siteappproperties_updatedids;
       public         wayio    false    439            7           2606    22535 2   tbladt_sitelist_sendcsv pk_tbladt_sitelist_sendcsv 
   CONSTRAINT     o   ALTER TABLE ONLY tbladt_sitelist_sendcsv
    ADD CONSTRAINT pk_tbladt_sitelist_sendcsv PRIMARY KEY (recordid);
 \   ALTER TABLE ONLY public.tbladt_sitelist_sendcsv DROP CONSTRAINT pk_tbladt_sitelist_sendcsv;
       public         wayio    false    676            X           2606    18649 2   tbladt_sitelist_tracker pk_tbladt_sitelist_tracker 
   CONSTRAINT     p   ALTER TABLE ONLY tbladt_sitelist_tracker
    ADD CONSTRAINT pk_tbladt_sitelist_tracker PRIMARY KEY (trackerid);
 \   ALTER TABLE ONLY public.tbladt_sitelist_tracker DROP CONSTRAINT pk_tbladt_sitelist_tracker;
       public         wayio    false    451            Z           2606    18657 B   tbladt_sitelist_tracker_archive pk_tbladt_sitelist_tracker_archive 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_sitelist_tracker_archive
    ADD CONSTRAINT pk_tbladt_sitelist_tracker_archive PRIMARY KEY (trackerid);
 l   ALTER TABLE ONLY public.tbladt_sitelist_tracker_archive DROP CONSTRAINT pk_tbladt_sitelist_tracker_archive;
       public         wayio    false    453            P           2606    18600 ,   tbladt_sitelistassoc pk_tbladt_sitelistassoc 
   CONSTRAINT     i   ALTER TABLE ONLY tbladt_sitelistassoc
    ADD CONSTRAINT pk_tbladt_sitelistassoc PRIMARY KEY (recordid);
 V   ALTER TABLE ONLY public.tbladt_sitelistassoc DROP CONSTRAINT pk_tbladt_sitelistassoc;
       public         wayio    false    441            R           2606    18608 <   tbladt_sitelistassoc_archive pk_tbladt_sitelistassoc_archive 
   CONSTRAINT     y   ALTER TABLE ONLY tbladt_sitelistassoc_archive
    ADD CONSTRAINT pk_tbladt_sitelistassoc_archive PRIMARY KEY (recordid);
 f   ALTER TABLE ONLY public.tbladt_sitelistassoc_archive DROP CONSTRAINT pk_tbladt_sitelistassoc_archive;
       public         wayio    false    443            T           2606    18626 .   tbladt_sitelistmaster pk_tbladt_sitelistmaster 
   CONSTRAINT     m   ALTER TABLE ONLY tbladt_sitelistmaster
    ADD CONSTRAINT pk_tbladt_sitelistmaster PRIMARY KEY (sitelistid);
 X   ALTER TABLE ONLY public.tbladt_sitelistmaster DROP CONSTRAINT pk_tbladt_sitelistmaster;
       public         wayio    false    446            V           2606    18634 >   tbladt_sitelistmaster_archive pk_tbladt_sitelistmaster_archive 
   CONSTRAINT     }   ALTER TABLE ONLY tbladt_sitelistmaster_archive
    ADD CONSTRAINT pk_tbladt_sitelistmaster_archive PRIMARY KEY (sitelistid);
 h   ALTER TABLE ONLY public.tbladt_sitelistmaster_archive DROP CONSTRAINT pk_tbladt_sitelistmaster_archive;
       public         wayio    false    448            \           2606    18669 (   tbladt_sqlerrorlog pk_tbladt_sqlerrorlog 
   CONSTRAINT     d   ALTER TABLE ONLY tbladt_sqlerrorlog
    ADD CONSTRAINT pk_tbladt_sqlerrorlog PRIMARY KEY (errorid);
 R   ALTER TABLE ONLY public.tbladt_sqlerrorlog DROP CONSTRAINT pk_tbladt_sqlerrorlog;
       public         wayio    false    455            :           2606    22553 "   tbladt_strategy pk_tbladt_strategy 
   CONSTRAINT     a   ALTER TABLE ONLY tbladt_strategy
    ADD CONSTRAINT pk_tbladt_strategy PRIMARY KEY (strategyid);
 L   ALTER TABLE ONLY public.tbladt_strategy DROP CONSTRAINT pk_tbladt_strategy;
       public         wayio    false    677            _           2606    18696 8   tbladt_strategy_adexchange pk_tbladt_strategy_adexchange 
   CONSTRAINT     u   ALTER TABLE ONLY tbladt_strategy_adexchange
    ADD CONSTRAINT pk_tbladt_strategy_adexchange PRIMARY KEY (recordid);
 b   ALTER TABLE ONLY public.tbladt_strategy_adexchange DROP CONSTRAINT pk_tbladt_strategy_adexchange;
       public         wayio    false    460            �           2606    18932 <   tbladt_strategy_siteapp_inventory pk_tbladt_strategy_appsite 
   CONSTRAINT     y   ALTER TABLE ONLY tbladt_strategy_siteapp_inventory
    ADD CONSTRAINT pk_tbladt_strategy_appsite PRIMARY KEY (recordid);
 f   ALTER TABLE ONLY public.tbladt_strategy_siteapp_inventory DROP CONSTRAINT pk_tbladt_strategy_appsite;
       public         wayio    false    508            a           2606    18704 4   tbladt_strategy_audience pk_tbladt_strategy_audience 
   CONSTRAINT     q   ALTER TABLE ONLY tbladt_strategy_audience
    ADD CONSTRAINT pk_tbladt_strategy_audience PRIMARY KEY (recordid);
 ^   ALTER TABLE ONLY public.tbladt_strategy_audience DROP CONSTRAINT pk_tbladt_strategy_audience;
       public         wayio    false    462            c           2606    18728 4   tbladt_strategy_carriers pk_tbladt_strategy_carriers 
   CONSTRAINT     q   ALTER TABLE ONLY tbladt_strategy_carriers
    ADD CONSTRAINT pk_tbladt_strategy_carriers PRIMARY KEY (recordid);
 ^   ALTER TABLE ONLY public.tbladt_strategy_carriers DROP CONSTRAINT pk_tbladt_strategy_carriers;
       public         wayio    false    467            e           2606    18743 L   tbladt_strategy_content_keyword_temp pk_tbladt_strategy_contend_keyword_temp 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_strategy_content_keyword_temp
    ADD CONSTRAINT pk_tbladt_strategy_contend_keyword_temp PRIMARY KEY (recordid);
 v   ALTER TABLE ONLY public.tbladt_strategy_content_keyword_temp DROP CONSTRAINT pk_tbladt_strategy_contend_keyword_temp;
       public         wayio    false    470            <           2606    22566 B   tbladt_strategy_content_keyword pk_tbladt_strategy_content_keyword 
   CONSTRAINT        ALTER TABLE ONLY tbladt_strategy_content_keyword
    ADD CONSTRAINT pk_tbladt_strategy_content_keyword PRIMARY KEY (recordid);
 l   ALTER TABLE ONLY public.tbladt_strategy_content_keyword DROP CONSTRAINT pk_tbladt_strategy_content_keyword;
       public         wayio    false    679            i           2606    18752 9   tbladt_strategy_coordinate pk_tbladt_strategy_coordinates 
   CONSTRAINT     v   ALTER TABLE ONLY tbladt_strategy_coordinate
    ADD CONSTRAINT pk_tbladt_strategy_coordinates PRIMARY KEY (recordid);
 c   ALTER TABLE ONLY public.tbladt_strategy_coordinate DROP CONSTRAINT pk_tbladt_strategy_coordinates;
       public         wayio    false    472            l           2606    18763 2   tbladt_strategy_country pk_tbladt_strategy_country 
   CONSTRAINT     o   ALTER TABLE ONLY tbladt_strategy_country
    ADD CONSTRAINT pk_tbladt_strategy_country PRIMARY KEY (recordid);
 \   ALTER TABLE ONLY public.tbladt_strategy_country DROP CONSTRAINT pk_tbladt_strategy_country;
       public         wayio    false    474            t           2606    18791 8   tbladt_strategy_dayparting pk_tbladt_strategy_dayparting 
   CONSTRAINT     u   ALTER TABLE ONLY tbladt_strategy_dayparting
    ADD CONSTRAINT pk_tbladt_strategy_dayparting PRIMARY KEY (recordid);
 b   ALTER TABLE ONLY public.tbladt_strategy_dayparting DROP CONSTRAINT pk_tbladt_strategy_dayparting;
       public         wayio    false    480            v           2606    18799 0   tbladt_strategy_dealid pk_tbladt_strategy_dealid 
   CONSTRAINT     m   ALTER TABLE ONLY tbladt_strategy_dealid
    ADD CONSTRAINT pk_tbladt_strategy_dealid PRIMARY KEY (recordid);
 Z   ALTER TABLE ONLY public.tbladt_strategy_dealid DROP CONSTRAINT pk_tbladt_strategy_dealid;
       public         wayio    false    482            >           2606    22578 :   tbladt_strategy_demographic pk_tbladt_strategy_demographic 
   CONSTRAINT     w   ALTER TABLE ONLY tbladt_strategy_demographic
    ADD CONSTRAINT pk_tbladt_strategy_demographic PRIMARY KEY (recordid);
 d   ALTER TABLE ONLY public.tbladt_strategy_demographic DROP CONSTRAINT pk_tbladt_strategy_demographic;
       public         wayio    false    680            x           2606    18813 0   tbladt_strategy_device pk_tbladt_strategy_device 
   CONSTRAINT     m   ALTER TABLE ONLY tbladt_strategy_device
    ADD CONSTRAINT pk_tbladt_strategy_device PRIMARY KEY (recordid);
 Z   ALTER TABLE ONLY public.tbladt_strategy_device DROP CONSTRAINT pk_tbladt_strategy_device;
       public         wayio    false    485            q           2606    18783 *   tbladt_strategy_dma pk_tbladt_strategy_dma 
   CONSTRAINT     g   ALTER TABLE ONLY tbladt_strategy_dma
    ADD CONSTRAINT pk_tbladt_strategy_dma PRIMARY KEY (recordid);
 T   ALTER TABLE ONLY public.tbladt_strategy_dma DROP CONSTRAINT pk_tbladt_strategy_dma;
       public         wayio    false    478            {           2606    18824 :   tbladt_strategy_iabcategory pk_tbladt_strategy_iabcategory 
   CONSTRAINT     w   ALTER TABLE ONLY tbladt_strategy_iabcategory
    ADD CONSTRAINT pk_tbladt_strategy_iabcategory PRIMARY KEY (recordid);
 d   ALTER TABLE ONLY public.tbladt_strategy_iabcategory DROP CONSTRAINT pk_tbladt_strategy_iabcategory;
       public         wayio    false    487            }           2606    18835 *   tbladt_strategy_isp pk_tbladt_strategy_isp 
   CONSTRAINT     g   ALTER TABLE ONLY tbladt_strategy_isp
    ADD CONSTRAINT pk_tbladt_strategy_isp PRIMARY KEY (recordid);
 T   ALTER TABLE ONLY public.tbladt_strategy_isp DROP CONSTRAINT pk_tbladt_strategy_isp;
       public         wayio    false    489            �           2606    18846 2   tbladt_strategy_keyword pk_tbladt_strategy_keyword 
   CONSTRAINT     o   ALTER TABLE ONLY tbladt_strategy_keyword
    ADD CONSTRAINT pk_tbladt_strategy_keyword PRIMARY KEY (recordid);
 \   ALTER TABLE ONLY public.tbladt_strategy_keyword DROP CONSTRAINT pk_tbladt_strategy_keyword;
       public         wayio    false    491            �           2606    18857 0   tbladt_strategy_mosaic pk_tbladt_strategy_mosaic 
   CONSTRAINT     m   ALTER TABLE ONLY tbladt_strategy_mosaic
    ADD CONSTRAINT pk_tbladt_strategy_mosaic PRIMARY KEY (recordid);
 Z   ALTER TABLE ONLY public.tbladt_strategy_mosaic DROP CONSTRAINT pk_tbladt_strategy_mosaic;
       public         wayio    false    493            �           2606    18862 >   tbladt_strategy_optimizeddata pk_tbladt_strategy_optimizeddata 
   CONSTRAINT     }   ALTER TABLE ONLY tbladt_strategy_optimizeddata
    ADD CONSTRAINT pk_tbladt_strategy_optimizeddata PRIMARY KEY (strategyid);
 h   ALTER TABLE ONLY public.tbladt_strategy_optimizeddata DROP CONSTRAINT pk_tbladt_strategy_optimizeddata;
       public         wayio    false    494            �           2606    18870 (   tbladt_strategy_os pk_tbladt_strategy_os 
   CONSTRAINT     e   ALTER TABLE ONLY tbladt_strategy_os
    ADD CONSTRAINT pk_tbladt_strategy_os PRIMARY KEY (recordid);
 R   ALTER TABLE ONLY public.tbladt_strategy_os DROP CONSTRAINT pk_tbladt_strategy_os;
       public         wayio    false    496            �           2606    18881 8   tbladt_strategy_postalcode pk_tbladt_strategy_postalcode 
   CONSTRAINT     u   ALTER TABLE ONLY tbladt_strategy_postalcode
    ADD CONSTRAINT pk_tbladt_strategy_postalcode PRIMARY KEY (recordid);
 b   ALTER TABLE ONLY public.tbladt_strategy_postalcode DROP CONSTRAINT pk_tbladt_strategy_postalcode;
       public         wayio    false    498            �           2606    18895 :   tbladt_strategy_region_city pk_tbladt_strategy_region_city 
   CONSTRAINT     w   ALTER TABLE ONLY tbladt_strategy_region_city
    ADD CONSTRAINT pk_tbladt_strategy_region_city PRIMARY KEY (recordid);
 d   ALTER TABLE ONLY public.tbladt_strategy_region_city DROP CONSTRAINT pk_tbladt_strategy_region_city;
       public         wayio    false    501            D           2606    22597 2   tbladt_strategy_regions pk_tbladt_strategy_regions 
   CONSTRAINT     o   ALTER TABLE ONLY tbladt_strategy_regions
    ADD CONSTRAINT pk_tbladt_strategy_regions PRIMARY KEY (recordid);
 \   ALTER TABLE ONLY public.tbladt_strategy_regions DROP CONSTRAINT pk_tbladt_strategy_regions;
       public         wayio    false    682            �           2606    18912 :   tbladt_strategy_retargeting pk_tbladt_strategy_retargeting 
   CONSTRAINT     w   ALTER TABLE ONLY tbladt_strategy_retargeting
    ADD CONSTRAINT pk_tbladt_strategy_retargeting PRIMARY KEY (recordid);
 d   ALTER TABLE ONLY public.tbladt_strategy_retargeting DROP CONSTRAINT pk_tbladt_strategy_retargeting;
       public         wayio    false    504            A           2606    22587 ,   tbladt_strategy_rtpe pk_tbladt_strategy_rtpe 
   CONSTRAINT     i   ALTER TABLE ONLY tbladt_strategy_rtpe
    ADD CONSTRAINT pk_tbladt_strategy_rtpe PRIMARY KEY (recordid);
 V   ALTER TABLE ONLY public.tbladt_strategy_rtpe DROP CONSTRAINT pk_tbladt_strategy_rtpe;
       public         wayio    false    681            �           2606    18924 2   tbladt_strategy_siteapp pk_tbladt_strategy_siteapp 
   CONSTRAINT     o   ALTER TABLE ONLY tbladt_strategy_siteapp
    ADD CONSTRAINT pk_tbladt_strategy_siteapp PRIMARY KEY (recordid);
 \   ALTER TABLE ONLY public.tbladt_strategy_siteapp DROP CONSTRAINT pk_tbladt_strategy_siteapp;
       public         wayio    false    506            �           2606    18940 N   tbladt_strategy_siteapp_inventorytemp pk_tbladt_strategy_siteapp_inventorytemp 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_strategy_siteapp_inventorytemp
    ADD CONSTRAINT pk_tbladt_strategy_siteapp_inventorytemp PRIMARY KEY (recordid);
 x   ALTER TABLE ONLY public.tbladt_strategy_siteapp_inventorytemp DROP CONSTRAINT pk_tbladt_strategy_siteapp_inventorytemp;
       public         wayio    false    510            �           2606    18948 4   tbladt_strategy_sitelist pk_tbladt_strategy_sitelist 
   CONSTRAINT     q   ALTER TABLE ONLY tbladt_strategy_sitelist
    ADD CONSTRAINT pk_tbladt_strategy_sitelist PRIMARY KEY (recordid);
 ^   ALTER TABLE ONLY public.tbladt_strategy_sitelist DROP CONSTRAINT pk_tbladt_strategy_sitelist;
       public         wayio    false    512            �           2606    18956 D   tbladt_strategy_sitelist_archive pk_tbladt_strategy_sitelist_archive 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_strategy_sitelist_archive
    ADD CONSTRAINT pk_tbladt_strategy_sitelist_archive PRIMARY KEY (recordid);
 n   ALTER TABLE ONLY public.tbladt_strategy_sitelist_archive DROP CONSTRAINT pk_tbladt_strategy_sitelist_archive;
       public         wayio    false    514            F           2606    22609 2   tbladt_strategy_targets pk_tbladt_strategy_targets 
   CONSTRAINT     o   ALTER TABLE ONLY tbladt_strategy_targets
    ADD CONSTRAINT pk_tbladt_strategy_targets PRIMARY KEY (recordid);
 \   ALTER TABLE ONLY public.tbladt_strategy_targets DROP CONSTRAINT pk_tbladt_strategy_targets;
       public         wayio    false    683            �           2606    18979 8   tbladt_strategy_vendorcost pk_tbladt_strategy_vendorcost 
   CONSTRAINT     u   ALTER TABLE ONLY tbladt_strategy_vendorcost
    ADD CONSTRAINT pk_tbladt_strategy_vendorcost PRIMARY KEY (recordid);
 b   ALTER TABLE ONLY public.tbladt_strategy_vendorcost DROP CONSTRAINT pk_tbladt_strategy_vendorcost;
       public         wayio    false    520            I           2606    22619 2   tbladt_strategy_weather pk_tbladt_strategy_weather 
   CONSTRAINT     o   ALTER TABLE ONLY tbladt_strategy_weather
    ADD CONSTRAINT pk_tbladt_strategy_weather PRIMARY KEY (recordid);
 \   ALTER TABLE ONLY public.tbladt_strategy_weather DROP CONSTRAINT pk_tbladt_strategy_weather;
       public         wayio    false    684            K           2606    22631 2   tbladt_tableaureport pk_tbladt_tableaureportmaster 
   CONSTRAINT     o   ALTER TABLE ONLY tbladt_tableaureport
    ADD CONSTRAINT pk_tbladt_tableaureportmaster PRIMARY KEY (reportid);
 \   ALTER TABLE ONLY public.tbladt_tableaureport DROP CONSTRAINT pk_tbladt_tableaureportmaster;
       public         wayio    false    685            M           2606    22638 "   tbladt_timezone pk_tbladt_timezone 
   CONSTRAINT     a   ALTER TABLE ONLY tbladt_timezone
    ADD CONSTRAINT pk_tbladt_timezone PRIMARY KEY (timezoneid);
 L   ALTER TABLE ONLY public.tbladt_timezone DROP CONSTRAINT pk_tbladt_timezone;
       public         wayio    false    686            �           2606    19012 T   tbladt_tracker_prevdata_strategycreative pk_tbladt_tracker_prevdata_strategycreative 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_tracker_prevdata_strategycreative
    ADD CONSTRAINT pk_tbladt_tracker_prevdata_strategycreative PRIMARY KEY (recordid);
 ~   ALTER TABLE ONLY public.tbladt_tracker_prevdata_strategycreative DROP CONSTRAINT pk_tbladt_tracker_prevdata_strategycreative;
       public         wayio    false    526            O           2606    22650    tbladt_user pk_tbladt_user 
   CONSTRAINT     U   ALTER TABLE ONLY tbladt_user
    ADD CONSTRAINT pk_tbladt_user PRIMARY KEY (userid);
 D   ALTER TABLE ONLY public.tbladt_user DROP CONSTRAINT pk_tbladt_user;
       public         wayio    false    687            S           2606    22670 4   tbladt_user_notification pk_tbladt_user_notification 
   CONSTRAINT     p   ALTER TABLE ONLY tbladt_user_notification
    ADD CONSTRAINT pk_tbladt_user_notification PRIMARY KEY (associd);
 ^   ALTER TABLE ONLY public.tbladt_user_notification DROP CONSTRAINT pk_tbladt_user_notification;
       public         wayio    false    689            W           2606    22678 D   tbladt_user_notification_message pk_tbladt_user_notification_message 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_user_notification_message
    ADD CONSTRAINT pk_tbladt_user_notification_message PRIMARY KEY (associd);
 n   ALTER TABLE ONLY public.tbladt_user_notification_message DROP CONSTRAINT pk_tbladt_user_notification_message;
       public         wayio    false    690            �           2606    19030 :   tbladt_usergridcolumnfilter pk_tbladt_usergridcolumnfilter 
   CONSTRAINT     y   ALTER TABLE ONLY tbladt_usergridcolumnfilter
    ADD CONSTRAINT pk_tbladt_usergridcolumnfilter PRIMARY KEY (criteriaid);
 d   ALTER TABLE ONLY public.tbladt_usergridcolumnfilter DROP CONSTRAINT pk_tbladt_usergridcolumnfilter;
       public         wayio    false    529            Q           2606    22662 >   tbladt_usergridfiltercriteria pk_tbladt_usergridfiltercriteria 
   CONSTRAINT     }   ALTER TABLE ONLY tbladt_usergridfiltercriteria
    ADD CONSTRAINT pk_tbladt_usergridfiltercriteria PRIMARY KEY (criteriaid);
 h   ALTER TABLE ONLY public.tbladt_usergridfiltercriteria DROP CONSTRAINT pk_tbladt_usergridfiltercriteria;
       public         wayio    false    688            Y           2606    22689    tbladt_vendor pk_tbladt_vendor 
   CONSTRAINT     [   ALTER TABLE ONLY tbladt_vendor
    ADD CONSTRAINT pk_tbladt_vendor PRIMARY KEY (vendorid);
 H   ALTER TABLE ONLY public.tbladt_vendor DROP CONSTRAINT pk_tbladt_vendor;
       public         wayio    false    691            �           2606    19068 .   tbladt_vendor_product pk_tbladt_vendor_product 
   CONSTRAINT     l   ALTER TABLE ONLY tbladt_vendor_product
    ADD CONSTRAINT pk_tbladt_vendor_product PRIMARY KEY (productid);
 X   ALTER TABLE ONLY public.tbladt_vendor_product DROP CONSTRAINT pk_tbladt_vendor_product;
       public         wayio    false    535            ]           2606    22696 @   tbladt_vendor_product_costtype pk_tbladt_vendor_product_costtype 
   CONSTRAINT     }   ALTER TABLE ONLY tbladt_vendor_product_costtype
    ADD CONSTRAINT pk_tbladt_vendor_product_costtype PRIMARY KEY (recordid);
 j   ALTER TABLE ONLY public.tbladt_vendor_product_costtype DROP CONSTRAINT pk_tbladt_vendor_product_costtype;
       public         wayio    false    692            _           2606    22702     tbladt_weather pk_tbladt_weather 
   CONSTRAINT     ^   ALTER TABLE ONLY tbladt_weather
    ADD CONSTRAINT pk_tbladt_weather PRIMARY KEY (weatherid);
 J   ALTER TABLE ONLY public.tbladt_weather DROP CONSTRAINT pk_tbladt_weather;
       public         wayio    false    693            �           2606    21994 0   tbladt_creativevendor pk_tblcm_cmpcreativevendor 
   CONSTRAINT     m   ALTER TABLE ONLY tbladt_creativevendor
    ADD CONSTRAINT pk_tblcm_cmpcreativevendor PRIMARY KEY (vendorid);
 Z   ALTER TABLE ONLY public.tbladt_creativevendor DROP CONSTRAINT pk_tblcm_cmpcreativevendor;
       public         wayio    false    608            �           2606    22119 )   tbladt_dtsx_trigger pk_tblcm_dtsx_trigger 
   CONSTRAINT     g   ALTER TABLE ONLY tbladt_dtsx_trigger
    ADD CONSTRAINT pk_tblcm_dtsx_trigger PRIMARY KEY (triggerid);
 S   ALTER TABLE ONLY public.tbladt_dtsx_trigger DROP CONSTRAINT pk_tblcm_dtsx_trigger;
       public         wayio    false    625            s           2606    22844 .   tblqa_dummyadvertiser pk_tblqa_dummyadvertiser 
   CONSTRAINT     k   ALTER TABLE ONLY tblqa_dummyadvertiser
    ADD CONSTRAINT pk_tblqa_dummyadvertiser PRIMARY KEY (recordid);
 X   ALTER TABLE ONLY public.tblqa_dummyadvertiser DROP CONSTRAINT pk_tblqa_dummyadvertiser;
       public         wayio    false    708            u           2606    22887 &   tbladt_privilege tblADT_Privilege_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY tbladt_privilege
    ADD CONSTRAINT "tblADT_Privilege_pkey" PRIMARY KEY (privilegeid);
 R   ALTER TABLE ONLY public.tbladt_privilege DROP CONSTRAINT "tblADT_Privilege_pkey";
       public         wayio    false    714            �           2606    17644 X   tbladt_creative_dimension_tracker_archive tbladt_creative_dimension_tracker_archive_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_creative_dimension_tracker_archive
    ADD CONSTRAINT tbladt_creative_dimension_tracker_archive_pkey PRIMARY KEY (recordid);
 �   ALTER TABLE ONLY public.tbladt_creative_dimension_tracker_archive DROP CONSTRAINT tbladt_creative_dimension_tracker_archive_pkey;
       public         wayio    false    273            �           2606    17844 :   tbladt_hawk_xmlwithopenxml tbladt_hawk_xmlwithopenxml_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY tbladt_hawk_xmlwithopenxml
    ADD CONSTRAINT tbladt_hawk_xmlwithopenxml_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.tbladt_hawk_xmlwithopenxml DROP CONSTRAINT tbladt_hawk_xmlwithopenxml_pkey;
       public         wayio    false    305            �           2606    17969    tbladt_make tbladt_make_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY tbladt_make
    ADD CONSTRAINT tbladt_make_pkey PRIMARY KEY (makeid);
 F   ALTER TABLE ONLY public.tbladt_make DROP CONSTRAINT tbladt_make_pkey;
       public         wayio    false    325            �           2606    18132    tbladt_os tbladt_os_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY tbladt_os
    ADD CONSTRAINT tbladt_os_pkey PRIMARY KEY (osid);
 B   ALTER TABLE ONLY public.tbladt_os DROP CONSTRAINT tbladt_os_pkey;
       public         wayio    false    342            d           2606    22731 &   tbladt_osversion tbladt_osversion_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY tbladt_osversion
    ADD CONSTRAINT tbladt_osversion_pkey PRIMARY KEY (versionid);
 P   ALTER TABLE ONLY public.tbladt_osversion DROP CONSTRAINT tbladt_osversion_pkey;
       public         wayio    false    696            w           2606    22895 .   tbladt_roleprivilege tbladt_roleprivilege_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY tbladt_roleprivilege
    ADD CONSTRAINT tbladt_roleprivilege_pkey PRIMARY KEY (roleid);
 X   ALTER TABLE ONLY public.tbladt_roleprivilege DROP CONSTRAINT tbladt_roleprivilege_pkey;
       public         wayio    false    715            J           2606    18567 6   tbladt_siteappproperties tbladt_siteappproperties_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY tbladt_siteappproperties
    ADD CONSTRAINT tbladt_siteappproperties_pkey PRIMARY KEY (property_id);
 `   ALTER TABLE ONLY public.tbladt_siteappproperties DROP CONSTRAINT tbladt_siteappproperties_pkey;
       public         wayio    false    434            �           2606    25163 2   tbladt_strategysiteapp tbladt_strategysiteapp_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY tbladt_strategysiteapp
    ADD CONSTRAINT tbladt_strategysiteapp_pkey PRIMARY KEY (recordid);
 \   ALTER TABLE ONLY public.tbladt_strategysiteapp DROP CONSTRAINT tbladt_strategysiteapp_pkey;
       public         wayio    false    764            y           2606    22908 0   tbladt_userverifycode tbladt_userverifycode_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY tbladt_userverifycode
    ADD CONSTRAINT tbladt_userverifycode_pkey PRIMARY KEY (userverifycodeid);
 Z   ALTER TABLE ONLY public.tbladt_userverifycode DROP CONSTRAINT tbladt_userverifycode_pkey;
       public         wayio    false    716            �           2606    25070 4   adx_performance_tracking uk_adx_performance_tracking 
   CONSTRAINT     n   ALTER TABLE ONLY adx_performance_tracking
    ADD CONSTRAINT uk_adx_performance_tracking UNIQUE (adexchange);
 ^   ALTER TABLE ONLY public.adx_performance_tracking DROP CONSTRAINT uk_adx_performance_tracking;
       public         wayio    false    759            �           2606    25087 :   bidder_performance_tracking uk_bidder_performance_tracking 
   CONSTRAINT     w   ALTER TABLE ONLY bidder_performance_tracking
    ADD CONSTRAINT uk_bidder_performance_tracking UNIQUE (bidderagentid);
 d   ALTER TABLE ONLY public.bidder_performance_tracking DROP CONSTRAINT uk_bidder_performance_tracking;
       public         wayio    false    760            ~           2606    23972 X   tbladt_biddingstatistics uk_tbladt_biddingstatistics_unique_timestamp_adexchangeid_strat 
   CONSTRAINT     �   ALTER TABLE ONLY tbladt_biddingstatistics
    ADD CONSTRAINT uk_tbladt_biddingstatistics_unique_timestamp_adexchangeid_strat UNIQUE ("timestamp", adexchangeid, strategyid, creativeid);
 �   ALTER TABLE ONLY public.tbladt_biddingstatistics DROP CONSTRAINT uk_tbladt_biddingstatistics_unique_timestamp_adexchangeid_strat;
       public         wayio    false    219    219    219    219            q           1259    22753 %   idxadt_biddingstatistics_adexchangeid    INDEX     k   CREATE INDEX idxadt_biddingstatistics_adexchangeid ON tbladt_biddingstatistics USING btree (adexchangeid);
 9   DROP INDEX public.idxadt_biddingstatistics_adexchangeid;
       public         wayio    false    219            r           1259    22752 #   idxadt_biddingstatistics_campaignid    INDEX     s   CREATE INDEX idxadt_biddingstatistics_campaignid ON tbladt_biddingstatistics USING btree (campaignid, lineitemid);
 7   DROP INDEX public.idxadt_biddingstatistics_campaignid;
       public         wayio    false    219    219            s           1259    22757 8   idxadt_biddingstatistics_campaignid_lineitemid_timestamp    INDEX     �   CREATE INDEX idxadt_biddingstatistics_campaignid_lineitemid_timestamp ON tbladt_biddingstatistics USING btree (campaignid, lineitemid, "timestamp");
 L   DROP INDEX public.idxadt_biddingstatistics_campaignid_lineitemid_timestamp;
       public         wayio    false    219    219    219            t           1259    22756 -   idxadt_biddingstatistics_campaignid_timestamp    INDEX     ~   CREATE INDEX idxadt_biddingstatistics_campaignid_timestamp ON tbladt_biddingstatistics USING btree (campaignid, "timestamp");
 A   DROP INDEX public.idxadt_biddingstatistics_campaignid_timestamp;
       public         wayio    false    219    219            u           1259    22751 #   idxadt_biddingstatistics_creativeid    INDEX     g   CREATE INDEX idxadt_biddingstatistics_creativeid ON tbladt_biddingstatistics USING btree (creativeid);
 7   DROP INDEX public.idxadt_biddingstatistics_creativeid;
       public         wayio    false    219            v           1259    22750 #   idxadt_biddingstatistics_lineitemid    INDEX     g   CREATE INDEX idxadt_biddingstatistics_lineitemid ON tbladt_biddingstatistics USING btree (lineitemid);
 7   DROP INDEX public.idxadt_biddingstatistics_lineitemid;
       public         wayio    false    219            w           1259    22755 -   idxadt_biddingstatistics_lineitemid_timestamp    INDEX     ~   CREATE INDEX idxadt_biddingstatistics_lineitemid_timestamp ON tbladt_biddingstatistics USING btree (lineitemid, "timestamp");
 A   DROP INDEX public.idxadt_biddingstatistics_lineitemid_timestamp;
       public         wayio    false    219    219            x           1259    22749 #   idxadt_biddingstatistics_strategyid    INDEX     g   CREATE INDEX idxadt_biddingstatistics_strategyid ON tbladt_biddingstatistics USING btree (strategyid);
 7   DROP INDEX public.idxadt_biddingstatistics_strategyid;
       public         wayio    false    219            y           1259    22754 -   idxadt_biddingstatistics_timestamp_lineitemid    INDEX     ~   CREATE INDEX idxadt_biddingstatistics_timestamp_lineitemid ON tbladt_biddingstatistics USING btree ("timestamp", lineitemid);
 A   DROP INDEX public.idxadt_biddingstatistics_timestamp_lineitemid;
       public         wayio    false    219    219            �           1259    22747    ix_tbladt_advertiser_agencyid    INDEX     X   CREATE INDEX ix_tbladt_advertiser_agencyid ON tbladt_advertiser USING btree (agencyid);
 1   DROP INDEX public.ix_tbladt_advertiser_agencyid;
       public         wayio    false    588            �           1259    22759 7   ix_tbladt_biddingstatistics_dashboardgraph_adexchangeid    INDEX     �   CREATE INDEX ix_tbladt_biddingstatistics_dashboardgraph_adexchangeid ON tbladt_biddingstatistics_dashboardgraph USING btree (adexchangeid);
 K   DROP INDEX public.ix_tbladt_biddingstatistics_dashboardgraph_adexchangeid;
       public         wayio    false    231            �           1259    22758 5   ix_tbladt_biddingstatistics_dashboardgraph_campaignid    INDEX     �   CREATE INDEX ix_tbladt_biddingstatistics_dashboardgraph_campaignid ON tbladt_biddingstatistics_dashboardgraph USING btree (campaignid);
 I   DROP INDEX public.ix_tbladt_biddingstatistics_dashboardgraph_campaignid;
       public         wayio    false    231            �           1259    22760 *   ix_tbladt_biddingstatistics_last2days_date    INDEX     r   CREATE INDEX ix_tbladt_biddingstatistics_last2days_date ON tbladt_biddingstatistics_last2days USING btree (date);
 >   DROP INDEX public.ix_tbladt_biddingstatistics_last2days_date;
       public         wayio    false    233            z           1259    22748 %   ix_tbladt_biddingstatistics_timestamp    INDEX     j   CREATE INDEX ix_tbladt_biddingstatistics_timestamp ON tbladt_biddingstatistics USING btree ("timestamp");
 9   DROP INDEX public.ix_tbladt_biddingstatistics_timestamp;
       public         wayio    false    219            �           1259    22761    ix_tbladt_campaign_advertiserid    INDEX     \   CREATE INDEX ix_tbladt_campaign_advertiserid ON tbladt_campaign USING btree (advertiserid);
 3   DROP INDEX public.ix_tbladt_campaign_advertiserid;
       public         wayio    false    598            �           1259    22710    ix_tbladt_campaign_enddate    INDEX     i   CREATE INDEX ix_tbladt_campaign_enddate ON tbladt_campaign USING btree (enddate) WITH (fillfactor='80');
 .   DROP INDEX public.ix_tbladt_campaign_enddate;
       public         wayio    false    598            �           1259    22709    ix_tbladt_campaign_startdate    INDEX     m   CREATE INDEX ix_tbladt_campaign_startdate ON tbladt_campaign USING btree (startdate) WITH (fillfactor='80');
 0   DROP INDEX public.ix_tbladt_campaign_startdate;
       public         wayio    false    598            �           1259    22711    ix_tbladt_company_name    INDEX     J   CREATE INDEX ix_tbladt_company_name ON tbladt_company USING btree (name);
 *   DROP INDEX public.ix_tbladt_company_name;
       public         wayio    false    599            �           1259    22713 &   ix_tbladt_country_state_city_countryid    INDEX     j   CREATE INDEX ix_tbladt_country_state_city_countryid ON tbladt_country_state_city USING btree (countryid);
 :   DROP INDEX public.ix_tbladt_country_state_city_countryid;
       public         wayio    false    250            �           1259    22712 $   ix_tbladt_country_state_city_stateid    INDEX     f   CREATE INDEX ix_tbladt_country_state_city_stateid ON tbladt_country_state_city USING btree (stateid);
 8   DROP INDEX public.ix_tbladt_country_state_city_stateid;
       public         wayio    false    250            �           1259    22714    ix_tbladt_creative_campaignid    INDEX     X   CREATE INDEX ix_tbladt_creative_campaignid ON tbladt_creative USING btree (campaignid);
 1   DROP INDEX public.ix_tbladt_creative_campaignid;
       public         wayio    false    602            �           1259    22716    ix_tbladt_creative_companionad    INDEX     e   CREATE INDEX ix_tbladt_creative_companionad ON tbladt_creative_companionad USING btree (creativeid);
 2   DROP INDEX public.ix_tbladt_creative_companionad;
       public         wayio    false    267            �           1259    22717     ix_tbladt_creative_eventtracking    INDEX     �   CREATE INDEX ix_tbladt_creative_eventtracking ON tbladt_creative_eventtracking USING btree (creativeid) WITH (fillfactor='80');
 4   DROP INDEX public.ix_tbladt_creative_eventtracking;
       public         wayio    false    616            �           1259    22715    ix_tbladt_creativeproperties    INDEX     x   CREATE INDEX ix_tbladt_creativeproperties ON tbladt_creativeproperties USING btree (creativeid) WITH (fillfactor='80');
 0   DROP INDEX public.ix_tbladt_creativeproperties;
       public         wayio    false    258            �           1259    22767 9   ix_tbladt_dealidbiddingstatistics_consumed_daily_dealdbid    INDEX     �   CREATE INDEX ix_tbladt_dealidbiddingstatistics_consumed_daily_dealdbid ON tbladt_dealidbiddingstatistics_consumed_daily USING btree (dealdbid);
 M   DROP INDEX public.ix_tbladt_dealidbiddingstatistics_consumed_daily_dealdbid;
       public         wayio    false    283            �           1259    22768    ix_tbladt_flat_richmedia_markup    INDEX     ~   CREATE INDEX ix_tbladt_flat_richmedia_markup ON tbladt_flat_richmedia_markup USING btree (mediaproviderid, adexchangestatus);
 3   DROP INDEX public.ix_tbladt_flat_richmedia_markup;
       public         wayio    false    295    295            �           1259    22769     ix_tbladt_flat_strategy_creative    INDEX     i   CREATE INDEX ix_tbladt_flat_strategy_creative ON tbladt_flat_strategy_creative USING btree (strategyid);
 4   DROP INDEX public.ix_tbladt_flat_strategy_creative;
       public         wayio    false    298            �           1259    22770    ix_tbladt_isp_countryid    INDEX     L   CREATE INDEX ix_tbladt_isp_countryid ON tbladt_isp USING btree (countryid);
 +   DROP INDEX public.ix_tbladt_isp_countryid;
       public         wayio    false    309                       1259    22771    ix_tbladt_lineitem_campaignid    INDEX     X   CREATE INDEX ix_tbladt_lineitem_campaignid ON tbladt_lineitem USING btree (campaignid);
 1   DROP INDEX public.ix_tbladt_lineitem_campaignid;
       public         wayio    false    639                       1259    22725    ix_tbladt_lineitem_enddate    INDEX     i   CREATE INDEX ix_tbladt_lineitem_enddate ON tbladt_lineitem USING btree (enddate) WITH (fillfactor='80');
 .   DROP INDEX public.ix_tbladt_lineitem_enddate;
       public         wayio    false    639                       1259    22724    ix_tbladt_lineitem_startdate    INDEX     m   CREATE INDEX ix_tbladt_lineitem_startdate ON tbladt_lineitem USING btree (startdate) WITH (fillfactor='80');
 0   DROP INDEX public.ix_tbladt_lineitem_startdate;
       public         wayio    false    639            �           1259    22772 %   ix_tbladt_lineitem_vendorcost_enddate    INDEX     h   CREATE INDEX ix_tbladt_lineitem_vendorcost_enddate ON tbladt_lineitem_vendorcost USING btree (enddate);
 9   DROP INDEX public.ix_tbladt_lineitem_vendorcost_enddate;
       public         wayio    false    322            �           1259    22774 (   ix_tbladt_lineitem_vendorcost_lineitemid    INDEX     n   CREATE INDEX ix_tbladt_lineitem_vendorcost_lineitemid ON tbladt_lineitem_vendorcost USING btree (lineitemid);
 <   DROP INDEX public.ix_tbladt_lineitem_vendorcost_lineitemid;
       public         wayio    false    322            �           1259    22773 '   ix_tbladt_lineitem_vendorcost_startdate    INDEX     l   CREATE INDEX ix_tbladt_lineitem_vendorcost_startdate ON tbladt_lineitem_vendorcost USING btree (startdate);
 ;   DROP INDEX public.ix_tbladt_lineitem_vendorcost_startdate;
       public         wayio    false    322            i           1259    22789 .   ix_tbladt_mediaprovider_markup_mediaproviderid    INDEX     �   CREATE INDEX ix_tbladt_mediaprovider_markup_mediaproviderid ON tbladt_mediaprovider_markup USING btree (mediaproviderid) WITH (fillfactor='80');
 B   DROP INDEX public.ix_tbladt_mediaprovider_markup_mediaproviderid;
       public         wayio    false    700            b           1259    22732    ix_tbladt_osversion_osid    INDEX     N   CREATE INDEX ix_tbladt_osversion_osid ON tbladt_osversion USING btree (osid);
 ,   DROP INDEX public.ix_tbladt_osversion_osid;
       public         wayio    false    696                       1259    22790 ,   ix_tbladt_pacing_lineitem_history_lineitemid    INDEX     v   CREATE INDEX ix_tbladt_pacing_lineitem_history_lineitemid ON tbladt_pacing_lineitem_history USING btree (lineitemid);
 @   DROP INDEX public.ix_tbladt_pacing_lineitem_history_lineitemid;
       public         wayio    false    349                       1259    22791 ,   ix_tbladt_pacing_lineitem_history_pacingdate    INDEX     v   CREATE INDEX ix_tbladt_pacing_lineitem_history_pacingdate ON tbladt_pacing_lineitem_history USING btree (pacingdate);
 @   DROP INDEX public.ix_tbladt_pacing_lineitem_history_pacingdate;
       public         wayio    false    349            1           1259    22810    ix_tbladt_siteapp_adexchangeid    INDEX     Z   CREATE INDEX ix_tbladt_siteapp_adexchangeid ON tbladt_siteapp USING btree (adexchangeid);
 2   DROP INDEX public.ix_tbladt_siteapp_adexchangeid;
       public         wayio    false    673            ]           1259    22812 (   ix_tbladt_strategy_adexchange_strategyid    INDEX     n   CREATE INDEX ix_tbladt_strategy_adexchange_strategyid ON tbladt_strategy_adexchange USING btree (strategyid);
 <   DROP INDEX public.ix_tbladt_strategy_adexchange_strategyid;
       public         wayio    false    460            f           1259    22733    ix_tbladt_strategy_coordinate    INDEX     x   CREATE INDEX ix_tbladt_strategy_coordinate ON tbladt_strategy_coordinate USING btree (recordid) WITH (fillfactor='80');
 1   DROP INDEX public.ix_tbladt_strategy_coordinate;
       public         wayio    false    472            g           1259    22813 (   ix_tbladt_strategy_coordinate_strategyid    INDEX     n   CREATE INDEX ix_tbladt_strategy_coordinate_strategyid ON tbladt_strategy_coordinate USING btree (strategyid);
 <   DROP INDEX public.ix_tbladt_strategy_coordinate_strategyid;
       public         wayio    false    472            j           1259    22734    ix_tbladt_strategy_country    INDEX     t   CREATE INDEX ix_tbladt_strategy_country ON tbladt_strategy_country USING btree (strategyid) WITH (fillfactor='80');
 .   DROP INDEX public.ix_tbladt_strategy_country;
       public         wayio    false    474            m           1259    22814 )   ix_tbladt_strategy_creative_isallcreative    INDEX     p   CREATE INDEX ix_tbladt_strategy_creative_isallcreative ON tbladt_strategy_creative USING btree (isallcreative);
 =   DROP INDEX public.ix_tbladt_strategy_creative_isallcreative;
       public         wayio    false    476            n           1259    22735 &   ix_tbladt_strategy_creative_strategyid    INDEX     j   CREATE INDEX ix_tbladt_strategy_creative_strategyid ON tbladt_strategy_creative USING btree (strategyid);
 :   DROP INDEX public.ix_tbladt_strategy_creative_strategyid;
       public         wayio    false    476            r           1259    22737    ix_tbladt_strategy_dayparting    INDEX     z   CREATE INDEX ix_tbladt_strategy_dayparting ON tbladt_strategy_dayparting USING btree (strategyid) WITH (fillfactor='80');
 1   DROP INDEX public.ix_tbladt_strategy_dayparting;
       public         wayio    false    480            o           1259    22736    ix_tbladt_strategy_dma    INDEX     l   CREATE INDEX ix_tbladt_strategy_dma ON tbladt_strategy_dma USING btree (strategyid) WITH (fillfactor='80');
 *   DROP INDEX public.ix_tbladt_strategy_dma;
       public         wayio    false    478            y           1259    22815 )   ix_tbladt_strategy_iabcategory_strategyid    INDEX     p   CREATE INDEX ix_tbladt_strategy_iabcategory_strategyid ON tbladt_strategy_iabcategory USING btree (strategyid);
 =   DROP INDEX public.ix_tbladt_strategy_iabcategory_strategyid;
       public         wayio    false    487            ~           1259    22816 %   ix_tbladt_strategy_keyword_strategyid    INDEX     h   CREATE INDEX ix_tbladt_strategy_keyword_strategyid ON tbladt_strategy_keyword USING btree (strategyid);
 9   DROP INDEX public.ix_tbladt_strategy_keyword_strategyid;
       public         wayio    false    491            8           1259    22811    ix_tbladt_strategy_lineitemid    INDEX     X   CREATE INDEX ix_tbladt_strategy_lineitemid ON tbladt_strategy USING btree (lineitemid);
 1   DROP INDEX public.ix_tbladt_strategy_lineitemid;
       public         wayio    false    677            �           1259    22738    ix_tbladt_strategy_postalcode    INDEX     z   CREATE INDEX ix_tbladt_strategy_postalcode ON tbladt_strategy_postalcode USING btree (strategyid) WITH (fillfactor='80');
 1   DROP INDEX public.ix_tbladt_strategy_postalcode;
       public         wayio    false    498            B           1259    22739    ix_tbladt_strategy_regions    INDEX     t   CREATE INDEX ix_tbladt_strategy_regions ON tbladt_strategy_regions USING btree (strategyid) WITH (fillfactor='80');
 .   DROP INDEX public.ix_tbladt_strategy_regions;
       public         wayio    false    682            �           1259    22740    ix_tbladt_strategy_retargeting    INDEX     e   CREATE INDEX ix_tbladt_strategy_retargeting ON tbladt_strategy_retargeting USING btree (strategyid);
 2   DROP INDEX public.ix_tbladt_strategy_retargeting;
       public         wayio    false    504            ?           1259    22817 "   ix_tbladt_strategy_rtpe_strategyid    INDEX     b   CREATE INDEX ix_tbladt_strategy_rtpe_strategyid ON tbladt_strategy_rtpe USING btree (strategyid);
 6   DROP INDEX public.ix_tbladt_strategy_rtpe_strategyid;
       public         wayio    false    681            �           1259    22818 &   ix_tbladt_strategy_sitelist_sitelistid    INDEX     j   CREATE INDEX ix_tbladt_strategy_sitelist_sitelistid ON tbladt_strategy_sitelist USING btree (sitelistid);
 :   DROP INDEX public.ix_tbladt_strategy_sitelist_sitelistid;
       public         wayio    false    512            �           1259    22819 (   ix_tbladt_strategy_vendorcost_strategyid    INDEX     n   CREATE INDEX ix_tbladt_strategy_vendorcost_strategyid ON tbladt_strategy_vendorcost USING btree (strategyid);
 <   DROP INDEX public.ix_tbladt_strategy_vendorcost_strategyid;
       public         wayio    false    520            G           1259    22741    ix_tbladt_strategy_weather    INDEX     t   CREATE INDEX ix_tbladt_strategy_weather ON tbladt_strategy_weather USING btree (strategyid) WITH (fillfactor='80');
 .   DROP INDEX public.ix_tbladt_strategy_weather;
       public         wayio    false    684            T           1259    22820 2   ix_tbladt_user_notification_message_notificationid    INDEX     �   CREATE INDEX ix_tbladt_user_notification_message_notificationid ON tbladt_user_notification_message USING btree (notificationid);
 F   DROP INDEX public.ix_tbladt_user_notification_message_notificationid;
       public         wayio    false    690            U           1259    22742 *   ix_tbladt_user_notification_message_userid    INDEX     r   CREATE INDEX ix_tbladt_user_notification_message_userid ON tbladt_user_notification_message USING btree (userid);
 >   DROP INDEX public.ix_tbladt_user_notification_message_userid;
       public         wayio    false    690            Z           1259    22821 +   ix_tbladt_vendor_product_costtype_productid    INDEX     t   CREATE INDEX ix_tbladt_vendor_product_costtype_productid ON tbladt_vendor_product_costtype USING btree (productid);
 ?   DROP INDEX public.ix_tbladt_vendor_product_costtype_productid;
       public         wayio    false    692            [           1259    22822 *   ix_tbladt_vendor_product_costtype_vendorid    INDEX     r   CREATE INDEX ix_tbladt_vendor_product_costtype_vendorid ON tbladt_vendor_product_costtype USING btree (vendorid);
 >   DROP INDEX public.ix_tbladt_vendor_product_costtype_vendorid;
       public         wayio    false    692            ;      x������ � �      <   6   x�34�t�4204�54�50S00�2��20����Y�X"�C��b���� դb      2      x������ � �      �      x������ � �      �     x���Ok�0���bo��'���Uv[�[;d�����&t���_a^c�$�C�sH��D}R�[�VO���i��xFr&�A$��2�?�A�jlLk�7I◔fa���*�Qڗ�a;���:h6a9���W���X��{g+	jg=�I�v��wH`ktߕ���/E�t�ŗ�t���_
Q�����@s�'�h~����NJ�M˷"���!�x��ua���%��P��W��x~}b;R wn�Y��EX���4�=�1���[�/t��7(RXV      3      x������ � �      �   �  x��Sێ�@}�|?2�\ ~�Vm��X���@���*�J����$Z��4�J��s|l8x�Lz��gkV_�&�$č�"Kb�[bBC��}6�0v}�d����?��Fb���ee�hfu--�ڼ/^�d�x�[e�V�.�$a�WnR�XU��K�	�kэZ�� N�$�[�t&S�t���ah�}���~��2W7.47�-�)Y�X������ٱ.���ڍ�9������LӔWKp�}^/w�)X�K%#1�B���k}�.7���8��n'wȻ�.��߉蒍(�
�\����.��y�t9R����ZD,���L�(�y�$�f"�a_�3#g��Jۍ�鐸lo%cg=�q�/�˝@�O��߇�)�����#�Λcƽ\4G3��x̅ �_R      8   3   x�Ʊ  ��9Nb���@��� ��]'��؏�p1�O����X      :      x������ � �      �      x������ � �      <      x������ � �      >   0   x�3�O�����#�8��uu�-�LL� r\1z\\\ �(�      ?      x������ � �      �      x������ � �      �      x������ � �      A   0   x�3�,H,*�K-RH��K�MRũ�
�)@FbRr
g�q��qqq 2C      C      x������ � �      �      x������ � �      �      x������ � �      E      x������ � �      F      x������ � �      �      x������ � �      H      x������ � �      J      x������ � �      L      x������ � �      N      x������ � �      P      x������ � �      R      x������ � �      T      x������ � �      V      x������ � �      8   $  x���MO�0������G;=\�LlH�!i�ߓ��'h�J�:}��qF����x��E�D -�����-P �@�8��z��ڄ�]���v+)*��;�3�kx�?����k���7���Ke���_^����m�<xm���X&�{$$O�L�X.Z��%<lDK���q�"L�]�%M�G���C�31��c2v�J�	\����i�W�ru&��b#��f)6�j(�zZr�T�GJy3����X��t�^sr�4��c���J��q����������      �   N  x����O�P���_�?Ps��A۷5Mt1L�M$D[T����:�/ps�8�o$���i�Ai 1\���|�� $��9�禙��A�H0�� 9��C��9�����Nj@Mj�b�|3�@�oO��]�r_|L��W�,�7_�׳��<�J0XU1H�b�F̼4YZa�J���?�&�:�����l���؊�%It�� ��8�ܾ��m�@������=���ӭ`hV�-�f�FYb��]?��h]
nx�/�-�:�<����,<kd�jE捩��k������d�ߧ�~��|_�?+��g�v�݆̟���	�v���t��      �   ,   x�3�4�4�2�F�\��@��r,9-A���6����� ��      Y      x������ � �      [      x������ � �      ]      x�3�LN,*�L-RH��!�=... [��      _   #   x�3�LN,*�L-RH��#.C�x�x� ��      a      x������ � �      c      x������ � �      �      x������ � �      e      x������ � �      �      x������ � �      �      x�3�v���.C΀ g8/F��� y��      g      x������ � �      i      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x���k
�@�ߺ
70rΝԜE�!�
�� A�}wHm(��e�y}�D�Η�|sk�]��aO?�0�$�����g��1s�5�c���v��}wL�����!b��`ټ�X��:�N��b�I�;���CN�)洓�"��@0�+����¡AY�B5���@��vU�U���[U�j��iۇ�I�_��T�e�
:ʤ��8��ؐ2      �      x�3�LLI3�,�����  �      �   Q   x�-�=� ���aL��cx��vhB�H%z{ߛ!VK���}g�3i���nmh�e׻��q귃��cC3с8��/F      '      x������ � �      s      x�3�4���CAP.c�R1z\\\ jR�      t      x������ � �      u      x������ � �      v   +   x�3��É�y�%�e�
�E�`A>D/�2 ����� 
�"�      �      x������ � �      �      x������ � �      x      x������ � �      z      x������ � �      �      x�3�,�,HUH�,����� $��      �      x������ � �      |      x������ � �      ~      x������ � �      �      x������ � �      �      x������ � �      �   !   x�3��L+J�M5�L*UH���,����� [="      �      x�3�,�/-2�,�����  c      �      x�3�42�,����� ��      �      x������ � �      �      x�3��MM�L,.-JN�4�,����� Mi�      �      x�3����M5�4�,����� $�{      �      x������ � �      �      x������ � �      �   "   x�3�L,)1E�I�%�
��1~�%\1z\\\ ���      k      x������ � �      �      x�3�460�225 ќ ��+F��� 5��      �      x������ � �      o      x������ � �      q      x������ � �      �      x�3�,�/-JN-�,H5�,����� K��      �      x������ � �      �      x�3�4�,K�K�/2�,�L����� :��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      $   /  x�m�Mn�0F��>A���M�FU]d㈉@���&�/6&J�%���7��I�?�s��-�Gւ#d"iX��%p�n3��Ⱥ� Y�sJziA�,@ĕ��,̜����8x��ѢL����r��rq�Y����%=�X�:;��05N:�-W�;KS ˶�l�3�Ѻ�W_��gaJ��pe7�����pn�ɢr������Z�Z�6z)�=k76B�F<��_�6:�W�����6���o��_��9'�:/���C$�Q���V�g#�hp�������t~C�4��c      �      x������ � �      �      x������ � �      �   (   x�3�4�L1�L�M4���,�2�4�L1	Bb���� �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      3      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   V   x�3��M�IU�040PU 159c�8K�9��S��"c��[j.\Ȉ�p��M8���R�R�R�J\�R�*��`�1z\\\ 4�!�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x��\�r�8�]�������$�ɥl�Ue��\vDGo 
�Ц�U��������ă�J�Q�*�����Hd"�
<�(ּ�yV�������{䪩x����H�[��'Z~��k�r-�K�����8��f%���!��dB�e��n
�TS^lYQKڙOH$��q��[�ہ��R'�f9[���;��߉��;E�.C�$>9�4��}��B��1y��|�B��K��<��3��.N3 ?W�ы�K�mx��������L�ZlE�?�qH�i�X)A���-?G�O�9�E���:;D	LP��8͝)_*�o�R�X�����t	C����ߝ'��{���j*&�"�ٚ)�g5Ԏ}��䙆���C�����2���8��#>�S�3Zf�	-�O��F䴬6|�g�X(��hʪjli%��n����,&7�&�����x�EB�\�9Ɓ�������S�gCc��wLj��ݠ=!�%��5sP6"�P߆FҾ�{pJB@8ꃹ�@�[^ ���g��2��)\؃��Zs (�~�`�rS�s^mZ9���H�uC׺����9�!�G䮤��Tvi4&�b�*�jۄ�c#����x^7˽�M5�Eb�S��(Қ�A���e����3�ial7B���$I�����vOQ]�((�J��(;K��U�c���e�j�	.q"2��~?�]�G`�h!���,�˫X.s�X#X?�Y�Gn�%+�;�N/�q!�5:۽BǗЇE���e��ɗzHɥ������+4'��I:����r�,�4F��3���r�k����� 	��A^����F���'���HX��؈6���n�<�%���>��):�njt �S��gV�D����t����׋�3�>���$=���v>��%x:�Z�g2���1!�{u���`\��|7ʿ"���x�	��-(�Ah(JQf��\ÞX# O��yfzV �%dΖmw0�����M&��i�S���fe�;�	&��Eޠ�0H�0���D�)3f��Me7h�u;i��$JF�� ?%w�,ф��alu�C�%J��^c"; ��A:������^��S��v�<�)�N��qUo�Tb����P��D�1n9�w9���rigj/��Lf���Û��6$���u���?�0!��>�������������`аD�7e�w>i�s����7����P�\�5ε��N0 �V��y�8��+`A���#���N\���rL�K7s:M*!d�b���b�7NavoJQ�L���lѧQ���n`��BͱU�N &a�r��:�����	<� &����� ��]X�3�z<]4������`K��}����K�)����B�e��7^��aB�
�1L\�n���Pa(�?��84�g�~K�mX5~�k\b�=�I/F<��C�u�NBrw�2O3�W�ʛo���=W{Lg�d��?9�Nf�#	�<gl�.s�@{��dΊu�=
����wC;����M���1u�gJ.�DJ�G���XXP��x<-�9���s�{�N�'�
b�!���(V��fy=,��+��̬ς!���@�6{V��;�1{rA8 �����z�Z�#
X��f��"��4��h"�ٗ����1�bzg|���Ga�p�#VX#�B�#����@`"3��	�n�e (�ɯ^�.��jE���AVXӒ��#AOz�=4��C��}�� <Gqm��9xp��j�?G��tG�s�Fp�1!��g��Y�:J?����k!mJӼ34X�n��ܰ`!_��4�d����5,�+Z.X��\��y���b�(�����+z��9-�B�c�,k����9�%{-V+�Ư�*�9M�g��GMy^���
���9����GAQ�q�|!;8?�Za�s
ƣ��Nke�l?�)Z�7œ)�4�m���"<Ӣd��:���`B��|{z]ҕ��"	BVA˥sG���>7����%|��al���5l��@R4ڋyb�{S�x�!��e���\Н�Ԛc�&s�1_��?E�^Dc���-�"8��B�%��>���S��n'�Vy����	i-��&N�d�Alw|����2&�nwҐ/�H/��<���Kkր�Yt�8x����$ح3>�嘊P�+���{�}�s�Sy���7`�G^����؅xF�"��ƌm`��0ĵ���(!Ot_�19M�)�ebJ�,g���T����j���H"�Bă��5� !�dx�]ɳ��:��)�������A�VA�X�/yP���������e�޵yw@ӑG�X��a#���F-�������f�m2Q����.S%��ڬ�?+�K���T��ǝ�e���i�nz� ���!�->9$�[���銩h�YZ�~�� �����,<&R ��c�ϲ���lpۚ��r3��,:��Ʋ����vr���K&���U]6��F���㦐�o���h,6��F��_Ν��L��e% s��I���m��\n ��T�J�]����P�$_�D����.���[��#$��PUMK�~�����2���/E���#"PX����B�|JɣȎ��)=!?zz�a�C�5�iG�Ncg>ɛL���ͨ��9�� Y8�3�S�n����/t�J	�z=��
�Q���KDXfl�f�mS,5>��:���\���Tl�%8�PUS���<%?w�A�������7u�?Ü#�� G��j^2�Nf/0]�� �2���l���~[�_Rlh����k��\dxr�!��%��W޷�ioQح�x�����=
B��)�Kt�;]�*ac��R����?{�)y5�@�GX��n���vsbo@��	ygK��L�q�������~��A|�P�m���Ն.M�R2�ь�%�[��{��>��4&���� �	,���۰ި&�=P-�2���1<�rS�q�ꃍ
 ����Hx��C,����w�jZH��@G���8D^'�A��wCK�l�Ȱ&��>���ȯ�ᶟ0`(�"G���B�b�������T��z�	"�ɹ��~�;Af(��1�����|&�a�UP��;�bK�'`,�]te%[��>{�z�B3�ذ�ݡI$29Z�<� ��)
R��f��Dj#\@H/6�C�ׇ.�FN�!��e�%,+J$%��L���ug
��7f�͂:��c���r��vx.�A�Lr�ށ�6��B|���s��m�7^m:ӰU�x0�����	��<�P7L\�lZȟ���;%�+�M���� �I��RՉ�L2����|a2q:W[aH��@^��6ף�����r��ꕁ�s
�yBd�J9d;8~�G��Ъ-EH��i�q�9����;�;:z�wQ�K�}]ĕ�@� �ꃏ�釲S�1g�Q�r���J,���h��v=��}:���An�c:���+��Az�I�r����̳���*aCc8�?�vжUE�
s��{bʶ�"�*K�\�
�Fכ��A��"���$��Wց�!��e�F�6�3�owf;��S�$�� lW%rP�C�Z�k+3H�uη��T���zV�v,��-��Ђ�wp����:�c���ȱ��t��	�ά�"����T���x�C�}�Ξd�i~��]��y	��z/O�o)���������ͳ���# N�l�b{Y�@g��*�\-r�Ns?1�p\��`�nW7Vt΃}r���ۆ*�/g�+z@��̹���>�_.��<�4��b�x65D\�CLH�Y�'�ΜeM����<j$c��γ��jC��<I3�K�	.17A���+O\��(J�Ƴ�������#﷨}������H���3�ػ5�φ�!yz��O�C�I���(���C<�sL�>�ՔA&l�Z�/�{�G�_�r�+k8�t�ͯO�;���301�a;����8�]�WR�cI��������ӣ�� ��_�6�_PEH�x�,�O�\<�!�1��<�t@��*��b)��a��nc���-��f!�2I�qk��ꎕ���߄�5�k�����.g[p-h �  �wX�æ�'���9����Fbëd��/쓳V�����c*
3�%��MiJₚ�P֋Y^����Ĕq�r��$n�����R���&�1%�5]���\,��S|3�G;�h'<h\^�)dǟ�l,����,�����&��,C"OM:�;����'�3�ג~2��<�|��f�O
��)2��~NQʦ��a��j�����ܑ �q���H��哫�яշL<,5Y؀L|�s
�����9U��ֲ,J�ޖ>�slC!�m�k����d��c�o� �\�}4��,�7M)vF8�=|�n�#x��B	"y�� ��A��[!�j|�j�E�F̮-	H�!%�K3t|z
q�v_,����(ی,�4\���H�'7o α4l���o��5ۜ 	ûr{��3�q3�����]��я-�0�b��כ�q�m9�!y�0��i���l���J� [���P4П��h��H�A����j:t��Dy[�@���q����#^%4��0|XմVʓ���(��e}��8�"O��͔Lw��nͭ+����z� �i���A�)v��e������J^3àt��BK�GM(B�o�um } ����D���"�a����r��M{p1�-�k�?��qH�ץ=_�P�4p� �`�|9��]`�ԩv{I _�دN`5��s�F?�
f�*�<r��'jMn��P�6.�5���V.�����u���g��g�a�����
\�u)�
k���v|�=^\��C�ܞgB�n���?�j̠{�@���Nע}%����/j|^�y��(��w��.FXt��E�ͳԌ��l���9ی��[���\�}[����/��-�/cНy3=�Vy
��-1h�'S�Ro�{���OH࿵�{�v�Ǹ���wy�/�&U,7��$��C>�H�/�<|~��ch�z �� 1$4Kz�,�N@��F�,��i1~�Y�7���dF���F3�w�X3*�v�=dzl-J���9������)�!�Ѽ��/��-@ex���UR�	4�W�J���_w׊��z�YEt��w�W̩���{�vVC�#rS���;Д�GE��a-y������x�hݗ�:�SV8�
ANKL�O\���n$�t�L˨k���<�� _�u���j�ѝ|S�w�A�'��K��n�;�4��ݾ��_
��5�F\�N p��c�'�w�aY��߿���o����      �      x�3��,.P0��#.��!�X� �E
      �      x�3��,.P0��!�=... 5(      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   -   x�3�,-�t�K��,��(-��,�2�L��t���K-Nrc���� �6
�      �     x���K��0 �3��z��<36��6׭"�zڕPv��(�v������0u ��H-�@V�3��?Wem�}t��)Z���|u8�k�s�l����.߼�"Z�(�/��Ƿ�Ka�|�{�P@D(B��\��Ś���K���!n0@��r�ܵH��)vX����[n/�K�8I�"�T{�a�|b~� 켷\FB�zt~l�:p��b+���ɹ&���sbv����g�t�3�T����
4�1QSə��z���	os�r���i��ʮխ�6�Mq���{ަy����j��g=���S-cM�j�t<��a�bvG�5�������R��F�H�Z�p�^}�v�����DK�Ym�m+�j�9U������x#ՏB�5�iGi�9�{�`�劉W;�T�18�	-����<ٲ��
�~��f�Q-�)�Yk\��[�ֈh��v�p��n�?��(�\�l�r)��* ��.�k<N�>󿆊CA�N�y��(p9TPa%n{�[Å��BD]���������7*�w���b��~J�(      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   '   x�3�L�OIM��M,�.-P(�,HUH�,�L����� ���      �      x������ � �      (      x������ � �      )      x������ � �      �      x������ � �      �   %   x�3��5���/N�LVH�,�2��5����=... �-	t      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �             x������ � �            x������ � �            x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      4      x������ � �      �      x������ � �      �      x������ � �      %      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      7      x���K��F�D�qr� )f�c_K�k�i ��~Q�K������
"��SM�z�_�����-~o����/�}��a��>^���_�鿾�ϯ��W����޾��[�����߿��������������V�Θ]2�1�I�tƌWz1�1S�j&cɘ�1�d�ɘK2�b�-s#fJ��*��/�
�����B�1�P�dL*��
*��
*��
*��
*��
�w��+�^��SR��SR�i�)��tƔThcJ*4�1%��1%��1%��1%�T�K*��P�ThQ�.�ТBݿ�ŤB=$cR�.�ТB]R�E���B�
uI��
-*d�
m*d�
m*d�
m*d��62��B�
��B�
��B�
��B�
��B�
��B�
��B֨�+*d�
��B֨�+*d�
��B֨�+*d�
��B֨�+*d�
��B֨�+*d�
I�ϬS!��u*$Y>�N�BR�N�BR�N�$;r֩�dG�:���Y�B�9�TH�#g�
Iv�̨�dGΌ
Iv�̨�dGΌ
Iv�̨�dGΌ
Iv�̨�dGΌ
Iv�̨�dG��]!Iv��cJ*�1%rcLI��SR!ƔTȓ1%����
�dLI�|1��BN�$;rTH�#gA�$;rT�K*T�K*TH�#gA�$;rTH�#gA�$;rTH�#gA�$;r�TH�#gI�$;r�TH�#gI�$;r�TH�#gI�$;r�TH�#gI�$;r�TH�#gI�4;r�
iv����*�ّTH�#7��fGnP!͎ܠB��A�4;r�
iv����M*t�t�I1�TH��7��f�oR!�*ߤB�U�I�4�|�
iV�&��:� j1�P,ɘ��b�E��IƤB�%cR�4ɘT(]2&ʐ�I�2%cR��1�PJ*��PJ*��PJ*��s�E2fgLI����&����$�vB�U>Řɘ�
a;!�*�b�ɘ�
a;!�*�b�͘�B���E!E,�Q����7*���F��"�ިPW���Xz�B]KoT�+b�
��: �bR��h�w*�M�~QH�N�L�N�L�N�L�N�L�N�L�N�L�N�L�N�LR!�B&��Q!�TȨ�K*dT�%2*�
rI��
��BF�\R!�B.��Q!�Tȩ�K*�T�%r*�
9
I��
��BN�BR!�B!��S��TȩPH*�TH�q�A�$�TH�q�A�$�TH�q�A�$�TH�q�A�$�TH�q�A�$�T(���Y,fR!�b�'�,Fz^���	��,F:�R���NH�b�c;!5�����,F:�R���NH�b�c;!5�����,F:�R�q8��f�pP!���B���A�4��
i6�l*��8�TH��7��f�oR!�*ߤB�U�I�4�|�
iV�&Ҭ�M*�Y�TH��7��f�oQ!�*ߢB�U�E��*�ԋI��*�`L*tV�cR���'�
�U>��T��	ƤBg�O0&:�|z17:�|�1��Y��I�\R�M�BR�M�BR�M�BR�M�BR�M�BR�M�BR�M�BQ�hT(�F�BQ�hT(�F�RQ�hT(�F�RQ�hT(�F�RQ�hT(�F�RR�N�RR�N�RR�N�RR!l'|�Q��)���WGN0�`LI���0�:r�1cJ*���ՑӋ���Ց��SR!l'����`L*�%2*�%2*�%2*�%2*�%2*�%2*�%r*�%r*�%r*�%r*d�
92I��
��BN�LR!�B&��S!�Tȩ�I*T�$
*d�
���EP!Ɏ\���EP!Ɏ\���EP!Ɏ\���EP!Ɏ\$���ER!Ɏ\$���ER!Ɏ\$���ER!Ɏ\$���ER!Ɏ\$��^L*$Y�A��l��ŤB���A�4�㢐��㢐��
i6�l*��8TH�q8��f�pR!���B���I�4��
i6'�lb;a�4��N���Cl'L��!��h��	S�q��)�8�v�mb;a�6��0E��N����E�4��
i6�l.*��8\TH�q���f�pS!���B���M�4��
i67�ln*��8�TH�q���f�pS!��a6*$�8�F�$�٨�d�0�lf�B���lTH�q��
I6�Q!��a6*$�8�F�$�٩�d�0;�lf�B����TH�q��
I6�S!��av*$�8�N�$�٩�d�0;�l�Q!�*_��ȥQ!Ɏ\��ȥQ!Ɏ\��ȥQ!Ɏ\��ȥQ�������
IV�ҩ�3���S!��a:�l�S!��a:�l�_�4�/
I�����l&��f�0���4��턥�8Ll',��ab;ai6�	K�q��NX����v��l&��Y�;���
I>`7�
I>`7�
I>`7�
I>`7�
I>`7�
u�GfR��^�Lj1��dG.�
Iv�2��dG.�
Iv�2����kR�I�4�	�
i��l'�o'?�~�ڂ1�1%�߷Θ���߷Θ�?�15�'cj��/Ɣ|����pƔ|����pƔ��|�N8bj��&��!M*��C�TH��4��fiR!�ҤB�=�I�4{H�
i����!-*��CZTH�����fiQ!͂ϢB�͙E�4�3�
i6g�l�,*�ٜ�TH�9�`��lμo'�1%z�N8cJ*���pƔT�};�)���v�SR���3��B��	gLI�޷Θ�
��SQ�Ѩ��V�hTHr�k4*$��5����
Inu�F�$��F�B]Q�Ѩ��V�hTHr�kt*$�C�
I��F�B�=�ѩ�dit*$��5:���?�����J�������S�i!��l�����S���v�wL����	�1%_�~n'|ǔ|A����S���v�wL����	�1%o��
I֥�Q!ɺ�0*$Y�F�$�Ré�d]j8��K�B�u��TH�.5�
I֥�S!ɺ�p*$Y�N�$�Ré�d]j8�� �\̠B�/�{��*���kGP�T<\;�
����T��!	ƤBgI0&:{H�1�:aɘ�1'Fl�T�x�Sq�adgLI��SR�tƔT(�1%�dLI�r0��BI���BI�$��FR!ɡ�1�����THrhh*$944�
*�%T�K*4�P�ThP!�ThP!�ThP!�ThR!�ThR!�ThR!�ThR!�ThR!�ThR!�ThR!�ThR!�ThR!�ThR!�ThQ!�ThQ!�ThQ!�ThQ!�ThQ!�ThQ!�ThQ!�ThQ��ThQ��ThQ��ThS��ThS��ThS��ThS��ThS��ThS��ThS��ThS��ThS��ThS�TTh6*��
�F�$;r�Q!Ɏ�lTH�#7����F�$;r�Q!Ɏ�l�
}ou	�\����l�1%�1%�1%�Ƙ�
ugLI�z0��B=SR!l'�fGnv*$ّ��
Iv�f�B��iTH�#7�
Iv�Q!Ɏ�4*$ّ�F�$;rӨ�dGn���M�B��iTH�#7�
Iv�S!Ɏ�t*$ّ�N�$;rө�dGn:���M�B�8J0�
�;r�NL�s�ߤ�-����se��p[�����}a���ù������s���s��Jv{���ܤ���ڍx87��=��pn�w{e��������ù�����s����|禗����}��A/oo�=�;���q��s���k禗����M/o�>��^�|87����pnzy{B����2֫����������ù/^�p~���k�禗��6�pnzy��禗��G�pnzy��禗��X�pnzy��禗��i�pnzy�!�禗��z�ln�o��D���5��>��P�ù��kx���(݇s's��~�a���]�K������>�{3w/����އs���O�}87���H߇s�����}87����߇s���O~87��5�\���s��M/o?8���������ͽ���G?��^�~��ù���?��^�~�ù����?��^Z/7��^nzi5����vm�����Fy5zY������G^�^��#�F/k�zW��5z��������e�^�j��F�w5zY�׻����]��e���2ګ�'Y�^��Q�N/o��>��^���N/o�?��^�譯N/k��W��5z�����e��Fo}�����v����]��q_e/�+n=������Fo}�<s���e�ϕ,��^�8'��^�8'��^�8'��^�8'��^�8'��^�8'�� �  ^�8'���e��*�xY�
�>�qN`a�'��X���"��}��9��}�(rN`a�'�sM/la�'��oX���"��}�<�P��ɸ�.q�/^ָ?�����~�\��q_����y�����y�����y�����y�����y�����y����׸?IzY�<�JzY�<�JzY�<����y�5�e��$k���I֠�5Γ�A/k�'Y�^�8O���q�dzY�<����y�5�e��$�^9O2�e��$�^9O2�e��$�^9O2�e��$�^9O2�e��$�^9O2�e�s�^9߰�e�s�^��/zY�o��e�����E���^��/zY�o��e�����E���^�ozY�G��e����Ezԛ^�QozY�G��e����Ezԛ^�QozY�G�ۻ���ѣ����"=�}�,ң����"=�}�,ң����"}�}�,�G����"�ލ}�,������"����e�~����F?vwzY��;��яݝ^����N/k�cw��5���������e�~����F?v��я�F/��^�6zy�c+䦗g?�Bnzy�c+䦗g?�Bnzy�c+䦗g?�Bnzy�c+䦗g?�@n��^bt;��^:��^:��^:��^:��^:��^:��^:��^:��^������^�أ�A/���A/���A/���A/���A/���A/���A/�W؁�A/��`��Nz�5^O�^�x���Iv�ˬ�s��2k��&�������
X"�`�����_=�
�s׸�ž����ȍ}���ë��3w��X����^����5z��Uzx�^��zY��7�e�ޠ�Ezx�^��MzY��7�e�ޤ�Ezx�^��MzY��7�e�ޤ�5v*���5v*���5v*���5v*���5v*���5v*���5v*���5v*���5v*���5v*���5v*���5v*����^�Yi�����]�zozYc�oozYc�oozYc�oozYc�oozYc�oozYc�oozYc�oozYc�oozYc�oozYb�o�F/K����e��#7�,��w䦗%v�����Ďߑ�^���;r��;~GnzYb���M/K����e���:�,��w�~�r�J�����kx�}���箣@�`�
��������������=���Ƚ��j����%rc�g��Z"wgۘ{��M/m��M/m��M/���F/���F/���F/���F/���N/���N/���N/���N/���N/���N/���N/���N/���N/���N/���?�}��G�~�F�ܝ���������νk�v�>?g��;���ȝ�m5r���'sG�܋��F��ܣD��lr�K��e�K��e�K��e�K��e�K��e�K��e�K��e�K��e�K��堗^��A/����^z/��^z5������׏?���.�]s�_e����D�L����f�s���ÙhXԸ�4������OQ��kҧ#�ǯ%����bO|�Z^\�q�:/�����s-���u-/�����1�ŕ���b������R�=ƺ�3?~-�ŕ�{�Ş������ŕ����ŕ���}8�Ō�Y�ŕ}��Z^\ٟ�=G3��{�EW�}�Zn��5>o�t���韕M3�L�ÙhFZ��c���?~-�Jz�kIW���a�7]92}��{q%j|/�ħ�eoW�µ���J~�Z^\5��Ş��kyqeָ�{���ŕg�{�س>|-����~��w���      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      *      x������ � �      �      x������ � �      �      x������ � �      +      x������ � �      �      x������ � �      �      x������ � �      ,      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �      �      x������ � �      /     x�m�Kn!D�݇�<x�[bh�[�3<��H}�[����e�*J��@!�%�p�Պ��&v���h`a�7����g#Y�~�ҸR������)U�u<p�5h��CN$�%S�C/?��Ţ�s���Np�6m�ڑR�a�KJ�� s�)�m3��б-4{doRhΥu���(�r���#;X��&�������SQbN�ry��pf���ӻv��t���l�=��Z�x��ڵ�Riz�W[4��]m�ϵfǺWNh������ͨ]J�����D�����             x������ � �         !   x�3�4�404�tJ����K�,�4������ EU.            x������ � �            x������ � �         5   x�3�tL����4�4�,b#Cs]CC]cCs+#+�?2������ �4	W            x������ � �            x������ � �      0   =   x����0�wT� Ю䫗�_G�%�|a�f0Yl�(dT��@-�����1.����m            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      	      x������ � �      
      x������ � �            x������ � �            x������ � �            x������ � �      
      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      !      x������ � �             x������ � �      "      x������ � �      #      x������ � �      $      x������ � �            x������ � �      0      x������ � �      2      x������ � �      &      x������ � �      (      x������ � �            x������ � �      +   B   x�3��K�MU0�,�,I-.QHI-N���4�4204�54�50U04�2 !�D��!D�)zb���� �      -      x������ � �      4      x������ � �           x���]k�0���+���Hl��������j)-�7��;����`���Û�c����ul�E}9�l>���q�*��kx��sQa��A�&ALb�<��a�k(��e���S�����@�6&���7�5�)L왼���RUD����F<$�k</� ����wvؤ]��6�\/N�����y��:=vz��裚���Ef>� &���qjᮏӍ[\�n}�ɲ�G����t>TD�/o��wh˦E�l
p�^��:6)���2�8�5z�ժtS3iE?�a��      9   E   x����0�7*&�����_GP~;'E��v�P8�%�`�QJ���#���]�l��݅�� � K_�      ;      x������ � �            x������ � �      @   (   x�3�42����2�423,9��CNcC0+F��� �r            x������ � �      C      x������ � �      E      x������ � �      G   '   x���  ðw2B\�8�?��`H9k,=x����D?       >      x������ � �      I   )   x�3�42�4�L��Ɯ�@�4����L8�!�=... ���      M   %   x�36�42�44�2��44��iH����+F��� �t      O      x������ � �         ?   x�3�42�4�44�46�L��"6�2��Ő��2�42�4���,A�l�il�Ws� -�      R   �   x�=���0��0�%ǖ�D'��s���8G�s_ˮ�����4�g��^�y��|`ox5'|���Jb�V2,��.�w�m�XSr����� �oIxA|T���޾j��ɷ~�a�fj�jf����"v3�i���f&�l~V�Rx����%��xO���Sr����Y~�1�&�S�      K   $   x���  ð�=G����s 	�K/.|G�5+s      T   ,   x�3�42�4�1�11�1����9��9�8�L8�9�b���� m�3      V   (   x�3�42����2�423,9��CNcC0+F��� �r      X   %   x�3�42���2�42RƜ�@ʄ��H��qqq >r�      Z   $   x���  ð�=G����s 	�K/.|G�5+s      [      x������ � �      ]      x������ � �      _   $   x���  ð�=G����s 	�K/.|G�5+s      b      x������ � �         )   x�3�42��#.#N#cNט�� Eބ��E F��� ��      e   N   x�U�A
�0ϓ�(6���lh/�����vf5��$T���p�8��æ�l�`}���\��̣�<++z         G   x�U���0��.D��D�t�9<
X��N�%H���p8�h���Q��[�fg:�5{
3���~�4�)r      g      x������ � �      i      x������ � �      k      x������ � �      m      x������ � �      o      x������ � �            x������ � �      q      x������ � �      s      x������ � �      u      x������ � �         2   x�3�42���#.#N#cNNSNcc�H	�1���NcCT�=... ��      x      x������ � �      7      x������ � �      =   %   x�3�42�4�1�1�2�46����2�46�1z\\\ R��            x������ � �            x������ � �      {      x������ � �         �  x�u�]j1 �g�)�lf��/"폛���M!�@ٮb�묃q��3��/�M{����:�B�|���5�v��I��r�-w�Ŋ�\�u.R��F⾟m/����iL��6c�v债���A��r ��&�}�(6ŀA�Ҧ��>1�u�eӇ�=��$Ϯ������U�o�c���S֟��k?޴�uDL���X9����&
Y$8��
�ր/H�.�ia���IY�Q�1Z}�^��Uͪq=[��t>z7�#p�n&�&"������c��˻ ;��W���uhj�m0y�$7���ª�מ�![��3�`�AlC�e�Wͧ����`Y�;�j���o'�w�.�.����d1���C����g#	'�]u@8��oR�(�dA��<W)W*�֮���~�K������            x������ � �            x������ � �      ~      x������ � �            x������ � �      1   7  x�]��j1E���L[�R��b���`��T�1��3N�OB�����8L)<��?__v���_?�۫��t��p�¼D��$Ŀ6O�ٞ�����FL�0����	D�D6�]P5bI��IA�Ι�l�1�������v��||���'9�;qMQ�oF����J�<�2�V�f��S��:TT��p(Pb &/\���O~N�&�P.������ގ˴}����K?�Z��"q&�3���پ��L���Y��8�v3�QصT3�b�5�#WbF��8��ͳ�	�i�� w             x������ � �      �      x������ � �      !      x������ � �      "      x�3�,�,J���,����� "3�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      #      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      &      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      .      x������ � �     
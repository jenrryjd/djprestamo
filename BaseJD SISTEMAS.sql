/*
PostgreSQL Backup
Database: jdsistemas/public
Backup Time: 2023-08-03 12:05:24
*/

DROP SEQUENCE IF EXISTS "public"."auth_group_id_seq1";
DROP SEQUENCE IF EXISTS "public"."auth_group_permissions_id_seq1";
DROP SEQUENCE IF EXISTS "public"."auth_permission_id_seq1";
DROP SEQUENCE IF EXISTS "public"."auth_user_groups_id_seq1";
DROP SEQUENCE IF EXISTS "public"."auth_user_id_seq1";
DROP SEQUENCE IF EXISTS "public"."auth_user_user_permissions_id_seq1";
DROP SEQUENCE IF EXISTS "public"."django_admin_log_id_seq1";
DROP SEQUENCE IF EXISTS "public"."django_content_type_id_seq1";
DROP SEQUENCE IF EXISTS "public"."django_migrations_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_administrativo_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_cambioclavepersona_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_canton_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_cargodoctor_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_categoriareporte_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_categorizaciondoctor_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_doctor_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_genero_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_gradoocupacional_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_gruposmodulos_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_gruposmodulos_modulos_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_modulo_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_nacionalidad_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_paciente_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_pais_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_parametroreporte_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_parroquia_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_perfilusuario_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_perms_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_persona_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_personaestadocivil_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_provincia_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_prueba_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_reporte_grupos_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_reporte_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_sexo_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_tipoparroquia_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_tipoperfilusuario_id_seq1";
DROP SEQUENCE IF EXISTS "public"."jdsistemas_tituloinstitucion_id_seq1";
DROP TABLE IF EXISTS "public"."auth_group";
DROP TABLE IF EXISTS "public"."auth_group_permissions";
DROP TABLE IF EXISTS "public"."auth_permission";
DROP TABLE IF EXISTS "public"."auth_user";
DROP TABLE IF EXISTS "public"."auth_user_groups";
DROP TABLE IF EXISTS "public"."auth_user_user_permissions";
DROP TABLE IF EXISTS "public"."django_admin_log";
DROP TABLE IF EXISTS "public"."django_content_type";
DROP TABLE IF EXISTS "public"."django_migrations";
DROP TABLE IF EXISTS "public"."django_session";
DROP TABLE IF EXISTS "public"."jdsistemas_administrativo";
DROP TABLE IF EXISTS "public"."jdsistemas_cambioclavepersona";
DROP TABLE IF EXISTS "public"."jdsistemas_canton";
DROP TABLE IF EXISTS "public"."jdsistemas_cargodoctor";
DROP TABLE IF EXISTS "public"."jdsistemas_categoriareporte";
DROP TABLE IF EXISTS "public"."jdsistemas_categorizaciondoctor";
DROP TABLE IF EXISTS "public"."jdsistemas_doctor";
DROP TABLE IF EXISTS "public"."jdsistemas_genero";
DROP TABLE IF EXISTS "public"."jdsistemas_gradoocupacional";
DROP TABLE IF EXISTS "public"."jdsistemas_gruposmodulos";
DROP TABLE IF EXISTS "public"."jdsistemas_gruposmodulos_modulos";
DROP TABLE IF EXISTS "public"."jdsistemas_modulo";
DROP TABLE IF EXISTS "public"."jdsistemas_nacionalidad";
DROP TABLE IF EXISTS "public"."jdsistemas_paciente";
DROP TABLE IF EXISTS "public"."jdsistemas_pais";
DROP TABLE IF EXISTS "public"."jdsistemas_parametroreporte";
DROP TABLE IF EXISTS "public"."jdsistemas_parroquia";
DROP TABLE IF EXISTS "public"."jdsistemas_perfilusuario";
DROP TABLE IF EXISTS "public"."jdsistemas_perms";
DROP TABLE IF EXISTS "public"."jdsistemas_persona";
DROP TABLE IF EXISTS "public"."jdsistemas_personaestadocivil";
DROP TABLE IF EXISTS "public"."jdsistemas_provincia";
DROP TABLE IF EXISTS "public"."jdsistemas_prueba";
DROP TABLE IF EXISTS "public"."jdsistemas_reporte";
DROP TABLE IF EXISTS "public"."jdsistemas_reporte_grupos";
DROP TABLE IF EXISTS "public"."jdsistemas_sexo";
DROP TABLE IF EXISTS "public"."jdsistemas_tipoparroquia";
DROP TABLE IF EXISTS "public"."jdsistemas_tipoperfilusuario";
DROP TABLE IF EXISTS "public"."jdsistemas_tituloinstitucion";
CREATE SEQUENCE "auth_group_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "auth_group_permissions_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "auth_permission_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "auth_user_groups_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "auth_user_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "auth_user_user_permissions_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "django_admin_log_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "django_content_type_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;
CREATE SEQUENCE "django_migrations_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_administrativo_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_cambioclavepersona_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_canton_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_cargodoctor_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_categoriareporte_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_categorizaciondoctor_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_doctor_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_genero_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_gradoocupacional_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_gruposmodulos_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_gruposmodulos_modulos_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_modulo_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_nacionalidad_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_paciente_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_pais_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_parametroreporte_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_parroquia_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_perfilusuario_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_perms_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_persona_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_personaestadocivil_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_provincia_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_prueba_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_reporte_grupos_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_reporte_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_sexo_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_tipoparroquia_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_tipoperfilusuario_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE SEQUENCE "jdsistemas_tituloinstitucion_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;
CREATE TABLE "auth_group" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "auth_group" OWNER TO "postgres";
CREATE TABLE "auth_group_permissions" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "group_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;
ALTER TABLE "auth_group_permissions" OWNER TO "postgres";
CREATE TABLE "auth_permission" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4 NOT NULL,
  "codename" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "auth_permission" OWNER TO "postgres";
CREATE TABLE "auth_user" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "password" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "last_login" timestamptz(6),
  "is_superuser" bool NOT NULL,
  "username" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "first_name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "last_name" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(254) COLLATE "pg_catalog"."default" NOT NULL,
  "is_staff" bool NOT NULL,
  "is_active" bool NOT NULL,
  "date_joined" timestamptz(6) NOT NULL
)
;
ALTER TABLE "auth_user" OWNER TO "postgres";
CREATE TABLE "auth_user_groups" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "user_id" int4 NOT NULL,
  "group_id" int4 NOT NULL
)
;
ALTER TABLE "auth_user_groups" OWNER TO "postgres";
CREATE TABLE "auth_user_user_permissions" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "user_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;
ALTER TABLE "auth_user_user_permissions" OWNER TO "postgres";
CREATE TABLE "django_admin_log" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "action_time" timestamptz(6) NOT NULL,
  "object_id" text COLLATE "pg_catalog"."default",
  "object_repr" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "action_flag" int2 NOT NULL,
  "change_message" text COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4,
  "user_id" int4 NOT NULL
)
;
ALTER TABLE "django_admin_log" OWNER TO "postgres";
CREATE TABLE "django_content_type" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "app_label" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "model" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "django_content_type" OWNER TO "postgres";
CREATE TABLE "django_migrations" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "app" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "applied" timestamptz(6) NOT NULL
)
;
ALTER TABLE "django_migrations" OWNER TO "postgres";
CREATE TABLE "django_session" (
  "session_key" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "session_data" text COLLATE "pg_catalog"."default" NOT NULL,
  "expire_date" timestamptz(6) NOT NULL
)
;
ALTER TABLE "django_session" OWNER TO "postgres";
CREATE TABLE "jdsistemas_administrativo" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "activo" bool NOT NULL,
  "persona_id" int8 NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_administrativo" OWNER TO "postgres";
CREATE TABLE "jdsistemas_cambioclavepersona" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "clavecambio" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "solicitada" bool NOT NULL,
  "persona_id" int8 NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_cambioclavepersona" OWNER TO "postgres";
CREATE TABLE "jdsistemas_canton" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "codigosniese" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "provincia_id" int8,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_canton" OWNER TO "postgres";
CREATE TABLE "jdsistemas_cargodoctor" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_cargodoctor" OWNER TO "postgres";
CREATE TABLE "jdsistemas_categoriareporte" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_categoriareporte" OWNER TO "postgres";
CREATE TABLE "jdsistemas_categorizaciondoctor" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "codigosniese" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_categorizaciondoctor" OWNER TO "postgres";
CREATE TABLE "jdsistemas_doctor" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "fechainiciodocente" date,
  "activo" bool NOT NULL,
  "salario" float8,
  "dependencia" bool,
  "cargo_id" int8,
  "categoria_id" int8,
  "gradoocupacional_id" int8,
  "persona_id" int8 NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_doctor" OWNER TO "postgres";
CREATE TABLE "jdsistemas_genero" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_genero" OWNER TO "postgres";
CREATE TABLE "jdsistemas_gradoocupacional" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_gradoocupacional" OWNER TO "postgres";
CREATE TABLE "jdsistemas_gruposmodulos" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "grupo_id" int4 NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_gruposmodulos" OWNER TO "postgres";
CREATE TABLE "jdsistemas_gruposmodulos_modulos" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "gruposmodulos_id" int8 NOT NULL,
  "modulo_id" int8 NOT NULL
)
;
ALTER TABLE "jdsistemas_gruposmodulos_modulos" OWNER TO "postgres";
CREATE TABLE "jdsistemas_modulo" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "url" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "activo" bool NOT NULL,
  "externo" bool NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_modulo" OWNER TO "postgres";
CREATE TABLE "jdsistemas_nacionalidad" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombremasculino" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "nombrefemenino" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "pais_id" int8,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_nacionalidad" OWNER TO "postgres";
CREATE TABLE "jdsistemas_paciente" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "fechaingreso" date NOT NULL,
  "horaingreso" time(6) NOT NULL,
  "activo" bool NOT NULL,
  "persona_id" int8 NOT NULL,
  "personaingreso_id" int8 NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_paciente" OWNER TO "postgres";
CREATE TABLE "jdsistemas_pais" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "codigosniese" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_pais" OWNER TO "postgres";
CREATE TABLE "jdsistemas_parametroreporte" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "tipo" int4 NOT NULL,
  "extra" text COLLATE "pg_catalog"."default" NOT NULL,
  "reporte_id" int8 NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_parametroreporte" OWNER TO "postgres";
CREATE TABLE "jdsistemas_parroquia" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "canton_id" int8,
  "tipo_id" int8,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_parroquia" OWNER TO "postgres";
CREATE TABLE "jdsistemas_perfilusuario" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "pacienteprincipal" bool NOT NULL,
  "administrativo_id" int8,
  "doctor_id" int8,
  "paciente_id" int8,
  "persona_id" int8 NOT NULL,
  "tipoperfilusuario_id" int8,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_perfilusuario" OWNER TO "postgres";
CREATE TABLE "jdsistemas_perms" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
)
)
;
ALTER TABLE "jdsistemas_perms" OWNER TO "postgres";
CREATE TABLE "jdsistemas_persona" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre1" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "nombre2" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "apellido1" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "apellido2" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "cedula" varchar(13) COLLATE "pg_catalog"."default" NOT NULL,
  "nacimiento" date NOT NULL,
  "sector" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "ciudad" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "direccion" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "referencia" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "num_direccion" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "celular" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "canton_id" int8,
  "estadocivil_id" int8,
  "genero_id" int8,
  "pais_id" int8,
  "parroquia_id" int8,
  "provincia_id" int8,
  "sexo_id" int8 NOT NULL,
  "usuario_id" int4,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4,
  "nacionalidad_id" int8,
  "telefono" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "jdsistemas_persona" OWNER TO "postgres";
CREATE TABLE "jdsistemas_personaestadocivil" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4,
  "codigosniese" varchar(50) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "jdsistemas_personaestadocivil" OWNER TO "postgres";
CREATE TABLE "jdsistemas_provincia" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "alias" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "codigosniese" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "codigoiso" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_provincia" OWNER TO "postgres";
CREATE TABLE "jdsistemas_prueba" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre1" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "apellido1" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "nacimiento" date NOT NULL,
  "sexo_id" int8 NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_prueba" OWNER TO "postgres";
CREATE TABLE "jdsistemas_reporte" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "detalle" varchar(400) COLLATE "pg_catalog"."default" NOT NULL,
  "archivo" varchar(100) COLLATE "pg_catalog"."default",
  "interface" bool NOT NULL,
  "formatoxls" bool NOT NULL,
  "formatocsv" bool NOT NULL,
  "formatoword" bool NOT NULL,
  "formatopdf" bool NOT NULL,
  "vista" text COLLATE "pg_catalog"."default",
  "html" text COLLATE "pg_catalog"."default",
  "categoria_id" int8 NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_reporte" OWNER TO "postgres";
CREATE TABLE "jdsistemas_reporte_grupos" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "reporte_id" int8 NOT NULL,
  "group_id" int4 NOT NULL
)
;
ALTER TABLE "jdsistemas_reporte_grupos" OWNER TO "postgres";
CREATE TABLE "jdsistemas_sexo" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_sexo" OWNER TO "postgres";
CREATE TABLE "jdsistemas_tipoparroquia" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_tipoparroquia" OWNER TO "postgres";
CREATE TABLE "jdsistemas_tipoperfilusuario" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(300) COLLATE "pg_catalog"."default" NOT NULL,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_tipoperfilusuario" OWNER TO "postgres";
CREATE TABLE "jdsistemas_tituloinstitucion" (
  "id" int8 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1
),
  "fecha_creacion" timestamptz(6),
  "fecha_modificacion" timestamptz(6),
  "nombre" varchar(300) COLLATE "pg_catalog"."default" NOT NULL,
  "telefono" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "correo" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "web" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "sector" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "ciudad" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "direccion" varchar(300) COLLATE "pg_catalog"."default" NOT NULL,
  "ruc" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "obligadocontabilidad" bool NOT NULL,
  "contribuyenteespecial" bool NOT NULL,
  "facturacionelectronicaexterna" bool NOT NULL,
  "urlfacturacion" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "emailhost" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "emaildomain" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "domainapp" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "emailport" int4 NOT NULL,
  "emailhostuser" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "emailpassword" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "enviosolocorreoinstitucional" bool NOT NULL,
  "usatls" bool NOT NULL,
  "defaultpassword" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "claveusuariocedula" bool NOT NULL,
  "nombreusuariocedula" bool NOT NULL,
  "canton_id" int8,
  "parroquia_id" int8,
  "provincia_id" int8,
  "usuario_creacion_id" int4,
  "usuario_modificacion_id" int4
)
;
ALTER TABLE "jdsistemas_tituloinstitucion" OWNER TO "postgres";
BEGIN;
LOCK TABLE "public"."auth_group" IN SHARE MODE;
DELETE FROM "public"."auth_group";
INSERT INTO "public"."auth_group" ("id","name") VALUES (6, 'PACIENTE'),(7, 'DOCTOR'),(5, 'ADMINISTRATIVOS');
COMMIT;
BEGIN;
LOCK TABLE "public"."auth_group_permissions" IN SHARE MODE;
DELETE FROM "public"."auth_group_permissions";
INSERT INTO "public"."auth_group_permissions" ("id","group_id","permission_id") VALUES (16, 5, 111),(17, 5, 112);
COMMIT;
BEGIN;
LOCK TABLE "public"."auth_permission" IN SHARE MODE;
DELETE FROM "public"."auth_permission";
INSERT INTO "public"."auth_permission" ("id","name","content_type_id","codename") VALUES (1, 'Can add log entry', 1, 'add_logentry'),(2, 'Can change log entry', 1, 'change_logentry'),(3, 'Can delete log entry', 1, 'delete_logentry'),(4, 'Can view log entry', 1, 'view_logentry'),(5, 'Can add permission', 2, 'add_permission'),(6, 'Can change permission', 2, 'change_permission'),(7, 'Can delete permission', 2, 'delete_permission'),(8, 'Can view permission', 2, 'view_permission'),(9, 'Can add group', 3, 'add_group'),(10, 'Can change group', 3, 'change_group'),(11, 'Can delete group', 3, 'delete_group'),(12, 'Can view group', 3, 'view_group'),(13, 'Can add user', 4, 'add_user'),(14, 'Can change user', 4, 'change_user'),(15, 'Can delete user', 4, 'delete_user'),(16, 'Can view user', 4, 'view_user'),(17, 'Can add content type', 5, 'add_contenttype'),(18, 'Can change content type', 5, 'change_contenttype'),(19, 'Can delete content type', 5, 'delete_contenttype'),(20, 'Can view content type', 5, 'view_contenttype'),(21, 'Can add session', 6, 'add_session'),(22, 'Can change session', 6, 'change_session'),(23, 'Can delete session', 6, 'delete_session'),(24, 'Can view session', 6, 'view_session'),(25, 'Can add book', 7, 'add_book'),(26, 'Can change book', 7, 'change_book'),(27, 'Can delete book', 7, 'delete_book'),(28, 'Can view book', 7, 'view_book'),(29, 'Can add book2', 8, 'add_book2'),(30, 'Can change book2', 8, 'change_book2'),(31, 'Can delete book2', 8, 'delete_book2'),(32, 'Can view book2', 8, 'view_book2'),(33, 'Can add book3', 9, 'add_book3'),(34, 'Can change book3', 9, 'change_book3'),(35, 'Can delete book3', 9, 'delete_book3'),(36, 'Can view book3', 9, 'view_book3'),(37, 'Can add genero', 10, 'add_genero'),(38, 'Can change genero', 10, 'change_genero'),(39, 'Can delete genero', 10, 'delete_genero'),(40, 'Can view genero', 10, 'view_genero'),(41, 'Can add persona', 11, 'add_persona'),(42, 'Can change persona', 11, 'change_persona'),(43, 'Can delete persona', 11, 'delete_persona'),(44, 'Can view persona', 11, 'view_persona'),(45, 'Can add persona estado civil', 12, 'add_personaestadocivil'),(46, 'Can change persona estado civil', 12, 'change_personaestadocivil'),(47, 'Can delete persona estado civil', 12, 'delete_personaestadocivil'),(48, 'Can view persona estado civil', 12, 'view_personaestadocivil'),(49, 'Can add pais', 13, 'add_pais'),(50, 'Can change pais', 13, 'change_pais'),(51, 'Can delete pais', 13, 'delete_pais'),(52, 'Can view pais', 13, 'view_pais'),(53, 'Can add canton', 14, 'add_canton'),(54, 'Can change canton', 14, 'change_canton'),(55, 'Can delete canton', 14, 'delete_canton'),(56, 'Can view canton', 14, 'view_canton'),(57, 'Can add parroquia', 15, 'add_parroquia'),(58, 'Can change parroquia', 15, 'change_parroquia'),(59, 'Can delete parroquia', 15, 'delete_parroquia'),(60, 'Can view parroquia', 15, 'view_parroquia'),(61, 'Can add tipo parroquia', 16, 'add_tipoparroquia'),(62, 'Can change tipo parroquia', 16, 'change_tipoparroquia'),(63, 'Can delete tipo parroquia', 16, 'delete_tipoparroquia'),(64, 'Can view tipo parroquia', 16, 'view_tipoparroquia'),(65, 'Can add sexo', 17, 'add_sexo'),(66, 'Can change sexo', 17, 'change_sexo'),(67, 'Can delete sexo', 17, 'delete_sexo'),(68, 'Can view sexo', 17, 'view_sexo'),(69, 'Can add provincia', 18, 'add_provincia'),(70, 'Can change provincia', 18, 'change_provincia'),(71, 'Can delete provincia', 18, 'delete_provincia'),(72, 'Can view provincia', 18, 'view_provincia'),(73, 'Can add modulo', 19, 'add_modulo'),(74, 'Can change modulo', 19, 'change_modulo'),(75, 'Can delete modulo', 19, 'delete_modulo'),(76, 'Can view modulo', 19, 'view_modulo'),(77, 'Can add grupos modulos', 20, 'add_gruposmodulos'),(78, 'Can change grupos modulos', 20, 'change_gruposmodulos'),(79, 'Can delete grupos modulos', 20, 'delete_gruposmodulos'),(80, 'Can view grupos modulos', 20, 'view_gruposmodulos'),(81, 'Can add prueba', 21, 'add_prueba'),(82, 'Can change prueba', 21, 'change_prueba'),(83, 'Can delete prueba', 21, 'delete_prueba'),(84, 'Can view prueba', 21, 'view_prueba'),(85, 'Can add categoria reporte', 22, 'add_categoriareporte'),(86, 'Can change categoria reporte', 22, 'change_categoriareporte'),(87, 'Can delete categoria reporte', 22, 'delete_categoriareporte'),(88, 'Can view categoria reporte', 22, 'view_categoriareporte'),(89, 'Can add reporte', 23, 'add_reporte'),(90, 'Can change reporte', 23, 'change_reporte'),(91, 'Can delete reporte', 23, 'delete_reporte'),(92, 'Can view reporte', 23, 'view_reporte'),(93, 'Can add parametro reporte', 24, 'add_parametroreporte'),(94, 'Can change parametro reporte', 24, 'change_parametroreporte'),(95, 'Can delete parametro reporte', 24, 'delete_parametroreporte'),(96, 'Can view parametro reporte', 24, 'view_parametroreporte'),(97, 'Can add titulo institucion', 25, 'add_tituloinstitucion'),(98, 'Can change titulo institucion', 25, 'change_tituloinstitucion'),(99, 'Can delete titulo institucion', 25, 'delete_tituloinstitucion'),(100, 'Can view titulo institucion', 25, 'view_tituloinstitucion'),(105, 'Can add perms', 26, 'add_perms'),(106, 'Can change perms', 26, 'change_perms'),(107, 'Can delete perms', 26, 'delete_perms'),(108, 'Can view perms', 26, 'view_perms'),(111, 'Modificar datos de administracionn', 26, 'puede_modificar_datos_admin'),(112, 'Puede modificar parametros de la institucion', 26, 'puede_modificar_parametros_institucion'),(113, 'Can add administrativo', 27, 'add_administrativo'),(114, 'Can change administrativo', 27, 'change_administrativo'),(115, 'Can delete administrativo', 27, 'delete_administrativo'),(116, 'Can view administrativo', 27, 'view_administrativo'),(117, 'Can add nacionalidad', 28, 'add_nacionalidad'),(118, 'Can change nacionalidad', 28, 'change_nacionalidad'),(119, 'Can delete nacionalidad', 28, 'delete_nacionalidad'),(120, 'Can view nacionalidad', 28, 'view_nacionalidad'),(121, 'Can add cambio clave persona', 29, 'add_cambioclavepersona'),(122, 'Can change cambio clave persona', 29, 'change_cambioclavepersona'),(123, 'Can delete cambio clave persona', 29, 'delete_cambioclavepersona'),(124, 'Can view cambio clave persona', 29, 'view_cambioclavepersona'),(125, 'Can add grado ocupacional', 30, 'add_gradoocupacional'),(126, 'Can change grado ocupacional', 30, 'change_gradoocupacional'),(127, 'Can delete grado ocupacional', 30, 'delete_gradoocupacional'),(128, 'Can view grado ocupacional', 30, 'view_gradoocupacional'),(129, 'Can add doctor', 31, 'add_doctor'),(130, 'Can change doctor', 31, 'change_doctor'),(131, 'Can delete doctor', 31, 'delete_doctor'),(132, 'Can view doctor', 31, 'view_doctor'),(133, 'Can add cargo doctor', 32, 'add_cargodoctor'),(134, 'Can change cargo doctor', 32, 'change_cargodoctor'),(135, 'Can delete cargo doctor', 32, 'delete_cargodoctor'),(136, 'Can view cargo doctor', 32, 'view_cargodoctor'),(137, 'Can add categorizacion doctor', 33, 'add_categorizaciondoctor'),(138, 'Can change categorizacion doctor', 33, 'change_categorizaciondoctor'),(139, 'Can delete categorizacion doctor', 33, 'delete_categorizaciondoctor'),(140, 'Can view categorizacion doctor', 33, 'view_categorizaciondoctor'),(141, 'Can add tipo perfil usuario', 34, 'add_tipoperfilusuario'),(142, 'Can change tipo perfil usuario', 34, 'change_tipoperfilusuario'),(143, 'Can delete tipo perfil usuario', 34, 'delete_tipoperfilusuario'),(144, 'Can view tipo perfil usuario', 34, 'view_tipoperfilusuario'),(145, 'Can add paciente', 35, 'add_paciente'),(146, 'Can change paciente', 35, 'change_paciente'),(147, 'Can delete paciente', 35, 'delete_paciente'),(148, 'Can view paciente', 35, 'view_paciente'),(149, 'Can add perfil usuario', 36, 'add_perfilusuario'),(150, 'Can change perfil usuario', 36, 'change_perfilusuario'),(151, 'Can delete perfil usuario', 36, 'delete_perfilusuario'),(152, 'Can view perfil usuario', 36, 'view_perfilusuario'),(153, 'Can add pruebajd1', 37, 'add_pruebajd1'),(154, 'Can change pruebajd1', 37, 'change_pruebajd1'),(155, 'Can delete pruebajd1', 37, 'delete_pruebajd1'),(156, 'Can view pruebajd1', 37, 'view_pruebajd1');
COMMIT;
BEGIN;
LOCK TABLE "public"."auth_user" IN SHARE MODE;
DELETE FROM "public"."auth_user";
INSERT INTO "public"."auth_user" ("id","password","last_login","is_superuser","username","first_name","last_name","email","is_staff","is_active","date_joined") VALUES (19, 'pbkdf2_sha256$390000$5nP59cXcmY2bZI5UOG3AqZ$gSfbZjnbrI6TNjtPVjAKe0qXVhgxCagabN65PhY6DWU=', '2023-05-19 17:52:27.643948-05', 'f', 'maldas', '', '', '', 'f', 't', '2023-05-19 17:09:30.392585-05'),(2, 'pbkdf2_sha256$600000$jGIkBivDJAeCBMhWg7R4zq$H8rWJueWoDkB30D307MTGEH5ClDSq4dIONmHsUCmQDc=', '2023-08-02 17:02:29.773781-05', 't', 'jnunez', '', '', '', 'f', 't', '2023-04-26 16:14:27-05'),(1, 'pbkdf2_sha256$600000$jGIkBivDJAeCBMhWg7R4zq$H8rWJueWoDkB30D307MTGEH5ClDSq4dIONmHsUCmQDc=', '2023-08-03 11:32:24.011505-05', 't', 'admin', '', '', 'admin@jdsistemas.com', 't', 't', '2023-03-31 16:51:22-05');
COMMIT;
BEGIN;
LOCK TABLE "public"."auth_user_groups" IN SHARE MODE;
DELETE FROM "public"."auth_user_groups";
INSERT INTO "public"."auth_user_groups" ("id","user_id","group_id") VALUES (16, 2, 5),(23, 19, 5);
COMMIT;
BEGIN;
LOCK TABLE "public"."auth_user_user_permissions" IN SHARE MODE;
DELETE FROM "public"."auth_user_user_permissions";
INSERT INTO "public"."auth_user_user_permissions" ("id","user_id","permission_id") VALUES (3, 1, 1),(4, 1, 2),(5, 1, 3),(6, 1, 4);
COMMIT;
BEGIN;
LOCK TABLE "public"."django_admin_log" IN SHARE MODE;
DELETE FROM "public"."django_admin_log";
INSERT INTO "public"."django_admin_log" ("id","action_time","object_id","object_repr","action_flag","change_message","content_type_id","user_id") VALUES (1, '2023-08-02 17:02:35.728123-05', 'None', '', 1, 'Login con exito: NUÑEZ NUÑEZ Jenrry Patricio - Chrome 115 - Windows 10 - 127.0.0.1', NULL, 2),(2, '2023-08-02 17:14:35.676635-05', 'None', '', 1, 'Agregó módulo a grupo : ADMINISTRATIVOS', NULL, 2),(3, '2023-08-03 11:33:14.003985-05', '1', 'Productos (/adm_producto)', 1, '[{"added": {}}]', 19, 1),(4, '2023-08-03 11:33:22.56924-05', 'None', '', 1, 'Agregó módulo a grupo : ADMINISTRATIVOS', NULL, 2);
COMMIT;
BEGIN;
LOCK TABLE "public"."django_content_type" IN SHARE MODE;
DELETE FROM "public"."django_content_type";
INSERT INTO "public"."django_content_type" ("id","app_label","model") VALUES (1, 'admin', 'logentry'),(2, 'auth', 'permission'),(3, 'auth', 'group'),(4, 'auth', 'user'),(5, 'contenttypes', 'contenttype'),(6, 'sessions', 'session'),(7, 'jdsistemas', 'book'),(8, 'jdsistemas', 'book2'),(9, 'jdsistemas', 'book3'),(10, 'jdsistemas', 'genero'),(11, 'jdsistemas', 'persona'),(12, 'jdsistemas', 'personaestadocivil'),(13, 'jdsistemas', 'pais'),(14, 'jdsistemas', 'canton'),(15, 'jdsistemas', 'parroquia'),(16, 'jdsistemas', 'tipoparroquia'),(17, 'jdsistemas', 'sexo'),(18, 'jdsistemas', 'provincia'),(19, 'jdsistemas', 'modulo'),(20, 'jdsistemas', 'gruposmodulos'),(21, 'jdsistemas', 'prueba'),(22, 'jdsistemas', 'categoriareporte'),(23, 'jdsistemas', 'reporte'),(24, 'jdsistemas', 'parametroreporte'),(25, 'jdsistemas', 'tituloinstitucion'),(26, 'jdsistemas', 'perms'),(27, 'jdsistemas', 'administrativo'),(28, 'jdsistemas', 'nacionalidad'),(29, 'jdsistemas', 'cambioclavepersona'),(30, 'jdsistemas', 'gradoocupacional'),(31, 'jdsistemas', 'doctor'),(32, 'jdsistemas', 'cargodoctor'),(33, 'jdsistemas', 'categorizaciondoctor'),(34, 'jdsistemas', 'tipoperfilusuario'),(35, 'jdsistemas', 'paciente'),(36, 'jdsistemas', 'perfilusuario'),(37, 'jdsistemas', 'pruebajd1');
COMMIT;
BEGIN;
LOCK TABLE "public"."django_migrations" IN SHARE MODE;
DELETE FROM "public"."django_migrations";
INSERT INTO "public"."django_migrations" ("id","app","name","applied") VALUES (1, 'contenttypes', '0001_initial', '2023-03-31 16:50:14.395742-05'),(2, 'auth', '0001_initial', '2023-03-31 16:50:14.4807-05'),(3, 'admin', '0001_initial', '2023-03-31 16:50:14.501593-05'),(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-31 16:50:14.506602-05'),(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-31 16:50:14.511602-05'),(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-31 16:50:14.527777-05'),(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-31 16:50:14.536823-05'),(8, 'auth', '0003_alter_user_email_max_length', '2023-03-31 16:50:14.542814-05'),(9, 'auth', '0004_alter_user_username_opts', '2023-03-31 16:50:14.549778-05'),(10, 'auth', '0005_alter_user_last_login_null', '2023-03-31 16:50:14.556757-05'),(11, 'auth', '0006_require_contenttypes_0002', '2023-03-31 16:50:14.558825-05'),(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-31 16:50:14.565736-05'),(13, 'auth', '0008_alter_user_username_max_length', '2023-03-31 16:50:14.579745-05'),(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-31 16:50:14.587803-05'),(15, 'auth', '0010_alter_group_name_max_length', '2023-03-31 16:50:14.594965-05'),(16, 'auth', '0011_update_proxy_permissions', '2023-03-31 16:50:14.602123-05'),(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-31 16:50:14.608128-05'),(24, 'jdsistemas', '0001_initial', '2023-05-03 12:14:17.495694-05'),(25, 'sessions', '0001_initial', '2023-05-03 12:14:35.56015-05'),(26, 'jdsistemas', '0002_prueba', '2023-05-10 15:15:38.638508-05'),(27, 'jdsistemas', '0003_categoriareporte_alter_prueba_options_reporte_and_more', '2023-05-11 12:04:23.285133-05'),(28, 'jdsistemas', '0004_tituloinstitucion', '2023-05-11 15:46:50.687757-05'),(29, 'jdsistemas', '0005_perms', '2023-05-11 17:15:09.558993-05'),(30, 'jdsistemas', '0006_alter_perms_options', '2023-05-11 17:54:49.344462-05'),(31, 'jdsistemas', '0007_administrativo', '2023-05-12 17:50:33.544306-05'),(32, 'jdsistemas', '0008_nacionalidad', '2023-05-16 09:58:33.221651-05'),(33, 'jdsistemas', '0009_cargodoctor_categorizaciondoctor_paciente_and_more', '2023-05-16 12:28:48.461884-05'),(34, 'jdsistemas', '0010_persona_nacionalidad_persona_telefono', '2023-05-16 15:51:54.038071-05');
COMMIT;
BEGIN;
LOCK TABLE "public"."django_session" IN SHARE MODE;
DELETE FROM "public"."django_session";
INSERT INTO "public"."django_session" ("session_key","session_data","expire_date") VALUES ('wqy4f8vwqteeyrjsi290tx4uf2sk1kv5', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1pv2A0:wyGVN9HnKu01fguThTNpIKRFQ69SvhhKFtJeQx4cbrY', '2023-05-19 15:36:12.762148-05'),('yg54qz3zj29lecptnbrgumso7lwl6qdc', '.eJxVjMsOwiAQRf-FtSE8C-PSvd9AYAakaiAp7cr479qkC93ec859sRC3tYZt5CXMxM5MstPvliI-ctsB3WO7dY69rcuc-K7wgw5-7ZSfl8P9O6hx1G_tSAFl6Tw4Bd4aEkA6AuaJbDIeSAgtUU4Fo7fZGSFRgC9KadJQhGLvD821Nyc:1puG4Z:zDl1-Yjol4n5heFdOQ6MaR55S88LbcLxfAsf-5fwE7c', '2023-05-17 12:15:23.410575-05'),('ajqmtppdu0cy2bi78cp7at08a4x99qx4', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1puGPg:3ss2SUKY9_6c_q05cFA6Q8jKCg3dVb8Xs57GKB2EfYM', '2023-05-17 12:37:12.546163-05'),('rppiw9jtqq94quuij2gfz2mt9megupbt', 'e30:1puGPj:V_-NLyM7ThzELugaMbWFwxd-7qOb6ejS4ifi7B657TU', '2023-05-17 12:37:15.982493-05'),('etp3c1fufvgm9jta7abif3gzuhdebaeu', 'e30:1puGQE:WjtCjyPs-IvYIG39kSz33Zi-qdkPL5if-w_XD9fOo60', '2023-05-17 12:37:46.928095-05'),('grxmrldxhkaoxqvgr8yenelqkvmu4ee3', 'e30:1puGQc:vZY1KQS3LTGICFRMy6R5FBEvJkq2LoUaRtBerVCcjBk', '2023-05-17 12:38:10.211875-05'),('pdssx1tqr3gdxfosiglwvy3pedk7pinn', 'e30:1puGRT:9IgKMGOug5D7gC5fFXn4O_MP6JiRYXiTAoxfIWddw_g', '2023-05-17 12:39:03.310709-05'),('kicc8kahzsfrew4uzopywdxbbk45lf2p', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1puGTN:x9bXBvknLjJALH8tPD_gZ2YvEdjkCL8tp2Jg9gv0Gr8', '2023-05-17 12:41:01.314279-05'),('zm2hwin4o5d88qwbnjbc7hglikp8i1nc', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1puGTX:ewfEy0obsuI4pJIHh-yxzpBhbx5DAo4j9AhNgv9cm5Y', '2023-05-17 12:41:11.823828-05'),('0ntoc3mh5mnrhsq1e8cu7eqayckfkdge', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1puGTq:up-3eoDZvDeohTovMcPbnLZmIgndk2lt3K6Ik9_gkPI', '2023-05-17 12:41:30.399308-05'),('egwlfzngil8ivcisthin6fzvrjokrzgb', 'e30:1puGTs:GKmKrEosIXNOQAGrS_kE3BuuKraQ7cTFS5mV_SU-GK4', '2023-05-17 12:41:32.364413-05'),('7g7kbdoo4b1jaoi8wgml7m56uajsf5nd', 'e30:1puGTt:XyJg3f00wANFW_ilxai2LL7Ur2pbqFigA5RDD4g_xrI', '2023-05-17 12:41:33.31571-05'),('e20f8ikyuy45tzr1vqd516m67ke77r7l', 'e30:1puGTt:XyJg3f00wANFW_ilxai2LL7Ur2pbqFigA5RDD4g_xrI', '2023-05-17 12:41:33.546746-05'),('atoxmcckynf49ab07m0swpqxxsbe73ci', 'e30:1puGTt:XyJg3f00wANFW_ilxai2LL7Ur2pbqFigA5RDD4g_xrI', '2023-05-17 12:41:33.707687-05'),('l5v64xbfl5y5wxdjmoyookk09n1w6b72', 'e30:1puGTu:0xRCt7TnwM3Ea_3fg2IBlYKEWQyhGHf3OocjZunROBc', '2023-05-17 12:41:34.882725-05'),('qlbaybnr7r8rzub2dmwb5ybbd2uuvym7', 'e30:1puGTv:2Cl79DqF6fdh7JkkPZiAH02KnjKzRE45aDoIcTLsxh0', '2023-05-17 12:41:35.065812-05'),('yxc8kasvls6i2vxrdm8vwsm4f8d8jnts', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1puGUR:Kj4eOJbuaCxcTVx962oTaq1yEvYiJ6BpHOc6zggwleA', '2023-05-17 12:42:07.739291-05'),('vpb4mhs1b7tta0aqisshg5ilwiin7sa0', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1puGXm:uuNOx8oA7Rou73q18iea5WEIvGv-OYqj0EnsKdvyS3E', '2023-05-17 12:45:34.027296-05'),('sdmq1utbo6niebfdqbiuco4m9e1xqpro', 'e30:1puGXn:2jin2_hHqyWIbObzw0hD7vyrT-tY5JtyjL5-DkefDmU', '2023-05-17 12:45:35.165798-05'),('byzgcheyjl439vd7vy31rzh3xk91l89d', 'e30:1puGXo:QjoU9EETYXYk0oHxDcChi5lh44Tq4GN5nm-ti9WyDp0', '2023-05-17 12:45:36.535092-05'),('880u4duwlhglonepwx4halq1bfvvnim6', 'e30:1puGXo:QjoU9EETYXYk0oHxDcChi5lh44Tq4GN5nm-ti9WyDp0', '2023-05-17 12:45:36.710538-05'),('oo4fu2wfgsyp7or4spi6ev9n80nto76x', 'e30:1puGXo:QjoU9EETYXYk0oHxDcChi5lh44Tq4GN5nm-ti9WyDp0', '2023-05-17 12:45:36.958543-05'),('jffvuf8to8qv45jj1na07bvf3xj4lzwn', 'e30:1puGXp:nTm9inMpAL4nlSvg8VS1-1bjj_C59xd6NVRma83ZavQ', '2023-05-17 12:45:37.128634-05'),('p2vny5wtxsm0f26tlfzjof8zbd9pzxqr', 'e30:1puGXp:nTm9inMpAL4nlSvg8VS1-1bjj_C59xd6NVRma83ZavQ', '2023-05-17 12:45:37.318222-05'),('17vql3br5xb3j9hxgjex17bsxj7xk3hg', 'e30:1puGXp:nTm9inMpAL4nlSvg8VS1-1bjj_C59xd6NVRma83ZavQ', '2023-05-17 12:45:37.54978-05'),('mb1hbz5cydmlpfrj1t2lsj8la90t9j2i', 'e30:1puGXp:nTm9inMpAL4nlSvg8VS1-1bjj_C59xd6NVRma83ZavQ', '2023-05-17 12:45:37.777824-05'),('4py5ec88893yx9dghzrjl648rl4wpxc9', 'e30:1puGXp:nTm9inMpAL4nlSvg8VS1-1bjj_C59xd6NVRma83ZavQ', '2023-05-17 12:45:37.912657-05'),('0nomzjw3wxf2tclhipodk9mn6lexa1td', 'e30:1puGXt:SwgGQZ_FnwtADZLobNJJjpriVP30P9RHs2OULepsYLA', '2023-05-17 12:45:41.053061-05'),('svoxbe5xwidm3vm9d4b19kpw17i9o80b', 'e30:1puGXt:SwgGQZ_FnwtADZLobNJJjpriVP30P9RHs2OULepsYLA', '2023-05-17 12:45:41.235354-05'),('p0zekwlgwmildo9etfexmkj2h5s7yb5l', 'e30:1puGXt:SwgGQZ_FnwtADZLobNJJjpriVP30P9RHs2OULepsYLA', '2023-05-17 12:45:41.485316-05'),('fn9ncb8f5p28k19nbxti4tf3awbp20w0', 'e30:1puGXu:aLik69w7fCFU9Rgj0ka8y2Rlj1PTR-1eO2c2Hu9xC-Y', '2023-05-17 12:45:42.301485-05'),('50aguwax9xqrzjy09jfclop0lyd0mci4', 'e30:1puGXu:aLik69w7fCFU9Rgj0ka8y2Rlj1PTR-1eO2c2Hu9xC-Y', '2023-05-17 12:45:42.484421-05'),('897kuh3m36bq5b600od5gljgbjajekb6', 'e30:1puGXv:TokoBGlSvNbVMDUl3V-C_HeA7XF8XUZHmYI7OH6f3WM', '2023-05-17 12:45:43.83265-05'),('i3236nw4z4ykryg28yip8l9n13x5tftm', 'e30:1puGXw:iURtHDc7zGlTHJgAQX1ZK4Ikrdgv9kMDGk-3rPJfdCY', '2023-05-17 12:45:44.884068-05'),('u3sp42ch10zo435xbdcz00bhoeysxn0y', 'e30:1puGXx:UrVNLoi0N8c8exKIDCd56nG5F7Xj65mhPuimOVi0i8Y', '2023-05-17 12:45:45.084484-05'),('q0t9wpa4a88njz4rbssjdzlszmwuzrnp', 'e30:1puGYE:ppqnu1frbHj3KWc1kHUQyn8qwBY3G3D3wblZBrkie-E', '2023-05-17 12:46:02.534307-05'),('6zt9c80gtggtd9ift3ry91bq3idtx67y', 'e30:1puGYR:YcjV9rQjUL1GHqFuhfTIa6cPzdjy6dH5B85a_APF47Y', '2023-05-17 12:46:15.626336-05'),('1j9lm7b6nojfffjzucf32a4gzlzbqj0x', 'e30:1puGYy:0uw_xirAH46zi0Eozms5E2o93nsy5wNfW2m5VdzglpU', '2023-05-17 12:46:48.47899-05'),('8ju867enkatkzb9zvlhgq26cz17nfc4n', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1puGcY:cnOuLsvvA5NXaK8OC_8mJcVwx8u5wCiQkrJjgunfqpo', '2023-05-17 12:50:30.145863-05'),('ckuvyi3eucg2kou4a6gk650qq74gwg9s', 'e30:1puGd0:-SGSY7TE85OLXMf1lTny0npiyhHu7oENyLacvseLDe8', '2023-05-17 12:50:58.009993-05'),('do8g1m5mnhrh9iql0xqthnndgaalp3hl', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1puGdk:9q563nrE6NP2D-3yJsBkD6hf3FcFxVNnemZ6jBltnA8', '2023-05-17 12:51:44.749089-05'),('74syywkgbbqfecqic9q42ongtam0g19d', 'e30:1puGm0:bxOfRHbXWrUm63tAdmLLXS6czKZEsKx1ysHw6TQ83Mg', '2023-05-17 13:00:16.552644-05'),('73dgvo3gddjjp8q95htsyom83200nva8', 'e30:1puGm0:bxOfRHbXWrUm63tAdmLLXS6czKZEsKx1ysHw6TQ83Mg', '2023-05-17 13:00:16.552644-05'),('6dbosihs0rkhsa0smqpfd5rap8ye2rjn', '.eJxVjDsOgzAQBe_iOrIW8A_K9DkDWtbe4ATZkm2qKHdPkGho38y8j8AtlIYpt0gRq5ha2cNNzLi3dd5rKHP0YhK9uGwL0jukA_gXpmeWlFMrcZGHIk9a5SP7sN1P93KwYl3_tfOs-oHZjjaEzmiPoA3SwBqAlTFeKVKdJQZAGBwxOTbdqEbrbG81iO8PyQE_kg:1puGnp:NCKe81MqgahBU4MAGz1JBQXnkiDp6Z-17X2MBU2roWw', '2023-05-17 13:02:09.444077-05'),('jsym5vjn1hnwcsui59trfusj3lb9i5xe', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1puxrL:ZvC3V-DkAK20pGKukZdj6zIczlkVUYKBOTo7UMmZkDE', '2023-05-19 11:00:39.030693-05'),('k2sem68m10064w8u641uzz7y7ssq31nm', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1puGoe:P6potk7GDmYLo85MwS-ZqIj285lcaEYH9EzVodt4-yM', '2023-05-17 13:03:00.759588-05'),('wxdmimkekmzl12cecabprimteuld4os9', 'e30:1puGoi:vNrsJkrRxIOn8iP3eaQC0sZkw6pKpykTW2U-7iZmGQY', '2023-05-17 13:03:04.466115-05'),('09ab1mgg708b1utq6bzchn8c9559z525', 'e30:1puGor:RytrqbNBl3b9gP56n3JMAO7b5DeSfuJyq-y8wRyeLWY', '2023-05-17 13:03:13.895075-05'),('0r19da903lycd4x0uawbaixfhid6o933', 'e30:1puGos:PAgLEhaFx9Y3IKfD8NOZr_DUPmKzO83yiJmncTWG858', '2023-05-17 13:03:14.693611-05'),('u7ddzu5jzk0koh1id6owov9qtl4c0pav', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1puGpI:PdJc48NdBDnn3HRWmO7kEjt0YjmZQnIVQMYPXopoPi0', '2023-05-17 13:03:40.976813-05'),('0rm80nozoy29hnlnyx3z3mhijrehpq5d', 'e30:1puGpI:G8S5tdjG37NokjXkbPFYh-vSU1tRCoOnn65oNzLew8s', '2023-05-17 13:03:40.976813-05'),('pf3u469d15w6sgf4y35b4afibrgee0an', 'e30:1puGpb:iMoPfUDHYKIqRpcgHp6gS8H-lPvxTPAC1wT8e0lAAsI', '2023-05-17 13:03:59.615381-05'),('ksmoretvxysbit0w0adgekuav5q9cb4w', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1puH1d:2TP7xLV947LWjaVOudhv--ckpQcqzF9ArkyvoDjjvaA', '2023-05-17 13:16:25.06377-05'),('wmvcvkezxovzw8z1n5x4r5yjc395pd3c', '.eJxVjMsOgyAQRf-FdUNAeemy-36DGWGm0hpoAFdN_72auHF7z7nny2DF0iDlFn2EysZWNryxCba2TFvFMsXARtaxyzaDf2M6QHhBembuc2olzvxQ-Ekrf-SA6_10L4EF6rK_XSDV9UR2sIjS6ABCG_A9aSFIGROU8kpaT0KA6J0n78jIQQ3W2c5qsUc_WGpOwEb5-wPbdENl:1puH2g:zHTQnysptOjv-_i_wAVyndZVydqZTfVFI9_aQTrAJuU', '2023-05-17 13:17:30.720273-05'),('9w8fm6gmanqylgxrlsldgummrl0yf7rj', '.eJxVjMsOgyAQRf-FdUNAeemy-36DGWGm0hpoAFdN_72auHF7z7nny2DF0iDlFn2EysZWNryxCba2TFvFMsXARtaxyzaDf2M6QHhBembuc2olzvxQ-Ekrf-SA6_10L4EF6rK_XSDV9UR2sIjS6ABCG_A9aSFIGROU8kpaT0KA6J0n78jIQQ3W2c5qsUc_WGpOwEb5-wPbdENl:1puH3c:eY8jrHgzicRb9JIzVTXKYYi6eVHzlfZKDQ8hZyHn-t8', '2023-05-17 13:18:28.23101-05'),('yplsjucwqorbp5qv05xntv6bph497t1l', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1px6pj:8juhgnK0RoJPXIbxV7D0GgYNLD4P0WB0ULeYKhfbuu8', '2023-05-25 08:59:51.886664-05'),('y5z9j77shicn6cx72tm5adab0ikkmpam', '.eJxVjMsOgyAQRf-FdUNAeemy-36DGWGm0hpoAFdN_72auHF7z7nny2DF0iDlFn2EysZWNryxCba2TFvFMsXARtaxyzaDf2M6QHhBembuc2olzvxQ-Ekrf-SA6_10L4EF6rK_XSDV9UR2sIjS6ABCG_A9aSFIGROU8kpaT0KA6J0n78jIQQ3W2c5qsUc_WGpOwEb5-wPbdENl:1puH4K:fUQZu3G17kTQvgL4kOEAcEaJjHJSlQ4-JKJI0EGV7_Y', '2023-05-17 13:19:12.966267-05'),('8ia678sre4hihkj9m3qrybxkstm3ofy6', 'e30:1pzLfC:jQ3S-Np7q63upyuxmVUKWQTMJ6vUhnoCjDKef_RSCQM', '2023-05-31 13:14:14.675333-05'),('wvuuirpd0qyybwxyi73sq9kg0xvnhp00', 'e30:1pzLgo:kylZg5h_sTDx3eP-BrL8hThG4xo4FPvuWPX_gFCDV6s', '2023-05-31 13:15:54.113987-05'),('hv95885awf9o7s2tx8iop30uy7u9szvx', '.eJxVjMsOgyAQRf-FdUNAeemy-36DGWGm0hpoAFdN_72auHF7z7nny2DF0iDlFn2EysZWNryxCba2TFvFMsXARtaxyzaDf2M6QHhBembuc2olzvxQ-Ekrf-SA6_10L4EF6rK_XSDV9UR2sIjS6ABCG_A9aSFIGROU8kpaT0KA6J0n78jIQQ3W2c5qsUc_WGpOwEb5-wPbdENl:1puH5S:GKq53lqDWqSCDMZLHbz-Rb3iq54pyYEKZ-xyLE7ry7w', '2023-05-17 13:20:22.101042-05'),('rrnyl9n9115snplqxs158a0cgidl6080', '.eJxVj7FuxCAQRP9la8sHNgbsMl2KSNefLGsNS4xzghNgpYjy78HKNdft7JsZaX4A75QKhli88ZhhKumgBhY8yrYcmdLiLUzQwctvRfNF4QR2x_AZWxNDSX5tT0v7pLn9iJbub0_vS8GGeatpbZ3oeufUqIi4HCyyQaLp3cCYE1JaIYzgyjjGkPXaOKOd5KMYlVadGlgtfVDKMSBMvIFsElH49rac5VwoXQ3pKJXebnCp4j3UmRHmpsrdPurWtY5u4Pp_7Rbm-fcP6BVaAg:1puxkT:_VmH3mae7GTRl5CrwxK0nDMF7C_9pGTA4y3kPkNbKHY', '2023-05-19 10:53:33.303386-05'),('8et6fp2vqqh8t7lugxf9verebk4aww4t', '.eJxVjMsOgyAQRf-FdUNAeemy-36DGWGm0hpoAFdN_72auHF7z7nny2DF0iDlFn2EysZWNryxCba2TFvFMsXARtaxyzaDf2M6QHhBembuc2olzvxQ-Ekrf-SA6_10L4EF6rK_XSDV9UR2sIjS6ABCG_A9aSFIGROU8kpaT0KA6J0n78jIQQ3W2c5qsUc_WGpOwEb5-wPbdENl:1puH5v:5HSBA_-bfGPVOeqi8hLwZ8FsCgpgzyiUJvvo4G9uKAc', '2023-05-17 13:20:51.657468-05'),('0rl34hmeezyj97xdv3zfjfonm721d534', '.eJxVjMsOgyAQRf-FdUNAeemy-36DGWGm0hpoAFdN_72auHF7z7nny2DF0iDlFn2EysZWNryxCba2TFvFMsXARtaxyzaDf2M6QHhBembuc2olzvxQ-Ekrf-SA6_10L4EF6rK_XSDV9UR2sIjS6ABCG_A9aSFIGROU8kpaT0KA6J0n78jIQQ3W2c5qsUc_WGpOwEb5-wPbdENl:1puH8l:9WEbdHF8jkVzrMHiAZm60LyKxFRBbLefA6oYw4kqsQ8', '2023-05-17 13:23:47.782976-05'),('xwe6apkwgwmo658al2ng6ilxs3ctbgab', '.eJxVjMsOgyAQRf-FdUNAeemy-36DGWGm0hpoAFdN_72auHF7z7nny2DF0iDlFn2EysZWNryxCba2TFvFMsXARtaxyzaDf2M6QHhBembuc2olzvxQ-Ekrf-SA6_10L4EF6rK_XSDV9UR2sIjS6ABCG_A9aSFIGROU8kpaT0KA6J0n78jIQQ3W2c5qsUc_WGpOwEb5-wPbdENl:1puHBN:0HRPZ_94xMTwLywrQgYcg5eOZoAP5MSv0DYiPtVGt6o', '2023-05-17 13:26:29.825668-05'),('yu2pytd2wxs2pweegv35wf85ro52jp7f', '.eJxVj7FuxCAQRP9la8sHNgbsMl2KSNefLGsNS4xzghNgpYjy78HKNdft7JsZaX4A75QKhli88ZhhKumgBhY8yrYcmdLiLUzQwctvRfNF4QR2x_AZWxNDSX5tT0v7pLn9iJbub0_vS8GGeatpbZ3oeufUqIi4HCyyQaLp3cCYE1JaIYzgyjjGkPXaOKOd5KMYlVadGlgtfVDKMSBMvIFsElH49rac5VwoXQ3pKJXebnCp4j3UmRHmpsrdPurWtY5u4Pp_7Rbm-fcP6BVaAg:1puxtM:QxWk2WFRzAcE_jFc7GJOcd_QGqWTSMUD2-AiOA9kKzE', '2023-05-19 11:02:44.907009-05'),('zorhbl23qkuktee71e4ol8ggmzk9ikwe', '.eJxVj71uhDAQhN9la8TZ4B-gTJci0vUnhBZ7HUxO9sk2ShHl3WOUa67b2W9mpPkBvFMqGGLxxmOGqaSDGljwKNtyZEqLtzBBBy-_Fc0XhRPYHcNnbE0MJfm1PS3tk-b2I1q6vz29LwUb5q2mB-tE1zunR03ElbTIpELTO8mYE0pZIYzg2jjGkPWDcWZwio9i1IPutGS19EEpx4Aw8QaySUTh29tylnPZq2pIR6n0doNLFe-hzowwN1Xu9lG3rnV0A9f_a7cwz79_5wVZ_Q:1puxnc:CjuERh0iak4Jz8haZR6corHW_7nd41Z_vH8KtnJaXz4', '2023-05-19 10:56:48.341433-05'),('wg7ulof0u1dqism45xelfetrefjwy7a3', '.eJxVj7FuwyAQht_lZuRiGwP22C1DpO6RZZ3hiHEjiACrQ9V3L1GyZLu7_7tf-n4Bb5QKhli88ZhhKukgBgseZVuOTGnxFibo4O22ovmm8AjsjuEaGxNDSX5tHkjzSnNzjpZuny_2rWDDvNVvbZ3oeufUqIhaOVjkg0TTu4FzJ6S0QhjRKuM4R95r44x2sh3FqLTq1MBr6Z1SjgFhahlkk4jCj7ellmvOGaSj1OhygY-KnkJ1jDCzuu72XkXXaszg6zntFub57x_y4FmC:1puxuf:pk6tI_3-1wWz2ZKA6YvW3QBLTGVvST8g6Am5yYTnEnQ', '2023-05-19 11:04:05.72926-05'),('xw63tjwvnr1047mwt5jcmu16nvslnb5f', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1puxuh:BQl-ZxpVBxnU5talYP4eyX8I2lSvN2mUHAqgs6XwhRc', '2023-05-19 11:04:07.852545-05'),('mcbkqinjtmklkqc2m328uvci4cz1jkke', '.eJxVj71uhDAQhN9la8TZ4B-gTJci0vUnhBZ7HUxO9sk2ShHl3WOUa67b2W9mpPkBvFMqGGLxxmOGqaSDGljwKNtyZEqLtzBBBy-_Fc0XhRPYHcNnbE0MJfm1PS3tk-b2I1q6vz29LwUb5q2mB-tE1zunR03ElbTIpELTO8mYE0pZIYzg2jjGkPWDcWZwio9i1IPutGS19EEpx4Aw8QaySUTh29tylnPZq2pIR6n0doNLFe-hzowwN1Xu9lG3rnV0A9f_a7cwz79_5wVZ_Q:1puxpo:f8eZmDbzYRsHC7Gt4btDp4M9W3gQQ7_LJTdAp3JrLfk', '2023-05-19 10:59:04.062844-05'),('ft49fd9ncjzcahijz2zjuxz6xgnghv5t', '.eJxVjDsOgzAQBe_iOrL8AeylTJ8zoMW7BCfIlmxTRbl7gkRD-2bmfQRuXBqm3GKIWMXYys43MeHe1mmvXKZIYhRaXLYZw5vTAeiF6ZllyKmVOMtDkSet8pGJt_vpXg5WrOu_dmSAWDsPzoDvO1JAFiHwQP3ceSClrA56WAL6nl2ndFDgF2MsWViUEd8fsSw_ZA:1pucCM:XXla62zlqf5IUgM8CnaN15dhGPmmP07sfHYtWtamFEQ', '2023-05-18 11:52:54.589771-05'),('gispui2jbj4jjlfirypekgqmu1jkok51', '.eJxVj7FuxCAQRP9la8sHNgbsMl2KSNefLGsNS4xzghNgpYjy78HKNdft7JsZaX4A75QKhli88ZhhKumgBhY8yrYcmdLiLUzQwctvRfNF4QR2x_AZWxNDSX5tT0v7pLn9iJbub0_vS8GGeatpbZ3oeufUqIi4HCyyQaLp3cCYE1JaIYzgyjjGkPXaOKOd5KMYlVadGlgtfVDKMSBMvIFsElH49rac5VwoXQ3pKJXebnCp4j3UmRHmpsrdPurWtY5u4Pp_7Rbm-fcP6BVaAg:1puxzU:D2baorzQxAybWKfGcSUt-I596FB87-Yug4J9dpZMJZ4', '2023-05-19 11:09:04.223534-05'),('859gv8qxre20wkm2p2i7lkxbhsu1rgpr', '.eJxVj71uhDAQhN9la8TZ4B-gTJci0vUnhBZ7HUxO9sk2ShHl3WOUa67b2W9mpPkBvFMqGGLxxmOGqaSDGljwKNtyZEqLtzBBBy-_Fc0XhRPYHcNnbE0MJfm1PS3tk-b2I1q6vz29LwUb5q2mB-tE1zunR03ElbTIpELTO8mYE0pZIYzg2jjGkPWDcWZwio9i1IPutGS19EEpx4Aw8QaySUTh29tylnPZq2pIR6n0doNLFe-hzowwN1Xu9lG3rnV0A9f_a7cwz79_5wVZ_Q:1puxqk:aNc0LWclVMryFM9Oi4KP0gzLwYEdcgc1OYje843ssiM', '2023-05-19 11:00:02.78932-05'),('45gjqbnjjb4yctpj0kfcsps32q29id64', '.eJxVj7FuxCAQRP9la8sHNgbsMl2KSNefLGsNS4xzghNgpYjy78HKNdft7JsZaX4A75QKhli88ZhhKumgBhY8yrYcmdLiLUzQwctvRfNF4QR2x_AZWxNDSX5tT0v7pLn9iJbub0_vS8GGeatpbZ3oeufUqIi4HCyyQaLp3cCYE1JaIYzgyjjGkPXaOKOd5KMYlVadGlgtfVDKMSBMvIFsElH49rac5VwoXQ3pKJXebnCp4j3UmRHmpsrdPurWtY5u4Pp_7Rbm-fcP6BVaAg:1puy1Q:nebPDRb1EzlQuiS-mncQrnZm9OIWoY_sLIXjaoQdWy4', '2023-05-19 11:11:04.25866-05'),('p1k9ysv839ypgw8mm7jlyggybsxoco5z', '.eJxVj71uhDAQhN9la8TZ4B-gTJci0vUnhBZ7HUxO9sk2ShHl3WOUa67b2W9mpPkBvFMqGGLxxmOGqaSDGljwKNtyZEqLtzBBBy-_Fc0XhRPYHcNnbE0MJfm1PS3tk-b2I1q6vz29LwUb5q2mB-tE1zunR03ElbTIpELTO8mYE0pZIYzg2jjGkPWDcWZwio9i1IPutGS19EEpx4Aw8QaySUTh29tylnPZq2pIR6n0doNLFe-hzowwN1Xu9lG3rnV0A9f_a7cwz79_5wVZ_Q:1puxrS:zjDXQYTdD1TZtH-cdEhRIzPo2Lt-RNraYjYXJoSSBFk', '2023-05-19 11:00:46.588457-05'),('2bgjjfygr9bhx7gcc2v0p9faw9w91ydo', '.eJxVjMsOgyAQRf-FdUNAeemy-36DGWGm0hpoAFdN_72auHF7z7nny2DF0iDlFn2EysZWNryxCba2TFvFMsXARtaxyzaDf2M6QHhBembuc2olzvxQ-Ekrf-SA6_10L4EF6rK_XSDV9UR2sIjS6ABCG_A9aSFIGROU8kpaT0KA6J0n78jIQQ3W2c5qsUc_WGpOwEb5-wPbdENl:1pubsX:NFJQTl4PTGymspaYAjwMxp3jsQxw271Sw5kl62TJ8Tg', '2023-05-18 11:32:25.623362-05'),('a9lo407z4zh9g32ns9v8zmzntzxdz4ug', '.eJxVj7FuxCAQRP9la8sHNgbsMl2KSNefLGsNS4xzghNgpYjy78HKNdft7JsZaX4A75QKhli88ZhhKumgBhY8yrYcmdLiLUzQwctvRfNF4QR2x_AZWxNDSX5tT0v7pLn9iJbub0_vS8GGeatpbZ3oeufUqIi4HCyyQaLp3cCYE1JaIYzgyjjGkPXaOKOd5KMYlVadGlgtfVDKMSBMvIFsElH49rac5VwoXQ3pKJXebnCp4j3UmRHmpsrdPurWtY5u4Pp_7Rbm-fcP6BVaAg:1puxdX:4uL_Qt2ctwa4z0TBPIrTWj9WG8Fkn6h4NgsUEh8IRrk', '2023-05-19 10:46:23.682356-05'),('drvr5k58q88qyeunrcbifz2j4il0zo9s', '.eJxVj7FuxCAQRP9la8sHNgbsMl2KSNefLGsNS4xzghNgpYjy78HKNdft7JsZaX4A75QKhli88ZhhKumgBhY8yrYcmdLiLUzQwctvRfNF4QR2x_AZWxNDSX5tT0v7pLn9iJbub0_vS8GGeatpbZ3oeufUqIi4HCyyQaLp3cCYE1JaIYzgyjjGkPXaOKOd5KMYlVadGlgtfVDKMSBMvIFsElH49rac5VwoXQ3pKJXebnCp4j3UmRHmpsrdPurWtY5u4Pp_7Rbm-fcP6BVaAg:1puxgC:qV4qaQWhToGMwyl3ccnynA3pH_PXS3iwm7JnOPOJn-s', '2023-05-19 10:49:08.35633-05'),('k9rtrjwqd816tbfyad1tu3w88uzsy7u3', '.eJxVj7FuxCAQRP9la8sHNgbsMl2KSNefLGsNS4xzghNgpYjy78HKNdft7JsZaX4A75QKhli88ZhhKumgBhY8yrYcmdLiLUzQwctvRfNF4QR2x_AZWxNDSX5tT0v7pLn9iJbub0_vS8GGeatpbZ3oeufUqIi4HCyyQaLp3cCYE1JaIYzgyjjGkPXaOKOd5KMYlVadGlgtfVDKMSBMvIFsElH49rac5VwoXQ3pKJXebnCp4j3UmRHmpsrdPurWtY5u4Pp_7Rbm-fcP6BVaAg:1puxjn:bayjPo9x9TIIywxxe1LuAqrtb1FsOMFx4-0uzs3VaJs', '2023-05-19 10:52:51.650628-05'),('yd0neeyj2cpiqj9izxbsfi6uydpvxtft', '.eJxVjzFuwzAMRe_C2XBoW5Zkj9065ARBYDAUVasNpEKS0aHo3asAWbLyvf8A_gLdJVeKqQYOVGCt-ZAONjrqvh1F8hYcrDDCy-1G_CXxAdwnxY_Uc4o1h1v_UPonLf05Obm_Pd2XwE5lb2vrvBon781iRAY9O8JZE09-RvRKa6cUq8GwRyScLHu2Xg-LWow1o5mxRb8llxQJ1qGDwlkk_gRXW9widpCP2tDlAqemvsf2Y4Lr9e8fARRQWw:1puy2T:C8b-A4i7t4K_fYgUNRHV8lRQ4jmG6JyPT75WDnIoTYI', '2023-05-19 11:12:09.258304-05'),('njyi99op385vlajfntnv7p8y136n3clx', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1q4Pv4:xYyW0d95otQEvciqwizYpT_aWAf-AWpAQiLGFWrlEXQ', '2023-06-14 12:47:34.245299-05'),('9y5z7so2uprzxjagyqdf5ix95kponzqb', '.eJxVjMsOwiAQRf-FtSE8C-PSvd9AYAakaiAp7cr479qkC93ec859sRC3tYZt5CXMxM5MstPvliI-ctsB3WO7dY69rcuc-K7wgw5-7ZSfl8P9O6hx1G_tSAFl6Tw4Bd4aEkA6AuaJbDIeSAgtUU4Fo7fZGSFRgC9KadJQhGLvD821Nyc:1q08CT:WXm_K8RHqs0Q1BipM6_Tsjp2qCxkY7CbqXueSw-ahEE', '2023-06-02 17:03:49.919921-05'),('ahzwq3hbtx861auivv02uv97l6vjzu41', '.eJxdj7FOxDAMQP_Fc1XapG3ajmwMSOynqnIS5xooCUpSGBD_jituOUb7PT_J34A7pYIhFm88ZphLOqiCFY-yrUemtHoLMwi422k0bxROYF8xXGNtYijJ6_pU6hvN9XO0tD_e3LvAhnnja-rbxhA5Y6ZGjq6XUqGeWnJaTVr1wqmOumkSwzA6Mw6yaXAgYTshRduMynH0g1KOAWFuK8gmEYUvb8sZb3s5sJCOwvRygQcengK_GWGpeET77oPPJWHxnzEzfflr7bAsHMarD2hjWo-0c-6__vML8KhpKg:1pyylq:dwBOem0piRKoAO1ZfsAl6XqCobfVvIgS6ud-KI-BXY0', '2023-05-30 12:47:34.974883-05'),('5rhb16zxip0dgo7y2stk0f5wvp157tal', '.eJxVjTEOAiEURO_y680KiwJuaWfhCYzZfODjogYMsLEw3l1MLLSdefPmCRMudZ6WQnkKDkbgA3S_oUF7pfhp3AXjOfU2xZqD6T9I_21Lf0iObrsv-yeYscxtrZ0aNA0cuXdSkfFesC3XQrRMG05eGO6tVUyt19Yoo5lBGqQkKbzgctOkd8olRYSRyw7wRrliTDXYgAXGmhfqoNhMFB_B1fapGesgL7UtjkdYNcM-NjrB6fR6A998UWw:1pzP15:YbGmdF6g9V2yRagmMmaDyCq3YVL3-yM7mcVpZjChCjk', '2023-05-31 16:49:03.072873-05'),('ix6ofdnb9geo32058h8dl8pvvxwqs2p9', '.eJxlj7tuxCAQAH8lorYcjB_YLtOliJT-ZFlrWM5cbIh4JEWUf89adzrplHKZYRZ-GGwYEjifrLIQ2ZhCxoLNkNM654hhtpqNTLCHswXUB7oD6Au4sy-VdynYpTyU8kZj-eY1bi839yGwQlzpNrYVV4hGqYHXvWnrWsIyVGgWOSyyFUY22AyD6LreqL6rOYcOhW5ELSreS0PRTwzRO2BjVbCoAqL7tjod8UpySULIiejpxJ5peHX0Tc-mgkbQu3U2pgDJfvlI9P3a2u58jsRxhyvbbfTxafc6b6RPEy2Hs3WgfZhz2Gjl_-TdoAf-_gEV3Xp9:1pyZFB:4Cq_bpBV2Tzz6qk0hWuSMjdQTbWYbL4Rv6Fwuc6mX2A', '2023-05-29 09:32:09.511849-05'),('08dmulp6kce2aal99xpbko470n2vk3rv', '.eJxVjMsOwiAQRf-FtSE8C-PSvd9AYAakaiAp7cr479qkC93ec859sRC3tYZt5CXMxM5MstPvliI-ctsB3WO7dY69rcuc-K7wgw5-7ZSfl8P9O6hx1G_tSAFl6Tw4Bd4aEkA6AuaJbDIeSAgtUU4Fo7fZGSFRgC9KadJQhGLvD821Nyc:1pxWdC:ncoAVgzNTJcOZwF477eokfmdL5t0s6pcKG1l9MxF_Uc', '2023-05-26 12:32:38.557732-05'),('s9nfyfzibgtsvv5wt8w326hr49mokb5s', '.eJxVjTEOAiEURO_y680KiwJuaWfhCYzZfODjogYMsLEw3l1MLLSdefPmCRMudZ6WQnkKDkbgA3S_oUF7pfhp3AXjOfU2xZqD6T9I_21Lf0iObrsv-yeYscxtrZ0aNA0cuXdSkfFesC3XQrRMG05eGO6tVUyt19Yoo5lBGqQkKbzgctOkd8olRYSRd4A3yhVjqsEGLDDWvFAHxWai-AiutkvNWAd5qW1wPMKqCfax0QlOp9cblgpRNg:1pzOvS:ekWjA5C97I0aTFHow12T_WORlgnasFVhGb2Xzj5U4tw', '2023-05-31 16:43:14.133267-05'),('qvsk1ho8crlh2getvly3v6avvqzuvhzw', 'e30:1pzLhV:H_qrcIa_khHYbWiIyE7pDHXBv_5A40GPnJENyUaI6D4', '2023-05-31 13:16:37.632842-05'),('b0eylpr767jg098gawb8xndauf1fkm5r', 'e30:1pzLiH:DcGiccLY29TCTpKJ84ZYdI1qaDkhAFEhDkNf-rKDHkQ', '2023-05-31 13:17:25.865997-05'),('stbwhw9zm1nl9vo3e4bz25e4scy71msb', '.eJxdj7tOxDAQRf9l6igkduLEKekokLZfRdHEHm8MwV75AQXi33FghbSUd869R5pPwJ1CQueTVRYjTClkqmDBnLYlRwqL1TABg7vbiuqV3AH0C7qLr5V3Kdi1Pir1jcb62WvaH2_dO8GGcStr6ttGERmlZMNH03M-4CpbMusg16FnZuiok5IJMRo1Ct40KIjpjnHWNuNgivRKIXqHMLUVRBWI3IfV6ZC3PRelEHIq9HyGhxKeXHnTw1yViPrNOhtTwGTffSz09OvaYZ6LGC_WofbhR_2Xlhz2Iv8__voGuuVtug:1pygs2:Y4Rl4UL3z26GVWiVvQ4eLihdHrBgW-Cqc-Dqzmnkf-0', '2023-05-29 17:40:46.981647-05'),('jpf5q3p1yczu340rlqp0zp5srfays14w', '.eJxVj7FuxCAQRP9la8sHNgbsMl2KSNefLGsNS4xzghNgpYjy78HKNdft7JsZaX4A75QKhli88ZhhKumgBhY8yrYcmdLiLUzQwctvRfNF4QR2x_AZWxNDSX5tT0v7pLn9iJbub0_vS8GGeatpbZ3oeufUqIi4HCyyQaLp3cCYE1JaIYzgyjjGkPXaOKOd5KMYlVadGlgtfVDKMSBMvIFsElH49rac5VwoXQ3pKJXebnCp4j3UmRHmpsrdPurWtY5u4Pp_7Rbm-fcP6BVaAg:1pv222:Ep7NgPY9PlCK4XGsrUBdb8ZRvSP1fYkuuoMYXThquag', '2023-05-19 15:27:58.014551-05'),('t8e3qveak0ylp56jm8674jawnmo1xyc0', '.eJxVjztvxCAQhP_L1paPhw3GZboUka4_WRaPJcY5wQmwUkT578HKNdft7Dcz0vyAvmOuOqYabNAF5poP7GDVR93Wo2Beg4MZGLz8jLZfGE_gdh0_U29TrDmY_rT0T1r6j-Tw_vb0vhRsumwtjSMlFtFbqwif_Mi51EZR9EYqI0fm5YCDUkyIydtJcEK0QOYGxhklk_St9IG5pKhhph0UmxHjd3D1LKcjF82Qj9ro7QaXJt5jm5lg6Zrc3aNtNW10B9f_a3ewLL9_AetaLw:1px6WX:0pbPEITKOaT_o0b0fJwJnO0cwG1R30N2wyjiA1Upoq8', '2023-05-25 08:40:01.007733-05'),('aqydv4v11rz69s733ctiugj9zm0jvkds', '.eJxVjLEOgjAURf_lzQQfUNri6ObgFxBCymsrVdOaFuJg_HdLwqDrPeeeN4xqXeZxTSaOTsMRaih-t0nR3fgN6Jvy11BS8Et0U7kp5U5TeQnaPE67-xeYVZrzW2rL6sZa0QljKt5qhS1X1NgW0TLONWPEKkEWUWEjyZK0vOpYJ6SoRYs5-jQxBa_gWBWQKBrjX04vOS4RC4jrklHfwyGrZ-_IBRiGzxdgoUge:1pv2AS:gjTzuTqi0VNjGVRewgjCO16DcBngT9zNlXqCzsNNiS0', '2023-05-19 15:36:40.976948-05'),('x4o48z6katzzd7w7dc3qzy2apsjfk6h4', '.eJxVjMsOwiAQRf-FtSE8C-PSvd9AYAakaiAp7cr479qkC93ec859sRC3tYZt5CXMxM5MstPvliI-ctsB3WO7dY69rcuc-K7wgw5-7ZSfl8P9O6hx1G_tSAFl6Tw4Bd4aEkA6AuaJbDIeSAgtUU4Fo7fZGSFRgC9KadJQhGLvD821Nyc:1px8tW:6KGjuCXPfYe1vX-599aDeTUctfc6IqUIXu6mSBd1yOI', '2023-05-25 11:11:54.97987-05'),('rf6y2bip2xjl5q8qw2np5r4ma6c82o7a', '.eJxVjLtuxCAQRf9lasvLwwbjMl2KSNuvLIvHEOOsYAVYKaL8e7CyRdLNvefM_YJVH3Vbj4J5DQ5mYND97Yy2HxhP4HYd31NvU6w5mP5U-ict_VtyeH95uv8GNl229o0jJRbRW6sIn_zIudRGUfRGKiNH5uWAg1JMiMnbSXBCtEDmBsYZJZP0bfSBuaSoYaYdFJsR42dw9RynIxdNyEdt9HaDSwuvMdiQYOla3N0jH2h0af3199odLEsH-o656phqkxuea6PfP851Wi8:1px78l:ikQqG3-Kr3EoN5Ar0VTAXUr0HRkAsEl-zXdQbAbVOb8', '2023-05-25 09:19:31.1903-05'),('vm6l9uyu72cesj1mku4e1q80uajt00zf', '.eJxVj7FuwyAQht_lZuRiGwP22C1DpO6RZZ3hiHEjiACrQ9V3L1GyZLu7_7tf-n4Bb5QKhli88ZhhKukgBgseZVuOTGnxFibo4O22ovmm8AjsjuEaGxNDSX5tHkjzSnNzjpZuny_2rWDDvNVvbZ3oeufUqIhaOVjkg0TTu4FzJ6S0QhjRKuM4R95r44x2sh3FqLTq1MBr6Z1SjgFhahlkk4jCj7ellmvOGaSj1OhygY-KnkJ1jDCzuu72XkXXaszg6zntFub57x_y4FmC:1pv2Ah:WpYzgJHev4CtBRr85fUrc399LpA3M4sdj1JKanvBpW4', '2023-05-19 15:36:55.065969-05'),('o970tbf30ujkua4gvqr1brbhnfo03k4k', '.eJxVj71uhDAQhN9la8TZ4B-gTJci0vUnhBZ7HUxO9sk2ShHl3WOUa67b2W9mpPkBvFMqGGLxxmOGqaSDGljwKNtyZEqLtzBBBy-_Fc0XhRPYHcNnbE0MJfm1PS3tk-b2I1q6vz29LwUb5q2mB-tE1zunR03ElbTIpELTO8mYE0pZIYzg2jjGkPWDcWZwio9i1IPutGS19EEpx4Aw8QaySUTh29tylnPZq2pIR6n0doNLFe-hzowwN1Xu9lG3rnV0A9f_a7cwz79_5wVZ_Q:1pwsHg:rLJKa4ezp8mpNQZ2-erQL8ZluqPbthWDBklsJ1HptFU', '2023-05-24 17:27:44.045339-05'),('tbpplgrxni10t5yhtw3ldglvduhanfxs', '.eJxdj7tOxDAQRf9l6igkduLEKekokLZfRdHEHm8MwV75AQXi33FghbSUd869R5pPwJ1CQueTVRYjTClkqmDBnLYlRwqL1TABg7vbiuqV3AH0C7qLr5V3Kdi1Pir1jcb62WvaH2_dO8GGcStr6ttGERmlZMNH03M-4CpbMusg16FnZuiok5IJMRo1Ct40KIjpjnHWNuNgivRKIXqHMLUVRBWI3IfV6ZC3PRelEHIq9HyGhxKeXHnTw1yViPrNOhtTwGTffSz09OvaYZ6LGC_WofbhR_2Xlhz2Iv8__voGuuVtug:1pyw4U:IJPTSuhbAzMNxiTU48dy6BuRvUgcGPNeJjelp0Z_v_s', '2023-05-30 09:54:38.348524-05'),('h1mp8mviv5oc3hgs1pdpk76mcdgj67d5', '.eJxVjMsOwiAQRf-FtSE8C-PSvd9AYAakaiAp7cr479qkC93ec859sRC3tYZt5CXMxM5MstPvliI-ctsB3WO7dY69rcuc-K7wgw5-7ZSfl8P9O6hx1G_tSAFl6Tw4Bd4aEkA6AuaJbDIeSAgtUU4Fo7fZGSFRgC9KadJQhGLvD821Nyc:1pyyXd:mC2m1XETdr53ZKEC1DpA-4L1RTvuqsSJ7738gjwx5ng', '2023-05-30 12:32:53.117303-05'),('24hhixk4n9ch0pow6wmdeha84d932frl', '.eJxVjMsOwiAQRf-FtSE8C-PSvd9AYAakaiAp7cr479qkC93ec859sRC3tYZt5CXMxM5MstPvliI-ctsB3WO7dY69rcuc-K7wgw5-7ZSfl8P9O6hx1G_tSAFl6Tw4Bd4aEkA6AuaJbDIeSAgtUU4Fo7fZGSFRgC9KadJQhGLvD821Nyc:1pwsLP:32FZ1ilqaxL5yZsM75-VJuu1myxubvbc7p5X_j4Y-04', '2023-05-24 17:31:35.255228-05'),('vvy81eicw0c29ff82rapelt0m6i3h3xe', '.eJxlj0tPhTAQhf-K6ZpgKY8CS3cuTNzf3JChHS69Qmv60IXxvzsIGm9czeN852Tmg8GCPoJ10SgDgfXRJ8zYACnOQwroB6NZzwS72Y2gXtBugr6CvbhcORu9GfMNyQ815E9O4_JwsDcBM4SZ3FgXXCFOSnW8bKe6LCWMXYHTKLtR1mKSFVZdJ5qmnVTblJxDg0JXohQFb-VEoa_og7PA-iJjQXlE-2503MILySUBPkVSTyd2T8OjpTcdO2c0gl6HYELEFUh5Rr-a4MLd6nRaXNiZI33Zgb39MRtLZg_RvBH9Vz9_X8V6QRUuxoJ2fkh-oZv-234J-uDzC0D3hQ8:1pyYPB:OhoSxtM2zDbTv6Ko_kTW-0X9UMMPkNJH6v2NfCUxlio', '2023-05-29 08:38:25.859346-05'),('k26mbsr3hxezlgamanm19wqg4i5hif4p', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1pyYn5:FHu6yTPgWU61LTRj6b24uxLAIOl5KLkBUoyXcyxgOQ8', '2023-05-29 09:03:07.453435-05'),('3fbjqch21ug7yxu4z9nf4sgf1yu985uz', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1pzLQT:fhF_gZtZ9jX4Ae0x4Wtl3wdhHNYJNWykUK3280YKFh8', '2023-05-31 12:59:01.784846-05'),('imkgcnmfkh5o3iy0zp76tjgueqmill7q', '.eJxVjMsOwiAQRf-FtSE8C-PSvd9AYAakaiAp7cr479qkC93ec859sRC3tYZt5CXMxM5MstPvliI-ctsB3WO7dY69rcuc-K7wgw5-7ZSfl8P9O6hx1G_tSAFl6Tw4Bd4aEkA6AuaJbDIeSAgtUU4Fo7fZGSFRgC9KadJQhGLvD821Nyc:1pyf5i:MDbnHxkWmCF5oo9eJGSICshvDRvGQdOBc5SElWzmzzI', '2023-05-29 15:46:46.259922-05'),('12z86pygi38vw5tldufg302fsxvvc62i', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1q6I6l:6dEKOr5qkArUbko2ienjatntYqhX9A7L07CcuoSq2Qc', '2023-06-19 16:51:23.343955-05'),('3k4e2nox0nia3ksr05y6yp3egdl974wv', '.eJxVjMsOgyAQRf-FdWN4OCguu-83mAGGSmugAVw1_fdq4sbtPeeeL8OVSsOUW3QRK5ta2ejGZtzaMm-Vyhw9m5gw7DJadG9KB_EvTM_cuZxaibY7lO6ktXtkT-v9dC-BBeuyvwkcKOMctxpMUFI5M3AlrFRDML0Zex6CEiYEqYXVHDiS1xoCgCSLdtyjHyo1J2SThN8fPCpD-w:1q08xX:6L75hcygfIjIvXEmmBYDZ6Q5kx9JvuqSpksAlyE7Aok', '2023-06-02 17:52:27.659615-05'),('hipjlpaolzlm37p0q8613hb3gx05tzsz', '.eJxVjLEOwiAURf_lzU0tpQJ2dHPwC5qmecDDVhswQCfjv0sTB13POfe-YMItz9OWKE6LhR5YC9Uv1Gge5Hdj7-hvoTbB57joek_qr031NVhaz9_272DGNJe1srJV1DJkzgpJ2jnenJjivDClGTmumTNGNrLrjJZaNRqpFYIEd5yJYzl9UkzBI_SsAlwpZvQhL2bBBL3DNVEFccvFDwMcSn_xRQYYx_cHTuJLnw:1pzLqF:OLQzG-13d60UjcZZ69BnLt76pPBt5xNywet1LR0p3Xo', '2023-05-31 13:25:39.05947-05'),('cwuo3k4eq6r6wvg8441jg1w0vnvt4ily', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1q4QTM:HPBHqirK4Pqp9c3jkaOl13H1fpp-Xg-71RCK6S4Rssw', '2023-06-14 13:23:00.167417-05'),('7jyu1uyvuj22jsha0547qsy3g5ve4aun', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1q4QU8:p9692Grp8hlbVfNNieNX_x7iUMxBxQ-M7JeA3OHJsyw', '2023-06-14 13:23:48.751231-05'),('x55juayjt86t67ko5tcx9n0c42nj184x', '.eJxVjUEOwiAURO_C2jQU2gJduvcMzefzsWgDDdC4MN7dVt24nJk3M08GC-UKMdWAAQoba97oxCbY6jxthfIUHBuZYH-eBbxTPAJ3g3hNDaZYc7DNgTS_tDSX5Gg5_9i_gRnKvLepbzkSeUTDpfa9lAqsaclbZazqhVcddcaIYdAe9SA5h4GE64QULdfK76Mr5ZIisLFVH-HDsuYQMaywfM2CmSg-gqv7peb89QaNo1EG:1q4QZS:XAga5fig0FkRcoTvIA7j-lFWi3BQ9Ic51QoH3JAfvu4', '2023-06-14 13:29:18.372748-05'),('tub2dr3774fjpysr13wiow4cxklqrjix', '.eJxVj01uwyAQhe8y68jFYBvwsrsueoIosgYYahoLLMDKIurdS9psspz3843eHXCjXDGmGmzAAnPNB51gwaOuy1EoL8HBDBxeNIP2SvFhuG-MX6mzKdYcTPeIdE-3dJ_J0fb-zL4AVixra9PYM0vkrdVMKD8KIdHonryR2siReznQoDWfJuWtmgRjOBF3Axe8Z0r6Bt0plxQR5l7-HT5sew7Rhh23f7HYTBRvwdX2UjF2gnzUVjif4a0BPmJbnuBy-fkFd6dYGg:1q4SfD:wo4acNj3WrxY4V658LVwSueAr5Qtv_omb_Aj_7PaNrc', '2023-06-14 15:43:23.68702-05'),('uk0wd8jt1awhi9wax0g9kck50xwsy27x', 'e30:1q4SIp:Wts99uBQI_p3XCzoMtdDWhYt2YAJCtamW_ZdJ2zU6Kk', '2023-06-14 15:20:15.966365-05'),('699nlh4bbif9d8nip1h33c9wvp7im1az', 'e30:1pzLi4:HRgg3wam2IE4B-3xPDpVhuSsfm4Iuua6zSscygfWgec', '2023-05-31 13:17:12.605659-05'),('tyyywx5xgoouubec199kt1fapo0xc4m8', 'e30:1q4SNb:f5pgqT6BkhszJe8MkWuK4yYEQCF6yiaqZvbl9DiG72g', '2023-06-14 15:25:11.688706-05'),('adgfs22rzetz2n4p6edw9jh2gry5lh2q', '.eJxVjEEOgyAURO_y1w21ogIuu-uiJzDGfD5QaQ0kgqumdy8mLtpZznszb5hwy_O0JbtO3kAPCk6_nUZ62bAD88TwiIxiyKvXbFfYQRO7R2OX6-H-HcyY5rLuSkhIbE1bOW4Uoqsu3JAUTd1wzUkQkek6lLKWSrtW1JUjJVA0TitelVNc7JoxxOzJY4Le4ZLsCdYtI_TDAOfi3EKBEcbx8wWsEEeK:1pzLmP:Mg9zoMsU12AivFRAwUNSGephEYLEtzNMIMATmW8a6Fk', '2023-05-31 13:21:41.859446-05'),('jucpochh8kj9q0qqtziitu8uoz3flsuk', '.eJxVj71uhDAQhN9la8TZ4B-gTJci0vUnhBZ7HUxO9sk2ShHl3WOUa67b2W9mpPkBvFMqGGLxxmOGqaSDGljwKNtyZEqLtzBBBy-_Fc0XhRPYHcNnbE0MJfm1PS3tk-b2I1q6vz29LwUb5q2mB-tE1zunR03ElbTIpELTO8mYE0pZIYzg2jjGkPWDcWZwio9i1IPutGS19EEpx4Aw8QaySUTh29tylnPZq2pIR6n0doNLFe-hzowwN1Xu9lG3rnV0A9f_a7cwz79_5wVZ_Q:1pwkoj:kEqRSNF-oyme_QsfcQz_5Cf4jrIkjoG4M1kiGYXdBF0', '2023-05-24 09:29:21.964891-05'),('jtffxbemymzoq7nfycw8mdu9nyvi28r5', '.eJxVjDsOgzAQBe_iOrL8AeylTJ8zoMW7BCfIlmxTRbl7gkRD-2bmfQRuXBqm3GKIWMXYys43MeHe1mmvXKZIYhRaXLYZw5vTAeiF6ZllyKmVOMtDkSet8pGJt_vpXg5WrOu_dmSAWDsPzoDvO1JAFiHwQP3ceSClrA56WAL6nl2ndFDgF2MsWViUEd8fsSw_ZA:1pzPRU:Y0LnQNKK5JzyOg_vIVwjb_LnDwJgdkXnjpoJdmMiNp4', '2023-05-31 17:16:20.096538-05'),('uumxvfid1tzpett6n82c9kfrdys1bel1', '.eJxVjMsOwiAQRf-FtSE8C-PSvd9AYAakaiAp7cr479qkC93ec859sRC3tYZt5CXMxM5MstPvliI-ctsB3WO7dY69rcuc-K7wgw5-7ZSfl8P9O6hx1G_tSAFl6Tw4Bd4aEkA6AuaJbDIeSAgtUU4Fo7fZGSFRgC9KadJQhGLvD821Nyc:1pzPYS:hr6Fc57_rDQfuK9QFkT1fEoUTFNIMnib57gw6bSZGKs', '2023-05-31 17:23:32.36221-05'),('u4w0kri95sqd552ty1gt7b9j8j98j3ir', '.eJxVjMsOwiAQRf-FtSE8C-PSvd9AYAakaiAp7cr479qkC93ec859sRC3tYZt5CXMxM5MstPvliI-ctsB3WO7dY69rcuc-K7wgw5-7ZSfl8P9O6hx1G_tSAFl6Tw4Bd4aEkA6AuaJbDIeSAgtUU4Fo7fZGSFRgC9KadJQhGLvD821Nyc:1pzPYT:F_MxXsKuHUJ0xqMYgcuqB3BNgDlvbKEEqd3uoy0qOSM', '2023-05-31 17:23:33.185706-05'),('7ehhcz0u00l7985brxcoooh9c9u90tu6', '.eJxdjztPxDAQhP_L1lFI4rxLOgok-lMUbez13YKxIz-gQPx3HO6EdJSzM_ON9gvQkI9oXWTJGGCOPlEBK6Z4WVMgv7KCGRq4u20o38gehnpFe3aldDZ63sojUt7cUD47Rebxlr0DXDBccpu6upJEWsqpEqPuhBhwm2rS2zBtQ9fooaV2mpq-H7Uce1FV2FOj2kY0dTUOOkN38sFZhLkuIEhPZD9ZxQNed6K_BjSb3bOVvKOB2SZjCvAp5tLpBA8582Tz9w6WIktU72w5RI-RP1zI7st1wsCyZBye2aJy_nfxT63JZzT8L3__AEe0dmM:1pzPbZ:-lY4-NEU5BDwJz-zH5YsRwXHE1zu2nAjSNFVY1Ld5QY', '2023-05-31 17:26:45.889752-05'),('2ny9bq5yqigcyehq32uayogzkp4hshir', '.eJxVjDFuxCAQRe8y9crCYBtwmT5nsIZhiEkQWICVIsrd17vaZtv_3n9_gIlrx1x6pIgN1l5PvsGGZ9-3s3HdoocVJLxtDumH8wP4b8xfZaCSe41ueCjDi7bhs3hOHy_3LbBj2683z6Mg5kBkhTJhVkqjsyMHp63Tswx64slauSwmkFmUELiw9JNUchRGhyt6cG0lI6yjvkGjypx_o-9X3QjxxCGmo8ZM8cAEaz5T-r8DKodSWQ:1q4Q7x:lQcsmI_WnXtPF0kTPLghONOqbaydkO_ceyaOxM_Q6hI', '2023-06-14 13:00:53.1017-05'),('oq68byu7tfr34t82n47ujn0o8om3r1zm', '.eJxVjMsOgyAQRf-FdWN4OCguu-83mAGGSmugAVw1_fdq4sbtPeeeL8OVSsOUW3QRK5ta2ejGZtzaMm-Vyhw9m5gw7DJadG9KB_EvTM_cuZxaibY7lO6ktXtkT-v9dC-BBeuyvwkcKOMctxpMUFI5M3AlrFRDML0Zex6CEiYEqYXVHDiS1xoCgCSLdtyjHyo1J2SThN8fPCpD-w:1q08Sx:gPS4bkxLOah0Q7GBdoQ1_RHo2FG1nE5Y6VVFxEPOjv8', '2023-06-02 17:20:51.868683-05'),('7zq0n1p33k2kdt382xhjyq8wah4pm1w7', '.eJxVjDkOwjAUBe_iOrK8JF5S0nOGyMs3MVh2ZCeiQNydBKWA9s28eaHJbOs8bQ3qFD0aEUPd72aNe0A-gL-bfCvYlbzWaPGh4JM2fC0e0uV0_wKzafP-hoESBxCc04SrMHAujdUUgpXayoEF2UOvNRNCBacEJ8QIYL5nnFGiZNijC9RWskEjlR1qrgLkZ_TrXleEfHGIaakxu7iYhMa8pfT-AIoUShw:1q4Q0V:jCpdJjeLYHPLOFRIFDLIShS6yeHcPHFjVlhW8cX1VQ4', '2023-06-14 12:53:11.022315-05'),('ftmtd5ftj7h0ztaqykhny4es8s80rpgr', '.eJxlj7FuhDAMht_FM6KQAAHGbh1O6n5CyCTOkStNTkloh6rvXqOeKp06_v4_f5a_ADeKGX3ITjtMMOa4UwEz7nmd90RxdgZGEPAwW1C_kT8Kc0V_CaUOPke3lAdS3ttUnoKh7fnOPghWTCtvU1tXmshqPVSyt62UCpehJruoYVGtsKqhZhhE1_VW952sKuxImEZIUVe9siy9UUzBI4y1KiDpSOQ_ncmHvW5lx0TcM9fnMzxxePH8Z4Cp4Ijm3XmXcsTsPkLi9vVXtsE0sRkvzqMJcd7jxrr_-B_B179_ADArbfE:1pzQAT:xM6S3j8zVczPbduzhon1NW28qyDwUZPrDiU6kmD1a1w', '2023-05-31 18:02:49.648598-05'),('4swtir5ec6bob9u20jray9rescm6ll1n', '.eJxVjDFuxCAQRe8y9crCYBtwmT5nsIZhiEkQWICVIsrd17vaZtv_3n9_gIlrx1x6pIgN1l5PvsGGZ9-3s3HdoocVJLxtDumH8wP4b8xfZaCSe41ueCjDi7bhs3hOHy_3LbBj2683z6Mg5kBkhTJhVkqjsyMHp63Tswx64slauSwmkFmUELiw9JNUchRGhyt6cG0lI6yjvkGjypx_o-9X3QjxxCGmo8ZM8cAEaz5T-r8DKodSWQ:1q08x9:uHg_hBalXx0cyMekJznxafjZrE-wIakSruxtG4aSQHk', '2023-06-02 17:52:03.665077-05'),('g9y27l47svu2xy7wayxojirx85mvsuzu', '.eJxVjMsOwiAQRf-FtSE8C-PSvd9AYAakaiAp7cr479qkC93ec859sRC3tYZt5CXMxM5MstPvliI-ctsB3WO7dY69rcuc-K7wgw5-7ZSfl8P9O6hx1G_tSAFl6Tw4Bd4aEkA6AuaJbDIeSAgtUU4Fo7fZGSFRgC9KadJQhGLvD821Nyc:1q4Q73:-LiDDc1_Hw2feXI9p6AOdOcvAuFhJM9DGzFogGRkIOE', '2023-06-14 12:59:57.22092-05'),('b4p6415k85nwsgafpcreq4pj6ybasacr', '.eJxVjUEOwiAURO_C2jQU2gJduvcMzefzsWgDDdC4MN7dVt24nJk3M08GC-UKMdWAAQoba97oxCbY6jxthfIUHBuZYH-eBbxTPAJ3g3hNDaZYc7DNgTS_tDSX5Gg5_9i_gRnKvLepbzkSeUTDpfa9lAqsaclbZazqhVcddcaIYdAe9SA5h4GE64QULdfK76Mr5ZIisLFVH-HDsuYQMaywfM2CmSg-gqv7peb89QaNo1EG:1q4SI9:fSPo4uMV73ZBLbSjui-8i04mwJzFEN3FYqiNR1pcZkE', '2023-06-14 15:19:33.552215-05'),('ld2i5zfe0hzo7n6k2ud7dan0hwj6ar0r', '.eJxVj01uwyAQhe8y68jFYBvwsrsueoIosgYYahoLLMDKIurdS9psspz3843eHXCjXDGmGmzAAnPNB51gwaOuy1EoL8HBDBxeNIP2SvFhuG-MX6mzKdYcTPeIdE-3dJ_J0fb-zL4AVixra9PYM0vkrdVMKD8KIdHonryR2siReznQoDWfJuWtmgRjOBF3Axe8Z0r6Bt0plxQR5l7-HT5sew7Rhh23f7HYTBRvwdX2UjF2gnzUVjif4a0BPmJbnuBy-fkFd6dYGg:1q6DHb:cQOopT51rqHL64mBVOp0zLl_-rJxiADl2Ra4-Nsqg0s', '2023-06-19 11:42:15.338693-05'),('4ywd0liiu7o2vbe3hduq1z6gmnj33hnw', '.eJxVjcsOgjAURP-la9P0AX2wdO83kPb2VqqkkBbiwvjvgrLQ5cycmXmS3q3L0K8VS58C6Yggp1_PO7hj3oNwc_k6UZjyUpKnO0KPtNLLFHA8H-zfwODqsLWx5QwQI4Bl0sRWSu285Ri9tl63IuoGG2uFUiaCUZIxp1CERkjBmdFxG52x1Ck70nH9ETGNc0kZ0uzGr1mhIOZHCst2aRh7vQH9qkjJ:1q4SV0:l3_dft-9H0vyjmnFGrdVHDtI4yGiP2jkWasM4_PbFSY', '2023-06-14 15:32:50.063383-05'),('d5m0i4cfo2y5t531ymc67v9r8hd9kl59', 'e30:1q4QTs:_Hty6tQd5_zJ44_YYIttmnRIe914nP_cWkrH6pneO8w', '2023-06-14 13:23:32.909009-05'),('4584a07yj4pgm6gl3adxmhkoi9xihte4', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1q4QV5:KK9o5Wg30CATP-v93xaqI2fN1gVQRITN702DWekTtuA', '2023-06-14 13:24:47.790137-05'),('mcjc4dgk44k9i6qbr8bvlvcwjhvfnv7i', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1q4SJq:kEv4C-gxs1Vziq-IHRSVx950bR3XMgDieZVxbAQPbdE', '2023-06-14 15:21:18.337539-05'),('i8wppwpcla8p48e3f97vs3rjd4c0ce76', '.eJxVjDFuxCAQRe8y9crCYBtwmT5nsIZhiEkQWICVIsrd17vaZtv_3n9_gIlrx1x6pIgN1l5PvsGGZ9-3s3HdoocVJLxtDumH8wP4b8xfZaCSe41ueCjDi7bhs3hOHy_3LbBj2683z6Mg5kBkhTJhVkqjsyMHp63Tswx64slauSwmkFmUELiw9JNUchRGhyt6cG0lI6yjvkGjypx_o-9X3QjxxCGmo8ZM8cAEaz5T-r8DKodSWQ:1q4Q2y:m9GPc5TNU22sedRfAwoicPOB51hu-lC1p5QwNoh-y3g', '2023-06-14 12:55:44.479271-05'),('xf8b05oqdh792vzza7j9030u5ecj9qkg', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1q4QTs:SU2Ly-I-b1tMBwK_tyaahNyYKPU-B2vvY-iQ8xgM3mY', '2023-06-14 13:23:32.909009-05'),('2rftjrxvh2amlvzdvq5pl58g282tjton', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1q4SHg:k1D1fxdfmvPH2OUAjxnQl3-y0gv1Y-zJzCq-S5dL-TY', '2023-06-14 15:19:04.487663-05'),('ha9twr01o0l5k55ckbquhh4o46c7aobd', '.eJxdTztPxDAM_ivI86mk6bsjGwMS-6mq3MS5M7RJlaQwIP47aTkhHZPl7-XPX4Az-YjWRVaMAfroNzrBiFu8jlsgP7KGHiTcYROqd7I7od_QXlymnI2ep2yXZDc2ZC9O0_x0094FXDFck5uqXCgio1QnitZURdHg1OVkpqabmkqapqSy62Rdt0a1dSEE1iR1KQuZi7YxKXQlH5xF6PPmWAzPq2ereMX5FwzKE9lP1jGdbIU4gd9iMpzP8JgCnm363MFwSivqZQwcIi2YmFfyCwcXHhant9mFPw3bpPEY-SOBh26vMMMwHBWgl2nihS1q58fNpyLw3_b9A52RfyI:1q4Sqd:PSCuIfVAx-rxUYPamLMeo8li8rC_PzUKBBjpubnTdqM', '2023-06-14 15:55:11.141897-05'),('0fh8z73cs9zrr2c58zckw3e2ow4lvyfy', '.eJxVj7tuhDAQRX8lmhoRYx4GynQpIqVfITTY4-AN2MhjlCLKv8ebbLPlfZ3RfANuFBP6kJx2yDCmeFIBM55pnU-mODsDI0h48BbUn-Rvgbmi_wilDj5Ft5S3SnlPuXwLhraXe_cBsCKveU1tJTSR1XoQdW_bula4DBXZRQ2LaqVVDTXDILuut7rvaiGwI2kaWctK9Mpm6EGRg0cYK_UnrNuO6Lx2B27_JutI5L-cSflkL0QB8Ux5cLnAcwa8-vx5gKnIEs0-s-NEO-bkneLuOPDTHsy5BYZp-vkFulZk3Q:1q4Tld:ZP6XR-7hh1FvBt3hGTn246zifLydKjEWAm8GnPFZyvQ', '2023-06-14 16:54:05.251869-05'),('heyvtvsebdkaky85p209sfppvt0zxgex', '.eJxVj8tuwyAQRf-FdeTwsMF42V0X_YIosgYYaloLLMDKouq_ByfZZHkf547mj8CKuUJMNdgAhUw173giM-x1mfeCeQ6OTISTN8-A_cV4BO4H4nfqbIo1B9Mdle6Vlu4rOVw_Xt23gQXK0mgcGLWI3lpNxegHIRQYzdAbpY0auFc99lpzKUdvRykoBYnc9VxwRkfl2-iGuaQIZGLqIXxYtxyiDRusT7PYjBhvwdXjJBuEbFjea2MuF3Ju4jO25xO5Xv_vdhBYlQ:1q6Aeu:3VMxmyAYPCa3EEcm9Guyh6wdL77Z1-xEXVd631EfYw4', '2023-06-19 08:54:08.672406-05'),('3sy76r4x9ieu72gmgkvcj743eia76gxa', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1q6Wuz:xlACXOi6ypt9xMMZdP7xdtVZ6TWkNcw-yW_Mh35Jln4', '2023-06-20 08:40:13.32058-05'),('gutx8y7xyh30m4lkqfsx5kwhrschbw2y', '.eJxVj7tuhDAQRX8lmhoRYx4GynQpIqVfITTY4-AN2MhjlCLKv8ebbLPlfZ3RfANuFBP6kJx2yDCmeFIBM55pnU-mODsDI0h48BbUn-Rvgbmi_wilDj5Ft5S3SnlPuXwLhraXe_cBsCKveU1tJTSR1XoQdW_bula4DBXZRQ2LaqVVDTXDILuut7rvaiGwI2kaWctK9Mpm6EGRg0cYK_UnrNuO6Lx2B27_JutI5L-cSflkL0QB8Ux5cLnAcwa8-vx5gKnIEs0-s-NEO-bkneLuOPDTHsy5BYZp-vkFulZk3Q:1qA9s8:7xFyjpYDp3Gl5NSgTvXYjkN5J4EwjEP2HuVZCztsmV4', '2023-06-30 08:52:16.901154-05'),('bqb593vbq04vvwywexqsv2vkoeoo0ef5', '.eJxVjDFuxCAQRe8y9crCYBtwmT5nsIZhiEkQWICVIsrd17vaZtv_3n9_gIlrx1x6pIgN1l5PvsGGZ9-3s3HdoocVJLxtDumH8wP4b8xfZaCSe41ueCjDi7bhs3hOHy_3LbBj2683z6Mg5kBkhTJhVkqjsyMHp63Tswx64slauSwmkFmUELiw9JNUchRGhyt6cG0lI6yjvkGjypx_o-9X3QjxxCGmo8ZM8cAEaz5T-r8DKodSWQ:1q4QIP:1_vwV8puzJhphtPY3EEAs_QAPyk0TcUoY2BJwbyZwdA', '2023-06-14 13:11:41.702003-05'),('l9uvxqnymwnw93sajg2uc7arkidyhg7g', 'e30:1q4SIS:xhOM3KNdMJKYIFN1J05Ut6MTsEUuWllg4g-RcYQH9LQ', '2023-06-14 15:19:52.909219-05'),('qlyp6fny0c36h8w05y6wjfm1rodtlnio', '.eJxVjDFuxCAQRe8y9crCYBtwmT5nsIZhiEkQWICVIsrd17vaZtv_3n9_gIlrx1x6pIgN1l5PvsGGZ9-3s3HdoocVJLxtDumH8wP4b8xfZaCSe41ueCjDi7bhs3hOHy_3LbBj2683z6Mg5kBkhTJhVkqjsyMHp63Tswx64slauSwmkFmUELiw9JNUchRGhyt6cG0lI6yjvkGjypx_o-9X3QjxxCGmo8ZM8cAEaz5T-r8DKodSWQ:1q4Pg7:U4XrtyQDPL0_ZTOxKRaW48AmcpJ4iTvSiRGptrnP7vo', '2023-06-14 12:32:07.887814-05'),('q4fppybw5tlleam5h1d7gx3vkb18kusf', 'eyJhbGVydGFub3RpY2lhcyI6dHJ1ZX0:1q4SKY:VPrEWg3QR4KSyiJvpbrqwMxaJQcQKeH-5dwOpedMIPM', '2023-06-14 15:22:02.852639-05'),('z47lb91x0bcnd7vu399gjk6hqxs5m4ll', '.eJxVjEsOAiEQBe_C2hAYmo8u3c8ZSEM3Mmogmc_KeHedZBa6fVX1XiLitta4LTzHicRFaHH63RLmB7cd0B3brcvc2zpPSe6KPOgix078vB7u30HFpX5rYwoCaEohW2CwDgFdAq08D96qNKhMypEtEM5D4YBeG_aJlbdoSJN4fwDYkDfA:1qREX8:1byOcADVL_606s191OD0mNTlSZJLMosYthzg02iOGe4', '2023-08-16 11:17:10.72703-05'),('8ow0mibszfz2bok7zrtdvp4x3x64csr9', '.eJxVkEFvhCAQhf9Kw3ljRUGsx956aNL7ZmMGZqxYBQOYHpr-96Ju0uxt3rz3zcD8MJgpJHA-WWMhsi6FjS6shy2N_RYp9BZZxyr20NNgvsjtBk7gPn1hvEvB6mKPFHc3Fu8eaX69Zx8GjBDHTNf1AEJw1K2RgoRsQECjBS8VVUqWuioNlg3KQbQv1UAtKF6T0lQqCTXyfehKIXoHrOPqEIOd12CdsSvMZzOaQOS-LaZ9JZd1k7Gwpcxcr-w5izeXP-_Z7ZIl4NJHGxMtkJ0PCouNPj4tHrfZxzMz4ZqvpPO5cuKsJvzH15DDJvnDPcsM3o7nsa76_QNiqHtn:1qRbb4:tweWP1yiCn3Y9PTbdQ3b9utmc9IjJblh90YVutVdJFI', '2023-08-17 11:54:46.962048-05'),('2s42l84th9dan5sln3yrpjdsyrl5vdoz', '.eJxVjEsOAiEQBe_C2hAYmo8u3c8ZSEM3Mmogmc_KeHedZBa6fVX1XiLitta4LTzHicRFaHH63RLmB7cd0B3brcvc2zpPSe6KPOgix078vB7u30HFpX5rYwoCaEohW2CwDgFdAq08D96qNKhMypEtEM5D4YBeG_aJlbdoSJN4fwDYkDfA:1qRbFQ:caMtoWcFm4rpF-eH-hwLZB-ptK0ifqPyHjZoRqTjKRU', '2023-08-17 11:32:24.011505-05');
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_administrativo" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_administrativo";
INSERT INTO "public"."jdsistemas_administrativo" ("id","fecha_creacion","fecha_modificacion","activo","persona_id","usuario_creacion_id","usuario_modificacion_id") VALUES (11, '2023-05-19 17:09:30.515705-05', NULL, 't', 25, 2, NULL),(12, NULL, NULL, 't', 17, NULL, NULL);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_cambioclavepersona" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_cambioclavepersona";
INSERT INTO "public"."jdsistemas_cambioclavepersona" ("id","fecha_creacion","fecha_modificacion","clavecambio","solicitada","persona_id","usuario_creacion_id","usuario_modificacion_id") VALUES (16, '2023-05-19 17:09:30.511704-05', NULL, '', 'f', 25, 1, NULL);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_canton" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_canton";
INSERT INTO "public"."jdsistemas_canton" ("id","fecha_creacion","fecha_modificacion","nombre","codigosniese","provincia_id","usuario_creacion_id","usuario_modificacion_id") VALUES (8, NULL, '2017-11-17 00:22:06.166943-05', 'SANTA ISABEL', '0108', 1, NULL, 1),(12, NULL, '2017-11-17 00:22:06.180756-05', 'EL PAN', '0112', 1, NULL, 1),(16, NULL, '2017-11-17 00:22:06.191715-05', 'GUARANDA', '0201', 2, NULL, 1),(20, NULL, '2017-11-17 00:22:06.205214-05', 'SAN MIGUEL', '0205', 2, NULL, 1),(22, NULL, '2017-11-17 00:22:06.209264-05', 'LAS NAVES', '0207', 2, NULL, 1),(24, NULL, '2017-11-17 00:22:06.213321-05', 'BIBLIAN', '0302', 3, NULL, 1),(25, NULL, '2017-11-17 00:22:06.216676-05', 'CAÑAR', '0303', 3, NULL, 1),(33, NULL, '2017-11-17 00:22:06.233017-05', 'MIRA', '0404', 4, NULL, 1),(35, NULL, '2017-11-17 00:22:06.237061-05', 'SAN PEDRO DE HUACA', '0406', 4, NULL, 1),(34, NULL, '2017-11-17 00:00:46.788946-05', 'MONTUFAR', '0405', 4, NULL, 1),(36, NULL, '2017-11-17 00:22:06.240444-05', 'LATACUNGA', '0501', 5, NULL, 1),(38, NULL, '2017-11-17 00:22:06.244489-05', 'PANGUA', '0503', 5, NULL, 1),(40, NULL, '2017-11-17 00:22:06.248811-05', 'SALCEDO', '0505', 5, NULL, 1),(43, NULL, '2017-11-17 00:22:06.256259-05', 'RIOBAMBA', '0601', 6, NULL, 1),(41, NULL, '2017-11-17 00:00:46.807164-05', 'SAQUISILI', '0506', 5, NULL, 1),(46, NULL, '2017-11-17 00:22:06.26384-05', 'CHAMBO', '0604', 6, NULL, 1),(49, NULL, '2017-11-17 00:22:06.273923-05', 'GUANO', '0607', 6, NULL, 1),(53, NULL, '2017-11-17 00:22:06.282171-05', 'MACHALA', '0701', 7, NULL, 1),(51, NULL, '2017-11-17 00:00:46.830418-05', 'PENIPE', '0609', 6, NULL, 1),(54, NULL, '2017-11-17 00:22:06.285551-05', 'ARENILLAS', '0702', 7, NULL, 1),(55, NULL, '2017-11-17 00:22:06.288892-05', 'ATAHUALPA', '0703', 7, NULL, 1),(58, NULL, '2017-11-17 00:22:06.299026-05', 'EL GUABO', '0706', 7, NULL, 1),(61, NULL, '2017-11-17 00:22:06.306458-05', 'PASAJE', '0709', 7, NULL, 1),(62, NULL, '2017-11-17 00:22:06.309791-05', 'PIÑAS', '0710', 7, NULL, 1),(65, NULL, '2017-11-17 00:22:06.320018-05', 'ZARUMA', '0713', 7, NULL, 1),(66, NULL, '2017-11-17 00:22:06.323368-05', 'LAS LAJAS', '0714', 7, NULL, 1),(67, NULL, '2017-11-17 00:22:06.326759-05', 'ESMERALDAS', '0801', 8, NULL, 1),(68, NULL, '2017-11-17 00:22:06.330112-05', 'ELOY ALFARO', '0802', 8, NULL, 1),(70, NULL, '2017-11-17 00:22:06.336826-05', 'QUININDE', '0804', 8, NULL, 1),(72, NULL, '2017-11-17 00:22:06.343561-05', 'ATACAMES', '0806', 8, NULL, 1),(75, NULL, '2017-11-17 00:22:06.348335-05', 'GUAYAQUIL', '0901', 9, NULL, 1),(77, NULL, '2017-11-17 00:22:06.352365-05', 'BALAO', '0903', 9, NULL, 1),(78, NULL, '2017-11-17 00:22:06.356035-05', 'BALZAR', '0904', 9, NULL, 1),(80, NULL, '2017-11-17 00:22:06.362786-05', 'DAULE', '0906', 9, NULL, 1),(83, NULL, '2017-11-17 00:22:06.367663-05', 'EL TRIUNFO', '0909', 9, NULL, 1),(84, NULL, '2017-11-17 00:22:06.371026-05', 'MILAGRO', '0910', 9, NULL, 1),(88, NULL, '2017-11-17 00:22:06.384694-05', 'PEDRO CARBO', '0914', 9, NULL, 1),(32, NULL, '2017-11-17 00:22:06.229663-05', 'ESPEJO', '0403', 4, NULL, 1),(63, NULL, '2017-11-17 00:22:06.313153-05', 'PORTOVELO', '0711', 7, NULL, 1),(69, NULL, '2017-11-17 00:22:06.333472-05', 'MUISNE', '0803', 8, NULL, 1),(71, NULL, '2017-11-17 00:22:06.34018-05', 'SAN LORENZO', '0805', 8, NULL, 1),(92, NULL, '2017-11-17 00:22:06.388712-05', 'SANTA LUCIA', '0918', 9, NULL, 1),(94, NULL, '2017-11-17 00:22:06.392909-05', 'SAN JACINTO DE YAGUACHI', '0920', 9, NULL, 1),(95, NULL, '2017-11-17 00:22:06.396283-05', 'PLAYAS', '0921', 9, NULL, 1),(98, NULL, '2017-11-17 00:22:06.401099-05', 'LOMAS DE SARGENTILLO', '0924', 9, NULL, 1),(102, NULL, '2017-11-17 00:22:06.408685-05', 'ISIDRO AYORA', '0928', 9, NULL, 1),(103, NULL, '2017-11-17 00:22:06.412031-05', 'IBARRA', '1001', 10, NULL, 1),(104, NULL, '2017-11-17 00:22:06.415381-05', 'ANTONIO ANTE', '1002', 10, NULL, 1),(107, NULL, '2017-11-17 00:22:06.422957-05', 'PIMAMPIRO', '1005', 10, NULL, 1),(108, NULL, '2017-11-17 00:22:06.426448-05', 'SAN MIGUEL DE URCUQUI', '1006', 10, NULL, 1),(109, NULL, '2017-11-17 00:22:06.429822-05', 'LOJA', '1101', 11, NULL, 1),(110, NULL, '2017-11-17 00:22:06.433335-05', 'CALVAS', '1102', 11, NULL, 1),(111, NULL, '2017-11-17 00:22:06.436679-05', 'CATAMAYO', '1103', 11, NULL, 1),(113, NULL, '2017-11-17 00:22:06.440708-05', 'CHAGUARPAMBA', '1105', 11, NULL, 1),(118, NULL, '2017-11-17 00:22:06.452117-05', 'PUYANGO', '1110', 11, NULL, 1),(121, NULL, '2017-11-17 00:22:06.462428-05', 'ZAPOTILLO', '1113', 11, NULL, 1),(123, NULL, '2017-11-17 00:22:06.469144-05', 'QUILANGA', '1115', 11, NULL, 1),(134, NULL, '2017-11-17 00:22:06.473169-05', 'BABAHOYO', '1201', 12, NULL, 1),(135, NULL, '2017-11-17 00:22:06.476689-05', 'BABA', '1202', 12, NULL, 1),(136, NULL, '2017-11-17 00:22:06.480116-05', 'MONTALVO', '1203', 12, NULL, 1),(137, NULL, '2017-11-17 00:22:06.483449-05', 'PUEBLOVIEJO', '1204', 12, NULL, 1),(138, NULL, '2017-11-17 00:22:06.486971-05', 'QUEVEDO', '1205', 12, NULL, 1),(140, NULL, '2017-11-17 00:22:06.493695-05', 'VENTANAS', '1207', 12, NULL, 1),(141, NULL, '2017-11-17 00:22:06.497038-05', 'VINCES', '1208', 12, NULL, 1),(145, NULL, '2017-11-17 00:22:06.50798-05', 'MOCACHE', '1212', 12, NULL, 1),(146, NULL, '2017-11-17 00:22:06.511329-05', 'QUINSALOMA', '1213', 12, NULL, 1),(147, NULL, '2017-11-17 00:22:06.514859-05', 'PORTOVIEJO', '1301', 13, NULL, 1),(149, NULL, '2017-11-17 00:22:06.518888-05', 'CHONE', '1303', 13, NULL, 1),(151, NULL, '2017-11-17 00:22:06.525813-05', 'FLAVIO ALFARO', '1305', 13, NULL, 1),(152, NULL, '2017-11-17 00:22:06.529158-05', 'JIPIJAPA', '1306', 13, NULL, 1),(154, NULL, '2017-11-17 00:22:06.533183-05', 'MANTA', '1308', 13, NULL, 1),(155, NULL, '2017-11-17 00:22:06.536717-05', 'MONTECRISTI', '1309', 13, NULL, 1),(158, NULL, '2017-11-17 00:22:06.546993-05', 'ROCAFUERTE', '1312', 13, NULL, 1),(159, NULL, '2017-11-17 00:22:06.550342-05', 'SANTA ANA', '1313', 13, NULL, 1),(166, NULL, '2017-11-17 00:22:06.568748-05', 'JAMA', '1320', 13, NULL, 1),(175, NULL, '2017-11-17 00:22:06.591341-05', 'HUAMBOYA', '1407', 14, NULL, 1),(183, NULL, '2017-11-17 00:22:06.615393-05', 'ARCHIDONA', '1503', 15, NULL, 1),(193, NULL, '2017-11-17 00:22:06.636649-05', 'ARAJUNO', '1604', 16, NULL, 1),(195, NULL, '2017-11-17 00:22:06.643341-05', 'CAYAMBE', '1702', 17, NULL, 1),(205, NULL, '2017-11-17 00:22:06.67141-05', 'CEVALLOS', '1803', 18, NULL, 1),(222, NULL, '2017-11-17 00:22:06.726861-05', 'ISABELA', '2002', 20, NULL, 1),(224, NULL, '2017-11-17 00:22:06.73373-05', 'LAGO AGRIO', '2101', 21, NULL, 1),(229, NULL, '2017-11-17 00:22:06.750853-05', 'CASCALES', '2106', 21, NULL, 1),(239, NULL, '2017-11-17 00:22:06.763135-05', 'LAS GOLONDRINAS', '9001', 25, NULL, 1),(232, NULL, '2017-05-22 00:33:51.540398-05', 'AGUARICO', '2202', 22, NULL, 1),(44, NULL, '2017-05-22 00:33:51.548486-05', 'ALAUSI', '0602', 6, NULL, 1),(23, NULL, '2017-05-22 00:33:51.568262-05', 'AZOGUES', '0301', 3, NULL, 1),(148, NULL, '2017-05-22 00:33:51.585566-05', 'BOLIVAR', '1302', 13, NULL, 1),(31, NULL, '2017-05-22 00:33:51.583831-05', 'BOLIVAR', '0402', 4, NULL, 1),(143, NULL, '2017-05-22 00:33:51.58753-05', 'BUENA FE', '1210', 12, NULL, 1),(21, NULL, '2017-05-22 00:33:51.589512-05', 'CALUMA', '0206', 2, NULL, 1),(112, NULL, '2017-05-22 00:33:51.607722-05', 'CELICA', '1104', 11, NULL, 1),(114, NULL, '2017-05-22 00:33:51.67156-05', 'ESPINDOLA', '1106', 11, NULL, 1),(167, NULL, '2017-05-22 00:33:51.707161-05', 'JARAMIJO', '1321', 13, NULL, 1),(153, NULL, '2017-05-22 00:33:51.710835-05', 'JUNIN', '1307', 13, NULL, 1),(233, NULL, '2017-05-22 00:33:51.716753-05', 'LA JOYA DE LOS SACHAS', '2203', 22, NULL, 1),(237, NULL, '2017-05-22 00:33:51.72284-05', 'LA LIBERTAD', '2402', 24, NULL, 1),(37, NULL, '2017-05-22 00:33:51.72504-05', 'LA MANA', '0502', 5, NULL, 1),(60, NULL, '2017-05-22 00:33:51.759492-05', 'MARCABELI', '0708', 7, NULL, 1),(6, NULL, '2017-05-22 00:33:51.854161-05', 'PUCARA', '0106', 1, NULL, 1),(39, NULL, '2017-05-22 00:33:51.862171-05', 'PUJILI', '0504', 5, NULL, 1),(73, NULL, '2017-05-22 00:33:51.883833-05', 'RIOVERDE', '0807', 8, NULL, 1),(90, NULL, '2017-05-22 00:33:51.896509-05', 'SAMBORONDON', '0916', 9, NULL, 1),(93, NULL, '2017-05-22 00:33:51.894759-05', 'SALITRE (URBINA JADO)', '0919', 9, NULL, 1),(9, NULL, '2017-11-17 00:22:06.170307-05', 'SIGSIG', '0109', 1, NULL, 1),(4, NULL, '2017-11-17 00:00:46.711969-05', 'NABON', '0104', 1, NULL, 1),(10, NULL, '2017-11-17 00:22:06.17369-05', 'OÑA', '0110', 1, NULL, 1),(13, NULL, '2017-11-17 00:22:06.184128-05', 'SEVILLA DE ORO', '0113', 1, NULL, 1),(14, NULL, '2017-11-17 00:22:06.187664-05', 'GUACHAPALA', '0114', 1, NULL, 1),(17, NULL, '2017-11-17 00:22:06.19509-05', 'CHILLANES', '0202', 2, NULL, 1),(15, NULL, '2017-11-17 00:00:46.749389-05', 'CAMILO PONCE ENRIQUEZ', '0115', 1, NULL, 1),(29, NULL, '2017-11-17 00:22:06.224775-05', 'SUSCAL', '0307', 3, NULL, 1),(42, NULL, '2017-11-17 00:22:06.252889-05', 'SIGCHOS', '0507', 5, NULL, 1),(45, NULL, '2017-11-17 00:22:06.260462-05', 'COLTA', '0603', 6, NULL, 1),(218, NULL, '2017-11-17 00:22:06.713065-05', 'CENTINELA DEL CONDOR', '1907', 19, NULL, 1),(74, NULL, '2017-05-22 00:33:51.712832-05', 'LA CONCORDIA', '0808', 23, NULL, 1),(47, NULL, '2017-11-17 00:22:06.267197-05', 'CHUNCHI', '0605', 6, NULL, 1),(52, NULL, '2017-11-17 00:00:46.83375-05', 'CUMANDA', '0610', 6, NULL, 1),(57, NULL, '2017-11-17 00:22:06.295662-05', 'CHILLA', '0705', 7, NULL, 1),(64, NULL, '2017-11-17 00:22:06.316638-05', 'SANTA ROSA', '0712', 7, NULL, 1),(79, NULL, '2017-11-17 00:22:06.359403-05', 'COLIMES', '0905', 9, NULL, 1),(86, NULL, '2017-11-17 00:22:06.377783-05', 'NARANJITO', '0912', 9, NULL, 1),(81, NULL, '2017-11-17 00:00:46.912437-05', 'DURAN', '0907', 9, NULL, 1),(87, NULL, '2017-11-17 00:22:06.381324-05', 'PALESTINA', '0913', 9, NULL, 1),(99, NULL, '2017-11-17 00:22:06.404648-05', 'NOBOL', '0925', 9, NULL, 1),(1, NULL, '2017-11-17 00:22:06.14589-05', 'CUENCA', '0101', 1, NULL, 1),(11, NULL, '2017-11-17 00:22:06.177215-05', 'CHORDELEG', '0111', 1, NULL, 1),(18, NULL, '2017-11-17 00:22:06.198469-05', 'CHIMBO', '0203', 2, NULL, 1),(19, NULL, '2017-11-17 00:22:06.201834-05', 'ECHEANDIA', '0204', 2, NULL, 1),(48, NULL, '2017-11-17 00:22:06.270556-05', 'GUAMOTE', '0606', 6, NULL, 1),(50, NULL, '2017-11-17 00:22:06.277463-05', 'PALLATANGA', '0608', 6, NULL, 1),(56, NULL, '2017-11-17 00:22:06.29226-05', 'BALSAS', '0704', 7, NULL, 1),(106, NULL, '2017-11-17 00:22:06.419589-05', 'OTAVALO', '1004', 10, NULL, 1),(117, NULL, '2017-11-17 00:22:06.44874-05', 'PALTAS', '1109', 11, NULL, 1),(119, NULL, '2017-11-17 00:22:06.455518-05', 'SARAGURO', '1111', 11, NULL, 1),(120, NULL, '2017-11-17 00:22:06.458899-05', 'SOZORANGA', '1112', 11, NULL, 1),(139, NULL, '2017-11-17 00:22:06.490328-05', 'URDANETA', '1206', 12, NULL, 1),(142, NULL, '2017-11-17 00:22:06.500569-05', 'PALENQUE', '1209', 12, NULL, 1),(144, NULL, '2017-11-17 00:22:06.504619-05', 'VALENCIA', '1211', 12, NULL, 1),(160, NULL, '2017-11-17 00:22:06.553746-05', 'SUCRE', '1314', 13, NULL, 1),(161, NULL, '2017-11-17 00:22:06.55712-05', 'TOSAGUA', '1315', 13, NULL, 1),(162, NULL, '2017-11-17 00:22:06.560687-05', '24 DE MAYO', '1316', 13, NULL, 1),(163, NULL, '2017-11-17 00:22:06.564061-05', 'PEDERNALES', '1317', 13, NULL, 1),(168, NULL, '2017-11-17 00:22:06.572963-05', 'SAN VICENTE', '1322', 13, NULL, 1),(169, NULL, '2017-11-17 00:22:06.576333-05', 'MORONA', '1401', 14, NULL, 1),(170, NULL, '2017-11-17 00:22:06.579712-05', 'GUALAQUIZA', '1402', 14, NULL, 1),(172, NULL, '2017-11-17 00:22:06.583918-05', 'PALORA', '1404', 14, NULL, 1),(173, NULL, '2017-11-17 00:22:06.587302-05', 'SANTIAGO', '1405', 14, NULL, 1),(176, NULL, '2017-11-17 00:22:06.594863-05', 'SAN JUAN BOSCO', '1408', 14, NULL, 1),(177, NULL, '2017-11-17 00:22:06.598233-05', 'TAISHA', '1409', 14, NULL, 1),(178, NULL, '2017-11-17 00:22:06.601612-05', 'LOGROÑO', '1410', 14, NULL, 1),(179, NULL, '2017-11-17 00:22:06.605129-05', 'PABLO SEXTO', '1411', 14, NULL, 1),(180, NULL, '2017-11-17 00:22:06.608675-05', 'TIWINTZA', '1412', 14, NULL, 1),(181, NULL, '2017-11-17 00:22:06.612049-05', 'TENA', '1501', 15, NULL, 1),(187, NULL, '2017-11-17 00:22:06.622311-05', 'QUIJOS', '1507', 15, NULL, 1),(190, NULL, '2017-11-17 00:22:06.626356-05', 'PASTAZA', '1601', 16, NULL, 1),(191, NULL, '2017-11-17 00:22:06.629719-05', 'MERA', '1602', 16, NULL, 1),(192, NULL, '2017-11-17 00:22:06.633267-05', 'SANTA CLARA', '1603', 16, NULL, 1),(194, NULL, '2017-11-17 00:22:06.639991-05', 'QUITO', '1701', 17, NULL, 1),(197, NULL, '2017-11-17 00:22:06.647607-05', 'PEDRO MONCAYO', '1704', 17, NULL, 1),(198, NULL, '2017-11-17 00:22:06.650982-05', 'RUMIÑAHUI', '1705', 17, NULL, 1),(200, NULL, '2017-11-17 00:22:06.654336-05', 'SAN MIGUEL DE LOS BANCOS', '1707', 17, NULL, 1),(201, NULL, '2017-11-17 00:22:06.657719-05', 'PEDRO VICENTE MALDONADO', '1708', 17, NULL, 1),(202, NULL, '2017-11-17 00:22:06.661098-05', 'PUERTO QUITO', '1709', 17, NULL, 1),(203, NULL, '2017-11-17 00:22:06.664643-05', 'AMBATO', '1801', 18, NULL, 1),(204, NULL, '2017-11-17 00:22:06.668027-05', 'BAÑOS DE AGUA SANTA', '1802', 18, NULL, 1),(206, NULL, '2017-11-17 00:22:06.674924-05', 'MOCHA', '1804', 18, NULL, 1),(207, NULL, '2017-11-17 00:22:06.678337-05', 'PATATE', '1805', 18, NULL, 1),(208, NULL, '2017-11-17 00:22:06.68173-05', 'QUERO', '1806', 18, NULL, 1),(211, NULL, '2017-11-17 00:22:06.689178-05', 'TISALEO', '1809', 18, NULL, 1),(212, NULL, '2017-11-17 00:22:06.69271-05', 'ZAMORA', '1901', 19, NULL, 1),(213, NULL, '2017-11-17 00:22:06.69607-05', 'CHINCHIPE', '1902', 19, NULL, 1),(214, NULL, '2017-11-17 00:22:06.699423-05', 'NANGARITZA', '1903', 19, NULL, 1),(215, NULL, '2017-11-17 00:22:06.702949-05', 'YACUAMBI', '1904', 19, NULL, 1),(217, NULL, '2017-11-17 00:22:06.709696-05', 'EL PANGUI', '1906', 19, NULL, 1),(219, NULL, '2017-11-17 00:22:06.716618-05', 'PALANDA', '1908', 19, NULL, 1),(220, NULL, '2017-11-17 00:22:06.72-05', 'PAQUISHA', '1909', 19, NULL, 1),(221, NULL, '2017-11-17 00:22:06.723348-05', 'SAN CRISTOBAL', '2001', 20, NULL, 1),(223, NULL, '2017-11-17 00:22:06.730368-05', 'SANTA CRUZ', '2003', 20, NULL, 1),(225, NULL, '2017-11-17 00:22:06.737078-05', 'GONZALO PIZARRO', '2102', 21, NULL, 1),(226, NULL, '2017-11-17 00:22:06.74062-05', 'PUTUMAYO', '2103', 21, NULL, 1),(227, NULL, '2017-11-17 00:22:06.743987-05', 'SHUSHUFINDI', '2104', 21, NULL, 1),(228, NULL, '2017-11-17 00:22:06.747336-05', 'SUCUMBIOS', '2105', 21, NULL, 1),(230, NULL, '2017-11-17 00:22:06.75421-05', 'CUYABENO', '2107', 21, NULL, 1),(240, NULL, '2017-11-17 00:22:06.766503-05', 'MANGA DEL CURA', '9003', 25, NULL, 1),(241, NULL, '2017-11-17 00:22:06.769878-05', 'EL PIEDRERO', '9004', 25, NULL, 1),(97, NULL, '2017-05-22 00:33:51.634727-05', 'CORONEL MARCELINO MARIDUEÑA', '0923', 9, NULL, 1),(105, NULL, '2017-05-22 00:33:51.636571-05', 'COTACACHI', '1003', 10, NULL, 1),(28, NULL, '2017-05-22 00:33:51.646119-05', 'DEELEG', '0306', 3, NULL, 1),(82, NULL, '2017-05-22 00:33:51.655341-05', 'EL EMPALME', '0908', 9, NULL, 1),(101, NULL, '2017-05-22 00:33:51.674968-05', 'GENERAL ANTONIO ELIZALDE (BUCAY)', '0927', 9, NULL, 1),(2, NULL, '2017-05-22 00:33:51.676956-05', 'GIRON', '0102', 1, NULL, 1),(115, NULL, '2017-05-22 00:33:51.680401-05', 'GONZANAMA', '1107', 11, NULL, 1),(171, NULL, '2017-05-22 00:33:51.738103-05', 'LIMON INDANZA', '1403', 14, NULL, 1),(234, NULL, '2017-05-22 00:33:51.746531-05', 'LORETO', '2204', 22, NULL, 1),(196, NULL, '2017-05-22 00:33:51.761328-05', 'MEJIA', '1703', 17, NULL, 1),(124, NULL, '2017-05-22 00:33:51.793298-05', 'OLMEDO', '1116', 11, NULL, 1),(164, NULL, '2017-05-22 00:33:51.791504-05', 'OLMEDO', '1318', 13, NULL, 1),(231, NULL, '2017-05-22 00:33:51.799055-05', 'ORELLANA', '2201', 22, NULL, 1),(165, NULL, '2017-05-22 00:33:51.858203-05', 'PUERTO LOPEZ', '1319', 13, NULL, 1),(238, NULL, '2017-05-22 00:33:51.890818-05', 'SALINAS', '2403', 24, NULL, 1),(236, NULL, '2017-05-22 00:33:51.924466-05', 'SANTA ELENA', '2401', 24, NULL, 1),(235, NULL, '2017-05-22 00:33:51.939593-05', 'SANTO DOMINGO', '2301', 23, NULL, 1),(96, NULL, '2017-05-22 00:33:51.956696-05', 'SIMON BOLIVAR', '0922', 9, NULL, 1),(174, NULL, '2017-05-22 00:33:51.961942-05', 'SUCUA', '1406', 14, NULL, 1),(30, NULL, '2017-05-22 00:33:51.977258-05', 'TULCAN', '0401', 4, NULL, 1),(189, NULL, '2017-05-22 00:33:51.599951-05', 'CARLOS JULIO AROSEMENA TOLA', '1509', 15, NULL, 1),(3, NULL, '2017-11-17 00:22:06.155175-05', 'GUALACEO', '0103', 1, NULL, 1),(5, NULL, '2017-11-17 00:22:06.159255-05', 'PAUTE', '0105', 1, NULL, 1),(7, NULL, '2017-11-17 00:22:06.163469-05', 'SAN FERNANDO', '0107', 1, NULL, 1),(26, NULL, '2017-11-17 00:22:06.220056-05', 'LA TRONCAL', '0304', 3, NULL, 1),(59, NULL, '2017-11-17 00:22:06.302411-05', 'HUAQUILLAS', '0707', 7, NULL, 1),(85, NULL, '2017-11-17 00:22:06.374406-05', 'NARANJAL', '0911', 9, NULL, 1),(122, NULL, '2017-11-17 00:22:06.465796-05', 'PINDAL', '1114', 11, NULL, 1),(150, NULL, '2017-11-17 00:22:06.522415-05', 'EL CARMEN', '1304', 13, NULL, 1),(157, NULL, '2017-11-17 00:22:06.543425-05', 'PICHINCHA', '1311', 13, NULL, 1),(184, NULL, '2017-11-17 00:22:06.61892-05', 'EL CHACO', '1504', 15, NULL, 1),(209, NULL, '2017-11-17 00:22:06.68511-05', 'SAN PEDRO DE PELILEO', '1807', 18, NULL, 1),(76, NULL, '2017-05-22 00:33:51.550886-05', 'ALFREDO BAQUERIZO MORENO (JUJAN)', '0902', 9, NULL, 1),(242, NULL, NULL, 'EXTRANJERO', '', 26, NULL, NULL),(156, NULL, '2017-11-17 00:22:06.54008-05', 'PAJAN', '1310', 13, NULL, 1),(116, NULL, '2017-11-17 00:22:06.445385-05', 'MACARA', '1108', 11, NULL, 1),(210, NULL, '2017-05-22 00:33:51.937533-05', 'SANTIAGO DE PILLARO', '1808', 18, NULL, 1),(216, NULL, '2017-11-17 00:22:06.706332-05', 'YANTZAZA (YANZATZA)', '1905', 19, NULL, 1);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_cargodoctor" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_cargodoctor";
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_categoriareporte" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_categoriareporte";
INSERT INTO "public"."jdsistemas_categoriareporte" ("id","fecha_creacion","fecha_modificacion","nombre","usuario_creacion_id","usuario_modificacion_id") VALUES (1, '2023-05-11 12:08:32.820823-05', NULL, 'ADMIN', 1, NULL);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_categorizaciondoctor" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_categorizaciondoctor";
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_doctor" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_doctor";
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_genero" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_genero";
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_gradoocupacional" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_gradoocupacional";
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_gruposmodulos" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_gruposmodulos";
INSERT INTO "public"."jdsistemas_gruposmodulos" ("id","fecha_creacion","fecha_modificacion","grupo_id","usuario_creacion_id","usuario_modificacion_id") VALUES (2, '2023-05-17 16:48:09.65663-05', NULL, 5, 2, NULL),(3, '2023-05-17 16:48:23.403057-05', NULL, 7, 2, NULL),(4, '2023-05-17 16:48:31.653252-05', NULL, 6, 2, NULL);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_gruposmodulos_modulos" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_gruposmodulos_modulos";
INSERT INTO "public"."jdsistemas_gruposmodulos_modulos" ("id","gruposmodulos_id","modulo_id") VALUES (17, 2, 4),(20, 4, 3),(21, 3, 5),(1, 2, 3),(2, 2, 1);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_modulo" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_modulo";
INSERT INTO "public"."jdsistemas_modulo" ("id","fecha_creacion","fecha_modificacion","url","nombre","descripcion","activo","externo","usuario_creacion_id","usuario_modificacion_id") VALUES (3, '2023-05-04 10:48:53-05', '2023-05-04 10:52:25.609584-05', 'jdpruebas', 'Pruebasjd', 'Pruebas jd sistemas', 't', 'f', 1, 1),(4, '2023-05-11 13:13:18.35629-05', NULL, 'adm_sistema', 'Permisos modulos', 'Permisos y modulos', 't', 'f', 1, NULL),(5, '2023-05-12 17:15:42-05', '2023-05-12 17:55:36.530434-05', 'administrativos', 'Personal', 'Personal de la empresa', 't', 'f', 1, 1),(1, '2023-08-03 11:33:13.988363-05', NULL, 'adm_producto', 'Productos', 'Productos administrador', 't', 'f', 1, NULL);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_nacionalidad" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_nacionalidad";
INSERT INTO "public"."jdsistemas_nacionalidad" ("id","fecha_creacion","fecha_modificacion","nombremasculino","nombrefemenino","nombre","pais_id","usuario_creacion_id","usuario_modificacion_id") VALUES (39, '2017-03-24 10:57:24.057383-05', '2017-11-18 10:02:24.479137-05', 'IRLANDÉS', 'IRLANDESA', 'IRLANDÉS/IRLANDESA', 89, 1, 1),(35, '2017-03-24 10:57:24.05493-05', '2017-11-18 10:02:24.471473-05', 'INDONÉS', 'INDONESA', 'INDONÉS/INDONESA', 86, 1, 1),(21, '2017-03-24 10:57:24.045836-05', '2017-11-18 10:02:24.444872-05', 'ESCOCÉS', 'ESCOCESA', 'ESCOCÉS/ESCOCESA', 172, 1, 1),(1, '2017-03-24 10:57:24.017693-05', '2017-11-18 10:02:24.393164-05', 'AFGANO', 'AFGANA', 'AFGANO/AFGANA', 5, 1, 1),(2, '2017-03-24 10:57:24.032966-05', '2017-11-18 10:02:24.408291-05', 'ALEMÁN', 'ALEMANA', 'ALEMÁN/ALEMANA', 7, 1, 1),(3, '2017-03-24 10:57:24.033971-05', '2017-11-18 10:02:24.410289-05', 'ÁRABE', 'ÁRABE', 'ÁRABE/ÁRABE', 57, 1, 1),(4, '2017-03-24 10:57:24.03473-05', '2017-11-18 10:02:24.412222-05', 'ARGENTINO', 'ARGENTINA', 'ARGENTINO/ARGENTINA', 14, 1, 1),(5, '2017-03-24 10:57:24.035477-05', '2017-11-18 10:02:24.414181-05', 'AUSTRALIANO', 'AUSTRALIANA', 'AUSTRALIANO/AUSTRALIANA', 16, 1, 1),(6, '2017-03-24 10:57:24.036205-05', '2017-11-18 10:02:24.416294-05', 'BELGA', 'BELGA', 'BELGA/BELGA', 22, 1, 1),(7, '2017-03-24 10:57:24.036912-05', '2017-11-18 10:02:24.418202-05', 'BOLIVIANO', 'BOLIVIANA', 'BOLIVIANO/BOLIVIANA', 25, 1, 1),(8, '2017-03-24 10:57:24.037569-05', '2017-11-18 10:02:24.420095-05', 'BRASILEÑO', 'BRASILEÑA', 'BRASILEÑO/BRASILEÑA', 28, 1, 1),(10, '2017-03-24 10:57:24.038879-05', '2017-11-18 10:02:24.423849-05', 'CANADIENSE', 'CANADIENSE', 'CANADIENSE/CANADIENSE', 38, 1, 1),(11, '2017-03-24 10:57:24.039581-05', '2017-11-18 10:02:24.425713-05', 'CHILENO', 'CHILENA', 'CHILENO/CHILENA', 49, 1, 1),(12, '2017-03-24 10:57:24.040237-05', '2017-11-18 10:02:24.427713-05', 'CHINO', 'CHINA', 'CHINO/CHINA', 50, 1, 1),(13, '2017-03-24 10:57:24.040861-05', '2017-11-18 10:02:24.429583-05', 'COLOMBIANO', 'COLOMBIANA', 'COLOMBIANO/COLOMBIANA', 40, 1, 1),(14, '2017-03-24 10:57:24.041478-05', '2017-11-18 10:02:24.431483-05', 'COREANO', 'COREANA', 'COREANO/COREANA', 41, 1, 1),(15, '2017-03-24 10:57:24.042095-05', '2017-11-18 10:02:24.433349-05', 'COSTARRICENSE', 'COSTARRICENSE', 'COSTARRICENSE/COSTARRICENSE', 44, 1, 1),(16, '2017-03-24 10:57:24.042711-05', '2017-11-18 10:02:24.435243-05', 'CUBANO', 'CUBANA', 'CUBANO/CUBANA', 46, 1, 1),(17, '2017-03-24 10:57:24.043341-05', '2017-11-18 10:02:24.437149-05', 'DANÉS', 'DANESA', 'DANÉS/DANESA', 53, 1, 1),(59, '2017-03-24 10:57:24.069809-05', '2017-11-18 10:02:24.439227-05', 'DOMINICANO', 'DOMINICANA', 'DOMINICANO/DOMINICANA', 174, 1, 1),(18, '2017-03-24 10:57:24.043967-05', '2017-11-18 10:02:24.441105-05', 'ECUATORIANO', 'ECUATORIANA', 'ECUATORIANO/ECUATORIANA', 1, 1, 1),(19, '2017-03-24 10:57:24.044585-05', '2017-11-18 10:02:24.442993-05', 'EGIPCIO', 'EGIPCIA', 'EGIPCIO/EGIPCIA', 55, 1, 1),(22, '2017-03-24 10:57:24.046455-05', '2017-11-18 10:02:24.446739-05', 'ESPAÑOL', 'ESPAÑOLA', 'ESPAÑOL/ESPAÑOLA', 60, 1, 1),(23, '2017-03-24 10:57:24.047069-05', '2017-11-18 10:02:24.448614-05', 'ESTADOUNIDENSE', 'ESTADOUNIDENSE', 'ESTADOUNIDENSE/ESTADOUNIDENSE', 61, 1, 1),(25, '2017-03-24 10:57:24.048325-05', '2017-11-18 10:02:24.452372-05', 'ETIOPE', 'ETIOPE', 'ETIOPE/ETIOPE', 62, 1, 1),(26, '2017-03-24 10:57:24.048937-05', '2017-11-18 10:02:24.454238-05', 'FILIPINO', 'FILIPINA', 'FILIPINO/FILIPINA', 64, 1, 1),(27, '2017-03-24 10:57:24.049549-05', '2017-11-18 10:02:24.456282-05', 'FINLANDÉS', 'FINLANDESA', 'FINLANDÉS/FINLANDESA', 65, 1, 1),(28, '2017-03-24 10:57:24.050163-05', '2017-11-18 10:02:24.458158-05', 'FRANCÉS', 'FRANCESA', 'FRANCÉS/FRANCESA', 66, 1, 1),(30, '2017-03-24 10:57:24.051638-05', '2017-11-18 10:02:24.461916-05', 'GRIEGO', 'GRIEGA', 'GRIEGO/GRIEGA', 74, 1, 1),(31, '2017-03-24 10:57:24.052251-05', '2017-11-18 10:02:24.463964-05', 'GUATEMALTECO', 'GUATEMALTECA', 'GUATEMALTECO/GUATEMALTECA', 78, 1, 1),(32, '2017-03-24 10:57:24.053087-05', '2017-11-18 10:02:24.465836-05', 'HAITIANO', 'HAITIANA', 'HAITIANO/HAITIANA', 81, 1, 1),(34, '2017-03-24 10:57:24.054323-05', '2017-11-18 10:02:24.469586-05', 'HONDUREÑO', 'HONDUREÑA', 'HONDUREÑO/HONDUREÑA', 82, 1, 1),(36, '2017-03-24 10:57:24.055562-05', '2017-11-18 10:02:24.473337-05', 'INGLÉS', 'INGLESA', 'INGLÉS/INGLESA', 172, 1, 1),(38, '2017-03-24 10:57:24.056778-05', '2017-11-18 10:02:24.475377-05', 'IRANÍ', 'IRANÍ', 'IRANÍ/IRANÍ', 87, 1, 1),(37, '2017-03-24 10:57:24.056171-05', '2017-11-18 10:02:24.477242-05', 'IRAQUÍ', 'IRAQUÍ', 'IRAQUÍ/IRAQUÍ', 88, 1, 1),(40, '2017-03-24 10:57:24.057989-05', '2017-11-18 10:02:24.48102-05', 'ISRAELÍ', 'ISRAELÍ', 'ISRAELÍ/ISRAELÍ', 114, 1, 1),(41, '2017-03-24 10:57:24.058593-05', '2017-11-18 10:02:24.482904-05', 'ITALIANO', 'ITALIANA', 'ITALIANO/ITALIANA', 115, 1, 1),(43, '2017-03-24 10:57:24.059812-05', '2017-11-18 10:02:24.486634-05', 'JORDANO', 'JORDANA', 'JORDANO/JORDANA', 118, 1, 1),(69, '2017-03-24 10:57:24.076173-05', '2017-11-18 10:02:24.535967-05', 'VENEZOLANO', 'VENEZOLANA', 'VENEZOLANO/VENEZOLANA', 216, 1, 1),(70, '2017-03-24 10:57:24.076777-05', '2017-11-18 10:02:24.537837-05', 'VIETNAMITA', 'VIETNAMITA', 'VIETNAMITA/VIETNAMITA', 217, 1, 1),(68, '2017-03-24 10:57:24.07554-05', '2017-11-18 10:02:24.53391-05', 'URUGUAYO', 'URUGUAYA', 'URUGUAYO/URUGUAYA', 214, 1, 1),(67, '2017-03-24 10:57:24.074686-05', '2017-11-18 10:02:24.532047-05', 'UCRANIANO', 'UCRANIANA', 'UCRANIANO/UCRANIANA', 178, 1, 1),(66, '2017-03-24 10:57:24.074056-05', '2017-11-18 10:02:24.530158-05', 'TURCO', 'TURCA', 'TURCO/TURCA', 212, 1, 1),(65, '2017-03-24 10:57:24.073451-05', '2017-11-18 10:02:24.52829-05', 'TAIWANES', 'TAIWANESA', 'TAIWANES/TAIWANESA', 206, 1, 1),(64, '2017-03-24 10:57:24.072846-05', '2017-11-18 10:02:24.526418-05', 'TAILANDÉS', 'TAILANDESA', 'TAILANDÉS/TAILANDESA', 205, 1, 1),(63, '2017-03-24 10:57:24.072244-05', '2017-11-18 10:02:24.524539-05', 'SUIZO', 'SUIZA', 'SUIZO/SUIZA', 202, 1, 1),(62, '2017-03-24 10:57:24.071641-05', '2017-11-18 10:02:24.522673-05', 'SUECO', 'SUECA', 'SUECO/SUECA', 201, 1, 1),(20, '2017-03-24 10:57:24.045202-05', '2017-11-18 10:02:24.520813-05', 'SALVADOREÑO', 'SALVADOREÑA', 'SALVADOREÑO/SALVADOREÑA', 56, 1, 1),(61, '2017-03-24 10:57:24.071019-05', '2017-11-18 10:02:24.518956-05', 'RUSO', 'RUSA', 'RUSO/RUSA', 180, 1, 1),(60, '2017-03-24 10:57:24.070413-05', '2017-11-18 10:02:24.517076-05', 'RUMANO', 'RUMANA', 'RUMANO/RUMANA', 179, 1, 1),(58, '2017-03-24 10:57:24.069203-05', '2017-11-18 10:02:24.515203-05', 'PUERTORRIQUEÑO', 'PUERTORRIQUEÑO', 'PUERTORRIQUEÑO/PUERTORRIQUEÑO', 170, 1, 1),(57, '2017-03-24 10:57:24.068592-05', '2017-11-18 10:02:24.5133-05', 'PORTUGUÉS', 'PORTUGUESA', 'PORTUGUÉS/PORTUGUESA', 169, 1, 1),(56, '2017-03-24 10:57:24.067976-05', '2017-11-18 10:02:24.511435-05', 'POLACO', 'POLACA', 'POLACO/POLACA', 168, 1, 1),(55, '2017-03-24 10:57:24.067104-05', '2017-11-18 10:02:24.509405-05', 'PERUANO', 'PERUANA', 'PERUANO/PERUANA', 166, 1, 1),(54, '2017-03-24 10:57:24.066499-05', '2017-11-18 10:02:24.507551-05', 'PARAGUAYO', 'PARAGUAYA', 'PARAGUAYO/PARAGUAYA', 165, 1, 1),(53, '2017-03-24 10:57:24.065896-05', '2017-11-18 10:02:24.505681-05', 'PANAMEÑO', 'PANAMEÑA', 'PANAMEÑO/PANAMEÑA', 163, 1, 1),(51, '2017-03-24 10:57:24.064663-05', '2017-11-18 10:02:24.503822-05', 'NORUEGO', 'NORUEGA', 'NORUEGO/NORUEGA', 155, 1, 1),(50, '2017-03-24 10:57:24.064057-05', '2017-11-18 10:02:24.501941-05', 'NICARAGÜENSE', 'NICARAGÜENSE', 'NICARAGÜENSE/NICARAGÜENSE', 152, 1, 1),(52, '2017-03-24 10:57:24.065287-05', '2017-11-18 10:02:24.500085-05', 'NEOZELANDÉS', 'NEOZELANDESA', 'NEOZELANDÉS/NEOZELANDESA', 158, 1, 1),(49, '2017-03-24 10:57:24.063448-05', '2017-11-18 10:02:24.498033-05', 'MEXICANO', 'MEXICANA', 'MEXICANO/MEXICANA', 143, 1, 1),(48, '2017-03-24 10:57:24.062834-05', '2017-11-18 10:02:24.49615-05', 'MARROQUÍ', 'MARROQUÍ', 'MARROQUÍ/MARROQUÍ', 139, 1, 1),(42, '2017-03-24 10:57:24.059197-05', '2017-11-18 10:02:24.48477-05', 'JAPONES', 'JAPONESA', 'JAPONÉS/JAPONESA', 117, 1, 1);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_paciente" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_paciente";
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_pais" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_pais";
INSERT INTO "public"."jdsistemas_pais" ("id","fecha_creacion","fecha_modificacion","nombre","codigosniese","usuario_creacion_id","usuario_modificacion_id") VALUES (1, NULL, '2017-11-14 10:30:57.247782-05', 'ECUADOR', '56', NULL, 1),(4, NULL, NULL, 'AFARES Y LOS ISSAS', '0', NULL, NULL),(5, NULL, '2017-11-14 10:30:57.08728-05', 'AFGANISTAN', '1', NULL, 1),(6, NULL, '2017-11-14 10:30:57.10983-05', 'ALBANIA', '2', NULL, 1),(7, NULL, '2017-11-14 10:30:57.113603-05', 'ALEMANIA', '3', NULL, 1),(8, NULL, '2017-11-14 10:30:57.117118-05', 'ANDORRA', '4', NULL, 1),(9, NULL, '2017-11-14 10:30:57.120669-05', 'ANGOLA', '5', NULL, 1),(10, NULL, NULL, 'ANTIGUA', '7', NULL, NULL),(11, NULL, NULL, 'ANTILLAS NEERLANDESAS', '0', NULL, NULL),(12, NULL, '2017-11-14 10:30:57.125629-05', 'ARABIA SAUDITA', '8', NULL, 1),(13, NULL, '2017-11-14 10:30:57.129437-05', 'ARGELIA', '9', NULL, 1),(14, NULL, '2017-11-14 10:30:57.132789-05', 'ARGENTINA', '10', NULL, 1),(15, NULL, '2017-11-14 10:30:57.136127-05', 'ARMENIA', '11', NULL, 1),(16, NULL, '2017-11-14 10:30:57.140452-05', 'AUSTRALIA', '13', NULL, 1),(17, NULL, '2017-11-14 10:30:57.143812-05', 'AUSTRIA', '14', NULL, 1),(18, NULL, '2017-11-14 10:30:57.14782-05', 'BAHAMAS', '16', NULL, 1),(19, NULL, '2017-11-14 10:30:57.151222-05', 'BAHREIN', '17', NULL, 1),(20, NULL, NULL, 'BANGADESH', '18', NULL, NULL),(21, NULL, '2017-11-14 10:30:57.155228-05', 'BARBADOS', '19', NULL, 1),(22, NULL, '2017-11-14 10:30:57.158856-05', 'BELGICA', '20', NULL, 1),(23, NULL, '2017-11-14 10:30:57.162159-05', 'BELICE', '21', NULL, 1),(24, NULL, '2017-11-14 10:30:57.166332-05', 'BERMUDAS', '23', NULL, 1),(25, NULL, '2017-11-14 10:30:57.17034-05', 'BOLIVIA', '25', NULL, 1),(26, NULL, NULL, 'BOSNIA-HERCEGOVINA', '27', NULL, NULL),(27, NULL, '2017-11-14 10:30:57.175216-05', 'BOTSWANA', '28', NULL, 1),(28, NULL, '2017-11-14 10:30:57.178562-05', 'BRASIL', '29', NULL, 1),(29, NULL, NULL, 'BRUNEI', '30', NULL, NULL),(30, NULL, '2017-11-14 10:30:57.182612-05', 'BULGARIA', '31', NULL, 1),(31, NULL, NULL, 'BURMA', '0', NULL, NULL),(32, NULL, NULL, 'BURQUINA FASO', '32', NULL, NULL),(33, NULL, '2017-11-14 10:30:57.186948-05', 'BURUNDI', '33', NULL, 1),(34, NULL, '2017-11-14 10:30:57.190434-05', 'BUTAN', '34', NULL, 1),(35, NULL, '2017-11-14 10:30:57.193763-05', 'CABO VERDE', '35', NULL, 1),(36, NULL, '2017-11-14 10:30:57.197797-05', 'CAMERUN', '37', NULL, 1),(37, NULL, NULL, 'COMORAS', '44', NULL, NULL),(38, NULL, '2017-11-14 10:30:57.201458-05', 'CANADA', '38', NULL, 1),(39, NULL, NULL, 'CIUDAD DEL VATICANO', '59', NULL, NULL),(40, NULL, '2017-11-14 10:30:57.218789-05', 'COLOMBIA', '43', NULL, 1),(41, NULL, NULL, 'COREA', '47', NULL, NULL),(42, NULL, NULL, 'COREA REP. DECRATICA POPULAR', '46', NULL, NULL),(43, NULL, '2017-11-14 10:30:57.225503-05', 'COSTA DE MARFIL', '48', NULL, 1),(44, NULL, '2017-11-14 10:30:57.228859-05', 'COSTA RICA', '49', NULL, 1),(45, NULL, '2017-11-14 10:30:57.232198-05', 'CROACIA', '50', NULL, 1),(46, NULL, '2017-11-14 10:30:57.236008-05', 'CUBA', '51', NULL, 1),(47, NULL, '2017-11-14 10:30:57.204952-05', 'CHAD', '39', NULL, 1),(48, NULL, NULL, 'CHECOSLOVAQUIA', '182', NULL, NULL),(49, NULL, '2017-11-14 10:30:57.208288-05', 'CHILE', '40', NULL, 1),(50, NULL, '2017-11-14 10:30:57.212095-05', 'CHINA', '41', NULL, 1),(51, NULL, '2017-11-14 10:30:57.215441-05', 'CHIPRE', '42', NULL, 1),(52, NULL, NULL, 'DAHOMEY', '0', NULL, NULL),(53, NULL, '2017-11-14 10:30:57.240053-05', 'DINAMARCA', '53', NULL, 1),(54, NULL, '2017-11-14 10:30:57.244107-05', 'DOMINICA', '55', NULL, 1),(55, NULL, '2017-11-14 10:30:57.251121-05', 'EGIPTO', '57', NULL, 1),(56, NULL, '2017-11-14 10:30:57.254463-05', 'EL SALVADOR', '58', NULL, 1),(57, NULL, '2017-11-14 10:30:57.25849-05', 'EMIRATOS ARABES UNIDOS', '60', NULL, 1),(58, NULL, '2017-11-14 10:30:57.262712-05', 'ESLOVAQUIA', '62', NULL, 1),(59, NULL, '2017-11-14 10:30:57.266032-05', 'ESLOVENIA', '63', NULL, 1),(60, NULL, '2017-11-14 10:30:57.269358-05', 'ESPAÑA', '64', NULL, 1),(61, NULL, NULL, 'ESTADOS UNIDOS', '66', NULL, NULL),(62, NULL, '2017-11-14 10:30:57.27496-05', 'ETIOPIA', '68', NULL, 1),(63, NULL, NULL, 'FIJI', '69', NULL, NULL),(64, NULL, '2017-11-14 10:30:57.278992-05', 'FILIPINAS', '70', NULL, 1),(65, NULL, NULL, 'FINLANDIA', '71', NULL, NULL),(66, NULL, '2017-11-14 10:30:57.283364-05', 'FRANCIA', '72', NULL, 1),(67, NULL, '2017-11-14 10:30:57.286864-05', 'GABON', '73', NULL, 1),(68, NULL, '2017-11-14 10:30:57.292691-05', 'GHANA', '76', NULL, 1),(69, NULL, '2017-11-14 10:30:57.296053-05', 'GIBRALTAR', '77', NULL, 1),(70, NULL, NULL, 'GINEA', '86', NULL, NULL),(71, NULL, NULL, 'GINEA BISSAU', '88', NULL, NULL),(72, NULL, NULL, 'GINEA ECUATORIAL', '87', NULL, NULL),(73, NULL, '2017-11-14 10:30:57.299718-05', 'GRANADA', '78', NULL, 1),(74, NULL, '2017-11-14 10:30:57.303052-05', 'GRECIA', '79', NULL, 1),(75, NULL, '2017-11-14 10:30:57.306489-05', 'GROENLANDIA', '80', NULL, 1),(76, NULL, '2017-11-14 10:30:57.30985-05', 'GUADALUPE', '81', NULL, 1),(77, NULL, '2017-11-14 10:30:57.313342-05', 'GUAM', '82', NULL, 1),(78, NULL, '2017-11-14 10:30:57.316732-05', 'GUATEMALA', '83', NULL, 1),(79, NULL, '2017-11-14 10:30:57.320486-05', 'GUAYANA FRANCESA', '84', NULL, 1),(80, NULL, '2017-11-14 10:30:57.326593-05', 'GUYANA', '89', NULL, 1),(81, NULL, '2017-11-14 10:30:57.329923-05', 'HAITI', '90', NULL, 1),(82, NULL, '2017-11-14 10:30:57.333588-05', 'HONDURAS', '91', NULL, 1),(83, NULL, '2017-11-14 10:30:57.33691-05', 'HONG KONG', '92', NULL, 1),(84, NULL, '2017-11-14 10:30:57.340229-05', 'HUNGRIA', '93', NULL, 1),(85, NULL, '2017-11-14 10:30:57.343913-05', 'INDIA', '94', NULL, 1),(86, NULL, '2017-11-14 10:30:57.347641-05', 'INDONESIA', '95', NULL, 1),(87, NULL, '2017-11-14 10:30:57.351728-05', 'IRAN', '97', NULL, 1),(88, NULL, NULL, 'IRAQ', '96', NULL, NULL),(89, NULL, '2017-11-14 10:30:57.355236-05', 'IRLANDA', '98', NULL, 1),(90, NULL, NULL, 'ISLA DE PASCUA', '0', NULL, NULL),(91, NULL, NULL, 'ISLA JOHNSTON', '0', NULL, NULL),(92, NULL, '2017-11-14 10:30:57.360253-05', 'ISLANDIA', '101', NULL, 1),(93, NULL, NULL, 'ISLA NIUE', '0', NULL, NULL),(94, NULL, NULL, 'ISLA NORFOLF', '100', NULL, NULL),(95, NULL, '2017-11-14 10:30:57.364303-05', 'ISLAS CAIMAN', '103', NULL, 1),(96, NULL, NULL, 'ISLAS CANTON Y ENDERBURY', '0', NULL, NULL),(97, NULL, '2017-11-14 10:30:57.696565-05', 'ISLAS COCOS', '247', NULL, 1),(98, NULL, '2017-11-14 10:30:57.367808-05', 'ISLAS COOK', '104', NULL, 1),(99, NULL, NULL, 'ISLAS DEL PACIFICO', '0', NULL, NULL),(100, NULL, NULL, 'ISLAS DEL PACIFICO (EE.UU)', '0', NULL, NULL),(101, NULL, '2017-11-14 10:30:57.371367-05', 'ISLAS FEROE', '106', NULL, 1),(102, NULL, NULL, 'ISLAS GILBERT ELLICE', '0', NULL, NULL),(103, NULL, NULL, 'ISLAS HEARD Y MCDONALD', '0', NULL, NULL),(104, NULL, NULL, 'ISLAS MALVINAS', '107', NULL, NULL),(105, NULL, NULL, 'ISLAS MIDWAY', '0', NULL, NULL),(106, NULL, NULL, 'ISLAS PITCAIRN', '173', NULL, NULL),(107, NULL, NULL, 'ISLAS SOLOMON BRITANICAS', '113', NULL, NULL),(108, NULL, NULL, 'ISLAS SVALBART Y JAN MAYEN', '219', NULL, NULL),(109, NULL, NULL, 'ISLAS TOKELAU', '225', NULL, NULL),(110, NULL, '2017-11-14 10:30:57.377486-05', 'ISLAS TURCAS Y CAICOS', '111', NULL, 1),(111, NULL, '2017-11-14 10:30:57.381844-05', 'ISLAS VIRGENES BRITANICAS', '113', NULL, 1),(112, NULL, NULL, 'ISLAS WALLIS FUTUNA', '114', NULL, NULL),(113, NULL, NULL, 'ISLA WAKE', '0', NULL, NULL),(114, NULL, '2017-11-14 10:30:57.385929-05', 'ISRAEL', '115', NULL, 1),(115, NULL, '2017-11-14 10:30:57.389274-05', 'ITALIA', '116', NULL, 1),(116, NULL, '2017-11-14 10:30:57.392788-05', 'JAMAICA', '117', NULL, 1),(117, NULL, '2017-11-14 10:30:57.396261-05', 'JAPON', '118', NULL, 1),(118, NULL, '2017-11-14 10:30:57.400291-05', 'JORDANIA', '120', NULL, 1),(119, NULL, NULL, 'KAMPUCHEA DEMOCRATICA', '0', NULL, NULL),(120, NULL, NULL, 'KAZAJSTÁN', '121', NULL, NULL),(121, NULL, NULL, 'KENIA', '122', NULL, NULL),(122, NULL, '2017-11-14 10:30:57.406886-05', 'KUWAIT', '125', NULL, 1),(123, NULL, NULL, 'LAOS', '185', NULL, NULL),(124, NULL, NULL, 'LESOTHO', '127', NULL, NULL),(125, NULL, '2017-11-14 10:30:57.412304-05', 'LIBANO', '129', NULL, 1),(126, NULL, '2017-11-14 10:30:57.415829-05', 'LIBERIA', '130', NULL, 1),(127, NULL, '2017-11-14 10:30:57.419223-05', 'LIBIA', '131', NULL, 1),(128, NULL, '2017-11-14 10:30:57.422572-05', 'LIECHTENSTEIN', '132', NULL, 1),(129, NULL, '2017-11-14 10:30:57.426018-05', 'LITUANIA', '133', NULL, 1),(130, NULL, '2017-11-14 10:30:57.429838-05', 'LUXEMBURGO', '134', NULL, 1),(131, NULL, '2017-11-14 10:30:57.433464-05', 'MACAO', '135', NULL, 1),(132, NULL, NULL, 'MACEDONIA', '126', NULL, NULL),(133, NULL, '2017-11-14 10:30:57.436827-05', 'MADAGASCAR', '136', NULL, 1),(134, NULL, '2017-11-14 10:30:57.440181-05', 'MALASIA', '137', NULL, 1),(135, NULL, NULL, 'MALAWI', '138', NULL, NULL),(136, NULL, '2017-11-14 10:30:57.444217-05', 'MALDIVAS', '139', NULL, 1),(137, NULL, '2017-11-14 10:30:57.447625-05', 'MALI', '140', NULL, 1),(138, NULL, '2017-11-14 10:30:57.45118-05', 'MALTA', '141', NULL, 1),(139, NULL, '2017-11-14 10:30:57.454501-05', 'MARRUECOS', '142', NULL, 1),(140, NULL, '2017-11-14 10:30:57.457839-05', 'MARTINICA', '143', NULL, 1),(141, NULL, '2017-11-14 10:30:57.461194-05', 'MAURICIO', '144', NULL, 1),(142, NULL, '2017-11-14 10:30:57.464712-05', 'MAURITANIA', '145', NULL, 1),(143, NULL, '2017-11-14 10:30:57.46877-05', 'MEXICO', '147', NULL, 1),(144, NULL, '2017-11-14 10:30:57.473103-05', 'MONACO', '149', NULL, 1),(145, NULL, '2017-11-14 10:30:57.47661-05', 'MONGOLIA', '150', NULL, 1),(146, NULL, '2017-11-14 10:30:57.480662-05', 'MONTSERRAT', '152', NULL, 1),(147, NULL, '2017-11-14 10:30:57.484007-05', 'MOZAMBIQUE', '153', NULL, 1),(149, NULL, '2017-11-14 10:30:57.488038-05', 'NAMIBIA', '155', NULL, 1),(150, NULL, '2017-11-14 10:30:57.491431-05', 'NAURU', '156', NULL, 1),(151, NULL, '2017-11-14 10:30:57.494778-05', 'NEPAL', '157', NULL, 1),(152, NULL, '2017-11-14 10:30:57.498113-05', 'NICARAGUA', '158', NULL, 1),(153, NULL, '2017-11-14 10:30:57.501636-05', 'NIGER', '159', NULL, 1),(154, NULL, '2017-11-14 10:30:57.504962-05', 'NIGERIA', '160', NULL, 1),(155, NULL, '2017-11-14 10:30:57.509002-05', 'NORUEGA', '162', NULL, 1),(156, NULL, '2017-11-14 10:30:57.512391-05', 'NUEVA CALEDONIA', '163', NULL, 1),(157, NULL, NULL, 'NUEVAS HERIDAS', '0', NULL, NULL),(158, NULL, NULL, 'NUEVA ZELANDIA', '164', NULL, NULL),(159, NULL, '2017-11-14 10:30:57.51644-05', 'OMAN', '165', NULL, 1),(161, NULL, '2017-11-14 10:30:57.51996-05', 'PAISES BAJOS', '166', NULL, 1),(162, NULL, '2017-11-14 10:30:57.52344-05', 'PAKISTAN', '167', NULL, 1),(163, NULL, '2017-11-14 10:30:57.527486-05', 'PANAMA', '169', NULL, 1),(164, NULL, '2017-11-14 10:30:57.53087-05', 'PAPUA NUEVA GUINEA', '170', NULL, 1),(165, NULL, '2017-11-14 10:30:57.534383-05', 'PARAGUAY', '171', NULL, 1),(166, NULL, '2017-11-14 10:30:57.53777-05', 'PERU', '172', NULL, 1),(167, NULL, NULL, 'POLINESIA FRANCESA', '174', NULL, NULL),(168, NULL, '2017-11-14 10:30:57.542884-05', 'POLONIA', '175', NULL, 1),(169, NULL, NULL, 'PORTUGAL', '176', NULL, NULL),(170, NULL, '2017-11-14 10:30:57.547276-05', 'PUERTO RICO', '177', NULL, 1),(171, NULL, '2017-11-14 10:30:57.550637-05', 'QATAR', '178', NULL, 1),(172, NULL, NULL, 'REINO UNIDO', '179', NULL, NULL),(173, NULL, '2017-11-14 10:30:57.555516-05', 'REPUBLICA CENTROAFRICANA', '181', NULL, 1),(174, NULL, '2017-11-14 10:30:57.562037-05', 'REPUBLICA DOMINICANA', '186', NULL, 1),(175, NULL, '2017-11-14 10:30:57.56627-05', 'REUNION', '188', NULL, 1),(176, NULL, NULL, 'RHODESIA DEL SUR', '0', NULL, NULL),(177, NULL, NULL, 'RSS DE BIELORRUSIA', '24', NULL, NULL),(178, NULL, NULL, 'UCRANIA', '232', NULL, NULL),(179, NULL, '2017-11-14 10:30:57.569643-05', 'RUMANIA', '189', NULL, 1),(180, NULL, '2017-11-14 10:30:57.573241-05', 'RUSIA', '190', NULL, 1),(181, NULL, '2017-11-14 10:30:57.576768-05', 'RWANDA', '191', NULL, 1),(182, NULL, '2017-11-14 10:30:57.580139-05', 'SAHARA OCCIDENTAL', '192', NULL, 1),(183, NULL, '2017-11-14 10:30:57.585882-05', 'SAMOA AMERICANA', '196', NULL, 1),(184, NULL, NULL, 'SAMOA OCCIDENTAL', '195', NULL, NULL),(185, NULL, NULL, 'SAN CRISTOBAL Y NEVIS', '197', NULL, NULL),(186, NULL, '2017-11-14 10:30:57.590129-05', 'SAN MARINO', '198', NULL, 1),(187, NULL, '2017-11-14 10:30:57.596051-05', 'SANTA LUCIA', '202', NULL, 1),(188, NULL, NULL, 'SANTO TOME Y PRINCIPE', '203', NULL, NULL),(189, NULL, NULL, 'SAN VICENTE', '200', NULL, NULL),(190, NULL, '2017-11-14 10:30:57.600095-05', 'SENEGAL', '205', NULL, 1),(191, NULL, '2017-11-14 10:30:57.60415-05', 'SEYCHELLES', '207', NULL, 1),(192, NULL, '2017-11-14 10:30:57.607822-05', 'SIERRA LEONA', '208', NULL, 1),(193, NULL, NULL, 'SIKKIM', '0', NULL, NULL),(194, NULL, '2017-11-14 10:30:57.611236-05', 'SINGAPUR', '209', NULL, 1),(195, NULL, NULL, 'SIRIA', '180', NULL, NULL),(196, NULL, '2017-11-14 10:30:57.615302-05', 'SOMALIA', '211', NULL, 1),(197, NULL, NULL, 'S. PEDRO Y MIGELON', '199', NULL, NULL),(198, NULL, '2017-11-14 10:30:57.618836-05', 'SRI LANKA', '212', NULL, 1),(199, NULL, NULL, 'SUDÁFRICA', '213', NULL, NULL),(200, NULL, '2017-11-14 10:30:57.622924-05', 'SUDAN', '214', NULL, 1),(201, NULL, '2017-11-14 10:30:57.627198-05', 'SUECIA', '216', NULL, 1),(202, NULL, '2017-11-14 10:30:57.630582-05', 'SUIZA', '217', NULL, 1),(203, NULL, '2017-11-14 10:30:57.633963-05', 'SURINAME', '218', NULL, 1),(204, NULL, '2017-11-14 10:30:57.638475-05', 'SWAZILANDIA', '220', NULL, 1),(205, NULL, '2017-11-14 10:30:57.641894-05', 'TAILANDIA', '221', NULL, 1),(206, NULL, '2017-11-14 10:30:57.692532-05', 'TAIWAN', '245', NULL, 1),(207, NULL, NULL, 'TANZANIA', '187', NULL, NULL),(208, NULL, '2017-11-14 10:30:57.646951-05', 'TOGO', '224', NULL, 1),(209, NULL, '2017-11-14 10:30:57.651018-05', 'TONGA', '226', NULL, 1),(210, NULL, NULL, 'TRINIDAD Y TABAGO', '227', NULL, NULL),(211, NULL, '2017-11-14 10:30:57.655226-05', 'TUNEZ', '228', NULL, 1),(212, NULL, '2017-11-14 10:30:57.659566-05', 'TURQUIA', '230', NULL, 1),(213, NULL, '2017-11-14 10:30:57.664417-05', 'UGANDA', '233', NULL, 1),(214, NULL, '2017-11-14 10:30:57.667953-05', 'URUGUAY', '234', NULL, 1),(215, NULL, '2017-11-14 10:30:57.67205-05', 'VANUATU', '236', NULL, 1),(216, NULL, '2017-11-14 10:30:57.675403-05', 'VENEZUELA', '237', NULL, 1),(217, NULL, NULL, 'VIETNAM', '238', NULL, NULL),(218, NULL, '2017-11-14 10:30:57.679791-05', 'YEMEN', '239', NULL, 1),(219, NULL, NULL, 'YEMEN DEMOCRATICO', '239', NULL, NULL),(220, NULL, NULL, 'YUGOSLAVIA', '126', NULL, NULL),(221, NULL, NULL, 'ZAIRE', '0', NULL, NULL),(222, NULL, '2017-11-14 10:30:57.683233-05', 'ZAMBIA', '240', NULL, 1),(223, NULL, '2017-11-14 10:30:57.686611-05', 'ZIMBABWE', '241', NULL, 1);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_parametroreporte" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_parametroreporte";
INSERT INTO "public"."jdsistemas_parametroreporte" ("id","fecha_creacion","fecha_modificacion","nombre","descripcion","tipo","extra","reporte_id","usuario_creacion_id","usuario_modificacion_id") VALUES (1, '2023-05-11 12:10:12.564356-05', NULL, 'persona', 'Persona', 2, '', 1, 1, NULL);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_parroquia" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_parroquia";
INSERT INTO "public"."jdsistemas_parroquia" ("id","fecha_creacion","fecha_modificacion","nombre","canton_id","tipo_id","usuario_creacion_id","usuario_modificacion_id") VALUES (67, NULL, '2017-05-22 00:33:45.367742-05', 'SAN SEBASTIAN', 1, 1, NULL, 1),(70, NULL, '2017-05-22 00:33:45.798252-05', 'YANUNCAY', 1, 1, NULL, 1),(68, NULL, '2017-05-22 00:33:45.560595-05', 'SUCRE', 1, 1, NULL, 1),(69, NULL, '2017-05-22 00:33:45.663269-05', 'TOTORACOCHA ', 1, 1, NULL, 1),(72, NULL, '2017-05-22 00:33:43.373678-05', 'BAÑOS', 1, 2, NULL, 1),(93, NULL, '2017-05-22 00:33:44.017523-05', 'GIRON', 2, 1, NULL, 1),(113, NULL, '2017-05-22 00:33:44.784216-05', 'PAUTE', 5, 1, NULL, 1),(154, NULL, '2017-05-22 00:33:45.498255-05', 'SEVILLA DE ORO', 13, 1, NULL, 1),(158, NULL, '2017-05-22 00:33:43.469528-05', 'CAMILO PONCE ENRIQUEZ', 15, 1, NULL, 1),(192, NULL, '2017-05-22 00:33:44.343175-05', 'LAS MERCEDES', 22, 1, NULL, 1),(196, NULL, '2017-05-22 00:33:43.345586-05', 'AZOGUES', 23, 1, NULL, 1),(256, NULL, '2017-05-22 00:33:43.193285-05', '27 DE SEPTIEMBRE', 32, 1, NULL, 1),(312, NULL, '2017-05-22 00:33:45.308391-05', 'SAN MIGUEL', 40, 1, NULL, 1),(392, NULL, '2017-05-22 00:33:44.483653-05', 'MACHALA', 53, 1, NULL, 1),(412, NULL, '2017-05-22 00:33:43.368336-05', 'BALSAS', 56, 1, NULL, 1),(430, NULL, '2017-05-22 00:33:44.431968-05', 'LOMA DE FRANCO', 61, 1, NULL, 1),(432, NULL, '2017-05-22 00:33:45.667086-05', 'TRES CERRITOS', 61, 1, NULL, 1),(466, NULL, '2017-05-22 00:33:45.826246-05', 'ZARUMA', 65, 1, NULL, 1),(574, NULL, '2017-05-22 00:33:44.678923-05', 'OLMEDO  (SAN ALEJO) ', 75, 1, NULL, 1),(614, NULL, '2017-05-22 00:33:45.749693-05', 'VELASCO IBARRA (EL EMPALME)', 82, 1, NULL, 1),(648, NULL, '2017-05-22 00:33:43.7286-05', 'CRNEL. LORENZO DE GARAICOA (PEDREGAL)', 94, 2, NULL, 1),(771, NULL, '2017-05-22 00:33:45.371664-05', 'SAN SEBASTIAN', 109, 1, NULL, 1),(803, NULL, '2017-05-22 00:33:43.736715-05', 'CRUZPAMBA (CAB. EN CARLOS BUSTAMANTE)', 112, 1, NULL, 1),(806, NULL, '2017-05-22 00:33:44.839471-05', 'PINDAL (FEDERICO PAEZ)', 112, 1, NULL, 1),(807, NULL, '2017-05-22 00:33:44.881508-05', 'POZUL (SAN JUAN DE POZUL)', 112, 1, NULL, 1),(809, NULL, '2017-05-22 00:33:45.643716-05', 'TNTE. MAXIMILIANO RODRIGUEZ LOAIZA ', 112, 1, NULL, 1),(977, NULL, '2017-05-22 00:33:44.208954-05', 'JIPIJAPA', 152, 1, NULL, 1),(980, NULL, '2017-05-22 00:33:45.287288-05', 'SAN LORENZO DE JIPIJAPA', 152, 1, NULL, 1),(1024, NULL, '2017-05-22 00:33:43.359261-05', 'BAHIA DE CARAQUEZ', 160, 1, NULL, 1),(737, NULL, '2017-05-22 00:33:44.224479-05', 'JUAN MONTALVO', 195, 1, NULL, 1),(1185, NULL, '2017-05-22 00:33:44.122684-05', 'HUACHI CHICO', 203, 1, NULL, 1),(1210, NULL, '2017-05-22 00:33:43.375372-05', 'BAÑOS DE AGUA SANTA', 204, 1, NULL, 1),(1225, NULL, '2017-05-22 00:33:44.802084-05', 'PELILEO', 209, 1, NULL, 1),(1272, NULL, '2017-05-22 00:33:43.195193-05', '28 DE MAYO (SAN JOSE DE YACUAMBI)', 215, 1, NULL, 1),(1297, NULL, '2017-05-22 00:33:44.176-05', 'ISLA SANTA MARIA (FLOREANA) (CAB. EN  PTO. VELASCO IBARRA)', 221, 1, NULL, 1),(1342, NULL, '2017-05-22 00:33:44.919267-05', 'PUERTO FRANCISCO DE ORELLANA (EL COCA)', 231, 1, NULL, 1),(57, NULL, '2017-05-22 00:33:43.406825-05', 'BELLAVISTA', 1, 1, NULL, 1),(62, NULL, '2017-05-22 00:33:44.013631-05', 'GIL RAMIREZ DAVALOS', 1, 1, NULL, 1),(63, NULL, '2017-05-22 00:33:44.142193-05', 'HUAYNACAPAC', 1, 1, NULL, 1),(61, NULL, '2017-05-22 00:33:43.948947-05', 'EL VECINO', 1, 1, NULL, 1),(66, NULL, '2017-05-22 00:33:45.121847-05', 'SAN BLAS', 1, 1, NULL, 1),(64, NULL, '2017-05-22 00:33:44.489367-05', 'MACHANGARA', 1, 1, NULL, 1),(65, NULL, '2017-05-22 00:33:44.583806-05', 'MONAY', 1, 1, NULL, 1),(71, NULL, '2017-05-22 00:33:44.112387-05', 'HERMANO MIGUEL', 1, 1, NULL, 1),(58, NULL, '2017-05-22 00:33:43.479729-05', 'CAÑARIBAMBA', 1, 1, NULL, 1),(59, NULL, '2017-05-22 00:33:43.817744-05', 'EL BATAN', 1, 1, NULL, 1),(96, NULL, '2017-05-22 00:33:44.048985-05', 'GUALACEO', 3, 1, NULL, 1),(107, NULL, '2017-05-22 00:33:44.621721-05', 'NABON', 4, 1, NULL, 1),(129, NULL, '2017-05-22 00:33:45.147974-05', 'SAN FERNANDO', 7, 1, NULL, 1),(143, NULL, '2017-05-22 00:33:45.145921-05', 'SAN FELIPE DE OÑA ', 10, 1, NULL, 1),(145, NULL, '2017-05-22 00:33:43.638355-05', 'CHORDELEG', 11, 1, NULL, 1),(327, NULL, '2017-05-22 00:33:45.00967-05', 'RIOBAMBA', 43, 1, NULL, 1),(4, NULL, '2017-05-22 00:33:43.505404-05', 'CARANQUI', 103, 1, NULL, 1),(5, NULL, '2017-05-22 00:33:44.098202-05', 'GUAYAQUIL DE ALPACHACA', 103, 1, NULL, 1),(6, NULL, '2017-05-22 00:33:45.063149-05', 'SAGRARIO', 103, 1, NULL, 1),(7, NULL, '2017-05-22 00:33:45.155623-05', 'SAN FRANCISCO', 103, 1, NULL, 1),(8, NULL, '2017-05-22 00:33:44.26532-05', 'LA DOLOROSA DEL PRIORATO', 103, 1, NULL, 1),(16, NULL, '2017-05-22 00:33:43.325859-05', 'ATUNTAQUI', 104, 1, NULL, 1),(18, NULL, '2017-05-22 00:33:43.327709-05', 'ATUNTAQUI', 104, 1, NULL, 1),(24, NULL, '2017-05-22 00:33:45.065122-05', 'SAGRARIO', 105, 1, NULL, 1),(25, NULL, '2017-05-22 00:33:45.157421-05', 'SAN FRANCISCO', 105, 1, NULL, 1),(34, NULL, '2017-05-22 00:33:44.687206-05', 'OTAVALO', 106, 1, NULL, 1),(35, NULL, '2017-05-22 00:33:44.211012-05', 'JORDAN', 106, 1, NULL, 1),(32, NULL, '2017-05-22 00:33:43.20307-05', '6 DE JULIO DE CUELLAJE (CAB. EN CUELLAJE)', 105, 2, NULL, 1),(114, NULL, '2017-05-22 00:33:43.247236-05', 'AMALUZA', 5, 2, NULL, 1),(151, NULL, '2017-05-22 00:33:43.250818-05', 'AMALUZA', 12, 2, NULL, 1),(9, NULL, '2017-05-22 00:33:43.260258-05', 'AMBUQUI', 103, 2, NULL, 1),(10, NULL, '2017-05-22 00:33:43.280453-05', 'ANGOCHAGUA', 103, 2, NULL, 1),(26, NULL, '2017-05-22 00:33:43.288103-05', 'APUELA', 105, 2, NULL, 1),(94, NULL, '2017-05-22 00:33:43.306604-05', 'ASUNCION', 2, 2, NULL, 1),(51, NULL, '2017-05-22 00:33:43.45132-05', 'CAHUASQUI', 108, 2, NULL, 1),(74, NULL, '2017-05-22 00:33:43.579144-05', 'CHAUCHA', 1, 2, NULL, 1),(75, NULL, '2017-05-22 00:33:43.584414-05', 'CHECA (JIDCAY) ', 1, 2, NULL, 1),(116, NULL, '2017-05-22 00:33:43.590013-05', 'CHICAN (GUILLERMO ORTEGA) ', 5, 2, NULL, 1),(76, NULL, '2017-05-22 00:33:43.61444-05', 'CHIQUINTAD', 1, 2, NULL, 1),(47, NULL, '2017-05-22 00:33:43.644335-05', 'CHUGA', 107, 2, NULL, 1),(130, NULL, '2017-05-22 00:33:43.648419-05', 'CHUMBLIN', 7, 2, NULL, 1),(108, NULL, '2017-05-22 00:33:43.672271-05', 'COCHAPATA', 4, 2, NULL, 1),(137, NULL, '2017-05-22 00:33:43.744909-05', 'CUCHIL (CUTCHIL) ', 9, 2, NULL, 1),(56, NULL, '2017-05-22 00:33:43.746634-05', 'CUENCA', 1, 2, NULL, 1),(73, NULL, '2017-05-22 00:33:43.758381-05', 'CUMBE', 1, 2, NULL, 1),(37, NULL, '2017-05-22 00:33:43.794419-05', 'DR. MIGUEL EGAS CABEZAS (PEGUCHE)', 106, 2, NULL, 1),(125, NULL, '2017-05-22 00:33:43.799601-05', 'DUG DUG', 5, 2, NULL, 1),(117, NULL, '2017-05-22 00:33:43.819451-05', 'EL CABO  ', 5, 2, NULL, 1),(133, NULL, '2017-05-22 00:33:43.834109-05', 'EL CARMEN DE PIJILI', 8, 2, NULL, 1),(109, NULL, '2017-05-22 00:33:43.908908-05', 'EL PROGRESO (CAB.EN ZHOTA) ', 4, 2, NULL, 1),(60, NULL, '2017-05-22 00:33:43.926954-05', 'EL SAGRARIO', 1, 2, NULL, 1),(27, NULL, '2017-05-22 00:33:43.990821-05', 'GARCIA MORENO  (LLURIMAGUA) ', 105, 2, NULL, 1),(119, NULL, '2017-05-22 00:33:44.084175-05', 'GUARAINAG', 5, 2, NULL, 1),(139, NULL, '2017-05-22 00:33:44.107015-05', 'GUEL', 9, 2, NULL, 1),(28, NULL, '2017-05-22 00:33:44.151597-05', 'IMANTAG', 105, 2, NULL, 1),(19, NULL, '2017-05-22 00:33:44.155028-05', 'IMBAYA (SAN LUIS DE COBUENDO) ', 104, 2, NULL, 1),(99, NULL, '2017-05-22 00:33:44.181407-05', 'JADAN', 3, 2, NULL, 1),(12, NULL, '2017-05-22 00:33:44.272601-05', 'LA ESPERANZA', 103, 2, NULL, 1),(112, NULL, '2017-05-22 00:33:44.320618-05', 'LA PAZ', 4, 2, NULL, 1),(110, NULL, '2017-05-22 00:33:44.350329-05', 'LAS NIEVES (CHAYA)', 4, 2, NULL, 1),(13, NULL, '2017-05-22 00:33:44.40995-05', 'LITA', 103, 2, NULL, 1),(77, NULL, '2017-05-22 00:33:44.413335-05', 'LLACAO', 1, 2, NULL, 1),(140, NULL, '2017-05-22 00:33:44.455796-05', 'LUDO', 9, 2, NULL, 1),(105, NULL, '2017-05-22 00:33:44.460397-05', 'LUIS CORDERO VEGA', 3, 2, NULL, 1),(48, NULL, '2017-05-22 00:33:44.538389-05', 'MARIANO ACOSTA', 107, 2, NULL, 1),(100, NULL, '2017-05-22 00:33:44.540115-05', 'MARIANO MORENO', 3, 2, NULL, 1),(78, NULL, '2017-05-22 00:33:44.581819-05', 'MOLLETURO', 1, 2, NULL, 1),(111, NULL, '2017-05-22 00:33:44.683552-05', 'OÑA', 4, 2, NULL, 1),(53, NULL, '2017-05-22 00:33:44.695946-05', 'PABLO ARENAS', 108, 2, NULL, 1),(81, NULL, '2017-05-22 00:33:44.70368-05', 'PACCHA', 1, 2, NULL, 1),(102, NULL, '2017-05-22 00:33:45.001812-05', 'REMIGIO CRESPO TORAL (GULAG)', 3, 2, NULL, 1),(83, NULL, '2017-05-22 00:33:45.003886-05', 'RICAURTE', 1, 2, NULL, 1),(14, NULL, '2017-05-22 00:33:45.080624-05', 'SALINAS', 103, 2, NULL, 1),(15, NULL, '2017-05-22 00:33:45.10251-05', 'SAN ANTONIO', 103, 2, NULL, 1),(141, NULL, '2017-05-22 00:33:45.117625-05', 'SAN BARTOLOME', 9, 2, NULL, 1),(54, NULL, '2017-05-22 00:33:45.124246-05', 'SAN BLAS', 108, 2, NULL, 1),(122, NULL, '2017-05-22 00:33:45.14397-05', 'SAN CRISTOBAL (CARLOS ORDOÑEZ LAZO) ', 5, 2, NULL, 1),(20, NULL, '2017-05-22 00:33:45.168595-05', 'SAN FRANCISCO DE NATABUELA', 104, 2, NULL, 1),(49, NULL, '2017-05-22 00:33:45.17617-05', 'SAN FRANCISCO DE SIGSIPAMBA', 107, 2, NULL, 1),(95, NULL, '2017-05-22 00:33:45.181512-05', 'SAN GERARDO', 2, 2, NULL, 1),(84, NULL, '2017-05-22 00:33:45.216429-05', 'SAN JOAQUIN', 1, 2, NULL, 1),(21, NULL, '2017-05-22 00:33:45.231908-05', 'SAN JOSE DE CHALTURA', 104, 2, NULL, 1),(41, NULL, '2017-05-22 00:33:45.257139-05', 'SAN JOSE DE QUICHINCHE ', 106, 2, NULL, 1),(142, NULL, '2017-05-22 00:33:45.258993-05', 'SAN JOSE DE RARANGA', 9, 2, NULL, 1),(103, NULL, '2017-05-22 00:33:45.268422-05', 'SAN JUAN', 3, 2, NULL, 1),(42, NULL, '2017-05-22 00:33:45.275892-05', 'SAN JUAN DE ILUMAN', 106, 2, NULL, 1),(149, NULL, '2017-05-22 00:33:45.300214-05', 'SAN MARTIN DE PUZHIO', 11, 2, NULL, 1),(43, NULL, '2017-05-22 00:33:45.32904-05', 'SAN PABLO', 106, 2, NULL, 1),(44, NULL, '2017-05-22 00:33:45.35138-05', 'SAN RAFAEL', 106, 2, NULL, 1),(128, NULL, '2017-05-22 00:33:45.354929-05', 'SAN RAFAEL DE SHARUG', 6, 2, NULL, 1),(22, NULL, '2017-05-22 00:33:45.356918-05', 'SAN ROQUE', 104, 2, NULL, 1),(135, NULL, '2017-05-22 00:33:45.363164-05', 'SAN SALVADOR DE CAÑARIBAMBA', 8, 2, NULL, 1),(85, NULL, '2017-05-22 00:33:45.381556-05', 'SANTA ANA', 1, 2, NULL, 1),(86, NULL, '2017-05-22 00:33:45.486133-05', 'SAYAUSI', 1, 2, NULL, 1),(123, NULL, '2017-05-22 00:33:45.496564-05', 'SEVILLA DE ORO', 5, 2, NULL, 1),(87, NULL, '2017-05-22 00:33:45.511575-05', 'SIDCAY', 1, 2, NULL, 1),(88, NULL, '2017-05-22 00:33:45.538789-05', 'SININCAY', 1, 2, NULL, 1),(144, NULL, '2017-05-22 00:33:45.574188-05', 'SUSUDEL', 10, 2, NULL, 1),(89, NULL, '2017-05-22 00:33:45.611474-05', 'TARQUI', 1, 2, NULL, 1),(124, NULL, '2017-05-22 00:33:45.652605-05', 'TOMEBAMBA', 5, 2, NULL, 1),(55, NULL, '2017-05-22 00:33:45.680237-05', 'TUMBABIRO', 108, 2, NULL, 1),(90, NULL, '2017-05-22 00:33:45.687289-05', 'TURI', 1, 2, NULL, 1),(91, NULL, '2017-05-22 00:33:45.73821-05', 'VALLE', 1, 2, NULL, 1),(92, NULL, '2017-05-22 00:33:45.771272-05', 'VICTORIA DEL PORTETE (IRQUIS)', 1, 2, NULL, 1),(134, NULL, '2017-05-22 00:33:45.828035-05', 'ZHAGLLI (SHAGLLI)', 8, 2, NULL, 1),(104, NULL, '2017-05-22 00:33:45.829837-05', 'ZHIDMAD', 3, 2, NULL, 1),(155, NULL, '2017-05-22 00:33:43.24903-05', 'AMALUZA', 13, 2, NULL, 1),(304, NULL, '2017-05-22 00:33:43.273092-05', 'ANGAMARCA', 39, 2, NULL, 1),(177, NULL, '2017-05-22 00:33:43.308352-05', 'ASUNCION (ASANCOTO) ', 18, 2, NULL, 1),(194, NULL, '2017-05-22 00:33:43.347365-05', 'AZOGUES', 23, 2, NULL, 1),(281, NULL, '2017-05-22 00:33:43.390555-05', 'BELISARIO QUEVEDO (GUANAILIN)', 36, 2, NULL, 1),(185, NULL, '2017-05-22 00:33:43.417261-05', 'BILOVAN', 20, 2, NULL, 1),(268, NULL, '2017-05-22 00:33:43.61828-05', 'CHITAN DE NAVARRETE', 34, 2, NULL, 1),(215, NULL, '2017-05-22 00:33:43.63269-05', 'CHONTAMARCA', 25, 2, NULL, 1),(216, NULL, '2017-05-22 00:33:43.640324-05', 'CHOROCOPTE', 25, 2, NULL, 1),(267, NULL, '2017-05-22 00:33:43.724956-05', 'CRISTOBAL COLON', 34, 2, NULL, 1),(200, NULL, '2017-05-22 00:33:43.788456-05', 'DELEG', 23, 2, NULL, 1),(227, NULL, '2017-05-22 00:33:43.797843-05', 'DUCUR', 25, 2, NULL, 1),(238, NULL, '2017-05-22 00:33:43.824954-05', 'EL CARMELO (EL PUN) ', 30, 2, NULL, 1),(246, NULL, '2017-05-22 00:33:43.840106-05', 'EL CHICAL', 30, 2, NULL, 1),(296, NULL, '2017-05-22 00:33:43.94165-05', 'EL TRIUNFO', 37, 2, NULL, 1),(164, NULL, '2017-05-22 00:33:43.961521-05', 'FACUNDO VELA', 16, 2, NULL, 1),(269, NULL, '2017-05-22 00:33:43.968596-05', 'FERNANDEZ SALVADOR', 34, 2, NULL, 1),(250, NULL, '2017-05-22 00:33:43.985442-05', 'GARCIA MORENO', 31, 2, NULL, 1),(217, NULL, '2017-05-22 00:33:44.005457-05', 'GENERAL MORALES (SOCARTE) ', 25, 2, NULL, 1),(282, NULL, '2017-05-22 00:33:44.046961-05', 'GUAITACAMA (GUAYTACAMA) ', 36, 2, NULL, 1),(218, NULL, '2017-05-22 00:33:44.060834-05', 'GUALLETURO', 25, 2, NULL, 1),(163, NULL, '2017-05-22 00:33:44.079229-05', 'GUANUJO', 16, 2, NULL, 1),(201, NULL, '2017-05-22 00:33:44.081822-05', 'GUAPAN', 23, 2, NULL, 1),(160, NULL, '2017-05-22 00:33:44.085899-05', 'GUARANDA', 16, 2, NULL, 1),(297, NULL, '2017-05-22 00:33:44.090124-05', 'GUASAGANDA (CAB.EN GUASAGANDA CENTRO)', 37, 2, NULL, 1),(219, NULL, '2017-05-22 00:33:44.116047-05', 'HONORATO VASQUEZ (TAMBO VIEJO) ', 25, 2, NULL, 1),(239, NULL, '2017-05-22 00:33:44.117742-05', 'HUACA', 30, 2, NULL, 1),(220, NULL, '2017-05-22 00:33:44.162592-05', 'INGAPIRCA', 25, 2, NULL, 1),(202, NULL, '2017-05-22 00:33:44.195648-05', 'JAVIER LOYOLA (CHUQUIPATA) ', 23, 2, NULL, 1),(263, NULL, '2017-05-22 00:33:44.226371-05', 'JUAN MONTALVO (SAN IGNACIO DE QUIL)', 33, 2, NULL, 1),(240, NULL, '2017-05-22 00:33:44.231978-05', 'JULIO ANDRADE (OREJUELA) ', 30, 2, NULL, 1),(166, NULL, '2017-05-22 00:33:44.233683-05', 'JULIO E. MORENO (CATANAHUAN GRANDE)', 16, 2, NULL, 1),(221, NULL, '2017-05-22 00:33:44.237342-05', 'JUNCAL', 25, 2, NULL, 1),(258, NULL, '2017-05-22 00:33:44.294682-05', 'LA LIBERTAD (ALIZO)', 32, 2, NULL, 1),(270, NULL, '2017-05-22 00:33:44.32239-05', 'LA PAZ', 34, 2, NULL, 1),(251, NULL, '2017-05-22 00:33:44.441834-05', 'LOS ANDES', 31, 2, NULL, 1),(203, NULL, '2017-05-22 00:33:44.458093-05', 'LUIS CORDERO', 23, 2, NULL, 1),(179, NULL, '2017-05-22 00:33:44.496515-05', 'MAGDALENA (CHAPACOTO)', 18, 2, NULL, 1),(241, NULL, '2017-05-22 00:33:44.508561-05', 'MALDONADO', 30, 2, NULL, 1),(229, NULL, '2017-05-22 00:33:44.533049-05', 'MANUEL J. CALLE', 26, 2, NULL, 1),(252, NULL, '2017-05-22 00:33:44.598563-05', 'MONTE OLIVO', 31, 2, NULL, 1),(300, NULL, '2017-05-22 00:33:44.604573-05', 'MORASPUNGO', 38, 2, NULL, 1),(285, NULL, '2017-05-22 00:33:44.613888-05', 'MULALO', 36, 2, NULL, 1),(210, NULL, '2017-05-22 00:33:44.637048-05', 'NAZON (CAB. EN PAMPA DE DOMINGUEZ)', 24, 2, NULL, 1),(156, NULL, '2017-05-22 00:33:44.732981-05', 'PALMAS', 13, 2, NULL, 1),(292, NULL, '2017-05-22 00:33:44.736623-05', 'PALO QUEMADO', 36, 2, NULL, 1),(271, NULL, '2017-05-22 00:33:44.810625-05', 'PIARTAL', 34, 2, NULL, 1),(302, NULL, '2017-05-22 00:33:44.998203-05', 'RAMON CAMPAÑA', 38, 2, NULL, 1),(186, NULL, '2017-05-22 00:33:44.999997-05', 'REGULO DE MORA', 20, 2, NULL, 1),(205, NULL, '2017-05-22 00:33:45.032159-05', 'RIVERA', 23, 2, NULL, 1),(168, NULL, '2017-05-22 00:33:45.078577-05', 'SALINAS', 16, 2, NULL, 1),(222, NULL, '2017-05-22 00:33:45.100469-05', 'SAN ANTONIO', 25, 2, NULL, 1),(136, NULL, '2017-05-22 00:33:45.520513-05', 'SIGSIG', 9, 1, NULL, 1),(161, NULL, '2017-05-22 00:33:43.277923-05', 'ANGEL POLIBIO CHAVES', 16, 1, NULL, 1),(162, NULL, '2017-05-22 00:33:43.979539-05', 'GABRIEL IGNACIO VEINTIMILLA', 16, 1, NULL, 1),(165, NULL, '2017-05-22 00:33:44.077522-05', 'GUANUJO', 16, 1, NULL, 1),(182, NULL, '2017-05-22 00:33:43.803004-05', 'ECHEANDIA', 19, 1, NULL, 1),(174, NULL, '2017-05-22 00:33:43.604254-05', 'CHILLANES', 17, 1, NULL, 1),(190, NULL, '2017-05-22 00:33:43.465835-05', 'CALUMA', 21, 1, NULL, 1),(195, NULL, '2017-05-22 00:33:43.33225-05', 'AURELIO BAYAS MARTINEZ', 23, 1, NULL, 1),(197, NULL, '2017-05-22 00:33:43.438697-05', 'BORRERO', 23, 1, NULL, 1),(198, NULL, '2017-05-22 00:33:45.159214-05', 'SAN FRANCISCO', 23, 1, NULL, 1),(209, NULL, '2017-05-22 00:33:43.41305-05', 'BIBLIAN', 24, 1, NULL, 1),(214, NULL, '2017-05-22 00:33:43.477524-05', 'CAÑAR', 25, 1, NULL, 1),(232, NULL, '2017-05-22 00:33:43.786737-05', 'DELEG', 28, 1, NULL, 1),(249, NULL, '2017-05-22 00:33:43.428881-05', 'BOLIVAR', 31, 1, NULL, 1),(255, NULL, '2017-05-22 00:33:43.812015-05', 'EL ANGEL', 32, 1, NULL, 1),(260, NULL, '2017-05-22 00:33:44.57479-05', 'MIRA (CHONTAHUASI)', 33, 1, NULL, 1),(272, NULL, '2017-05-22 00:33:44.120897-05', 'HUACA', 35, 1, NULL, 1),(275, NULL, '2017-05-22 00:33:43.886494-05', 'ELOY ALFARO  (SAN FELIPE) ', 36, 1, NULL, 1),(277, NULL, '2017-05-22 00:33:44.228542-05', 'JUAN MONTALVO (SAN SEBASTIAN)', 36, 1, NULL, 1),(278, NULL, '2017-05-22 00:33:44.304753-05', 'LA MATRIZ', 36, 1, NULL, 1),(279, NULL, '2017-05-22 00:33:45.1262-05', 'SAN BUENAVENTURA', 36, 1, NULL, 1),(294, NULL, '2017-05-22 00:33:43.826649-05', 'EL CARMEN', 37, 1, NULL, 1),(293, NULL, '2017-05-22 00:33:44.298232-05', 'LA MANA', 37, 1, NULL, 1),(295, NULL, '2017-05-22 00:33:44.300464-05', 'LA MANA ', 37, 1, NULL, 1),(419, NULL, '2017-05-22 00:33:45.013479-05', 'RIO BONITO', 58, 2, NULL, 1),(3, NULL, '2017-05-22 00:33:45.319379-05', 'SAN MIGUEL DE IBARRA', 103, 1, NULL, 1),(36, NULL, '2017-05-22 00:33:45.291009-05', 'SAN LUIS', 106, 1, NULL, 1),(50, NULL, '2017-05-22 00:33:45.71216-05', 'URCUQUI', 108, 1, NULL, 1),(211, NULL, '2017-05-22 00:33:45.174371-05', 'SAN FRANCISCO DE SAGEO', 24, 2, NULL, 1),(259, NULL, '2017-05-22 00:33:45.19683-05', 'SAN ISIDRO', 32, 2, NULL, 1),(175, NULL, '2017-05-22 00:33:45.245275-05', 'SAN JOSE DEL TAMBO (TAMBOPAMBA)', 17, 2, NULL, 1),(288, NULL, '2017-05-22 00:33:45.279878-05', 'SAN JUAN DE PASTOCALLE', 36, 2, NULL, 1),(169, NULL, '2017-05-22 00:33:45.283718-05', 'SAN LORENZO', 16, 2, NULL, 1),(173, NULL, '2017-05-22 00:33:45.298495-05', 'SAN LUIS DE PAMBIL', 16, 2, NULL, 1),(206, NULL, '2017-05-22 00:33:45.310673-05', 'SAN MIGUEL', 23, 2, NULL, 1),(187, NULL, '2017-05-22 00:33:45.336731-05', 'SAN PABLO  (SAN PABLO DE ATENAS)', 20, 2, NULL, 1),(180, NULL, '2017-05-22 00:33:45.369621-05', 'SAN SEBASTIAN', 18, 2, NULL, 1),(170, NULL, '2017-05-22 00:33:45.377942-05', 'SAN SIMON (YACOTO)', 16, 2, NULL, 1),(171, NULL, '2017-05-22 00:33:45.402123-05', 'SANTA FE (SANTA FE)', 16, 2, NULL, 1),(248, NULL, '2017-05-22 00:33:45.416818-05', 'SANTA MARTHA DE CUBA', 30, 2, NULL, 1),(188, NULL, '2017-05-22 00:33:45.448065-05', 'SANTIAGO', 20, 2, NULL, 1),(153, NULL, '2017-05-22 00:33:45.468165-05', 'SAN VICENTE', 12, 2, NULL, 1),(189, NULL, '2017-05-22 00:33:45.471804-05', 'SAN VICENTE', 20, 2, NULL, 1),(289, NULL, '2017-05-22 00:33:45.518363-05', 'SIGCHOS', 36, 2, NULL, 1),(172, NULL, '2017-05-22 00:33:45.522198-05', 'SIMIATUG', 16, 2, NULL, 1),(233, NULL, '2017-05-22 00:33:45.544843-05', 'SOLANO', 28, 2, NULL, 1),(208, NULL, '2017-05-22 00:33:45.585863-05', 'TADAY', 23, 2, NULL, 1),(291, NULL, '2017-05-22 00:33:45.64542-05', 'TOACASO', 36, 2, NULL, 1),(243, NULL, '2017-05-22 00:33:45.647111-05', 'TOBAR DONOSO (LA BOCANA DE CAMUMBI) ', 30, 2, NULL, 1),(244, NULL, '2017-05-22 00:33:45.672743-05', 'TUFIÑO', 30, 2, NULL, 1),(245, NULL, '2017-05-22 00:33:45.709806-05', 'URBINA (TAYA)', 30, 2, NULL, 1),(226, NULL, '2017-05-22 00:33:45.755287-05', 'VENTURA', 25, 2, NULL, 1),(225, NULL, '2017-05-22 00:33:45.832062-05', 'ZHUD', 25, 2, NULL, 1),(132, NULL, '2017-05-22 00:33:43.209052-05', 'ABDON CALDERON  (LA UNION) ', 8, 2, NULL, 1),(280, NULL, '2017-05-22 00:33:43.225443-05', 'ALAQUES (ALAQUEZ) ', 36, 2, NULL, 1),(928, NULL, '2017-05-22 00:33:43.286009-05', 'ANTONIO SOTOMAYOR (CAB. EN PLAYAS DE VINCES) ', 141, 2, NULL, 1),(407, NULL, '2017-05-22 00:33:43.341776-05', 'AYAPAMBA', 55, 2, NULL, 1),(413, NULL, '2017-05-22 00:33:43.394981-05', 'BELLAMARIA', 56, 2, NULL, 1),(459, NULL, '2017-05-22 00:33:43.404749-05', 'BELLAVISTA', 64, 2, NULL, 1),(390, NULL, '2017-05-22 00:33:43.415155-05', 'BILBAO (CAB.EN QUILLUYACU)', 51, 2, NULL, 1),(433, NULL, '2017-05-22 00:33:43.4444-05', 'BUENAVISTA', 61, 2, NULL, 1),(333, NULL, '2017-05-22 00:33:43.449538-05', 'CACHA (CAB. EN MACHANGARA) ', 43, 2, NULL, 1),(438, NULL, '2017-05-22 00:33:43.475632-05', 'CAÑAQUEMADA', 61, 2, NULL, 1),(319, NULL, '2017-05-22 00:33:43.481517-05', 'CANCHAGUA', 41, 2, NULL, 1),(358, NULL, '2017-05-22 00:33:43.490422-05', 'CAÑI', 45, 2, NULL, 1),(369, NULL, '2017-05-22 00:33:43.544493-05', 'CEBADAS', 48, 2, NULL, 1),(401, NULL, '2017-05-22 00:33:43.559487-05', 'CHACRAS', 54, 2, NULL, 1),(320, NULL, '2017-05-22 00:33:43.57162-05', 'CHANTILIN', 41, 2, NULL, 1),(305, NULL, '2017-05-22 00:33:43.642363-05', 'CHUCCHILAN (CHUGCHILAN) ', 39, 2, NULL, 1),(323, NULL, '2017-05-22 00:33:43.646323-05', 'CHUGCHILLAN', 42, 2, NULL, 1),(321, NULL, '2017-05-22 00:33:43.668111-05', 'COCHAPAMBA', 41, 2, NULL, 1),(408, NULL, '2017-05-22 00:33:43.709499-05', 'CORDONCILLO', 55, 2, NULL, 1),(335, NULL, '2017-05-22 00:33:43.741368-05', 'CUBIJIES', 43, 2, NULL, 1),(346, NULL, '2017-05-22 00:33:43.750306-05', 'CUMANDA', 44, 2, NULL, 1),(314, NULL, '2017-05-22 00:33:43.76701-05', 'CUSUBAMBA', 40, 2, NULL, 1),(385, NULL, '2017-05-22 00:33:43.808594-05', 'EL ALTAR', 51, 2, NULL, 1),(399, NULL, '2017-05-22 00:33:43.914278-05', 'EL RETIRO', 53, 2, NULL, 1),(336, NULL, '2017-05-22 00:33:43.972526-05', 'FLORES', 43, 2, NULL, 1),(366, NULL, '2017-05-22 00:33:44.031039-05', 'GONZOL', 47, 2, NULL, 1),(374, NULL, '2017-05-22 00:33:44.068713-05', 'GUANANDO', 49, 2, NULL, 1),(306, NULL, '2017-05-22 00:33:44.072399-05', 'GUANGAJE', 39, 2, NULL, 1),(371, NULL, '2017-05-22 00:33:44.075824-05', 'GUANO', 49, 2, NULL, 1),(348, NULL, '2017-05-22 00:33:44.146146-05', 'HUIGRA', 44, 2, NULL, 1),(307, NULL, '2017-05-22 00:33:44.170036-05', 'ISINLIBI (ISINLIVI) ', 39, 2, NULL, 1),(360, NULL, '2017-05-22 00:33:44.22057-05', 'JUAN DE VELASCO (PANGOR)', 45, 2, NULL, 1),(457, NULL, '2017-05-22 00:33:44.235632-05', 'JUMON (SATELITE)', 64, 2, NULL, 1),(461, NULL, '2017-05-22 00:33:44.248543-05', 'LA AVANZADA', 64, 2, NULL, 1),(444, NULL, '2017-05-22 00:33:44.252202-05', 'LA BOCANA', 62, 2, NULL, 1),(389, NULL, '2017-05-22 00:33:44.256008-05', 'LA CANDELARIA', 51, 2, NULL, 1),(417, NULL, '2017-05-22 00:33:44.283808-05', 'LA IBERIA', 58, 2, NULL, 1),(402, NULL, '2017-05-22 00:33:44.289206-05', 'LA LIBERTAD', 54, 2, NULL, 1),(435, NULL, '2017-05-22 00:33:44.324483-05', 'LA PEAÑA', 61, 2, NULL, 1),(376, NULL, '2017-05-22 00:33:44.330193-05', 'LA PROVIDENCIA', 49, 2, NULL, 1),(308, NULL, '2017-05-22 00:33:44.388117-05', 'LA VICTORIA', 39, 2, NULL, 1),(338, NULL, '2017-05-22 00:33:44.400519-05', 'LICTO', 43, 2, NULL, 1),(328, NULL, '2017-05-22 00:33:44.411644-05', 'LIZARZABURU', 43, 2, NULL, 1),(367, NULL, '2017-05-22 00:33:44.415057-05', 'LLAGOS', 47, 2, NULL, 1),(409, NULL, '2017-05-22 00:33:44.56278-05', 'MILAGRO', 55, 2, NULL, 1),(445, NULL, '2017-05-22 00:33:44.60629-05', 'MOROMORO (CAB. EN EL VADO)', 62, 2, NULL, 1),(315, NULL, '2017-05-22 00:33:44.612121-05', 'MULALILLO', 40, 2, NULL, 1),(349, NULL, '2017-05-22 00:33:44.617426-05', 'MULTITUD', 44, 2, NULL, 1),(404, NULL, '2017-05-22 00:33:44.725758-05', 'PALMALES', 54, 2, NULL, 1),(370, NULL, '2017-05-22 00:33:44.734917-05', 'PALMIRA', 48, 2, NULL, 1),(176, NULL, '2017-05-22 00:33:45.235263-05', 'SAN JOSE DE CHIMBO', 18, 1, NULL, 1),(183, NULL, '2017-05-22 00:33:45.312834-05', 'SAN MIGUEL', 20, 1, NULL, 1),(224, NULL, '2017-05-22 00:33:45.596916-05', 'TAMBO', 25, 1, NULL, 1),(234, NULL, '2017-05-22 00:33:45.572452-05', 'SUSCAL', 29, 1, NULL, 1),(235, NULL, '2017-05-22 00:33:45.676526-05', 'TULCAN', 30, 1, NULL, 1),(237, NULL, '2017-05-22 00:33:45.674532-05', 'TULCAN', 30, 1, NULL, 1),(264, NULL, '2017-05-22 00:33:45.177944-05', 'SAN GABRIEL', 34, 1, NULL, 1),(266, NULL, '2017-05-22 00:33:45.220094-05', 'SAN JOSE', 34, 1, NULL, 1),(329, NULL, '2017-05-22 00:33:44.512532-05', 'MALDONADO', 43, 1, NULL, 1),(337, NULL, '2017-05-22 00:33:44.398817-05', 'LICAN', 43, 1, NULL, 1),(344, NULL, '2017-05-22 00:33:43.227215-05', 'ALAUSI', 44, 1, NULL, 1),(356, NULL, '2017-05-22 00:33:43.453075-05', 'CAJABAMBA', 45, 1, NULL, 1),(362, NULL, '2017-05-22 00:33:43.563903-05', 'CHAMBO', 46, 1, NULL, 1),(363, NULL, '2017-05-22 00:33:43.654628-05', 'CHUNCHI', 47, 1, NULL, 1),(372, NULL, '2017-05-22 00:33:43.917968-05', 'EL ROSARIO', 49, 1, NULL, 1),(373, NULL, '2017-05-22 00:33:44.306786-05', 'LA MATRIZ', 49, 1, NULL, 1),(391, NULL, '2017-05-22 00:33:43.748602-05', 'CUMANDA', 52, 1, NULL, 1),(393, NULL, '2017-05-22 00:33:44.332191-05', 'LA PROVIDENCIA', 53, 1, NULL, 1),(394, NULL, '2017-05-22 00:33:44.481939-05', 'MACHALA', 53, 1, NULL, 1),(396, NULL, '2017-05-22 00:33:44.651015-05', 'NUEVE DE MAYO', 53, 1, NULL, 1),(397, NULL, '2017-05-22 00:33:43.823239-05', 'EL CAMBIO', 53, 1, NULL, 1),(400, NULL, '2017-05-22 00:33:43.298751-05', 'ARENILLAS', 54, 1, NULL, 1),(406, NULL, '2017-05-22 00:33:44.705368-05', 'PACCHA', 55, 1, NULL, 1),(414, NULL, '2017-05-22 00:33:43.60226-05', 'CHILLA', 57, 1, NULL, 1),(415, NULL, '2017-05-22 00:33:43.863598-05', 'EL GUABO', 58, 1, NULL, 1),(420, NULL, '2017-05-22 00:33:44.136698-05', 'HUAQUILLAS', 59, 1, NULL, 1),(421, NULL, '2017-05-22 00:33:43.805172-05', 'ECUADOR', 59, 1, NULL, 1),(422, NULL, '2017-05-22 00:33:43.894228-05', 'EL PARAISO', 59, 1, NULL, 1),(423, NULL, '2017-05-22 00:33:44.129117-05', 'HUALTACO', 59, 1, NULL, 1),(424, NULL, '2017-05-22 00:33:44.568848-05', 'MILTON REYES', 59, 1, NULL, 1),(429, NULL, '2017-05-22 00:33:43.422906-05', 'BOLIVAR', 61, 1, NULL, 1),(431, NULL, '2017-05-22 00:33:44.666264-05', 'OCHOA LEON (MATRIZ)', 61, 1, NULL, 1),(450, NULL, '2017-05-22 00:33:43.76523-05', 'CURTINCAPA', 63, 1, NULL, 1),(451, NULL, '2017-05-22 00:33:44.602662-05', 'MORALES', 63, 1, NULL, 1),(458, NULL, '2017-05-22 00:33:44.662332-05', 'NUEVO SANTA ROSA', 64, 1, NULL, 1),(377, NULL, '2017-05-22 00:33:45.088456-05', 'SAN ANDRES', 49, 2, NULL, 1),(388, NULL, '2017-05-22 00:33:45.108439-05', 'SAN ANTONIO DE BAYUSHIG', 51, 2, NULL, 1),(378, NULL, '2017-05-22 00:33:45.183696-05', 'SAN GERARDO DE PACAICAGUAN', 49, 2, NULL, 1),(379, NULL, '2017-05-22 00:33:45.202186-05', 'SAN ISIDRO DE PATULU', 49, 2, NULL, 1),(410, NULL, '2017-05-22 00:33:45.223466-05', 'SAN JOSE', 55, 2, NULL, 1),(380, NULL, '2017-05-22 00:33:45.240758-05', 'SAN JOSE DEL CHAZO', 49, 2, NULL, 1),(342, NULL, '2017-05-22 00:33:45.265885-05', 'SAN JUAN', 43, 2, NULL, 1),(411, NULL, '2017-05-22 00:33:45.273889-05', 'SAN JUAN DE CERRO AZUL', 55, 2, NULL, 1),(343, NULL, '2017-05-22 00:33:45.293066-05', 'SAN LUIS', 43, 2, NULL, 1),(447, NULL, '2017-05-22 00:33:45.358644-05', 'SAN ROQUE (AMBROSIO MALDONADO)', 62, 2, NULL, 1),(381, NULL, '2017-05-22 00:33:45.400323-05', 'SANTA FE DE GALAN', 49, 2, NULL, 1),(361, NULL, '2017-05-22 00:33:45.457934-05', 'SANTIAGO DE QUITO (CAB. EN SAN ANTONIO DE QUITO)', 45, 2, NULL, 1),(448, NULL, '2017-05-22 00:33:45.478878-05', 'SARACAY', 62, 2, NULL, 1),(352, NULL, '2017-05-22 00:33:45.494611-05', 'SEVILLA', 44, 2, NULL, 1),(353, NULL, '2017-05-22 00:33:45.507444-05', 'SIBAMBE', 44, 2, NULL, 1),(418, NULL, '2017-05-22 00:33:45.625965-05', 'TENDALES (CAB.EN PUERTO TENDALES)', 58, 2, NULL, 1),(310, NULL, '2017-05-22 00:33:45.635067-05', 'TINGO', 39, 2, NULL, 1),(354, NULL, '2017-05-22 00:33:45.641634-05', 'TIXAN', 44, 2, NULL, 1),(437, NULL, '2017-05-22 00:33:45.722363-05', 'UZHCURRUMI', 61, 2, NULL, 1),(382, NULL, '2017-05-22 00:33:45.745748-05', 'VALPARAISO', 49, 2, NULL, 1),(355, NULL, '2017-05-22 00:33:45.775378-05', 'VILLA LA UNION (CAJABAMBA)', 45, 2, NULL, 1),(311, NULL, '2017-05-22 00:33:45.836359-05', 'ZUMBAHUA', 39, 2, NULL, 1),(539, NULL, '2017-05-22 00:33:43.241893-05', 'ALTO TAMBO (CAB. EN GUADUAL)', 71, 2, NULL, 1),(508, NULL, '2017-05-22 00:33:43.264025-05', 'ANCHAYACU', 68, 2, NULL, 1),(540, NULL, '2017-05-22 00:33:43.267858-05', 'ANCON (PICHANGAL) (CAB. EN PALMA REAL) ', 71, 2, NULL, 1),(468, NULL, '2017-05-22 00:33:43.295253-05', 'ARCAPAMBA', 65, 2, NULL, 1),(509, NULL, '2017-05-22 00:33:43.317929-05', 'ATAHUALPA (CAB. EN CAMARONES) ', 68, 2, NULL, 1),(465, NULL, '2017-05-22 00:33:43.392878-05', 'BELLAMARIA', 64, 2, NULL, 1),(510, NULL, '2017-05-22 00:33:43.436918-05', 'BORBON', 68, 2, NULL, 1),(541, NULL, '2017-05-22 00:33:43.458788-05', 'CALDERON', 71, 2, NULL, 1),(490, NULL, '2017-05-22 00:33:43.46784-05', 'CAMARONES (CAB. EN SAN VICENTE) ', 67, 2, NULL, 1),(492, NULL, '2017-05-22 00:33:43.610545-05', 'CHINCA', 67, 2, NULL, 1),(493, NULL, '2017-05-22 00:33:43.629261-05', 'CHONTADURO', 67, 2, NULL, 1),(558, NULL, '2017-05-22 00:33:43.650619-05', 'CHUMUNDE', 73, 2, NULL, 1),(494, NULL, '2017-05-22 00:33:43.652823-05', 'CHUMUNDE', 67, 2, NULL, 1),(491, NULL, '2017-05-22 00:33:43.726872-05', 'CRNEL. CARLOS CONCHA TORRES (CAB.EN HUELE)', 67, 2, NULL, 1),(533, NULL, '2017-05-22 00:33:43.738426-05', 'CUBE', 70, 2, NULL, 1),(525, NULL, '2017-05-22 00:33:43.783021-05', 'DAULE', 69, 2, NULL, 1),(481, NULL, '2017-05-22 00:33:43.896245-05', 'EL PARAISO ', 66, 2, NULL, 1),(599, NULL, '2017-05-22 00:33:43.951019-05', 'EMILIANO CAICEDO MARCOS', 80, 2, NULL, 1),(469, NULL, '2017-05-22 00:33:44.070427-05', 'GUANAZAN', 65, 2, NULL, 1),(471, NULL, '2017-05-22 00:33:44.1442-05', 'HUERTAS', 65, 2, NULL, 1),(604, NULL, '2017-05-22 00:33:44.168331-05', 'ISIDRO AYORA (SOLEDAD) ', 80, 2, NULL, 1),(583, NULL, '2017-05-22 00:33:44.222333-05', 'JUAN GOMEZ RENDON (PROGRESO) ', 75, 2, NULL, 1),(562, NULL, '2017-05-22 00:33:44.263623-05', 'LA CONCORDIA', 74, 2, NULL, 1),(495, NULL, '2017-05-22 00:33:44.278088-05', 'LAGARTO', 67, 2, NULL, 1),(480, NULL, '2017-05-22 00:33:44.292983-05', 'LA LIBERTAD', 66, 2, NULL, 1),(511, NULL, '2017-05-22 00:33:44.36427-05', 'LA TOLA', 68, 2, NULL, 1),(564, NULL, '2017-05-22 00:33:44.391975-05', 'LA VILLEGAS', 74, 2, NULL, 1),(607, NULL, '2017-05-22 00:33:44.402208-05', 'LIMONAL', 80, 2, NULL, 1),(608, NULL, '2017-05-22 00:33:44.433802-05', 'LOMAS DE SARGENTILLO', 80, 2, NULL, 1),(609, NULL, '2017-05-22 00:33:44.451252-05', 'LOS LOJAS (ENRIQUE BAQUERIZO MORENO)', 80, 2, NULL, 1),(512, NULL, '2017-05-22 00:33:44.466312-05', 'LUIS VARGAS TORRES (CAB. EN PLAYA DE ORO)', 68, 2, NULL, 1),(600, NULL, '2017-05-22 00:33:44.500417-05', 'MAGRO', 80, 2, NULL, 1),(497, NULL, '2017-05-22 00:33:44.502674-05', 'MAJUA', 67, 2, NULL, 1),(513, NULL, '2017-05-22 00:33:44.510348-05', 'MALDONADO', 68, 2, NULL, 1),(535, NULL, '2017-05-22 00:33:44.514248-05', 'MALIMPIA', 70, 2, NULL, 1),(498, NULL, '2017-05-22 00:33:44.590926-05', 'MONTALVO (CAB. EN HORQUETA)', 67, 2, NULL, 1),(560, NULL, '2017-05-22 00:33:44.592723-05', 'MONTALVO (CAB. EN HORQUETA) ', 73, 2, NULL, 1),(563, NULL, '2017-05-22 00:33:44.600772-05', 'MONTERREY', 74, 2, NULL, 1),(584, NULL, '2017-05-22 00:33:44.608575-05', 'MORRO', 75, 2, NULL, 1),(473, NULL, '2017-05-22 00:33:44.619203-05', 'MULUNCAY GRANDE', 65, 2, NULL, 1),(601, NULL, '2017-05-22 00:33:44.710682-05', 'PADRE JUAN BAUTISTA AGUIRRE', 80, 2, NULL, 1),(514, NULL, '2017-05-22 00:33:44.742273-05', 'PAMPANAL DE BOLIVAR', 68, 2, NULL, 1),(499, NULL, '2017-05-22 00:33:45.0284-05', 'RIO VERDE', 67, 2, NULL, 1),(528, NULL, '2017-05-22 00:33:45.07406-05', 'SALIMA', 69, 2, NULL, 1),(475, NULL, '2017-05-22 00:33:45.082499-05', 'SALVIAS', 65, 2, NULL, 1),(462, NULL, '2017-05-22 00:33:45.094524-05', 'SAN ANTONIO', 64, 2, NULL, 1),(529, NULL, '2017-05-22 00:33:45.15181-05', 'SAN FRANCISCO', 69, 2, NULL, 1),(318, NULL, '2017-05-22 00:33:45.477183-05', 'SAQUISILI', 41, 1, NULL, 1),(322, NULL, '2017-05-22 00:33:45.516678-05', 'SIGCHOS', 42, 1, NULL, 1),(330, NULL, '2017-05-22 00:33:45.747726-05', 'VELASCO', 43, 1, NULL, 1),(331, NULL, '2017-05-22 00:33:45.751528-05', 'VELOZ', 43, 1, NULL, 1),(332, NULL, '2017-05-22 00:33:45.80203-05', 'YARUQUIES', 43, 1, NULL, 1),(357, NULL, '2017-05-22 00:33:45.509634-05', 'SICALPA', 45, 1, NULL, 1),(425, NULL, '2017-05-22 00:33:45.704214-05', 'UNION LOJANA', 59, 1, NULL, 1),(452, NULL, '2017-05-22 00:33:45.072049-05', 'SALATI', 63, 1, NULL, 1),(454, NULL, '2017-05-22 00:33:45.429499-05', 'SANTA ROSA', 64, 1, NULL, 1),(453, NULL, '2017-05-22 00:33:45.422166-05', 'SANTA ROSA', 64, 1, NULL, 1),(483, NULL, '2017-05-22 00:33:43.956174-05', 'ESMERALDAS', 67, 1, NULL, 1),(484, NULL, '2017-05-22 00:33:43.386807-05', 'BARTOLOME RUIZ (CESAR FRANCO CARRION) ', 67, 1, NULL, 1),(486, NULL, '2017-05-22 00:33:43.957876-05', 'ESMERALDAS', 67, 1, NULL, 1),(487, NULL, '2017-05-22 00:33:44.464444-05', 'LUIS TELLO  (LAS PALMAS)', 67, 1, NULL, 1),(523, NULL, '2017-05-22 00:33:44.610342-05', 'MUISNE', 69, 1, NULL, 1),(566, NULL, '2017-05-22 00:33:44.096495-05', 'GUAYAQUIL', 75, 1, NULL, 1),(524, NULL, '2017-05-22 00:33:43.427117-05', 'BOLIVAR', 69, 2, NULL, 1),(551, NULL, '2017-05-22 00:33:43.310083-05', 'ATACAMES', 72, 1, NULL, 1),(556, NULL, '2017-05-22 00:33:45.024818-05', 'RIOVERDE', 73, 1, NULL, 1),(489, NULL, '2017-05-22 00:33:43.312115-05', 'ATACAMES', 67, 2, NULL, 1),(567, NULL, '2017-05-22 00:33:43.338155-05', 'AYACUCHO', 75, 1, NULL, 1),(568, NULL, '2017-05-22 00:33:43.430802-05', 'BOLIVAR  (SAGRARIO) ', 75, 1, NULL, 1),(569, NULL, '2017-05-22 00:33:43.507107-05', 'CARBO (CONCEPCION) ', 75, 1, NULL, 1),(570, NULL, '2017-05-22 00:33:43.96519-05', 'FEBRES CORDERO', 75, 1, NULL, 1),(571, NULL, '2017-05-22 00:33:43.983218-05', 'GARCIA MORENO', 75, 1, NULL, 1),(572, NULL, '2017-05-22 00:33:44.397136-05', 'LETAMENDI', 75, 1, NULL, 1),(575, NULL, '2017-05-22 00:33:45.035577-05', 'ROCA', 75, 1, NULL, 1),(576, NULL, '2017-05-22 00:33:45.037249-05', 'ROCAFUERTE', 75, 1, NULL, 1),(582, NULL, '2017-05-22 00:33:43.627551-05', 'CHONGON', 75, 1, NULL, 1),(590, NULL, '2017-05-22 00:33:43.231011-05', 'ALFREDO BAQUERIZO MORENO (JUJAN)', 76, 1, NULL, 1),(593, NULL, '2017-05-22 00:33:43.681926-05', 'COLIMES', 79, 1, NULL, 1),(595, NULL, '2017-05-22 00:33:43.781304-05', 'DAULE', 80, 1, NULL, 1),(596, NULL, '2017-05-22 00:33:43.779577-05', 'DAULE', 80, 1, NULL, 1),(597, NULL, '2017-05-22 00:33:44.246584-05', 'LA AURORA (SATELITE)', 80, 1, NULL, 1),(611, NULL, '2017-05-22 00:33:43.884715-05', 'ELOY ALFARO (DURAN)', 81, 1, NULL, 1),(1025, NULL, '2017-05-22 00:33:43.356317-05', 'BAHIA DE CARAQUEZ', 160, 1, NULL, 1),(515, NULL, '2017-05-22 00:33:45.172582-05', 'SAN FRANCISCO DE ONZOLE', 68, 2, NULL, 1),(530, NULL, '2017-05-22 00:33:45.189075-05', 'SAN GREGORIO', 69, 2, NULL, 1),(482, NULL, '2017-05-22 00:33:45.198606-05', 'SAN ISIDRO', 66, 2, NULL, 1),(594, NULL, '2017-05-22 00:33:45.203977-05', 'SAN JACINTO', 79, 2, NULL, 1),(546, NULL, '2017-05-22 00:33:45.214736-05', 'SAN JAVIER DE CACHAVI (CAB. EN SAN JAVIER)', 71, 2, NULL, 1),(520, NULL, '2017-05-22 00:33:45.23021-05', 'SAN JOSE DE CAYAPAS', 68, 2, NULL, 1),(531, NULL, '2017-05-22 00:33:45.233588-05', 'SAN JOSE DE CHAMANGA (CAB.EN CHAMANGA)', 69, 2, NULL, 1),(501, NULL, '2017-05-22 00:33:45.3066-05', 'SAN MATEO', 67, 2, NULL, 1),(602, NULL, '2017-05-22 00:33:45.392947-05', 'SANTA CLARA', 80, 2, NULL, 1),(522, NULL, '2017-05-22 00:33:45.407491-05', 'SANTA LUCIA DE LAS PEÑAS', 68, 2, NULL, 1),(547, NULL, '2017-05-22 00:33:45.420392-05', 'SANTA RITA', 71, 2, NULL, 1),(516, NULL, '2017-05-22 00:33:45.463045-05', 'SANTO DOMINGO DE ONZOLE', 68, 2, NULL, 1),(517, NULL, '2017-05-22 00:33:45.489536-05', 'SELVA ALEGRE', 68, 2, NULL, 1),(488, NULL, '2017-05-22 00:33:45.534351-05', 'SIMON PLATA TORRES', 67, 2, NULL, 1),(474, NULL, '2017-05-22 00:33:45.540749-05', 'SINSAO', 65, 2, NULL, 1),(553, NULL, '2017-05-22 00:33:45.550641-05', 'SUA  (CAB. EN LA BOCANA) ', 72, 2, NULL, 1),(502, NULL, '2017-05-22 00:33:45.552757-05', 'SUA (CAB. EN LA BOCANA)', 67, 2, NULL, 1),(504, NULL, '2017-05-22 00:33:45.58417-05', 'TACHINA', 67, 2, NULL, 1),(548, NULL, '2017-05-22 00:33:45.593535-05', 'TAMBILLO', 71, 2, NULL, 1),(554, NULL, '2017-05-22 00:33:45.654499-05', 'TONCHIGÜE', 72, 2, NULL, 1),(505, NULL, '2017-05-22 00:33:45.656434-05', 'TONCHIGÜE', 67, 2, NULL, 1),(555, NULL, '2017-05-22 00:33:45.658126-05', 'TONSUPA', 72, 2, NULL, 1),(463, NULL, '2017-05-22 00:33:45.659827-05', 'TORATA', 64, 2, NULL, 1),(549, NULL, '2017-05-22 00:33:45.67827-05', 'TULULBI (CAB. EN RICAURTE)', 71, 2, NULL, 1),(550, NULL, '2017-05-22 00:33:45.708052-05', 'URBINA', 71, 2, NULL, 1),(507, NULL, '2017-05-22 00:33:45.726458-05', 'VALDEZ (LIMONES)', 68, 2, NULL, 1),(479, NULL, '2017-05-22 00:33:45.741907-05', 'VALLE HERMOSO', 66, 2, NULL, 1),(603, NULL, '2017-05-22 00:33:45.761325-05', 'VICENTE PIEDRAHITA', 80, 2, NULL, 1),(536, NULL, '2017-05-22 00:33:45.767635-05', 'VICHE', 70, 2, NULL, 1),(745, NULL, '2017-05-22 00:33:43.236322-05', 'ALOAG', 196, 2, NULL, 1),(698, NULL, '2017-05-22 00:33:43.243697-05', 'AMAGUAÑA', 194, 2, NULL, 1),(738, NULL, '2017-05-22 00:33:43.302786-05', 'ASCAZUBI', 195, 2, NULL, 1),(735, NULL, '2017-05-22 00:33:43.343793-05', 'AYORA', 195, 2, NULL, 1),(1391, NULL, '2017-05-22 00:33:43.363197-05', 'BALLENITA', 236, 2, NULL, 1),(700, NULL, '2017-05-22 00:33:43.454839-05', 'CALACALI', 194, 2, NULL, 1),(739, NULL, '2017-05-22 00:33:43.486864-05', 'CANGAHUA', 195, 2, NULL, 1),(704, NULL, '2017-05-22 00:33:43.580931-05', 'CHAVEZPAMBA', 194, 2, NULL, 1),(619, NULL, '2017-05-22 00:33:43.621891-05', 'CHOBO', 84, 2, NULL, 1),(761, NULL, '2017-05-22 00:33:43.721151-05', 'COTOGCHOA', 198, 2, NULL, 1),(703, NULL, '2017-05-22 00:33:43.756308-05', 'CUMBAYA', 194, 2, NULL, 1),(747, NULL, '2017-05-22 00:33:43.769579-05', 'CUTUGLAHUA', 196, 2, NULL, 1),(748, NULL, '2017-05-22 00:33:43.837774-05', 'EL CHAUPI', 196, 2, NULL, 1),(706, NULL, '2017-05-22 00:33:43.91061-05', 'EL QUINCHE', 194, 2, NULL, 1),(613, NULL, '2017-05-22 00:33:43.912577-05', 'EL RECREO', 81, 2, NULL, 1),(616, NULL, '2017-05-22 00:33:43.921378-05', 'EL ROSARIO', 82, 2, NULL, 1),(659, NULL, '2017-05-22 00:33:43.994401-05', 'GENERAL ANTONIO ELIZALDE (BUCAY)', 101, 2, NULL, 1),(620, NULL, '2017-05-22 00:33:43.99661-05', 'GENERAL ELIZALDE (BUCAY) ', 84, 2, NULL, 1),(707, NULL, '2017-05-22 00:33:44.056962-05', 'GUALEA', 194, 2, NULL, 1),(708, NULL, '2017-05-22 00:33:44.074103-05', 'GUANGOPOLO', 194, 2, NULL, 1),(615, NULL, '2017-05-22 00:33:44.099946-05', 'GUAYAS (PUEBLO NUEVO) ', 82, 2, NULL, 1),(709, NULL, '2017-05-22 00:33:44.101652-05', 'GUAYLLABAMBA', 194, 2, NULL, 1),(626, NULL, '2017-05-22 00:33:44.199109-05', 'JESUS MARIA', 85, 2, NULL, 1),(646, NULL, '2017-05-22 00:33:44.241023-05', 'JUNQUILLAL', 93, 2, NULL, 1),(710, NULL, '2017-05-22 00:33:44.312459-05', 'LA MERCED', 194, 2, NULL, 1),(635, NULL, '2017-05-22 00:33:44.334268-05', 'LA PUNTILLA (SATELITE)', 90, 2, NULL, 1),(711, NULL, '2017-05-22 00:33:44.417464-05', 'LLANO CHICO', 194, 2, NULL, 1),(712, NULL, '2017-05-22 00:33:44.421095-05', 'LLOA', 194, 2, NULL, 1),(749, NULL, '2017-05-22 00:33:44.529412-05', 'MANUEL CORNEJO ASTORGA (TANDAPI)', 196, 2, NULL, 1),(713, NULL, '2017-05-22 00:33:44.570803-05', 'MINDO', 194, 2, NULL, 1),(714, NULL, '2017-05-22 00:33:44.625438-05', 'NANEGAL', 194, 2, NULL, 1),(715, NULL, '2017-05-22 00:33:44.627302-05', 'NANEGALITO', 194, 2, NULL, 1),(716, NULL, '2017-05-22 00:33:44.635234-05', 'NAYON', 194, 2, NULL, 1),(717, NULL, '2017-05-22 00:33:44.643072-05', 'NONO', 194, 2, NULL, 1),(741, NULL, '2017-05-22 00:33:44.689214-05', 'OTON', 195, 2, NULL, 1),(718, NULL, '2017-05-22 00:33:44.709015-05', 'PACTO', 194, 2, NULL, 1),(622, NULL, '2017-05-22 00:33:45.03386-05', 'ROBERTO ASTUDILLO (CAB. EN CRUCE DE VENECIA) ', 84, 2, NULL, 1),(762, NULL, '2017-05-22 00:33:45.04799-05', 'RUMIPAMBA', 198, 2, NULL, 1),(538, NULL, '2017-05-22 00:33:45.2855-05', 'SAN LORENZO', 71, 1, NULL, 1),(577, NULL, '2017-05-22 00:33:45.55675-05', 'SUCRE', 75, 1, NULL, 1),(579, NULL, '2017-05-22 00:33:45.714043-05', 'URDANETA', 75, 1, NULL, 1),(612, NULL, '2017-05-22 00:33:43.882722-05', 'ELOY ALFARO (DURAN)', 81, 1, NULL, 1),(617, NULL, '2017-05-22 00:33:43.943363-05', 'EL TRIUNFO', 83, 1, NULL, 1),(618, NULL, '2017-05-22 00:33:44.564685-05', 'MILAGRO', 84, 1, NULL, 1),(623, NULL, '2017-05-22 00:33:44.629141-05', 'NARANJAL', 85, 1, NULL, 1),(624, NULL, '2017-05-22 00:33:44.631068-05', 'NARANJITO', 86, 1, NULL, 1),(625, NULL, '2017-05-22 00:33:44.720771-05', 'PALESTINA', 87, 1, NULL, 1),(633, NULL, '2017-05-22 00:33:45.084511-05', 'SAMBORONDON', 90, 1, NULL, 1),(639, NULL, '2017-05-22 00:33:43.418967-05', 'BOCANA', 93, 1, NULL, 1),(640, NULL, '2017-05-22 00:33:43.483305-05', 'CANDILEJOS', 93, 1, NULL, 1),(657, NULL, '2017-05-22 00:33:44.435717-05', 'LOMAS DE SARGENTILLO', 98, 1, NULL, 1),(649, NULL, '2017-05-22 00:33:43.732618-05', 'CRNEL. MARCELINO MARIDUEÑA (SAN CARLOS)', 94, 2, NULL, 1),(656, NULL, '2017-05-22 00:33:43.711507-05', 'CORONEL MARCELINO MARIDUEÑA (SAN CARLOS)', 97, 1, NULL, 1),(658, NULL, '2017-05-22 00:33:44.633409-05', 'NARCISA DE JESUS (NOBOL)', 99, 1, NULL, 1),(660, NULL, '2017-05-22 00:33:44.164372-05', 'ISIDRO AYORA', 1, 2, NULL, 1),(661, NULL, '2017-05-22 00:33:44.009531-05', 'GENERAL VILLAMIL (PLAYAS)', 95, 1, NULL, 1),(662, NULL, '2017-05-22 00:33:43.730325-05', 'CRNEL.LORENZO DE GARAICOA (PEDREGAL)', 96, 1, NULL, 1),(663, NULL, '2017-05-22 00:33:44.166136-05', 'ISIDRO AYORA (SOLEDAD)', 98, 1, NULL, 1),(672, NULL, '2017-05-22 00:33:43.606312-05', 'CHILLOGALLO', 194, 1, NULL, 1),(681, NULL, '2017-05-22 00:33:44.261881-05', 'LA CONCEPCION', 194, 1, NULL, 1),(684, NULL, '2017-05-22 00:33:44.291268-05', 'LA LIBERTAD', 194, 1, NULL, 1),(685, NULL, '2017-05-22 00:33:44.296397-05', 'LA MAGDALENA', 194, 1, NULL, 1),(666, NULL, '2017-05-22 00:33:43.51058-05', 'CARCELEN', 194, 1, NULL, 1),(673, NULL, '2017-05-22 00:33:43.608543-05', 'CHIMBACALLE', 194, 1, NULL, 1),(679, NULL, '2017-05-22 00:33:44.242929-05', 'KENNEDY', 194, 1, NULL, 1),(683, NULL, '2017-05-22 00:33:44.276364-05', 'LA FERROVIARIA', 194, 1, NULL, 1),(682, NULL, '2017-05-22 00:33:44.267019-05', 'LA ECUATORIANA', 194, 1, NULL, 1),(677, NULL, '2017-05-22 00:33:44.177703-05', 'ITCHIMBIA', 194, 1, NULL, 1),(676, NULL, '2017-05-22 00:33:44.157261-05', 'IÑAQUITO', 194, 1, NULL, 1),(675, NULL, '2017-05-22 00:33:44.062541-05', 'GUAMANI', 194, 1, NULL, 1),(671, NULL, '2017-05-22 00:33:43.600504-05', 'CHILIBULO', 194, 1, NULL, 1),(667, NULL, '2017-05-22 00:33:43.553011-05', 'CENTRO HISTORICO', 194, 1, NULL, 1),(665, NULL, '2017-05-22 00:33:43.388592-05', 'BELISARIO QUEVEDO', 194, 1, NULL, 1),(680, NULL, '2017-05-22 00:33:44.244885-05', 'LA ARGELIA', 194, 1, NULL, 1),(690, NULL, '2017-05-22 00:33:44.996218-05', 'QUITUMBE', 194, 1, NULL, 1),(691, NULL, '2017-05-22 00:33:45.053031-05', 'RUMIPAMBA', 194, 1, NULL, 1),(744, NULL, '2017-05-22 00:33:44.480232-05', 'MACHACHI', 196, 1, NULL, 1),(634, NULL, '2017-05-22 00:33:45.086229-05', 'SAMBORONDON', 90, 2, NULL, 1),(726, NULL, '2017-05-22 00:33:45.104836-05', 'SAN ANTONIO', 194, 2, NULL, 1),(627, NULL, '2017-05-22 00:33:45.130159-05', 'SAN CARLOS', 85, 2, NULL, 1),(758, NULL, '2017-05-22 00:33:45.187286-05', 'SANGOLQUI', 198, 2, NULL, 1),(727, NULL, '2017-05-22 00:33:45.247014-05', 'SAN JOSE DE MINAS', 194, 2, NULL, 1),(728, NULL, '2017-05-22 00:33:45.323182-05', 'SAN MIGUEL DE LOS BANCOS', 194, 2, NULL, 1),(742, NULL, '2017-05-22 00:33:45.431193-05', 'SANTA ROSA DE CUZUBAMBA', 195, 2, NULL, 1),(628, NULL, '2017-05-22 00:33:45.432918-05', 'SANTA ROSA DE FLANDES', 85, 2, NULL, 1),(729, NULL, '2017-05-22 00:33:45.576319-05', 'TABABELA', 194, 2, NULL, 1),(750, NULL, '2017-05-22 00:33:45.59522-05', 'TAMBILLO', 196, 2, NULL, 1),(636, NULL, '2017-05-22 00:33:45.608092-05', 'TARIFA', 90, 2, NULL, 1),(629, NULL, '2017-05-22 00:33:45.616975-05', 'TAURA', 85, 2, NULL, 1),(755, NULL, '2017-05-22 00:33:45.64881-05', 'TOCACHI', 197, 2, NULL, 1),(730, NULL, '2017-05-22 00:33:45.682006-05', 'TUMBACO', 194, 2, NULL, 1),(756, NULL, '2017-05-22 00:33:45.685524-05', 'TUPIGACHI', 197, 2, NULL, 1),(751, NULL, '2017-05-22 00:33:45.720077-05', 'UYUMBICHO', 196, 2, NULL, 1),(631, NULL, '2017-05-22 00:33:45.740216-05', 'VALLE DE LA VIRGEN ', 88, 2, NULL, 1),(732, NULL, '2017-05-22 00:33:45.81283-05', 'ZAMBIZA', 194, 2, NULL, 1),(814, NULL, '2017-05-22 00:33:43.253109-05', 'AMARILLOS', 113, 2, NULL, 1),(456, NULL, '2017-05-22 00:33:43.364917-05', 'BALNEARIO JAMBELI (SATELITE)', 64, 2, NULL, 1),(890, NULL, '2017-05-22 00:33:43.384838-05', 'BARREIRO (SANTA RITA)', 134, 2, NULL, 1),(816, NULL, '2017-05-22 00:33:43.397199-05', 'BELLAVISTA', 114, 2, NULL, 1),(874, NULL, '2017-05-22 00:33:43.421135-05', 'BOLASPAMBA', 121, 2, NULL, 1),(914, NULL, '2017-05-22 00:33:43.44242-05', 'BUENA FE', 138, 2, NULL, 1),(811, NULL, '2017-05-22 00:33:43.446107-05', 'BUENAVISTA', 113, 2, NULL, 1),(839, NULL, '2017-05-22 00:33:43.488648-05', 'CANGONAMA', 117, 2, NULL, 1),(891, NULL, '2017-05-22 00:33:43.503254-05', 'CARACOL', 134, 2, NULL, 1),(823, NULL, '2017-05-22 00:33:43.568045-05', 'CHANGAIMINA (LA LIBERTAD)', 115, 2, NULL, 1),(774, NULL, '2017-05-22 00:33:43.569834-05', 'CHANTACO', 109, 2, NULL, 1),(775, NULL, '2017-05-22 00:33:43.6587-05', 'CHUQUIRIBAMBA', 109, 2, NULL, 1),(849, NULL, '2017-05-22 00:33:43.662727-05', 'CIANO', 118, 2, NULL, 1),(821, NULL, '2017-05-22 00:33:43.80688-05', 'EL AIRO', 114, 2, NULL, 1),(850, NULL, '2017-05-22 00:33:43.815796-05', 'EL ARENAL', 118, 2, NULL, 1),(776, NULL, '2017-05-22 00:33:43.843774-05', 'EL CISNE', 109, 2, NULL, 1),(820, NULL, '2017-05-22 00:33:43.871243-05', 'EL INGENIO', 114, 2, NULL, 1),(792, NULL, '2017-05-22 00:33:43.877163-05', 'EL LUCERO', 110, 2, NULL, 1),(856, NULL, '2017-05-22 00:33:43.897955-05', 'EL PARAISO DE CELEN', 119, 2, NULL, 1),(812, NULL, '2017-05-22 00:33:43.923082-05', 'EL ROSARIO', 113, 2, NULL, 1),(857, NULL, '2017-05-22 00:33:43.935584-05', 'EL TABLON', 119, 2, NULL, 1),(798, NULL, '2017-05-22 00:33:43.937476-05', 'EL TAMBO', 111, 2, NULL, 1),(892, NULL, '2017-05-22 00:33:43.966888-05', 'FEBRES CORDERO (LAS JUNTAS)', 134, 2, NULL, 1),(881, NULL, '2017-05-22 00:33:43.975968-05', 'FUNDOCHAMBA', 123, 2, NULL, 1),(824, NULL, '2017-05-22 00:33:43.977688-05', 'FUNDOCHAMBA', 115, 2, NULL, 1),(871, NULL, '2017-05-22 00:33:43.992631-05', 'GARZAREAL', 121, 2, NULL, 1),(777, NULL, '2017-05-22 00:33:44.058871-05', 'GUALEL', 109, 2, NULL, 1),(896, NULL, '2017-05-22 00:33:44.088039-05', 'GUARE', 135, 2, NULL, 1),(799, NULL, '2017-05-22 00:33:44.103606-05', 'GUAYQUICHUMA', 111, 2, NULL, 1),(897, NULL, '2017-05-22 00:33:44.173449-05', 'ISLA DE BEJUCAL', 135, 2, NULL, 1),(899, NULL, '2017-05-22 00:33:44.268739-05', 'LA ESMERALDA', 136, 2, NULL, 1),(833, NULL, '2017-05-22 00:33:44.335975-05', 'LARAMA', 116, 2, NULL, 1),(841, NULL, '2017-05-22 00:33:44.360909-05', 'LA TINGUE', 117, 2, NULL, 1),(884, NULL, '2017-05-22 00:33:44.362597-05', 'LA TINGUE', 124, 2, NULL, 1),(834, NULL, '2017-05-22 00:33:44.382858-05', 'LA VICTORIA', 116, 2, NULL, 1),(872, NULL, '2017-05-22 00:33:44.406066-05', 'LIMONES', 121, 2, NULL, 1),(858, NULL, '2017-05-22 00:33:44.422872-05', 'LLUZHAPA', 119, 2, NULL, 1),(779, NULL, '2017-05-22 00:33:44.50477-05', 'MALACATOS (VALLADOLID)', 109, 2, NULL, 1),(870, NULL, '2017-05-22 00:33:44.519957-05', 'MANGAHURCO', 121, 2, NULL, 1),(852, NULL, '2017-05-22 00:33:44.559103-05', 'MERCADILLO', 118, 2, NULL, 1),(879, NULL, '2017-05-22 00:33:44.566923-05', 'MILAGROS', 122, 2, NULL, 1),(764, NULL, '2017-05-22 00:33:44.573027-05', 'MINDO', 200, 2, NULL, 1),(825, NULL, '2017-05-22 00:33:44.623587-05', 'NAMBACOLA', 115, 2, NULL, 1),(867, NULL, '2017-05-22 00:33:44.645444-05', 'NUEVA FATIMA', 120, 2, NULL, 1),(843, NULL, '2017-05-22 00:33:44.681306-05', 'OLMEDO (SANTA BARBARA)', 117, 2, NULL, 1),(844, NULL, '2017-05-22 00:33:44.685493-05', 'ORIANGA', 117, 2, NULL, 1),(765, NULL, '2017-05-22 00:33:44.794228-05', 'PEDRO VICENTE MALDONADO', 200, 2, NULL, 1),(835, NULL, '2017-05-22 00:33:45.05981-05', 'SABIANGO (LA CAPILLA)', 116, 2, NULL, 1),(828, NULL, '2017-05-22 00:33:45.061484-05', 'SACAPALCA', 115, 2, NULL, 1),(845, NULL, '2017-05-22 00:33:45.096362-05', 'SAN ANTONIO', 117, 2, NULL, 1),(882, NULL, '2017-05-22 00:33:45.11018-05', 'SAN ANTONIO DE LAS ARADAS (CAB. EN LAS ARADAS)', 123, 2, NULL, 1),(829, NULL, '2017-05-22 00:33:45.112379-05', 'SAN ANTONIO DE LAS ARADAS (CAB. EN LAS ARADAS)', 115, 2, NULL, 1),(860, NULL, '2017-05-22 00:33:45.114106-05', 'SAN ANTONIO DE QUMBE (CUMBE)', 119, 2, NULL, 1),(637, NULL, '2017-05-22 00:33:45.405686-05', 'SANTA LUCIA', 92, 1, NULL, 1),(643, NULL, '2017-05-22 00:33:45.302022-05', 'SAN MATEO', 93, 1, NULL, 1),(647, NULL, '2017-05-22 00:33:45.213062-05', 'SAN JACINTO DE YAGUACHI', 94, 1, NULL, 1),(653, NULL, '2017-05-22 00:33:45.779221-05', 'VIRGEN DE FATIMA', 94, 2, NULL, 1),(655, NULL, '2017-05-22 00:33:45.527262-05', 'SIMON BOLIVAR', 96, 1, NULL, 1),(651, NULL, '2017-05-22 00:33:45.525579-05', 'SIMON BOLIVAR', 94, 2, NULL, 1),(769, NULL, '2017-05-22 00:33:44.43025-05', 'LOJA', 109, 1, NULL, 1),(770, NULL, '2017-05-22 00:33:43.929802-05', 'EL SAGRARIO', 109, 1, NULL, 1),(789, NULL, '2017-05-22 00:33:43.598637-05', 'CHILE', 110, 1, NULL, 1),(795, NULL, '2017-05-22 00:33:43.535796-05', 'CATAMAYO (LA TOMA)', 111, 1, NULL, 1),(796, NULL, '2017-05-22 00:33:43.534085-05', 'CATAMAYO', 111, 1, NULL, 1),(804, NULL, '2017-05-22 00:33:43.57339-05', 'CHAQUINAL', 112, 1, NULL, 1),(808, NULL, '2017-05-22 00:33:45.056394-05', 'SABANILLA', 112, 1, NULL, 1),(810, NULL, '2017-05-22 00:33:43.561597-05', 'CHAGUARPAMBA', 113, 1, NULL, 1),(815, NULL, '2017-05-22 00:33:43.245484-05', 'AMALUZA', 114, 1, NULL, 1),(830, NULL, '2017-05-22 00:33:44.47448-05', 'MACARA', 116, 1, NULL, 1),(831, NULL, '2017-05-22 00:33:44.000063-05', 'GENERAL ELOY ALFARO (SAN SEBASTIAN)', 116, 1, NULL, 1),(832, NULL, '2017-05-22 00:33:44.476453-05', 'MACARA (MANUEL ENRIQUE RENGEL SUQUILANDA)', 116, 1, NULL, 1),(838, NULL, '2017-05-22 00:33:44.453493-05', 'LOURDES', 117, 1, NULL, 1),(848, NULL, '2017-05-22 00:33:43.221882-05', 'ALAMOR', 118, 1, NULL, 1),(885, NULL, '2017-05-22 00:33:43.350934-05', 'BABAHOYO', 134, 1, NULL, 1),(877, NULL, '2017-05-22 00:33:43.575154-05', 'CHAQUINAL', 122, 2, NULL, 1),(887, NULL, '2017-05-22 00:33:43.792711-05', 'DR. CAMILO PONCE', 134, 1, NULL, 1),(888, NULL, '2017-05-22 00:33:43.382426-05', 'BARREIRO', 134, 1, NULL, 1),(889, NULL, '2017-05-22 00:33:43.933544-05', 'EL SALTO', 134, 1, NULL, 1),(895, NULL, '2017-05-22 00:33:43.349152-05', 'BABA', 135, 1, NULL, 1),(907, NULL, '2017-05-22 00:33:44.094386-05', 'GUAYACAN', 138, 1, NULL, 1),(908, NULL, '2017-05-22 00:33:44.638903-05', 'NICOLAS INFANTE DIAZ', 138, 1, NULL, 1),(692, NULL, '2017-05-22 00:33:45.115889-05', 'SAN BARTOLO', 194, 1, NULL, 1),(693, NULL, '2017-05-22 00:33:45.200399-05', 'SAN ISIDRO DEL INCA', 194, 1, NULL, 1),(694, NULL, '2017-05-22 00:33:45.262171-05', 'SAN JUAN', 194, 1, NULL, 1),(695, NULL, '2017-05-22 00:33:45.542506-05', 'SOLANDA', 194, 1, NULL, 1),(696, NULL, '2017-05-22 00:33:45.689565-05', 'TURUBAMBA', 194, 1, NULL, 1),(743, NULL, '2017-05-22 00:33:45.228533-05', 'SAN JOSE DE AYORA', 195, 1, NULL, 1),(752, NULL, '2017-05-22 00:33:45.578248-05', 'TABACUNDO', 197, 1, NULL, 1),(757, NULL, '2017-05-22 00:33:45.185501-05', 'SANGOLQUI', 198, 1, NULL, 1),(759, NULL, '2017-05-22 00:33:45.345547-05', 'SAN PEDRO DE TABOADA', 198, 1, NULL, 1),(760, NULL, '2017-05-22 00:33:45.353204-05', 'SAN RAFAEL', 198, 1, NULL, 1),(794, NULL, '2017-05-22 00:33:45.190854-05', 'SANGUILLIN', 110, 2, NULL, 1),(902, NULL, '2017-05-22 00:33:45.263966-05', 'SAN JUAN', 137, 2, NULL, 1),(780, NULL, '2017-05-22 00:33:45.289157-05', 'SAN LUCAS', 109, 2, NULL, 1),(763, NULL, '2017-05-22 00:33:45.321345-05', 'SAN MIGUEL DE LOS BANCOS', 200, 2, NULL, 1),(861, NULL, '2017-05-22 00:33:45.332659-05', 'SAN PABLO DE TENTA', 119, 2, NULL, 1),(800, NULL, '2017-05-22 00:33:45.338665-05', 'SAN PEDRO DE LA BENDITA', 111, 2, NULL, 1),(781, NULL, '2017-05-22 00:33:45.347538-05', 'SAN PEDRO DE VILCABAMBA', 109, 2, NULL, 1),(862, NULL, '2017-05-22 00:33:45.376017-05', 'SAN SEBASTIAN DE YULUC', 119, 2, NULL, 1),(813, NULL, '2017-05-22 00:33:45.440289-05', 'SANTA RUFINA', 113, 2, NULL, 1),(818, NULL, '2017-05-22 00:33:45.444185-05', 'SANTA TERESITA', 114, 2, NULL, 1),(782, NULL, '2017-05-22 00:33:45.451472-05', 'SANTIAGO', 109, 2, NULL, 1),(1124, NULL, '2017-05-22 00:33:45.503724-05', 'SHIMPIS', 178, 2, NULL, 1),(863, NULL, '2017-05-22 00:33:45.487845-05', 'SELVA ALEGRE', 119, 2, NULL, 1),(865, NULL, '2017-05-22 00:33:45.568452-05', 'SUMAYPAMBA', 119, 2, NULL, 1),(868, NULL, '2017-05-22 00:33:45.582131-05', 'TACAMOROS', 120, 2, NULL, 1),(783, NULL, '2017-05-22 00:33:45.600509-05', 'TAQUIL (MIGUEL RIOFRIO)', 109, 2, NULL, 1),(864, NULL, '2017-05-22 00:33:45.716005-05', 'URDANETA (PAQUISHAPA)', 119, 2, NULL, 1),(793, NULL, '2017-05-22 00:33:45.718034-05', 'UTUANA', 110, 2, NULL, 1),(853, NULL, '2017-05-22 00:33:45.765621-05', 'VICENTINO', 118, 2, NULL, 1),(784, NULL, '2017-05-22 00:33:45.77334-05', 'VILCABAMBA(VICTORIA)', 109, 2, NULL, 1),(847, NULL, '2017-05-22 00:33:45.790123-05', 'YAMANA', 117, 2, NULL, 1),(949, NULL, '2017-05-22 00:33:43.210761-05', 'ABDON CALDERON (SAN FRANCISCO)', 147, 2, NULL, 1),(950, NULL, '2017-05-22 00:33:43.232771-05', 'ALHAJUELA (BAJO GRANDE)', 147, 2, NULL, 1),(1055, NULL, '2017-05-22 00:33:43.240094-05', 'ALSHI (CAB. EN 9 DE OCTUBRE)', 169, 2, NULL, 1),(981, NULL, '2017-05-22 00:33:43.262003-05', 'AMERICA', 152, 2, NULL, 1),(1037, NULL, '2017-05-22 00:33:43.275351-05', 'ANGEL PEDRO GILER (LA ESTANCILLA)', 161, 2, NULL, 1),(1041, NULL, '2017-05-22 00:33:43.300965-05', 'ARQ. SIXTO DURAN BALLEN', 162, 2, NULL, 1),(1045, NULL, '2017-05-22 00:33:43.313943-05', 'ATAHUALPA', 163, 2, NULL, 1),(1019, NULL, '2017-05-22 00:33:43.339961-05', 'AYACUCHO', 159, 2, NULL, 1),(1036, NULL, '2017-05-22 00:33:43.352891-05', 'BACHILLERO', 161, 2, NULL, 1),(1013, NULL, '2017-05-22 00:33:43.380714-05', 'BARRAGANETE', 157, 2, NULL, 1),(1039, NULL, '2017-05-22 00:33:43.399288-05', 'BELLAVISTA', 162, 2, NULL, 1),(962, NULL, '2017-05-22 00:33:43.44048-05', 'BOYACA', 149, 2, NULL, 1),(1008, NULL, '2017-05-22 00:33:43.473506-05', 'CAMPOZANO (LA PALMA DE PAJAN)', 156, 2, NULL, 1),(1053, NULL, '2017-05-22 00:33:43.492615-05', 'CANOA', 168, 2, NULL, 1),(1027, NULL, '2017-05-22 00:33:43.494324-05', 'CANOA', 160, 2, NULL, 1),(963, NULL, '2017-05-22 00:33:43.496037-05', 'CANUTO', 149, 2, NULL, 1),(1009, NULL, '2017-05-22 00:33:43.528999-05', 'CASCOL', 156, 2, NULL, 1),(925, NULL, '2017-05-22 00:33:43.557329-05', 'CHACARITA', 140, 2, NULL, 1),(965, NULL, '2017-05-22 00:33:43.5861-05', 'CHIBUNGA', 149, 2, NULL, 1),(1056, NULL, '2017-05-22 00:33:43.593525-05', 'CHIGUAZA', 169, 2, NULL, 1),(955, NULL, '2017-05-22 00:33:43.616446-05', 'CHIRIJOS', 147, 2, NULL, 1),(1028, NULL, '2017-05-22 00:33:43.674334-05', 'COJIMIES', 160, 2, NULL, 1),(964, NULL, '2017-05-22 00:33:43.705619-05', 'CONVENTO', 149, 2, NULL, 1),(951, NULL, '2017-05-22 00:33:43.734541-05', 'CRUCITA', 147, 2, NULL, 1),(1066, NULL, '2017-05-22 00:33:43.743157-05', 'CUCHAENTZA', 169, 2, NULL, 1),(982, NULL, '2017-05-22 00:33:43.810294-05', 'EL ANEGADO (CAB. EN ELOY ALFARO)', 152, 2, NULL, 1),(966, NULL, '2017-05-22 00:33:43.878854-05', 'ELOY ALFARO', 149, 2, NULL, 1),(946, NULL, '2017-05-22 00:33:43.974226-05', 'FRANCISCO PACHECO', 147, 2, NULL, 1),(1003, NULL, '2017-05-22 00:33:43.99832-05', 'GENERAL ELOY ALFARO', 155, 2, NULL, 1),(1010, NULL, '2017-05-22 00:33:44.05462-05', 'GUALE', 156, 2, NULL, 1),(1020, NULL, '2017-05-22 00:33:44.114085-05', 'HONORATO VASQUEZ (CAB. EN VASQUEZ)', 159, 2, NULL, 1),(1058, NULL, '2017-05-22 00:33:44.140408-05', 'HUASAGA (CAB.EN WAMPUIK)', 169, 2, NULL, 1),(1031, NULL, '2017-05-22 00:33:44.185321-05', 'JAMA', 160, 2, NULL, 1),(983, NULL, '2017-05-22 00:33:44.230245-05', 'JULCUY', 152, 2, NULL, 1),(918, NULL, '2017-05-22 00:33:44.270438-05', 'LA ESPERANZA', 138, 2, NULL, 1),(1006, NULL, '2017-05-22 00:33:44.32836-05', 'LA PILA', 155, 2, NULL, 1),(1011, NULL, '2017-05-22 00:33:44.337678-05', 'LASCANO', 156, 2, NULL, 1),(984, NULL, '2017-05-22 00:33:44.369524-05', 'LA UNION', 152, 2, NULL, 1),(1021, NULL, '2017-05-22 00:33:44.371199-05', 'LA UNION', 159, 2, NULL, 1),(1004, NULL, '2017-05-22 00:33:44.395446-05', 'LEONIDAS PROAÑO', 155, 2, NULL, 1),(926, NULL, '2017-05-22 00:33:44.445888-05', 'LOS ANGELES', 140, 2, NULL, 1),(1048, NULL, '2017-05-22 00:33:44.487039-05', 'MACHALILLA', 165, 2, NULL, 1),(1059, NULL, '2017-05-22 00:33:44.492797-05', 'MACUMA', 169, 2, NULL, 1),(991, NULL, '2017-05-22 00:33:44.524046-05', 'MANTA', 154, 2, NULL, 1),(986, NULL, '2017-05-22 00:33:44.553832-05', 'MEMBRILLAL', 152, 2, NULL, 1),(957, NULL, '2017-05-22 00:33:44.555761-05', 'MEMBRILLO', 148, 2, NULL, 1),(915, NULL, '2017-05-22 00:33:44.578322-05', 'MOCACHE', 138, 2, NULL, 1),(1040, NULL, '2017-05-22 00:33:44.641215-05', 'NOBOA', 162, 2, NULL, 1),(1022, NULL, '2017-05-22 00:33:44.671086-05', 'OLMEDO', 159, 2, NULL, 1),(929, NULL, '2017-05-22 00:33:44.717442-05', 'PALENQUE', 141, 2, NULL, 1),(935, NULL, '2017-05-22 00:33:44.779595-05', 'PATRICIA PILAR', 143, 2, NULL, 1),(920, NULL, '2017-05-22 00:33:45.005867-05', 'RICAURTE', 139, 2, NULL, 1),(967, NULL, '2017-05-22 00:33:45.007882-05', 'RICAURTE', 149, 2, NULL, 1),(1068, NULL, '2017-05-22 00:33:45.011501-05', 'RIO BLANCO', 169, 2, NULL, 1),(953, NULL, '2017-05-22 00:33:45.015254-05', 'RIOCHICO (RIO CHICO)', 147, 2, NULL, 1),(1049, NULL, '2017-05-22 00:33:45.067035-05', 'SALANGO', 165, 2, NULL, 1),(968, NULL, '2017-05-22 00:33:45.098169-05', 'SAN ANTONIO', 149, 2, NULL, 1),(772, NULL, '2017-05-22 00:33:45.558492-05', 'SUCRE', 109, 1, NULL, 1),(773, NULL, '2017-05-22 00:33:45.736261-05', 'VALLE', 109, 1, NULL, 1),(790, NULL, '2017-05-22 00:33:45.464764-05', 'SAN VICENTE', 110, 1, NULL, 1),(797, NULL, '2017-05-22 00:33:45.218126-05', 'SAN JOSE', 111, 1, NULL, 1),(854, NULL, '2017-05-22 00:33:45.48059-05', 'SARAGURO', 119, 1, NULL, 1),(866, NULL, '2017-05-22 00:33:45.548871-05', 'SOZORANGA', 120, 1, NULL, 1),(869, NULL, '2017-05-22 00:33:45.822413-05', 'ZAPOTILLO', 121, 1, NULL, 1),(905, NULL, '2017-05-22 00:33:45.128061-05', 'SAN CAMILO', 138, 1, NULL, 1),(906, NULL, '2017-05-22 00:33:45.22178-05', 'SAN JOSE', 138, 1, NULL, 1),(909, NULL, '2017-05-22 00:33:45.142089-05', 'SAN CRISTOBAL', 138, 1, NULL, 1),(910, NULL, '2017-05-22 00:33:45.514964-05', 'SIETE DE OCTUBRE', 138, 1, NULL, 1),(912, NULL, '2017-05-22 00:33:45.757304-05', 'VENUS DEL RIO QUEVEDO', 138, 1, NULL, 1),(913, NULL, '2017-05-22 00:33:45.780958-05', 'VIVA ALFARO', 138, 1, NULL, 1),(919, NULL, '2017-05-22 00:33:43.537473-05', 'CATARAMA', 139, 1, NULL, 1),(937, NULL, '2017-05-22 00:33:44.576565-05', 'MOCACHE', 145, 1, NULL, 1),(945, NULL, '2017-05-22 00:33:43.271269-05', 'ANDRES DE VERA', 147, 1, NULL, 1),(956, NULL, '2017-05-22 00:33:43.457056-05', 'CALCETA', 148, 1, NULL, 1),(959, NULL, '2017-05-22 00:33:43.624119-05', 'CHONE', 149, 1, NULL, 1),(970, NULL, '2017-05-22 00:33:43.828605-05', 'EL CARMEN', 150, 1, NULL, 1),(974, NULL, '2017-05-22 00:33:43.970299-05', 'FLAVIO ALFARO', 151, 1, NULL, 1),(978, NULL, '2017-05-22 00:33:43.79614-05', 'DR. MIGUEL MORAN LUCIO', 152, 1, NULL, 1),(990, NULL, '2017-05-22 00:33:44.239045-05', 'JUNIN', 153, 1, NULL, 1),(992, NULL, '2017-05-22 00:33:44.449527-05', 'LOS ESTEROS', 154, 1, NULL, 1),(996, NULL, '2017-05-22 00:33:43.880631-05', 'ELOY ALFARO', 154, 1, NULL, 1),(999, NULL, '2017-05-22 00:33:44.594488-05', 'MONTECRISTI', 155, 1, NULL, 1),(1000, NULL, '2017-05-22 00:33:43.2824-05', 'ANIBAL SAN ANDRES', 155, 1, NULL, 1),(1001, NULL, '2017-05-22 00:33:44.596717-05', 'MONTECRISTI', 155, 1, NULL, 1),(1007, NULL, '2017-05-22 00:33:44.712397-05', 'PAJAN', 156, 1, NULL, 1),(1015, NULL, '2017-05-22 00:33:45.041152-05', 'ROCAFUERTE', 158, 1, NULL, 1),(1018, NULL, '2017-05-22 00:33:44.424696-05', 'LODANA', 159, 1, NULL, 1),(1026, NULL, '2017-05-22 00:33:44.393684-05', 'LEONIDAS PLAZA GUTIERREZ', 160, 1, NULL, 1),(1054, NULL, '2017-05-22 00:33:44.478228-05', 'MACAS', 169, 1, NULL, 1),(916, NULL, '2017-05-22 00:33:45.132244-05', 'SAN CARLOS', 138, 2, NULL, 1),(975, NULL, '2017-05-22 00:33:45.170375-05', 'SAN FRANCISCO DE NOVILLO (CAB. EN NOVILLO)', 151, 2, NULL, 1),(1060, NULL, '2017-05-22 00:33:45.192855-05', 'SAN ISIDRO', 169, 2, NULL, 1),(1033, NULL, '2017-05-22 00:33:45.194637-05', 'SAN ISIDRO', 160, 2, NULL, 1),(1067, NULL, '2017-05-22 00:33:45.250853-05', 'SAN JOSE DE MORONA', 169, 2, NULL, 1),(997, NULL, '2017-05-22 00:33:45.281703-05', 'SAN LORENZO', 154, 2, NULL, 1),(1023, NULL, '2017-05-22 00:33:45.330843-05', 'SAN PABLO (CAB. EN PUEBLO NUEVO)', 159, 2, NULL, 1),(973, NULL, '2017-05-22 00:33:45.343655-05', 'SAN PEDRO DE SUMA', 150, 2, NULL, 1),(954, NULL, '2017-05-22 00:33:45.349466-05', 'SAN PLACIDO', 147, 2, NULL, 1),(1014, NULL, '2017-05-22 00:33:45.36583-05', 'SAN SEBASTIAN', 157, 2, NULL, 1),(1017, NULL, '2017-05-22 00:33:45.379773-05', 'SANTA ANA', 159, 2, NULL, 1),(998, NULL, '2017-05-22 00:33:45.413045-05', 'SANTA MARIANITA (BOCA DE PACOCHE)', 154, 2, NULL, 1),(1034, NULL, '2017-05-22 00:33:45.469858-05', 'SAN VICENTE', 160, 2, NULL, 1),(1061, NULL, '2017-05-22 00:33:45.500219-05', 'SEVILLA DON BOSCO', 169, 2, NULL, 1),(948, NULL, '2017-05-22 00:33:45.523898-05', 'SIMON BOLIVAR', 147, 2, NULL, 1),(1062, NULL, '2017-05-22 00:33:45.536701-05', 'SINAI', 169, 2, NULL, 1),(1063, NULL, '2017-05-22 00:33:45.5895-05', 'TAISHA', 169, 2, NULL, 1),(1065, NULL, '2017-05-22 00:33:45.698088-05', 'TUUTINENTZA', 169, 2, NULL, 1),(917, NULL, '2017-05-22 00:33:45.728482-05', 'VALENCIA', 138, 2, NULL, 1),(972, NULL, '2017-05-22 00:33:45.784631-05', 'WILFRIDO LOOR MOREIRA (MAICITO)', 150, 2, NULL, 1),(976, NULL, '2017-05-22 00:33:45.818583-05', 'ZAPALLO', 151, 2, NULL, 1),(924, NULL, '2017-05-22 00:33:45.820621-05', 'ZAPOTAL', 140, 2, NULL, 1),(1064, NULL, '2017-05-22 00:33:45.842571-05', 'ZUÑA (ZUÑAC)', 169, 2, NULL, 1),(1192, NULL, '2017-05-22 00:33:43.256668-05', 'AMBATILLO', 203, 2, NULL, 1),(1159, NULL, '2017-05-22 00:33:43.291837-05', 'ARAJUNO', 190, 2, NULL, 1),(1090, NULL, '2017-05-22 00:33:43.293546-05', 'ARAPICOS', 172, 2, NULL, 1),(1193, NULL, '2017-05-22 00:33:43.320029-05', 'ATAHUALPA (CHISALATA)', 203, 2, NULL, 1),(1138, NULL, '2017-05-22 00:33:43.334112-05', 'AVILA', 183, 2, NULL, 1),(184, NULL, '2017-05-22 00:33:43.366618-05', 'BALSAPAMBA', 20, 2, NULL, 1),(1073, NULL, '2017-05-22 00:33:43.410969-05', 'BERMEJOS', 170, 2, NULL, 1),(1074, NULL, '2017-05-22 00:33:43.433103-05', 'BOMBOIZA', 170, 2, NULL, 1),(1160, NULL, '2017-05-22 00:33:43.485092-05', 'CANELOS', 190, 2, NULL, 1),(1110, NULL, '2017-05-22 00:33:43.591814-05', 'CHIGUAZA', 175, 2, NULL, 1),(1075, NULL, '2017-05-22 00:33:43.596932-05', 'CHIGÜINDA', 170, 2, NULL, 1),(1131, NULL, '2017-05-22 00:33:43.634398-05', 'CHONTAPUNTA', 181, 2, NULL, 1),(1097, NULL, '2017-05-22 00:33:43.656484-05', 'CHUPIANZA', 173, 2, NULL, 1),(1195, NULL, '2017-05-22 00:33:43.703889-05', 'CONSTANTINO FERNANDEZ (CAB. EN CULLITAHUA)', 203, 2, NULL, 1),(1096, NULL, '2017-05-22 00:33:43.707407-05', 'COPAL', 173, 2, NULL, 1),(1208, NULL, '2017-05-22 00:33:43.760101-05', 'CUNCHIBAMBA', 203, 2, NULL, 1),(1181, NULL, '2017-05-22 00:33:43.761807-05', 'CURARAY', 193, 2, NULL, 1),(1161, NULL, '2017-05-22 00:33:43.763524-05', 'CURARAY', 190, 2, NULL, 1),(1152, NULL, '2017-05-22 00:33:43.77559-05', 'CUYUJA', 187, 2, NULL, 1),(1162, NULL, '2017-05-22 00:33:43.790181-05', 'DIEZ  DE AGOSTO', 190, 2, NULL, 1),(1076, NULL, '2017-05-22 00:33:43.919675-05', 'EL ROSARIO', 170, 2, NULL, 1),(1174, NULL, '2017-05-22 00:33:43.945069-05', 'EL TRIUNFO', 190, 2, NULL, 1),(1163, NULL, '2017-05-22 00:33:43.963222-05', 'FATIMA', 190, 2, NULL, 1),(1143, NULL, '2017-05-22 00:33:44.110679-05', 'HATUN SUMAKU', 183, 2, NULL, 1),(1196, NULL, '2017-05-22 00:33:44.124844-05', 'HUACHI GRANDE', 203, 2, NULL, 1),(1105, NULL, '2017-05-22 00:33:44.130829-05', 'HUAMBI', 174, 2, NULL, 1),(1092, NULL, '2017-05-22 00:33:44.134659-05', 'HUAMBOYA', 172, 2, NULL, 1),(1118, NULL, '2017-05-22 00:33:44.13843-05', 'HUASAGA (CAB. EN WAMPUIK)', 177, 2, NULL, 1),(1081, NULL, '2017-05-22 00:33:44.159033-05', 'INDANZA', 171, 2, NULL, 1),(1198, NULL, '2017-05-22 00:33:44.218828-05', 'JUAN BENIGNO VELA', 203, 2, NULL, 1),(1146, NULL, '2017-05-22 00:33:44.408266-05', 'LINARES', 184, 2, NULL, 1),(1211, NULL, '2017-05-22 00:33:44.419166-05', 'LLIGUA', 204, 2, NULL, 1),(1140, NULL, '2017-05-22 00:33:44.437596-05', 'LORETO', 183, 2, NULL, 1),(1119, NULL, '2017-05-22 00:33:44.491066-05', 'MACUMA', 177, 2, NULL, 1),(1199, NULL, '2017-05-22 00:33:44.585499-05', 'MONTALVO', 203, 2, NULL, 1),(1164, NULL, '2017-05-22 00:33:44.58913-05', 'MONTALVO (ANDOAS)', 190, 2, NULL, 1),(1077, NULL, '2017-05-22 00:33:44.649019-05', 'NUEVA TARQUI', 170, 2, NULL, 1),(1111, NULL, '2017-05-22 00:33:44.697642-05', 'PABLO SEXTO', 175, 2, NULL, 1),(1166, NULL, '2017-05-22 00:33:45.017462-05', 'RIO CORRIENTES', 190, 2, NULL, 1),(1212, NULL, '2017-05-22 00:33:45.019268-05', 'RIO NEGRO', 204, 2, NULL, 1),(1167, NULL, '2017-05-22 00:33:45.021257-05', 'RIO TIGRE', 190, 2, NULL, 1),(1213, NULL, '2017-05-22 00:33:45.030176-05', 'RIO VERDE', 204, 2, NULL, 1),(1083, NULL, '2017-05-22 00:33:45.106679-05', 'SAN ANTONIO (CAB. EN SAN ANTONIO CENTRO)', 171, 2, NULL, 1),(1204, NULL, '2017-05-22 00:33:45.119504-05', 'SAN BARTOLOME DE PINLLOG', 203, 2, NULL, 1),(1114, NULL, '2017-05-22 00:33:45.13817-05', 'SAN CARLOS DE LIMON', 176, 2, NULL, 1),(1084, NULL, '2017-05-22 00:33:45.140082-05', 'SAN CARLOS DE LIMON (SAN CARLOS DEL  ZAMORA)', 171, 2, NULL, 1),(1205, NULL, '2017-05-22 00:33:45.149792-05', 'SAN FERNANDO (PASA SAN FERNANDO)', 203, 2, NULL, 1),(1154, NULL, '2017-05-22 00:33:45.161431-05', 'SAN FRANCISCO DE BORJA (VIRGILIO DAVILA)', 187, 2, NULL, 1),(1102, NULL, '2017-05-22 00:33:45.163211-05', 'SAN FRANCISCO DE CHINIMBIMI', 173, 2, NULL, 1),(1093, NULL, '2017-05-22 00:33:45.179733-05', 'SANGAY (CAB. EN NAYAMANACA)', 172, 2, NULL, 1),(1115, NULL, '2017-05-22 00:33:45.211094-05', 'SAN JACINTO DE WAKAMBEIS', 176, 2, NULL, 1),(1179, NULL, '2017-05-22 00:33:45.225147-05', 'SAN JOSE', 192, 2, NULL, 1),(1155, NULL, '2017-05-22 00:33:45.242825-05', 'SAN JOSE DEL PAYAMINO', 187, 2, NULL, 1),(921, NULL, '2017-05-22 00:33:45.753339-05', 'VENTANAS', 140, 1, NULL, 1),(927, NULL, '2017-05-22 00:33:45.777108-05', 'VINCES', 141, 1, NULL, 1),(931, NULL, '2017-05-22 00:33:45.205731-05', 'SAN JACINTO DE BUENA FE', 143, 1, NULL, 1),(936, NULL, '2017-05-22 00:33:45.730462-05', 'VALENCIA', 144, 1, NULL, 1),(944, NULL, '2017-05-22 00:33:45.326794-05', 'SAN PABLO', 147, 1, NULL, 1),(961, NULL, '2017-05-22 00:33:45.418593-05', 'SANTA RITA', 149, 1, NULL, 1),(994, NULL, '2017-05-22 00:33:45.304888-05', 'SAN MATEO', 154, 1, NULL, 1),(995, NULL, '2017-05-22 00:33:45.60978-05', 'TARQUI', 154, 1, NULL, 1),(1016, NULL, '2017-05-22 00:33:45.383551-05', 'SANTA ANA DE VUELTA LARGA', 159, 1, NULL, 1),(1035, NULL, '2017-05-22 00:33:45.66158-05', 'TOSAGUA,', 161, 1, NULL, 1),(1038, NULL, '2017-05-22 00:33:45.554814-05', 'SUCRE', 162, 1, NULL, 1),(1052, NULL, '2017-05-22 00:33:45.46646-05', 'SAN VICENTE', 168, 1, NULL, 1),(1069, NULL, '2017-05-22 00:33:44.050964-05', 'GUALAQUIZA', 170, 1, NULL, 1),(1070, NULL, '2017-05-22 00:33:44.052895-05', 'GUALAQUIZA', 170, 1, NULL, 1),(1071, NULL, '2017-05-22 00:33:44.561072-05', 'MERCEDES MOLINA', 170, 1, NULL, 1),(1089, NULL, '2017-05-22 00:33:44.740567-05', 'PALORA (METZERA)', 172, 1, NULL, 1),(1109, NULL, '2017-05-22 00:33:44.132556-05', 'HUAMBOYA', 175, 1, NULL, 1),(1122, NULL, '2017-05-22 00:33:44.42639-05', 'LOGROÑO', 178, 1, NULL, 1),(1125, NULL, '2017-05-22 00:33:44.699772-05', 'PABLO SEXTO', 179, 1, NULL, 1),(1137, NULL, '2017-05-22 00:33:43.296979-05', 'ARCHIDONA', 183, 1, NULL, 1),(1129, NULL, '2017-05-22 00:33:43.220076-05', 'AHUANO', 181, 2, NULL, 1),(1144, NULL, '2017-05-22 00:33:43.836062-05', 'EL CHACO', 184, 1, NULL, 1),(1150, NULL, '2017-05-22 00:33:43.35459-05', 'BAEZA', 187, 1, NULL, 1),(1175, NULL, '2017-05-22 00:33:44.557435-05', 'MERA', 191, 1, NULL, 1),(1180, NULL, '2017-05-22 00:33:43.289849-05', 'ARAJUNO', 193, 1, NULL, 1),(1182, NULL, '2017-05-22 00:33:43.258463-05', 'AMBATO', 203, 1, NULL, 1),(1183, NULL, '2017-05-22 00:33:43.324058-05', 'ATOCHA – FICOA', 203, 1, NULL, 1),(1186, NULL, '2017-05-22 00:33:44.126947-05', 'HUACHI LORETO', 203, 1, NULL, 1),(1187, NULL, '2017-05-22 00:33:44.314392-05', 'LA MERCED', 203, 1, NULL, 1),(1189, NULL, '2017-05-22 00:33:44.550457-05', 'MATRIZ', 203, 1, NULL, 1),(1191, NULL, '2017-05-22 00:33:45.153625-05', 'SAN FRANCISCO', 203, 1, NULL, 1),(1215, NULL, '2017-05-22 00:33:43.554991-05', 'CEVALLOS', 205, 1, NULL, 1),(1127, NULL, '2017-05-22 00:33:45.248998-05', 'SAN JOSE DE MORONA', 180, 2, NULL, 1),(1085, NULL, '2017-05-22 00:33:45.272044-05', 'SAN JUAN BOSCO', 171, 2, NULL, 1),(1136, NULL, '2017-05-22 00:33:45.27767-05', 'SAN JUAN DE MUYUNA', 181, 2, NULL, 1),(1099, NULL, '2017-05-22 00:33:45.296777-05', 'SAN LUIS DE EL ACHO (CAB. EN EL ACHO)', 173, 2, NULL, 1),(1086, NULL, '2017-05-22 00:33:45.314944-05', 'SAN MIGUEL DE CONCHAY', 171, 2, NULL, 1),(1078, NULL, '2017-05-22 00:33:45.317481-05', 'SAN MIGUEL DE CUYES', 170, 2, NULL, 1),(1141, NULL, '2017-05-22 00:33:45.334674-05', 'SAN PABLO DE USHPAYACU', 183, 2, NULL, 1),(1168, NULL, '2017-05-22 00:33:45.391149-05', 'SANTA CLARA', 190, 2, NULL, 1),(1108, NULL, '2017-05-22 00:33:45.414815-05', 'SANTA MARIANITA DE JESUS', 174, 2, NULL, 1),(1206, NULL, '2017-05-22 00:33:45.426091-05', 'SANTA ROSA', 203, 2, NULL, 1),(1148, NULL, '2017-05-22 00:33:45.427805-05', 'SANTA ROSA', 184, 2, NULL, 1),(1087, NULL, '2017-05-22 00:33:45.442232-05', 'SANTA SUSANA DE CHIVIAZA (CAB. EN CHIVIAZA)', 171, 2, NULL, 1),(1100, NULL, '2017-05-22 00:33:45.445897-05', 'SANTIAGO', 173, 2, NULL, 1),(1116, NULL, '2017-05-22 00:33:45.456162-05', 'SANTIAGO DE PANANZA', 176, 2, NULL, 1),(1169, NULL, '2017-05-22 00:33:45.482281-05', 'SARAYACU', 190, 2, NULL, 1),(1149, NULL, '2017-05-22 00:33:45.484437-05', 'SARDINAS', 184, 2, NULL, 1),(1177, NULL, '2017-05-22 00:33:45.501955-05', 'SHELL', 191, 2, NULL, 1),(1170, NULL, '2017-05-22 00:33:45.530623-05', 'SIMON BOLIVAR(CAB. EN MUSHULLACTA)', 190, 2, NULL, 1),(1156, NULL, '2017-05-22 00:33:45.566108-05', 'SUMACO', 187, 2, NULL, 1),(1135, NULL, '2017-05-22 00:33:45.591193-05', 'TALAG', 181, 2, NULL, 1),(1171, NULL, '2017-05-22 00:33:45.613148-05', 'TARQUI', 190, 2, NULL, 1),(1101, NULL, '2017-05-22 00:33:45.618656-05', 'TAYUZA', 173, 2, NULL, 1),(1207, NULL, '2017-05-22 00:33:45.665394-05', 'TOTORAS', 203, 2, NULL, 1),(1120, NULL, '2017-05-22 00:33:45.696032-05', 'TUUTINENTZA', 177, 2, NULL, 1),(1214, NULL, '2017-05-22 00:33:45.700105-05', 'ULBA', 204, 2, NULL, 1),(1209, NULL, '2017-05-22 00:33:45.702128-05', 'UNAMUNCHO', 203, 2, NULL, 1),(1173, NULL, '2017-05-22 00:33:45.759116-05', 'VERACRUZ(CAB. EN INDILLAMA)', 190, 2, NULL, 1),(1107, NULL, '2017-05-22 00:33:45.805725-05', 'YAUPI', 174, 2, NULL, 1),(1123, NULL, '2017-05-22 00:33:45.807705-05', 'YAUPI', 178, 2, NULL, 1),(1341, NULL, '2017-05-22 00:33:43.216397-05', 'AGUAS NEGRAS', 230, 2, NULL, 1),(1312, NULL, '2017-05-22 00:33:43.218106-05', 'AGUAS NEGRAS', 224, 2, NULL, 1),(1345, NULL, '2017-05-22 00:33:43.2292-05', 'ALEJANDRO LABAKA', 231, 2, NULL, 1),(598, NULL, '2017-05-22 00:33:43.371982-05', 'BANIFE', 80, 2, NULL, 1),(1239, NULL, '2017-05-22 00:33:43.377066-05', 'BAQUERIZO MORENO', 210, 2, NULL, 1),(416, NULL, '2017-05-22 00:33:43.378773-05', 'BARBONES (SUCRE)', 58, 2, NULL, 1),(1301, NULL, '2017-05-22 00:33:43.402983-05', 'BELLAVISTA', 223, 2, NULL, 1),(1228, NULL, '2017-05-22 00:33:43.40918-05', 'BENITEZ (PACHANLICA)', 209, 2, NULL, 1),(1229, NULL, '2017-05-22 00:33:43.425022-05', 'BOLIVAR', 209, 2, NULL, 1),(127, NULL, '2017-05-22 00:33:43.471257-05', 'CAMILO PONCE ENRIQUEZ (CAB. EN RIO 7 DE MOLLEPONGO) ', 6, 2, NULL, 1),(1276, NULL, '2017-05-22 00:33:43.588249-05', 'CHICAÑA', 216, 2, NULL, 1),(1260, NULL, '2017-05-22 00:33:43.620093-05', 'CHITO', 213, 2, NULL, 1),(1230, NULL, '2017-05-22 00:33:43.717086-05', 'COTALO', 209, 2, NULL, 1),(1251, NULL, '2017-05-22 00:33:43.753753-05', 'CUMBARATZA', 212, 2, NULL, 1),(1304, NULL, '2017-05-22 00:33:43.773768-05', 'CUYABENO', 224, 2, NULL, 1),(1343, NULL, '2017-05-22 00:33:43.785-05', 'DAYUMA', 231, 2, NULL, 1),(1305, NULL, '2017-05-22 00:33:43.8013-05', 'DURENO', 224, 2, NULL, 1),(1261, NULL, '2017-05-22 00:33:43.841813-05', 'EL CHORRO', 213, 2, NULL, 1),(1277, NULL, '2017-05-22 00:33:43.892523-05', 'EL PANGUI', 216, 2, NULL, 1),(1332, NULL, '2017-05-22 00:33:43.901832-05', 'EL PLAYON DE SAN FRANCISCO', 228, 2, NULL, 1),(1262, NULL, '2017-05-22 00:33:43.903555-05', 'EL PORVENIR DEL CARMEN', 213, 2, NULL, 1),(1288, NULL, '2017-05-22 00:33:43.90526-05', 'EL PORVENIR DEL CARMEN', 219, 2, NULL, 1),(1315, NULL, '2017-05-22 00:33:43.916246-05', 'EL REVENTADOR', 225, 2, NULL, 1),(1232, NULL, '2017-05-22 00:33:43.925245-05', 'EL ROSARIO (RUMICHACA)', 209, 2, NULL, 1),(1219, NULL, '2017-05-22 00:33:43.946774-05', 'EL TRIUNFO', 207, 2, NULL, 1),(1240, NULL, '2017-05-22 00:33:43.952734-05', 'EMILIO MARIA TERAN (RUMIPAMBA)', 210, 2, NULL, 1),(1361, NULL, '2017-05-22 00:33:43.954432-05', 'ENOKANQUI', 233, 2, NULL, 1),(1348, NULL, '2017-05-22 00:33:43.987241-05', 'GARCIA MORENO', 231, 2, NULL, 1),(1233, NULL, '2017-05-22 00:33:43.989032-05', 'GARCIA MORENO (CHUMAQUI)', 209, 2, NULL, 1),(1306, NULL, '2017-05-22 00:33:44.001795-05', 'GENERAL FARFAN', 224, 2, NULL, 1),(1252, NULL, '2017-05-22 00:33:44.045217-05', 'GUADALUPE', 212, 2, NULL, 1),(1234, NULL, '2017-05-22 00:33:44.064313-05', 'GUAMBALO (HUAMBALO)', 209, 2, NULL, 1),(1349, NULL, '2017-05-22 00:33:44.160818-05', 'INES ARANGO (CAB. EN WESTERN)', 231, 2, NULL, 1),(1310, NULL, '2017-05-22 00:33:44.187774-05', 'JAMBELI', 224, 2, NULL, 1),(1350, NULL, '2017-05-22 00:33:44.250242-05', 'LA BELLEZA', 231, 2, NULL, 1),(1291, NULL, '2017-05-22 00:33:44.257717-05', 'LA CANELA', 219, 2, NULL, 1),(1263, NULL, '2017-05-22 00:33:44.260177-05', 'LA CHONTA', 213, 2, NULL, 1),(1365, NULL, '2017-05-22 00:33:44.281857-05', 'LAGO SAN PEDRO', 233, 2, NULL, 1),(1273, NULL, '2017-05-22 00:33:44.318478-05', 'LA PAZ', 215, 2, NULL, 1),(1333, NULL, '2017-05-22 00:33:44.352027-05', 'LA SOFIA', 228, 2, NULL, 1),(1326, NULL, '2017-05-22 00:33:44.404357-05', 'LIMONCOCHA', 227, 2, NULL, 1),(1278, NULL, '2017-05-22 00:33:44.44763-05', 'LOS ENCUENTROS', 216, 2, NULL, 1),(1317, NULL, '2017-05-22 00:33:44.468504-05', 'LUMBAQUI', 225, 2, NULL, 1),(1314, NULL, '2017-05-22 00:33:44.470693-05', 'LUMBAQUI', 225, 2, NULL, 1),(1271, NULL, '2017-05-22 00:33:44.654599-05', 'NUEVO PARAISO', 214, 2, NULL, 1),(1351, NULL, '2017-05-22 00:33:44.656596-05', 'NUEVO PARAISO (CAB. EN UNION CHIMBORAZO)', 231, 2, NULL, 1),(1294, NULL, '2017-05-22 00:33:44.658301-05', 'NUEVO QUITO', 220, 2, NULL, 1),(1309, NULL, '2017-05-22 00:33:44.701621-05', 'PACAYACU', 224, 2, NULL, 1),(1334, NULL, '2017-05-22 00:33:45.04458-05', 'ROSA FLORIDA', 228, 2, NULL, 1),(1223, NULL, '2017-05-22 00:33:45.049667-05', 'RUMIPAMBA', 208, 2, NULL, 1),(1255, NULL, '2017-05-22 00:33:45.054709-05', 'SABANILLA', 212, 2, NULL, 1),(1235, NULL, '2017-05-22 00:33:45.069978-05', 'SALASACA', 209, 2, NULL, 1),(1268, NULL, '2017-05-22 00:33:45.090571-05', 'SAN ANDRES', 213, 2, NULL, 1),(1243, NULL, '2017-05-22 00:33:45.092656-05', 'SAN ANDRES', 210, 2, NULL, 1),(1363, NULL, '2017-05-22 00:33:45.134043-05', 'SAN CARLOS', 233, 2, NULL, 1),(1258, NULL, '2017-05-22 00:33:45.136222-05', 'SAN CARLOS DE LAS MINAS', 212, 2, NULL, 1),(1289, NULL, '2017-05-22 00:33:45.165007-05', 'SAN FRANCISCO DEL VERGEL', 219, 2, NULL, 1),(1266, NULL, '2017-05-22 00:33:45.166796-05', 'SAN FRANCISCO DEL VERGEL', 213, 2, NULL, 1),(1352, NULL, '2017-05-22 00:33:45.238653-05', 'SAN JOSE DE GUAYUSA', 231, 2, NULL, 1),(1244, NULL, '2017-05-22 00:33:45.254966-05', 'SAN JOSE DE POALO', 210, 2, NULL, 1),(592, NULL, '2017-05-22 00:33:43.37003-05', 'BALZAR', 78, 1, NULL, 1),(1095, NULL, '2017-05-22 00:33:45.453168-05', 'SANTIAGO DE MENDEZ', 173, 1, NULL, 1),(1103, NULL, '2017-05-22 00:33:45.564365-05', 'SUCUA', 174, 1, NULL, 1),(1112, NULL, '2017-05-22 00:33:45.270211-05', 'SAN JUAN BOSCO', 176, 1, NULL, 1),(1117, NULL, '2017-05-22 00:33:45.587808-05', 'TAISHA', 177, 1, NULL, 1),(1126, NULL, '2017-05-22 00:33:45.449767-05', 'SANTIAGO', 180, 1, NULL, 1),(1128, NULL, '2017-05-22 00:33:45.624242-05', 'TENA', 181, 1, NULL, 1),(1178, NULL, '2017-05-22 00:33:45.389338-05', 'SANTA CLARA', 192, 1, NULL, 1),(1237, NULL, '2017-05-22 00:33:43.66454-05', 'CIUDAD NUEVA', 210, 1, NULL, 1),(1249, NULL, '2017-05-22 00:33:43.875132-05', 'EL LIMON', 212, 1, NULL, 1),(1269, NULL, '2017-05-22 00:33:44.105315-05', 'GUAYZIMI', 214, 1, NULL, 1),(1279, NULL, '2017-05-22 00:33:43.890597-05', 'EL PANGUI', 217, 1, NULL, 1),(1287, NULL, '2017-05-22 00:33:44.714083-05', 'PALANDA', 219, 1, NULL, 1),(1296, NULL, '2017-05-22 00:33:43.906961-05', 'EL PROGRESO', 221, 1, NULL, 1),(1303, NULL, '2017-05-22 00:33:44.647178-05', 'NUEVA LOJA', 224, 1, NULL, 1),(1331, NULL, '2017-05-22 00:33:44.25393-05', 'LA BONITA', 228, 1, NULL, 1),(1354, NULL, '2017-05-22 00:33:44.660282-05', 'NUEVO ROCAFUERTE', 232, 1, NULL, 1),(1360, NULL, '2017-05-22 00:33:44.285505-05', 'LA JOYA DE LOS SACHAS', 233, 1, NULL, 1),(1353, NULL, '2017-05-22 00:33:45.294869-05', 'SAN LUIS DE ARMENIA', 231, 2, NULL, 1),(1245, NULL, '2017-05-22 00:33:45.325012-05', 'SAN MIGUELITO', 210, 2, NULL, 1),(1329, NULL, '2017-05-22 00:33:45.341629-05', 'SAN PEDRO DE LOS COFANES', 227, 2, NULL, 1),(1328, NULL, '2017-05-22 00:33:45.360924-05', 'SAN ROQUE (CAB. EN SAN VICENTE)', 227, 2, NULL, 1),(1364, NULL, '2017-05-22 00:33:45.373502-05', 'SAN SEBASTIAN DEL COCA', 233, 2, NULL, 1),(1335, NULL, '2017-05-22 00:33:45.385372-05', 'SANTA BARBARA', 228, 2, NULL, 1),(1311, NULL, '2017-05-22 00:33:45.387147-05', 'SANTA CECILIA', 224, 2, NULL, 1),(1324, NULL, '2017-05-22 00:33:45.394743-05', 'SANTA ELENA', 226, 2, NULL, 1),(1357, NULL, '2017-05-22 00:33:45.409278-05', 'SANTA MARIA DE HUIRIRIMA', 232, 2, NULL, 1),(1337, NULL, '2017-05-22 00:33:45.434625-05', 'SANTA ROSA DE SUCUMBIOS', 229, 2, NULL, 1),(1319, NULL, '2017-05-22 00:33:45.436582-05', 'SANTA ROSA DE SUCUMBIOS', 225, 2, NULL, 1),(1302, NULL, '2017-05-22 00:33:45.438312-05', 'SANTA ROSA (INCLUYE LA ISLA BALTRA)', 223, 2, NULL, 1),(1338, NULL, '2017-05-22 00:33:45.492909-05', 'SEVILLA', 229, 2, NULL, 1),(1330, NULL, '2017-05-22 00:33:45.513275-05', 'SIETE DE JULIO', 227, 2, NULL, 1),(1221, NULL, '2017-05-22 00:33:45.562657-05', 'SUCRE (CAB. EN SUCRE-PATATE URCU)', 207, 2, NULL, 1),(1344, NULL, '2017-05-22 00:33:45.602187-05', 'TARACOA (NUEVA ESPERANZA: YUCA)', 231, 2, NULL, 1),(1307, NULL, '2017-05-22 00:33:45.606392-05', 'TARAPOA', 224, 2, NULL, 1),(1256, NULL, '2017-05-22 00:33:45.631605-05', 'TIMBARA', 212, 2, NULL, 1),(1358, NULL, '2017-05-22 00:33:45.636795-05', 'TIPUTINI', 232, 2, NULL, 1),(1299, NULL, '2017-05-22 00:33:45.650502-05', 'TOMAS DE BERLANGA (SANTO TOMAS)', 222, 2, NULL, 1),(1285, NULL, '2017-05-22 00:33:45.670855-05', 'TRIUNFO-DORADO', 218, 2, NULL, 1),(1282, NULL, '2017-05-22 00:33:45.683761-05', 'TUNDAYME', 217, 2, NULL, 1),(1274, NULL, '2017-05-22 00:33:45.693896-05', 'TUTUPALI', 215, 2, NULL, 1);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_perfilusuario" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_perfilusuario";
INSERT INTO "public"."jdsistemas_perfilusuario" ("id","fecha_creacion","fecha_modificacion","pacienteprincipal","administrativo_id","doctor_id","paciente_id","persona_id","tipoperfilusuario_id","usuario_creacion_id","usuario_modificacion_id") VALUES (16, '2023-05-19 17:09:30.515705-05', NULL, 'f', 11, NULL, NULL, 25, 2, 1, NULL),(17, NULL, NULL, 'f', 12, NULL, NULL, 17, 2, NULL, NULL);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_perms" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_perms";
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_persona" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_persona";
INSERT INTO "public"."jdsistemas_persona" ("id","fecha_creacion","fecha_modificacion","nombre1","nombre2","apellido1","apellido2","cedula","nacimiento","sector","ciudad","direccion","referencia","num_direccion","celular","email","canton_id","estadocivil_id","genero_id","pais_id","parroquia_id","provincia_id","sexo_id","usuario_id","usuario_creacion_id","usuario_modificacion_id","nacionalidad_id","telefono") VALUES (17, '2023-05-17 17:49:09.191088-05', NULL, 'Jenrry', 'Patricio', 'NUÑEZ', 'NUÑEZ', '1804945291', '1994-01-12', 'SN', 'SN', 'SN', 'SN', 'SN', '0987025596', 'jerryne39@gmail.com', 203, 1, NULL, 1, 1299, 18, 1, 2, 1, NULL, 18, '0987025596'),(25, '2023-05-19 17:09:30.38014-05', '2023-05-19 17:09:30.506325-05', 'MANUEL', 'MARLO', 'ALDAS', 'ALDAS', '0101111045', '2023-05-12', 'ASD', '', 'ad', '', '', '', 'jerryne39@gmail.com', 56, NULL, NULL, 21, 745, 15, 1, 19, 2, 1, 21, '0987025596');
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_personaestadocivil" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_personaestadocivil";
INSERT INTO "public"."jdsistemas_personaestadocivil" ("id","fecha_creacion","fecha_modificacion","nombre","usuario_creacion_id","usuario_modificacion_id","codigosniese") VALUES (1, NULL, NULL, 'SOLTERO', NULL, NULL, ''),(2, NULL, NULL, 'CASADO', NULL, NULL, ''),(3, NULL, NULL, 'DIVORCIADO', NULL, NULL, ''),(4, NULL, NULL, 'VIUDO', NULL, NULL, ''),(5, NULL, NULL, 'UNION DE HECHO', NULL, NULL, ''),(6, NULL, NULL, 'UNION LIBRE', NULL, NULL, '');
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_provincia" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_provincia";
INSERT INTO "public"."jdsistemas_provincia" ("id","fecha_creacion","fecha_modificacion","nombre","alias","codigosniese","codigoiso","usuario_creacion_id","usuario_modificacion_id") VALUES (25, NULL, '2018-05-09 09:16:12.013753-05', 'ZONAS NO DELIMITADAS', 'NO DE.', '25', '', NULL, 1),(26, NULL, NULL, 'EXTRANJERO', '', '', '', NULL, NULL),(1, NULL, '2019-05-14 08:53:30.862271-05', 'AZUAY', 'AZU.', '1', 'EC-A', NULL, 1),(2, NULL, '2019-05-14 08:53:43.774707-05', 'BOLIVAR', 'BOL.', '2', 'EC-B', NULL, 1),(3, NULL, '2019-05-14 08:53:52.658218-05', 'CAÑAR', 'CAÑ.', '3', 'EC-F', NULL, 1),(4, NULL, '2019-05-14 08:54:04.892663-05', 'CARCHI', 'CAR.', '4', 'EC-C', NULL, 1),(5, NULL, '2019-05-14 08:54:36.524806-05', 'COTOPAXI', 'COT.', '5', 'EC-X', NULL, 1),(6, NULL, '2019-05-14 08:54:47.795788-05', 'CHIMBORAZO', 'CHIM.', '6', 'EC-H', NULL, 1),(7, NULL, '2019-05-14 08:55:05.726051-05', 'EL ORO', 'ORO', '7', 'EC-O', NULL, 1),(8, NULL, '2019-05-14 08:55:16.670419-05', 'ESMERALDAS', 'ESM.', '8', 'EC-E', NULL, 1),(20, NULL, '2019-05-14 08:55:28.586689-05', 'GALAPAGOS', 'GAL.', '20', 'EC-W', NULL, 1),(9, NULL, '2019-05-14 08:55:40.98956-05', 'GUAYAS', 'GUAY.', '9', 'EC-G', NULL, 1),(10, NULL, '2019-05-14 08:55:49.492175-05', 'IMBABURA', 'IMB.', '10', 'EC-I', NULL, 1),(11, NULL, '2019-05-14 08:55:59.534408-05', 'LOJA', 'LOJA', '11', 'EC-L', NULL, 1),(12, NULL, '2019-05-14 08:56:09.969671-05', 'LOS RIOS', 'RIOS', '12', 'EC-R', NULL, 1),(13, NULL, '2019-05-14 08:56:21.974287-05', 'MANABI', 'MAN.', '13', 'EC-M', NULL, 1),(14, NULL, '2019-05-14 08:56:31.388588-05', 'MORONA SANTIAGO', 'M SAN.', '14', 'EC-S', NULL, 1),(15, NULL, '2019-05-14 08:56:39.378454-05', 'NAPO', 'NAPO', '15', 'EC-N', NULL, 1),(22, NULL, '2019-05-14 08:56:48.51244-05', 'ORELLANA', 'ORE.', '22', 'EC-D', NULL, 1),(16, NULL, '2019-05-14 08:56:58.427896-05', 'PASTAZA', 'PAST.', '16', 'EC-Y', NULL, 1),(17, NULL, '2019-05-14 08:57:08.520891-05', 'PICHINCHA', 'PICH.', '17', 'EC-P', NULL, 1),(24, NULL, '2019-05-14 08:57:17.833684-05', 'SANTA ELENA', 'S. ELE.', '24', 'EC-SE', NULL, 1),(23, NULL, '2019-05-14 08:57:27.795342-05', 'SANTO DOMINGO DE LOS TSACHILAS', 'S. DO.', '23', 'EC-SD', NULL, 1),(21, NULL, '2019-05-14 08:57:38.656428-05', 'SUCUMBIOS', 'SUC.', '21', 'EC-U', NULL, 1),(18, NULL, '2019-05-14 08:57:48.034509-05', 'TUNGURAHUA', 'TUNG.', '18', 'EC-T', NULL, 1),(19, NULL, '2019-05-14 08:57:56.758186-05', 'ZAMORA CHINCHIPE', 'Z. CHI.', '19', 'EC-Z', NULL, 1);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_prueba" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_prueba";
INSERT INTO "public"."jdsistemas_prueba" ("id","fecha_creacion","fecha_modificacion","nombre1","apellido1","nacimiento","sexo_id","usuario_creacion_id","usuario_modificacion_id") VALUES (16, '2023-05-11 09:57:27.615043-05', NULL, 'JUAN', 'CARLOS', '2023-05-13', 1, 2, NULL),(17, '2023-05-11 11:18:55.412122-05', NULL, 'MANUEL', 'CASTRO', '2023-05-12', 1, 2, NULL),(10, '2023-05-10 15:29:27.323351-05', '2023-05-11 11:19:06.787909-05', 'JENRRY', 'NUÑEZ', '2023-05-06', 1, 2, 1);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_reporte" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_reporte";
INSERT INTO "public"."jdsistemas_reporte" ("id","fecha_creacion","fecha_modificacion","nombre","descripcion","detalle","archivo","interface","formatoxls","formatocsv","formatoword","formatopdf","vista","html","categoria_id","usuario_creacion_id","usuario_modificacion_id") VALUES (1, '2023-05-11 12:10:12.548809-05', NULL, 'persona', 'Persona', 'Persona', 'reportes/persona.jrxml', 'f', 't', 't', 't', 't', '', '', 1, 1, NULL);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_reporte_grupos" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_reporte_grupos";
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_sexo" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_sexo";
INSERT INTO "public"."jdsistemas_sexo" ("id","fecha_creacion","fecha_modificacion","nombre","usuario_creacion_id","usuario_modificacion_id") VALUES (1, '2023-05-03 12:26:38.201077-05', NULL, 'MASCULINO', 1, NULL),(2, '2023-05-03 12:26:56.711256-05', NULL, 'FEMENINO', 1, NULL);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_tipoparroquia" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_tipoparroquia";
INSERT INTO "public"."jdsistemas_tipoparroquia" ("id","fecha_creacion","fecha_modificacion","nombre","usuario_creacion_id","usuario_modificacion_id") VALUES (1, '2018-05-29 10:16:27.481457-05', NULL, 'URBANA', 1, NULL),(2, '2018-05-29 10:16:31.725323-05', NULL, 'RURAL', 1, NULL);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_tipoperfilusuario" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_tipoperfilusuario";
INSERT INTO "public"."jdsistemas_tipoperfilusuario" ("id","fecha_creacion","fecha_modificacion","nombre","usuario_creacion_id","usuario_modificacion_id") VALUES (1, NULL, NULL, 'DOCTOR', NULL, NULL),(2, NULL, NULL, 'ADMINISTRATIVO', NULL, NULL),(3, NULL, NULL, 'PACIENTE', NULL, NULL);
COMMIT;
BEGIN;
LOCK TABLE "public"."jdsistemas_tituloinstitucion" IN SHARE MODE;
DELETE FROM "public"."jdsistemas_tituloinstitucion";
INSERT INTO "public"."jdsistemas_tituloinstitucion" ("id","fecha_creacion","fecha_modificacion","nombre","telefono","correo","web","sector","ciudad","direccion","ruc","obligadocontabilidad","contribuyenteespecial","facturacionelectronicaexterna","urlfacturacion","emailhost","emaildomain","domainapp","emailport","emailhostuser","emailpassword","enviosolocorreoinstitucional","usatls","defaultpassword","claveusuariocedula","nombreusuariocedula","canton_id","parroquia_id","provincia_id","usuario_creacion_id","usuario_modificacion_id") VALUES (9, NULL, NULL, 'JD SISTEMAS', '0987025596', 'jerryne39@gmail.com', 'jdsistemas.com', ' ', '   ', '  ', '1804945291001', 't', 't', 't', 'abc', 'abc', 'abc', 'abc', 84, '123', '123', 't', 't', 'jdsistemas', 't', 't', 16, 69, 26, NULL, NULL);
COMMIT;
ALTER TABLE "auth_group" ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");
CREATE INDEX "auth_group_name_a6ea08ec_like" ON "auth_group" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
ALTER TABLE "auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "auth_permission" ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "auth_user" ADD CONSTRAINT "auth_user_pkey" PRIMARY KEY ("id");
CREATE INDEX "auth_user_username_6821ab7c_like" ON "auth_user" USING btree (
  "username" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
ALTER TABLE "auth_user_groups" ADD CONSTRAINT "auth_user_groups_pkey" PRIMARY KEY ("id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permissions_pkey" PRIMARY KEY ("id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "django_admin_log" ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "django_content_type" ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");
ALTER TABLE "django_migrations" ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");
ALTER TABLE "django_session" ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" USING btree (
  "expire_date" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);
CREATE INDEX "django_session_session_key_c0390e0f_like" ON "django_session" USING btree (
  "session_key" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_administrativo" ADD CONSTRAINT "jdsistemas_administrativo_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_administrativo_persona_id_564082f0" ON "jdsistemas_administrativo" USING btree (
  "persona_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_administrativo_usuario_creacion_id_55815793" ON "jdsistemas_administrativo" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_administrativo_usuario_modificacion_id_feef93b3" ON "jdsistemas_administrativo" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_cambioclavepersona" ADD CONSTRAINT "jdsistemas_cambioclavepersona_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_cambioclavepersona_persona_id_d35f0a66" ON "jdsistemas_cambioclavepersona" USING btree (
  "persona_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_cambioclavepersona_usuario_creacion_id_53b97307" ON "jdsistemas_cambioclavepersona" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_cambioclavepersona_usuario_modificacion_id_4518be46" ON "jdsistemas_cambioclavepersona" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_canton" ADD CONSTRAINT "jdsistemas_canton_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_canton_provincia_id_6bf9318c" ON "jdsistemas_canton" USING btree (
  "provincia_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_canton_usuario_creacion_id_e505a958" ON "jdsistemas_canton" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_canton_usuario_modificacion_id_e3bc1163" ON "jdsistemas_canton" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_cargodoctor" ADD CONSTRAINT "jdsistemas_cargodoctor_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_cargodoctor_usuario_creacion_id_c9c68df2" ON "jdsistemas_cargodoctor" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_cargodoctor_usuario_modificacion_id_5d5714b2" ON "jdsistemas_cargodoctor" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_categoriareporte" ADD CONSTRAINT "jdsistemas_categoriareporte_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_categoriareporte_usuario_creacion_id_a91bfe8b" ON "jdsistemas_categoriareporte" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_categoriareporte_usuario_modificacion_id_da136c8a" ON "jdsistemas_categoriareporte" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_categorizaciondoctor" ADD CONSTRAINT "jdsistemas_categorizaciondoctor_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_categorizaciond_usuario_modificacion_id_14c93e2a" ON "jdsistemas_categorizaciondoctor" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_categorizaciondoctor_usuario_creacion_id_4ee35141" ON "jdsistemas_categorizaciondoctor" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_doctor" ADD CONSTRAINT "jdsistemas_doctor_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_doctor_cargo_id_0f14d3f9" ON "jdsistemas_doctor" USING btree (
  "cargo_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_doctor_categoria_id_e37492ce" ON "jdsistemas_doctor" USING btree (
  "categoria_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_doctor_gradoocupacional_id_6709299e" ON "jdsistemas_doctor" USING btree (
  "gradoocupacional_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_doctor_persona_id_df7be160" ON "jdsistemas_doctor" USING btree (
  "persona_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_doctor_usuario_creacion_id_6bb595c1" ON "jdsistemas_doctor" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_doctor_usuario_modificacion_id_00e1d306" ON "jdsistemas_doctor" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_genero" ADD CONSTRAINT "jdsistemas_genero_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_genero_usuario_creacion_id_80602a36" ON "jdsistemas_genero" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_genero_usuario_modificacion_id_dcc9100d" ON "jdsistemas_genero" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_gradoocupacional" ADD CONSTRAINT "jdsistemas_gradoocupacional_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_gradoocupacional_usuario_creacion_id_f8e49de2" ON "jdsistemas_gradoocupacional" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_gradoocupacional_usuario_modificacion_id_d7e4c8d2" ON "jdsistemas_gradoocupacional" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_gruposmodulos" ADD CONSTRAINT "jdsistemas_gruposmodulos_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_gruposmodulos_grupo_id_1ca5fd11" ON "jdsistemas_gruposmodulos" USING btree (
  "grupo_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_gruposmodulos_usuario_creacion_id_0ddacf1a" ON "jdsistemas_gruposmodulos" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_gruposmodulos_usuario_modificacion_id_69a8eb68" ON "jdsistemas_gruposmodulos" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_gruposmodulos_modulos" ADD CONSTRAINT "jdsistemas_gruposmodulos_modulos_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_gruposmodulos_modulos_gruposmodulos_id_62d8aa73" ON "jdsistemas_gruposmodulos_modulos" USING btree (
  "gruposmodulos_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_gruposmodulos_modulos_modulo_id_aa77a549" ON "jdsistemas_gruposmodulos_modulos" USING btree (
  "modulo_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_modulo" ADD CONSTRAINT "jdsistemas_modulo_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_modulo_usuario_creacion_id_ab93b2f6" ON "jdsistemas_modulo" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_modulo_usuario_modificacion_id_daca854c" ON "jdsistemas_modulo" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_nacionalidad" ADD CONSTRAINT "jdsistemas_nacionalidad_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_nacionalidad_pais_id_23ebeaff" ON "jdsistemas_nacionalidad" USING btree (
  "pais_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_nacionalidad_usuario_creacion_id_4ea29d73" ON "jdsistemas_nacionalidad" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_nacionalidad_usuario_modificacion_id_5034f216" ON "jdsistemas_nacionalidad" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_paciente" ADD CONSTRAINT "jdsistemas_paciente_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_paciente_persona_id_2c60c34b" ON "jdsistemas_paciente" USING btree (
  "persona_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_paciente_personaingreso_id_81c6c59b" ON "jdsistemas_paciente" USING btree (
  "personaingreso_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_paciente_usuario_creacion_id_2373d88f" ON "jdsistemas_paciente" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_paciente_usuario_modificacion_id_54a0989d" ON "jdsistemas_paciente" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_pais" ADD CONSTRAINT "jdsistemas_pais_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_pais_usuario_creacion_id_f2228b3e" ON "jdsistemas_pais" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_pais_usuario_modificacion_id_fcb93ee9" ON "jdsistemas_pais" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_parametroreporte" ADD CONSTRAINT "jdsistemas_parametroreporte_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_parametroreporte_reporte_id_91698c0c" ON "jdsistemas_parametroreporte" USING btree (
  "reporte_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_parametroreporte_usuario_creacion_id_1a6d56cf" ON "jdsistemas_parametroreporte" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_parametroreporte_usuario_modificacion_id_531d7641" ON "jdsistemas_parametroreporte" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_parroquia" ADD CONSTRAINT "jdsistemas_parroquia_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_parroquia_canton_id_cc9b0f54" ON "jdsistemas_parroquia" USING btree (
  "canton_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_parroquia_tipo_id_1e9cf8d7" ON "jdsistemas_parroquia" USING btree (
  "tipo_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_parroquia_usuario_creacion_id_3df1fd96" ON "jdsistemas_parroquia" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_parroquia_usuario_modificacion_id_08e25c7f" ON "jdsistemas_parroquia" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_perfilusuario" ADD CONSTRAINT "jdsistemas_perfilusuario_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_perfilusuario_administrativo_id_66308fd2" ON "jdsistemas_perfilusuario" USING btree (
  "administrativo_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_perfilusuario_doctor_id_e335b8a8" ON "jdsistemas_perfilusuario" USING btree (
  "doctor_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_perfilusuario_paciente_id_2f85bc60" ON "jdsistemas_perfilusuario" USING btree (
  "paciente_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_perfilusuario_persona_id_96e50a27" ON "jdsistemas_perfilusuario" USING btree (
  "persona_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_perfilusuario_tipoperfilusuario_id_262761c1" ON "jdsistemas_perfilusuario" USING btree (
  "tipoperfilusuario_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_perfilusuario_usuario_creacion_id_601e6a4e" ON "jdsistemas_perfilusuario" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_perfilusuario_usuario_modificacion_id_14309cc6" ON "jdsistemas_perfilusuario" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_perms" ADD CONSTRAINT "jdsistemas_perms_pkey" PRIMARY KEY ("id");
ALTER TABLE "jdsistemas_persona" ADD CONSTRAINT "jdsistemas_persona_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_persona_canton_id_65727d28" ON "jdsistemas_persona" USING btree (
  "canton_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_persona_estadocivil_id_07665b1c" ON "jdsistemas_persona" USING btree (
  "estadocivil_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_persona_genero_id_52f200b8" ON "jdsistemas_persona" USING btree (
  "genero_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_persona_nacionalidad_id_9f717902" ON "jdsistemas_persona" USING btree (
  "nacionalidad_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_persona_pais_id_c83ac94f" ON "jdsistemas_persona" USING btree (
  "pais_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_persona_parroquia_id_4331069c" ON "jdsistemas_persona" USING btree (
  "parroquia_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_persona_provincia_id_df889f15" ON "jdsistemas_persona" USING btree (
  "provincia_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_persona_sexo_id_1ab5ae0f" ON "jdsistemas_persona" USING btree (
  "sexo_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_persona_usuario_creacion_id_b278afb9" ON "jdsistemas_persona" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_persona_usuario_id_6356f304" ON "jdsistemas_persona" USING btree (
  "usuario_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_persona_usuario_modificacion_id_f91b36da" ON "jdsistemas_persona" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_personaestadocivil" ADD CONSTRAINT "jdsistemas_personaestadocivil_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_personaestadocivil_usuario_creacion_id_81e07356" ON "jdsistemas_personaestadocivil" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_personaestadocivil_usuario_modificacion_id_9e3ae76c" ON "jdsistemas_personaestadocivil" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_provincia" ADD CONSTRAINT "jdsistemas_provincia_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_provincia_usuario_creacion_id_9bacbb7d" ON "jdsistemas_provincia" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_provincia_usuario_modificacion_id_6cc8095a" ON "jdsistemas_provincia" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_prueba" ADD CONSTRAINT "jdsistemas_prueba_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_prueba_sexo_id_f71a0a25" ON "jdsistemas_prueba" USING btree (
  "sexo_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_prueba_usuario_creacion_id_517e0991" ON "jdsistemas_prueba" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_prueba_usuario_modificacion_id_6f309733" ON "jdsistemas_prueba" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_reporte" ADD CONSTRAINT "jdsistemas_reporte_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_reporte_categoria_id_fd3b1e3c" ON "jdsistemas_reporte" USING btree (
  "categoria_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_reporte_usuario_creacion_id_350d2c88" ON "jdsistemas_reporte" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_reporte_usuario_modificacion_id_1ce24b0d" ON "jdsistemas_reporte" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_reporte_grupos" ADD CONSTRAINT "jdsistemas_reporte_grupos_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_reporte_grupos_group_id_64e81af2" ON "jdsistemas_reporte_grupos" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_reporte_grupos_reporte_id_18aaa2b8" ON "jdsistemas_reporte_grupos" USING btree (
  "reporte_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_sexo" ADD CONSTRAINT "jdsistemas_sexo_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_sexo_usuario_creacion_id_d3a2e49e" ON "jdsistemas_sexo" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_sexo_usuario_modificacion_id_687fd97e" ON "jdsistemas_sexo" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_tipoparroquia" ADD CONSTRAINT "jdsistemas_tipoparroquia_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_tipoparroquia_usuario_creacion_id_daa38447" ON "jdsistemas_tipoparroquia" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_tipoparroquia_usuario_modificacion_id_279902d9" ON "jdsistemas_tipoparroquia" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_tipoperfilusuario" ADD CONSTRAINT "jdsistemas_tipoperfilusuario_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_tipoperfilusuario_usuario_creacion_id_def4815f" ON "jdsistemas_tipoperfilusuario" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_tipoperfilusuario_usuario_modificacion_id_c84330db" ON "jdsistemas_tipoperfilusuario" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "jdsistemas_tituloinstitucion" ADD CONSTRAINT "jdsistemas_tituloinstitucion_pkey" PRIMARY KEY ("id");
CREATE INDEX "jdsistemas_tituloinstitucion_canton_id_c4036989" ON "jdsistemas_tituloinstitucion" USING btree (
  "canton_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_tituloinstitucion_parroquia_id_4cfac5f6" ON "jdsistemas_tituloinstitucion" USING btree (
  "parroquia_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_tituloinstitucion_provincia_id_b930adbc" ON "jdsistemas_tituloinstitucion" USING btree (
  "provincia_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_tituloinstitucion_usuario_creacion_id_c5289ca0" ON "jdsistemas_tituloinstitucion" USING btree (
  "usuario_creacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "jdsistemas_tituloinstitucion_usuario_modificacion_id_82fb27bc" ON "jdsistemas_tituloinstitucion" USING btree (
  "usuario_modificacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
ALTER TABLE "auth_group" ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");
ALTER TABLE "auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id");
ALTER TABLE "auth_group_permissions" ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_codename_01ab375a_uniq" UNIQUE ("content_type_id", "codename");
ALTER TABLE "auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "auth_user" ADD CONSTRAINT "auth_user_username_key" UNIQUE ("username");
ALTER TABLE "auth_user_groups" ADD CONSTRAINT "auth_user_groups_user_id_group_id_94350c0c_uniq" UNIQUE ("user_id", "group_id");
ALTER TABLE "auth_user_groups" ADD CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "auth_user_groups" ADD CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" UNIQUE ("user_id", "permission_id");
ALTER TABLE "auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "django_admin_log" ADD CONSTRAINT "django_admin_log_action_flag_check" CHECK (action_flag >= 0);
ALTER TABLE "django_admin_log" ADD CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "django_admin_log" ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "django_content_type" ADD CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model");
ALTER TABLE "jdsistemas_administrativo" ADD CONSTRAINT "jdsistemas_administrativo_persona_id_564082f0_uniq" UNIQUE ("persona_id");
ALTER TABLE "jdsistemas_administrativo" ADD CONSTRAINT "jdsistemas_administr_persona_id_564082f0_fk_jdsistema" FOREIGN KEY ("persona_id") REFERENCES "public"."jdsistemas_persona" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_administrativo" ADD CONSTRAINT "jdsistemas_administr_usuario_creacion_id_55815793_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_administrativo" ADD CONSTRAINT "jdsistemas_administr_usuario_modificacion_feef93b3_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_cambioclavepersona" ADD CONSTRAINT "jdsistemas_cambioclavepersona_persona_id_d35f0a66_uniq" UNIQUE ("persona_id");
ALTER TABLE "jdsistemas_cambioclavepersona" ADD CONSTRAINT "jdsistemas_cambiocla_persona_id_d35f0a66_fk_jdsistema" FOREIGN KEY ("persona_id") REFERENCES "public"."jdsistemas_persona" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_cambioclavepersona" ADD CONSTRAINT "jdsistemas_cambiocla_usuario_creacion_id_53b97307_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_cambioclavepersona" ADD CONSTRAINT "jdsistemas_cambiocla_usuario_modificacion_4518be46_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_canton" ADD CONSTRAINT "jdsistemas_canton_provincia_id_6bf9318c_fk_jdsistema" FOREIGN KEY ("provincia_id") REFERENCES "public"."jdsistemas_provincia" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_canton" ADD CONSTRAINT "jdsistemas_canton_usuario_creacion_id_e505a958_fk_auth_user_id" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_canton" ADD CONSTRAINT "jdsistemas_canton_usuario_modificacion_e3bc1163_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_cargodoctor" ADD CONSTRAINT "jdsistemas_cargodoctor_nombre_395d9f73_uniq" UNIQUE ("nombre");
ALTER TABLE "jdsistemas_cargodoctor" ADD CONSTRAINT "jdsistemas_cargodoct_usuario_creacion_id_c9c68df2_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_cargodoctor" ADD CONSTRAINT "jdsistemas_cargodoct_usuario_modificacion_5d5714b2_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_categoriareporte" ADD CONSTRAINT "jdsistemas_categoriareporte_nombre_ed4dd0db_uniq" UNIQUE ("nombre");
ALTER TABLE "jdsistemas_categoriareporte" ADD CONSTRAINT "jdsistemas_categoria_usuario_creacion_id_a91bfe8b_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_categoriareporte" ADD CONSTRAINT "jdsistemas_categoria_usuario_modificacion_da136c8a_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_categorizaciondoctor" ADD CONSTRAINT "jdsistemas_categorizaciondoctor_nombre_cb9268ef_uniq" UNIQUE ("nombre");
ALTER TABLE "jdsistemas_categorizaciondoctor" ADD CONSTRAINT "jdsistemas_categoriz_usuario_creacion_id_4ee35141_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_categorizaciondoctor" ADD CONSTRAINT "jdsistemas_categoriz_usuario_modificacion_14c93e2a_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_doctor" ADD CONSTRAINT "jdsistemas_doctor_persona_id_df7be160_uniq" UNIQUE ("persona_id");
ALTER TABLE "jdsistemas_doctor" ADD CONSTRAINT "jdsistemas_doctor_cargo_id_0f14d3f9_fk_jdsistema" FOREIGN KEY ("cargo_id") REFERENCES "public"."jdsistemas_cargodoctor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_doctor" ADD CONSTRAINT "jdsistemas_doctor_categoria_id_e37492ce_fk_jdsistema" FOREIGN KEY ("categoria_id") REFERENCES "public"."jdsistemas_categorizaciondoctor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_doctor" ADD CONSTRAINT "jdsistemas_doctor_gradoocupacional_id_6709299e_fk_jdsistema" FOREIGN KEY ("gradoocupacional_id") REFERENCES "public"."jdsistemas_gradoocupacional" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_doctor" ADD CONSTRAINT "jdsistemas_doctor_persona_id_df7be160_fk_jdsistemas_persona_id" FOREIGN KEY ("persona_id") REFERENCES "public"."jdsistemas_persona" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_doctor" ADD CONSTRAINT "jdsistemas_doctor_usuario_creacion_id_6bb595c1_fk_auth_user_id" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_doctor" ADD CONSTRAINT "jdsistemas_doctor_usuario_modificacion_00e1d306_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_genero" ADD CONSTRAINT "jdsistemas_genero_nombre_740a3abc_uniq" UNIQUE ("nombre");
ALTER TABLE "jdsistemas_genero" ADD CONSTRAINT "jdsistemas_genero_usuario_creacion_id_80602a36_fk_auth_user_id" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_genero" ADD CONSTRAINT "jdsistemas_genero_usuario_modificacion_dcc9100d_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_gradoocupacional" ADD CONSTRAINT "jdsistemas_gradoocupacional_nombre_d78a5b13_uniq" UNIQUE ("nombre");
ALTER TABLE "jdsistemas_gradoocupacional" ADD CONSTRAINT "jdsistemas_gradoocup_usuario_creacion_id_f8e49de2_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_gradoocupacional" ADD CONSTRAINT "jdsistemas_gradoocup_usuario_modificacion_d7e4c8d2_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_gruposmodulos" ADD CONSTRAINT "jdsistemas_gruposmodulos_grupo_id_1ca5fd11_uniq" UNIQUE ("grupo_id");
ALTER TABLE "jdsistemas_gruposmodulos" ADD CONSTRAINT "jdsistemas_gruposmod_usuario_creacion_id_0ddacf1a_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_gruposmodulos" ADD CONSTRAINT "jdsistemas_gruposmod_usuario_modificacion_69a8eb68_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_gruposmodulos" ADD CONSTRAINT "jdsistemas_gruposmodulos_grupo_id_1ca5fd11_fk_auth_group_id" FOREIGN KEY ("grupo_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_gruposmodulos_modulos" ADD CONSTRAINT "jdsistemas_gruposmodulos_gruposmodulos_id_modulo__cf2c10e8_uniq" UNIQUE ("gruposmodulos_id", "modulo_id");
ALTER TABLE "jdsistemas_gruposmodulos_modulos" ADD CONSTRAINT "jdsistemas_gruposmod_gruposmodulos_id_62d8aa73_fk_jdsistema" FOREIGN KEY ("gruposmodulos_id") REFERENCES "public"."jdsistemas_gruposmodulos" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_gruposmodulos_modulos" ADD CONSTRAINT "jdsistemas_gruposmod_modulo_id_aa77a549_fk_jdsistema" FOREIGN KEY ("modulo_id") REFERENCES "public"."jdsistemas_modulo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_modulo" ADD CONSTRAINT "jdsistemas_modulo_url_fc466158_uniq" UNIQUE ("url");
ALTER TABLE "jdsistemas_modulo" ADD CONSTRAINT "jdsistemas_modulo_usuario_creacion_id_ab93b2f6_fk_auth_user_id" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_modulo" ADD CONSTRAINT "jdsistemas_modulo_usuario_modificacion_daca854c_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_nacionalidad" ADD CONSTRAINT "jdsistemas_nacionalidad_nombre_bf3e7a5a_uniq" UNIQUE ("nombre");
ALTER TABLE "jdsistemas_nacionalidad" ADD CONSTRAINT "jdsistemas_nacionali_usuario_creacion_id_4ea29d73_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_nacionalidad" ADD CONSTRAINT "jdsistemas_nacionali_usuario_modificacion_5034f216_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_nacionalidad" ADD CONSTRAINT "jdsistemas_nacionalidad_pais_id_23ebeaff_fk_jdsistemas_pais_id" FOREIGN KEY ("pais_id") REFERENCES "public"."jdsistemas_pais" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_paciente" ADD CONSTRAINT "jdsistemas_paciente_persona_id_2c60c34b_fk_jdsistema" FOREIGN KEY ("persona_id") REFERENCES "public"."jdsistemas_persona" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_paciente" ADD CONSTRAINT "jdsistemas_paciente_personaingreso_id_81c6c59b_fk_jdsistema" FOREIGN KEY ("personaingreso_id") REFERENCES "public"."jdsistemas_persona" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_paciente" ADD CONSTRAINT "jdsistemas_paciente_usuario_creacion_id_2373d88f_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_paciente" ADD CONSTRAINT "jdsistemas_paciente_usuario_modificacion_54a0989d_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_pais" ADD CONSTRAINT "jdsistemas_pais_nombre_a7c35185_uniq" UNIQUE ("nombre");
ALTER TABLE "jdsistemas_pais" ADD CONSTRAINT "jdsistemas_pais_usuario_creacion_id_f2228b3e_fk_auth_user_id" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_pais" ADD CONSTRAINT "jdsistemas_pais_usuario_modificacion_fcb93ee9_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_parametroreporte" ADD CONSTRAINT "jdsistemas_parametroreporte_reporte_id_nombre_a58ca6fa_uniq" UNIQUE ("reporte_id", "nombre");
ALTER TABLE "jdsistemas_parametroreporte" ADD CONSTRAINT "jdsistemas_parametro_reporte_id_91698c0c_fk_jdsistema" FOREIGN KEY ("reporte_id") REFERENCES "public"."jdsistemas_reporte" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_parametroreporte" ADD CONSTRAINT "jdsistemas_parametro_usuario_creacion_id_1a6d56cf_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_parametroreporte" ADD CONSTRAINT "jdsistemas_parametro_usuario_modificacion_531d7641_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_parroquia" ADD CONSTRAINT "jdsistemas_parroquia_canton_id_cc9b0f54_fk_jdsistemas_canton_id" FOREIGN KEY ("canton_id") REFERENCES "public"."jdsistemas_canton" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_parroquia" ADD CONSTRAINT "jdsistemas_parroquia_tipo_id_1e9cf8d7_fk_jdsistema" FOREIGN KEY ("tipo_id") REFERENCES "public"."jdsistemas_tipoparroquia" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_parroquia" ADD CONSTRAINT "jdsistemas_parroquia_usuario_creacion_id_3df1fd96_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_parroquia" ADD CONSTRAINT "jdsistemas_parroquia_usuario_modificacion_08e25c7f_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_perfilusuario" ADD CONSTRAINT "jdsistemas_perfilusuario_persona_id_paciente_id_a_0c0d623b_uniq" UNIQUE ("persona_id", "paciente_id", "administrativo_id", "doctor_id");
ALTER TABLE "jdsistemas_perfilusuario" ADD CONSTRAINT "jdsistemas_perfilusu_administrativo_id_66308fd2_fk_jdsistema" FOREIGN KEY ("administrativo_id") REFERENCES "public"."jdsistemas_administrativo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_perfilusuario" ADD CONSTRAINT "jdsistemas_perfilusu_doctor_id_e335b8a8_fk_jdsistema" FOREIGN KEY ("doctor_id") REFERENCES "public"."jdsistemas_doctor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_perfilusuario" ADD CONSTRAINT "jdsistemas_perfilusu_paciente_id_2f85bc60_fk_jdsistema" FOREIGN KEY ("paciente_id") REFERENCES "public"."jdsistemas_paciente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_perfilusuario" ADD CONSTRAINT "jdsistemas_perfilusu_persona_id_96e50a27_fk_jdsistema" FOREIGN KEY ("persona_id") REFERENCES "public"."jdsistemas_persona" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_perfilusuario" ADD CONSTRAINT "jdsistemas_perfilusu_tipoperfilusuario_id_262761c1_fk_jdsistema" FOREIGN KEY ("tipoperfilusuario_id") REFERENCES "public"."jdsistemas_tipoperfilusuario" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_perfilusuario" ADD CONSTRAINT "jdsistemas_perfilusu_usuario_creacion_id_601e6a4e_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_perfilusuario" ADD CONSTRAINT "jdsistemas_perfilusu_usuario_modificacion_14309cc6_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_persona" ADD CONSTRAINT "jdsistemas_persona_canton_id_65727d28_fk_jdsistemas_canton_id" FOREIGN KEY ("canton_id") REFERENCES "public"."jdsistemas_canton" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_persona" ADD CONSTRAINT "jdsistemas_persona_estadocivil_id_07665b1c_fk_jdsistema" FOREIGN KEY ("estadocivil_id") REFERENCES "public"."jdsistemas_personaestadocivil" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_persona" ADD CONSTRAINT "jdsistemas_persona_genero_id_52f200b8_fk_jdsistemas_genero_id" FOREIGN KEY ("genero_id") REFERENCES "public"."jdsistemas_genero" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_persona" ADD CONSTRAINT "jdsistemas_persona_nacionalidad_id_9f717902_fk_jdsistema" FOREIGN KEY ("nacionalidad_id") REFERENCES "public"."jdsistemas_nacionalidad" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_persona" ADD CONSTRAINT "jdsistemas_persona_pais_id_c83ac94f_fk_jdsistemas_pais_id" FOREIGN KEY ("pais_id") REFERENCES "public"."jdsistemas_pais" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_persona" ADD CONSTRAINT "jdsistemas_persona_parroquia_id_4331069c_fk_jdsistema" FOREIGN KEY ("parroquia_id") REFERENCES "public"."jdsistemas_parroquia" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_persona" ADD CONSTRAINT "jdsistemas_persona_provincia_id_df889f15_fk_jdsistema" FOREIGN KEY ("provincia_id") REFERENCES "public"."jdsistemas_provincia" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_persona" ADD CONSTRAINT "jdsistemas_persona_sexo_id_1ab5ae0f_fk_jdsistemas_sexo_id" FOREIGN KEY ("sexo_id") REFERENCES "public"."jdsistemas_sexo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_persona" ADD CONSTRAINT "jdsistemas_persona_usuario_creacion_id_b278afb9_fk_auth_user_id" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_persona" ADD CONSTRAINT "jdsistemas_persona_usuario_id_6356f304_fk_auth_user_id" FOREIGN KEY ("usuario_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_persona" ADD CONSTRAINT "jdsistemas_persona_usuario_modificacion_f91b36da_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_personaestadocivil" ADD CONSTRAINT "jdsistemas_personaestadocivil_nombre_5cff1911_uniq" UNIQUE ("nombre");
ALTER TABLE "jdsistemas_personaestadocivil" ADD CONSTRAINT "jdsistemas_personaes_usuario_creacion_id_81e07356_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_personaestadocivil" ADD CONSTRAINT "jdsistemas_personaes_usuario_modificacion_9e3ae76c_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_provincia" ADD CONSTRAINT "jdsistemas_provincia_nombre_a789c416_uniq" UNIQUE ("nombre");
ALTER TABLE "jdsistemas_provincia" ADD CONSTRAINT "jdsistemas_provincia_usuario_creacion_id_9bacbb7d_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_provincia" ADD CONSTRAINT "jdsistemas_provincia_usuario_modificacion_6cc8095a_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_prueba" ADD CONSTRAINT "jdsistemas_prueba_sexo_id_f71a0a25_fk_jdsistemas_sexo_id" FOREIGN KEY ("sexo_id") REFERENCES "public"."jdsistemas_sexo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_prueba" ADD CONSTRAINT "jdsistemas_prueba_usuario_creacion_id_517e0991_fk_auth_user_id" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_prueba" ADD CONSTRAINT "jdsistemas_prueba_usuario_modificacion_6f309733_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_reporte" ADD CONSTRAINT "jdsistemas_reporte_nombre_4d12af71_uniq" UNIQUE ("nombre");
ALTER TABLE "jdsistemas_reporte" ADD CONSTRAINT "jdsistemas_reporte_categoria_id_fd3b1e3c_fk_jdsistema" FOREIGN KEY ("categoria_id") REFERENCES "public"."jdsistemas_categoriareporte" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_reporte" ADD CONSTRAINT "jdsistemas_reporte_usuario_creacion_id_350d2c88_fk_auth_user_id" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_reporte" ADD CONSTRAINT "jdsistemas_reporte_usuario_modificacion_1ce24b0d_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_reporte_grupos" ADD CONSTRAINT "jdsistemas_reporte_grupos_reporte_id_group_id_38e4d091_uniq" UNIQUE ("reporte_id", "group_id");
ALTER TABLE "jdsistemas_reporte_grupos" ADD CONSTRAINT "jdsistemas_reporte_g_reporte_id_18aaa2b8_fk_jdsistema" FOREIGN KEY ("reporte_id") REFERENCES "public"."jdsistemas_reporte" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_reporte_grupos" ADD CONSTRAINT "jdsistemas_reporte_grupos_group_id_64e81af2_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_sexo" ADD CONSTRAINT "jdsistemas_sexo_nombre_057decbe_uniq" UNIQUE ("nombre");
ALTER TABLE "jdsistemas_sexo" ADD CONSTRAINT "jdsistemas_sexo_usuario_creacion_id_d3a2e49e_fk_auth_user_id" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_sexo" ADD CONSTRAINT "jdsistemas_sexo_usuario_modificacion_687fd97e_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_tipoparroquia" ADD CONSTRAINT "jdsistemas_tipoparro_usuario_creacion_id_daa38447_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_tipoparroquia" ADD CONSTRAINT "jdsistemas_tipoparro_usuario_modificacion_279902d9_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_tipoperfilusuario" ADD CONSTRAINT "jdsistemas_tipoperfi_usuario_creacion_id_def4815f_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_tipoperfilusuario" ADD CONSTRAINT "jdsistemas_tipoperfi_usuario_modificacion_c84330db_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_tituloinstitucion" ADD CONSTRAINT "jdsistemas_tituloins_canton_id_c4036989_fk_jdsistema" FOREIGN KEY ("canton_id") REFERENCES "public"."jdsistemas_canton" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_tituloinstitucion" ADD CONSTRAINT "jdsistemas_tituloins_parroquia_id_4cfac5f6_fk_jdsistema" FOREIGN KEY ("parroquia_id") REFERENCES "public"."jdsistemas_parroquia" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_tituloinstitucion" ADD CONSTRAINT "jdsistemas_tituloins_provincia_id_b930adbc_fk_jdsistema" FOREIGN KEY ("provincia_id") REFERENCES "public"."jdsistemas_provincia" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_tituloinstitucion" ADD CONSTRAINT "jdsistemas_tituloins_usuario_creacion_id_c5289ca0_fk_auth_user" FOREIGN KEY ("usuario_creacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "jdsistemas_tituloinstitucion" ADD CONSTRAINT "jdsistemas_tituloins_usuario_modificacion_82fb27bc_fk_auth_user" FOREIGN KEY ("usuario_modificacion_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER SEQUENCE "auth_group_id_seq1"
OWNED BY "auth_group"."id";
SELECT setval('"auth_group_id_seq1"', 1, false);
ALTER SEQUENCE "auth_group_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "auth_group_permissions_id_seq1"
OWNED BY "auth_group_permissions"."id";
SELECT setval('"auth_group_permissions_id_seq1"', 1, false);
ALTER SEQUENCE "auth_group_permissions_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "auth_permission_id_seq1"
OWNED BY "auth_permission"."id";
SELECT setval('"auth_permission_id_seq1"', 156, true);
ALTER SEQUENCE "auth_permission_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "auth_user_groups_id_seq1"
OWNED BY "auth_user_groups"."id";
SELECT setval('"auth_user_groups_id_seq1"', 1, false);
ALTER SEQUENCE "auth_user_groups_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "auth_user_id_seq1"
OWNED BY "auth_user"."id";
SELECT setval('"auth_user_id_seq1"', 1, false);
ALTER SEQUENCE "auth_user_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "auth_user_user_permissions_id_seq1"
OWNED BY "auth_user_user_permissions"."id";
SELECT setval('"auth_user_user_permissions_id_seq1"', 1, false);
ALTER SEQUENCE "auth_user_user_permissions_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "django_admin_log_id_seq1"
OWNED BY "django_admin_log"."id";
SELECT setval('"django_admin_log_id_seq1"', 4, true);
ALTER SEQUENCE "django_admin_log_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "django_content_type_id_seq1"
OWNED BY "django_content_type"."id";
SELECT setval('"django_content_type_id_seq1"', 37, true);
ALTER SEQUENCE "django_content_type_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "django_migrations_id_seq1"
OWNED BY "django_migrations"."id";
SELECT setval('"django_migrations_id_seq1"', 1, false);
ALTER SEQUENCE "django_migrations_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_administrativo_id_seq1"
OWNED BY "jdsistemas_administrativo"."id";
SELECT setval('"jdsistemas_administrativo_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_administrativo_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_cambioclavepersona_id_seq1"
OWNED BY "jdsistemas_cambioclavepersona"."id";
SELECT setval('"jdsistemas_cambioclavepersona_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_cambioclavepersona_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_canton_id_seq1"
OWNED BY "jdsistemas_canton"."id";
SELECT setval('"jdsistemas_canton_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_canton_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_cargodoctor_id_seq1"
OWNED BY "jdsistemas_cargodoctor"."id";
SELECT setval('"jdsistemas_cargodoctor_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_cargodoctor_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_categoriareporte_id_seq1"
OWNED BY "jdsistemas_categoriareporte"."id";
SELECT setval('"jdsistemas_categoriareporte_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_categoriareporte_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_categorizaciondoctor_id_seq1"
OWNED BY "jdsistemas_categorizaciondoctor"."id";
SELECT setval('"jdsistemas_categorizaciondoctor_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_categorizaciondoctor_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_doctor_id_seq1"
OWNED BY "jdsistemas_doctor"."id";
SELECT setval('"jdsistemas_doctor_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_doctor_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_genero_id_seq1"
OWNED BY "jdsistemas_genero"."id";
SELECT setval('"jdsistemas_genero_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_genero_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_gradoocupacional_id_seq1"
OWNED BY "jdsistemas_gradoocupacional"."id";
SELECT setval('"jdsistemas_gradoocupacional_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_gradoocupacional_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_gruposmodulos_id_seq1"
OWNED BY "jdsistemas_gruposmodulos"."id";
SELECT setval('"jdsistemas_gruposmodulos_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_gruposmodulos_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_gruposmodulos_modulos_id_seq1"
OWNED BY "jdsistemas_gruposmodulos_modulos"."id";
SELECT setval('"jdsistemas_gruposmodulos_modulos_id_seq1"', 2, true);
ALTER SEQUENCE "jdsistemas_gruposmodulos_modulos_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_modulo_id_seq1"
OWNED BY "jdsistemas_modulo"."id";
SELECT setval('"jdsistemas_modulo_id_seq1"', 1, true);
ALTER SEQUENCE "jdsistemas_modulo_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_nacionalidad_id_seq1"
OWNED BY "jdsistemas_nacionalidad"."id";
SELECT setval('"jdsistemas_nacionalidad_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_nacionalidad_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_paciente_id_seq1"
OWNED BY "jdsistemas_paciente"."id";
SELECT setval('"jdsistemas_paciente_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_paciente_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_pais_id_seq1"
OWNED BY "jdsistemas_pais"."id";
SELECT setval('"jdsistemas_pais_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_pais_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_parametroreporte_id_seq1"
OWNED BY "jdsistemas_parametroreporte"."id";
SELECT setval('"jdsistemas_parametroreporte_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_parametroreporte_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_parroquia_id_seq1"
OWNED BY "jdsistemas_parroquia"."id";
SELECT setval('"jdsistemas_parroquia_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_parroquia_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_perfilusuario_id_seq1"
OWNED BY "jdsistemas_perfilusuario"."id";
SELECT setval('"jdsistemas_perfilusuario_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_perfilusuario_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_perms_id_seq1"
OWNED BY "jdsistemas_perms"."id";
SELECT setval('"jdsistemas_perms_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_perms_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_persona_id_seq1"
OWNED BY "jdsistemas_persona"."id";
SELECT setval('"jdsistemas_persona_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_persona_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_personaestadocivil_id_seq1"
OWNED BY "jdsistemas_personaestadocivil"."id";
SELECT setval('"jdsistemas_personaestadocivil_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_personaestadocivil_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_provincia_id_seq1"
OWNED BY "jdsistemas_provincia"."id";
SELECT setval('"jdsistemas_provincia_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_provincia_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_prueba_id_seq1"
OWNED BY "jdsistemas_prueba"."id";
SELECT setval('"jdsistemas_prueba_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_prueba_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_reporte_grupos_id_seq1"
OWNED BY "jdsistemas_reporte_grupos"."id";
SELECT setval('"jdsistemas_reporte_grupos_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_reporte_grupos_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_reporte_id_seq1"
OWNED BY "jdsistemas_reporte"."id";
SELECT setval('"jdsistemas_reporte_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_reporte_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_sexo_id_seq1"
OWNED BY "jdsistemas_sexo"."id";
SELECT setval('"jdsistemas_sexo_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_sexo_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_tipoparroquia_id_seq1"
OWNED BY "jdsistemas_tipoparroquia"."id";
SELECT setval('"jdsistemas_tipoparroquia_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_tipoparroquia_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_tipoperfilusuario_id_seq1"
OWNED BY "jdsistemas_tipoperfilusuario"."id";
SELECT setval('"jdsistemas_tipoperfilusuario_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_tipoperfilusuario_id_seq1" OWNER TO "postgres";
ALTER SEQUENCE "jdsistemas_tituloinstitucion_id_seq1"
OWNED BY "jdsistemas_tituloinstitucion"."id";
SELECT setval('"jdsistemas_tituloinstitucion_id_seq1"', 1, false);
ALTER SEQUENCE "jdsistemas_tituloinstitucion_id_seq1" OWNER TO "postgres";

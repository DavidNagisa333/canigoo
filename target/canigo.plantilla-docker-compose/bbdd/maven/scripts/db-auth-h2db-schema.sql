-------------------------------------------------------------------------------------------------------------
--
-- Arxiu de inserció de dades d'exemple a la bbdd h2
-- ---------------------------------------------------
--
--	Insercions:
--		
--		Taula "USERS": s'inserta el nom d'usuari, la contrasenya i si està habilitat o no. (1 = si, 0 = no).
--		Taula "GROUPS": s'inserta l'identificador i el nom del grup.
--		Taula "GROUP_AUTHORITIES": s'inserta l'identificador del grup i el rol.
--		Taula "GROUP_MEMBERS": s'inserta l'identificador, el nom d'usuari i el grup al que pertany.
--		Taula "AUTHORITIES": s'inserta el nom d'usuari i el rol al que pertany.
--
--
-------------------------------------------------------------------------------------------------------------
create table users(
  username varchar_ignorecase(50) not null primary key,
  password varchar_ignorecase(50) not null,
  enabled boolean not null);

create table authorities (
  username varchar_ignorecase(50) not null,
  authority varchar_ignorecase(50) not null,
  constraint fk_authorities_users foreign key(username) references users(username));
  create unique index ix_auth_username on authorities (username,authority);

create table groups (
  id bigint generated by default as identity(start with 0) primary key, 
  group_name varchar_ignorecase(50) not null);

create table group_authorities (
  group_id bigint not null, 
  authority varchar(50) not null, 
  constraint fk_group_authorities_group foreign key(group_id) references groups(id));

create table group_members (
  id bigint generated by default as identity(start with 0) primary key, 
  username varchar(50) not null, 
  group_id bigint not null, 
  constraint fk_group_members_group foreign key(group_id) references groups(id));

        
create table if not exists Site_features (
	id serial primary key,
	Search_by_artist varchar(80) not null,
	Search_by_genre varchar(80) not null);
	
create table if not exists Genre_list(
	id serial primary key, 
	Genre_id intrger references Site_features(id),
	Genre_Name  varchar(80) not null,
	Singers_in_this_genre varchar(255) not null);
	
create table if not exists Artist_list(
	id serial primary key,
	Artist_id integer references Site_features(id),
	Name varchar(255) not null,
	Alias varchar(80) not null);
	
create table if not exists List_Albums (
	id serial primary key,
	album_id integer references Artist_list(id),
	AlbumName varchar(80) not null,
	ReleaseDate varchar(80) not null);
	
create table if not exists List_Track (
	id serial primary key,
	Track_id integer references List_Albums(id),
	Track_Name varchar(80) not null,
	Track_Time varchar(80) not null);
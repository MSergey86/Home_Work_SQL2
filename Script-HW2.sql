CREATE table if not exists Genre (
    id SERIAL primary key,
    name VARCHAR(60) not NULL
);

CREATE table if not exists Artist (
    id SERIAL primary key,
    name VARCHAR(60) not NULL
);

CREATE table if not exists Genre_Artist (
    Genre_id INTEGER references Genre(id),
    Artist_id INTEGER references Artist(id),
    CONSTRAINT pk primary key (Genre_id, Artist_id)
);

CREATE table if not exists Album (
    id SERIAL primary key,
    name VARCHAR(60) not null,
    year INTEGER not NULL
);

CREATE table if not exists Artist_Album (
    Artist_id INTEGER references Artist(id),
    Album_id INTEGER references Album(id),
    CONSTRAINT pk_aa primary key (Artist_id, Album_id)
);

CREATE table if not exists Track (
    id SERIAL primary key references Album(id),
    name VARCHAR(60) not null,
    duration TIME not NULL
);

CREATE table if not exists Compilation (
    id SERIAL primary key,
    name VARCHAR(60) not null,
    year INTEGER not NULL
);

CREATE table if not exists Track_Compilation (
    Track_id INTEGER references Track(id),
    Compilation_id INTEGER references Compilation(id),
    CONSTRAINT pk_tc primary key (Track_id, Compilation_id)
);
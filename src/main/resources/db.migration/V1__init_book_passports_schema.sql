CREATE TABLE IF NOT EXISTS author (
    id bigserial primary key ,
    first_name varchar(64),
    last_name varchar(64),
    birthday date
);

CREATE TABLE IF NOT EXISTS book_passport (
    id bigserial primary key ,
    title varchar(256) ,
    author_id bigint references author (id) ON DELETE CASCADE ,
    page_count int
);


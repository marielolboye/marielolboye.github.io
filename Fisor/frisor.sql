

CREATE TABLE frisor (
  frisorid serial primary key,
  fornavn text not null,
  etternavn text not null,
  tlf text not null
);

CREATE TABLE kunde (
kundeid serial primary key,
  fornavn text not null,
  etternavn text not null,
  kjonn text default 'f',
  tlf text not null
);

CREATE TABLE klipp (
  klippid serial primary key,
  klipptime date, 
  pris int default = 1200,
  frisorid int references frisor (frisorid),
  kundeid int references kunde (kundeid)
);


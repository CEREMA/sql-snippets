create table profiles (
  id uuid references auth.users not null,
  updated_at timestamp with time zone,
  username text unique,
  first_name varchar(255),
  last_name varchar(255),
  gender varchar(255),
  ip_address varchar(50),
  company varchar(255),
  department varchar(255),
  job_title varchar(255),
  language varchar(255),
  title varchar(255),
  city varchar(255),
  country varchar(255),
  lat varchar(20),
  lon varchar(20),
  phone varchar(20),
  street_address varchar(255),
  postal_code varchar(20),
  avatar_url varchar(255),
  website varchar(255),
  primary key (id),
  unique(username),
  constraint username_length check (char_length(username) >= 3)
);

alter table profiles
  enable row level security;

comment on table profiles is 'Sample user profiles';
comment on column profiles.username is 'Username';
comment on column profiles.first_name is 'First name';
comment on column profiles.last_name is 'Last name';
comment on column profiles.gender is 'Gender';
comment on column profiles.ip_address is 'IP Address';
comment on column profiles.company is 'Company';
comment on column profiles.department is 'Department';
comment on column profiles.job_title is 'Job Title';
comment on column profiles.language is 'Language';
comment on column profiles.title is 'Title';
comment on column profiles.city is 'City';
comment on column profiles.country is 'Country';
comment on column profiles.lat is 'Latitude';
comment on column profiles.lon is 'Longitude';
comment on column profiles.phone is 'Phone';
comment on column profiles.street_address is 'Street address';
comment on column profiles.postal_code is 'Postal code';
comment on column profiles.avatar_url is 'Avatar';
comment on column profiles.website is 'Web';

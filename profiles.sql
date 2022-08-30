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
comment on table profiles.username is 'Username';
comment on table profiles.first_name is 'First name';
comment on table profiles.last_name is 'Last name';
comment on table profiles.gender is 'Gender';
comment on table profiles.ip_address is 'IP Address';
comment on table profiles.company is 'Company';
comment on table profiles.department is 'Department';
comment on table profiles.job_title is 'Job Title';
comment on table profiles.language is 'Language';
comment on table profiles.title is 'Title';
comment on table profiles.city is 'City';
comment on table profiles.country is 'Country';
comment on table profiles.lat is 'Latitude';
comment on table profiles.lon is 'Longitude';
comment on table profiles.phone is 'Phone';
comment on table profiles.street_address is 'Street address';
comment on table profiles.postal_code is 'Postal code';
comment on table profiles.avatar_url is 'Avatar';
comment on table profiles.website is 'Web';

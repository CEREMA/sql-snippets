CREATE TABLE public.langs(
    id uuid NOT NULL PRIMARY KEY DEFAULT uuid_generate_v4 (),
    title varchar(255),
    flag varchar(2),
    aka varchar(2),
    createdAt TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updatedAt TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TRIGGER set_timestamp
BEFORE UPDATE ON langs
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp();

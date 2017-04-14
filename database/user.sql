-- Table: account."user"

-- DROP TABLE account."user";

CREATE TABLE account."user"
(
  id bigserial NOT NULL,
  group_id integer NOT NULL,
  user_name character varying(32) NOT NULL,
  passwd character varying(32) NOT NULL,
  user_email character varying(64),
  user_phone character varying(11),
  user_sex character varying(1),
  CONSTRAINT user_pkey PRIMARY KEY (id),
  CONSTRAINT user_group_id_fkey FOREIGN KEY (group_id)
      REFERENCES account.user_group (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE account."user"
  OWNER TO postgres;

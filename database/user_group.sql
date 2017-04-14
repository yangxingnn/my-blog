-- Table: account.user_group

-- DROP TABLE account.user_group;

CREATE TABLE account.user_group
(
  id serial NOT NULL,
  CONSTRAINT user_group_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE account.user_group
  OWNER TO postgres;

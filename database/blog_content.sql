-- Table: data.blog_content

-- DROP TABLE data.blog_content;

CREATE TABLE data.blog_content
(
  id bigserial NOT NULL,
  content text,
  CONSTRAINT blog_content_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE data.blog_content
  OWNER TO postgres;

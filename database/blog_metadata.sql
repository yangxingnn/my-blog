-- Table: data.blog_metadata

-- DROP TABLE data.blog_metadata;

CREATE TABLE data.blog_metadata
(
  id bigserial NOT NULL,
  title character varying(256) NOT NULL,
  author character varying(64) NOT NULL,
  create_data timestamp without time zone NOT NULL,
  blog_content_id bigint NOT NULL,
  user_ip character varying(16), -- 用户发布该文章的ip
  blog_description character varying(255),
  user_id bigint,
  CONSTRAINT blog_metadata_pkey PRIMARY KEY (id),
  CONSTRAINT blog_metadata_blog_content_id_fkey FOREIGN KEY (blog_content_id)
      REFERENCES data.blog_content (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE data.blog_metadata
  OWNER TO postgres;
COMMENT ON TABLE data.blog_metadata
  IS '记录博客的元数据，如创建时间，标题，作者，关键字等';
COMMENT ON COLUMN data.blog_metadata.user_ip IS '用户发布该文章的ip';


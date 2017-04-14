-- Table: data.browse_count

-- DROP TABLE data.browse_count;

CREATE TABLE data.browse_count
(

)
WITH (
  OIDS=FALSE
);
ALTER TABLE data.browse_count
  OWNER TO postgres;
COMMENT ON TABLE data.browse_count
  IS '记录日志的浏览次数';

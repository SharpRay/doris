CREATE TABLE parquet_s3_case4 (
    col1        int NOT NULL DEFAULT "1",
    col2        VARCHAR(55) NOT NULL DEFAULT "2",
    col3        VARCHAR(25) NOT NULL DEFAULT "3",
    col4       VARCHAR(10) NOT NULL DEFAULT "4"
)ENGINE=OLAP
DUPLICATE KEY(`col1`)
COMMENT "OLAP"
DISTRIBUTED BY HASH(`col1`) BUCKETS 3
PROPERTIES (
    "replication_num" = "1"
);

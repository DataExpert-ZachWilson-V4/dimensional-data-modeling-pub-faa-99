CREATE TABLE actors_history_scd
(
    actor    VARCHAR,
    quality_class  VARCHAR,
    is_active      BOOLEAN,
    start_year     INTEGER,
    end_year       INTEGER,
    current_year INTEGER
)
    WITH
        (
        FORMAT = 'PARQUET',
        partitioning = ARRAY['current_year']
        )
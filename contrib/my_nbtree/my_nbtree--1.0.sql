/* contrib/my_nbtree/my_nbtree--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION my_nbtree" to load this file. \quit


CREATE FUNCTION my_nbtreehandler(internal)
RETURNS index_am_handler
AS 'MODULE_PATHNAME'
LANGUAGE C;

-- Access method
CREATE ACCESS METHOD my_nbtree TYPE INDEX HANDLER my_nbtreehandler;
COMMENT ON ACCESS METHOD my_nbtree IS 'my_nbtree index access method';


CREATE OPERATOR CLASS cube_ops
    DEFAULT FOR TYPE cube USING my_nbtree AS
        OPERATOR        1       < ,
        OPERATOR        2       <= ,
        OPERATOR        3       = ,
        OPERATOR        4       >= ,
        OPERATOR        5       > ,
        FUNCTION        1       cube_cmp(cube, cube);
   
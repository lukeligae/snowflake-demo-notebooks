/*
This scripts file can't run in Worksheet.
The line "{% set env = 'dev' %}" will throww  Syntax error: unexpected '%'.

1. If use the set the Jinja variable with Jinja syntax, {% set env='dev' %}
   It can't run in worksheet, and it will throw  Syntax error: unexpected '%'.

2.  If use the set the Jinja variable with SQL syntax, SET env = 'dev';
    It can run in worksheeet without error  but the Jinja variable vaule will not be replaced.
    

*/

{% set env='dev' %}
--SET env = 'dev';

SELECT 'CREATE DATABASE  DB_{{env}};' as COL
UNION ALL
SELECT 'CREATE SCHEMA  SCHEMA_{{env}};' AS COL;

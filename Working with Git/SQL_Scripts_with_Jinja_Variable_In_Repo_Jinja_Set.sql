/*
This scripts file can t' run in Worksheet.
The line "{% set env = 'dev' %}" will throww  Syntax error: unexpected '%'.
*/

{% set env = 'dev' %}

SELECT 'CREATE DATABASE  DB_{{env}};'

SELECT 'CREATE SCHEMA  SCHEMA_{{env}};'

CREATE ROLE procurement_app LOGIN PASSWORD 'procurement_local';
CREATE DATABASE procurement_db OWNER procurement_app;
REVOKE CONNECT ON DATABASE procurement_db FROM PUBLIC;

\connect procurement_db
SET ROLE procurement_app;
\i /opt/erp/master.sql

CREATE ROLE rumbo_migrator LOGIN PASSWORD 'local-migrator';
CREATE ROLE rumbo_backend_app LOGIN PASSWORD 'local-backend';
CREATE ROLE rumbo_agent_app LOGIN PASSWORD 'local-agent';
CREATE DATABASE rumbo OWNER rumbo_migrator;
\connect rumbo
CREATE EXTENSION IF NOT EXISTS vector;

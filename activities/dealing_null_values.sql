USE employees;

SELECT * from titles WHERE to_date IS NULL;

SELECT * FROM information_schema.PLUGINS; -- permite acessa tabelas de outros schemas

SELECT * FROM information_schema.PLUGINS WHERE PLUGIN_LIBRARY IS NULL;

SELECT * FROM information_schema.PLUGINS WHERE PLUGIN_LIBRARY IS NOT NULL;
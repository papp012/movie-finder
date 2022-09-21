FROM postgres:14.5-alpine
COPY ./database-schema/init-db.sql /docker-entrypoint-initdb.d/init_db.sql

ENV POSTGRES_USER=${PSQL_USER}
ENV POSTGRES_PASSWORD=${PSQL_PASSWORD}
ENV POSTGRES_DB=${PSQL_DB}

EXPOSE 5432



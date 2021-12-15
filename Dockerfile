FROM postgres 
ENV POSTGRES_PASSWORD postgres 
ENV POSTGRES_DB testdb 
COPY initial.sql /docker-entrypoint-initdb.d

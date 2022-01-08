#for copying data out of postgres
#docker exec -it postgres_run sh -c "cd /var/lib/postgresql/data/; tar -czvf postgres_db_data.tar.gz pgdata"
#docker cp postgres_run:/var/lib/postgresql/data/postgres_db_data.tar.gz postgres_db_data.tar.gz

docker stop postgres_run
docker stop asp_run
docker stop node_run

docker rm postgres_run
docker rm asp_run
docker rm node_run

docker network rm giggaslave-net
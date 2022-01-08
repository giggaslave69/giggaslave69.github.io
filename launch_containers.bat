docker build -t postgres-img -f ./Dockerfile-Postgres .
docker build -t node-img -f ./Dockerfile-NodeJS
docker build -t asp-img -f ./Dockerfile-AspNet

docker network create giggaslave-net

docker run -d --net giggaslave-net --hostname gigga-postgres -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres1234 -e POSTGRES_DB=default_db -e PGDATA=/var/lib/postgresql/data/pgdata -p 5432:5432 --user postgres:postgres --name postgres_run postgres-img
docker run -d --net giggaslave-net --hostname gigga-asp --name asp_run asp-img
docker run -d --net giggaslave-net --hostname gigga-node --name node_run node-img
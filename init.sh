docker network create --driver bridge --gateway 172.20.0.1 --subnet "172.20.0.0/16" osanpo-bridge

docker pull mysql:8.9

docker volume create -d local mysql-volume-master-01
docker volume create -d local mysql-volume-master-02
docker volume create -d local mysql-volume-slave-01
docker volume create -d local mysql-volume-slave-02
docker volume create -d local mysql-volume-slave-03

docker create 
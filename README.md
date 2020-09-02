Docker Swarm Wordpress Example 
=====================


## Create Secrets
```
echo "<yourpassword>" | docker secret create MYSQL_PASSWORD -
o7cyxkav03kgzdoczbbp2cp8c

echo "<yourusername>" | docker secret create MYSQL_USER -
2tl85z6wqxekpd6kjwxn1ujc0

docker secret ls
ID                          NAME                DRIVER              CREATED             UPDATED
o7cyxkav03kgzdoczbbp2cp8c   MYSQL_PASSWORD                          5 minutes ago       5 minutes ago
2tl85z6wqxekpd6kjwxn1ujc0   MYSQL_USER                              29 seconds ago      29 seconds ago

```

### OR Use a Script
```
.\create-secrets.sh

docker secret ls
ID                          NAME                DRIVER              CREATED             UPDATED
o7cyxkav03kgzdoczbbp2cp8c   MYSQL_PASSWORD                          5 minutes ago       5 minutes ago
2tl85z6wqxekpd6kjwxn1ujc0   MYSQL_USER                              29 seconds ago      29 seconds ago

```

## Deploy Using Compose File

```

docker stack deploy -c docker-compose.yml myapp

```
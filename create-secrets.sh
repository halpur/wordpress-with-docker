echo "<yourpassword>" | docker secret create MYSQL_PASSWORD -
echo "<yourusername>" | docker secret create MYSQL_USER -
docker secret ls
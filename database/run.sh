#!/bin/sh
docker start florianc04/counter-database 1> /dev/null 2> /dev/null
if [ $? -ne 0 ]; then
  docker run -p 5432:5432 --name florianc04/counter-database -d -t --restart unless-stopped florianc04/counter-database
echo "Start successful"

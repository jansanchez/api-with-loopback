#! /bin/bash

	docker-compose up -d mysql
	echo "Running Mysql..."
	sleep 15
	echo "all Done."
	docker exec mysql_1 /usr/bin/mysqldump -u root --password=123456 frontend_wp > ./db/bk/wsa-bk.sql
	docker-compose stop mysql
	docker-compose down

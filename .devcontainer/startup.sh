# Set up the initial database

for i in $(seq 1 30); do
      if mysql -h 127.0.0.1 -uroot -pmariadb -e ";" ; then
            mysql -h 127.0.0.1 -uroot -pmariadb < .devcontainer/setup-mariadb.sql &&
            mysql -h 127.0.0.1 -uroot -pmariadb < .devcontainer/H_Plus_Sports_MySQL.sql &&
            echo "Database is set up" &&
            break
      fi
      sleep 1
      echo Waiting for db: $i
done

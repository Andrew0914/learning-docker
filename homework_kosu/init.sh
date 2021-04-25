#!/bin/bash
while ! pg_isready -q -h $PGHOST -p $PGPORT -U $PGUSER
do
  echo "$(date) - waiting for database to start ⏳"
  sleep 2
done

#if [[ -z `psql -Atqc "\\list $PGDATABASE"` ]]; then
  echo "Database $PGDATABASE does not exist. Creating...🐘"
  mix ecto.create
  mix ecto.migrate
  mix atama.seed 
  echo "Database $PGDATABASE created. ✅"
  exec mix phx.server
#fi

echo "FINISH ✨"
# Just start the Rails app, webpack dev server and Postgres DB
start_core:
	docker-compose up --no-deps app db

# Start up all services (beware if you running this on a computer with less than 16GB RAM!)
start_all:
	docker-compose up

webpack_dev_server:
	docker exec -it app bin/webpack-dev-server

bash_console:
	docker exec -it app bash

# Starts up a rails console in the app container
rails_console:
	docker exec -it app rails c

# Starts up a guard console in the app container
guard_console:
	docker exec -it app guard

# Starts up a mongo console in the mongo container
mongo_console:
	docker exec -it mongo mongo -u oscar -p 123456789 oscar_history_development

# Starts up a psql console in the db container
psql_console:
	docker exec -it db psql -U oscar oscar_development

# Drop the postgres database (if error retry as db service needs to start first)
db_drop:
	docker-compose run --entrypoint "rake db:drop" app db

# Create test database (run `make start_core` at least first!)
db_create_test:
	docker-compose run --no-deps -e RAILS_ENV=test --entrypoint "rake db:drop" app
	docker-compose run --no-deps -e RAILS_ENV=test --entrypoint "rake db:create" app
	docker-compose run --no-deps -e RAILS_ENV=test --entrypoint "rake db:schema:load" app

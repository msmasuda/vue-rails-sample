run.server:
	bundle exec rails server -b 0.0.0.0

run.web:
	cd ./front_end && yarn dev
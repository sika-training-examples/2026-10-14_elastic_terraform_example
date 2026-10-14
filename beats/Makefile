filebeat-my-app:
	slu loggen --json --log-prefix my-app | \
		filebeat -e -c $(shell pwd)/my_app.yml \
			--path.data $(shell pwd)/.tmp/my_app \
			--path.home $(shell pwd)/.tmp/my_app \
			--path.logs $(shell pwd)/.tmp/my_app

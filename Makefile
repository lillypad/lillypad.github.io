.PHONY: all

all: deps bootstrap

deps:
	npm install

bootstrap:
	cp -r node_modules/bootstrap/dist/ lib/bootstrap/

clean:
	rm -f package-lock.json
	rm -rf node_modules/
	cd lib/ && \
		rm -rf bootstrap/

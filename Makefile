.PHONY: all

all: deps install

deps:
	npm install

install:
	cp -r node_modules/bootstrap/dist/ lib/bootstrap/
	cp -r node_modules/popper.js/dist/ lib/popper.js/
	cp -r node_modules/jquery/dist/ lib/jquery/

clean:
	rm -f package-lock.json
	rm -rf node_modules/
	cd lib/ && \
		rm -rf bootstrap/ && \
		rm -rf popper.js/ && \
		rm -rf jquery/

.PHONY: all

all: deps qrcode

deps:
	npm install
	cp -r node_modules/bootstrap/dist/ lib/bootstrap/
	cp -r node_modules/popper.js/dist/ lib/popper.js/
	cp -r node_modules/jquery/dist/ lib/jquery/

qrcode:
	cd pages/contact/ && \
		cat contact.vcf | qrencode -o img/contact.png

clean:
	rm -f package-lock.json
	rm -rf node_modules/
	rm -f pages/contact/img/contact.png
	cd lib/ && \
		rm -rf bootstrap/ && \
		rm -rf popper.js/ && \
		rm -rf jquery/

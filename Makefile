.PHONY: all
.PHONY: resume

all: deps qrencode resume site

deps:
	npm install
	cd node_modules/ && \
		git clone https://github.com/konpa/devicon.git
	mkdir -p assets/lib/devicon/
	cp node_modules/devicon/*.css assets/lib/devicon/
	cp -r node_modules/devicon/fonts/ assets/lib/devicon/fonts/
	cp -r node_modules/devicon/icons/ assets/lib/devicon/icons/
	cp -r node_modules/bootstrap/dist/ assets/lib/bootstrap/
	cp -r node_modules/popper.js/dist/ assets/lib/popper.js/
	cp -r node_modules/jquery/dist/ assets/lib/jquery/
	cp -r node_modules/typed.js/lib/ assets/lib/typed.js/

qrencode:
	cat assets/vcf/contact.vcf | qrencode -o assets/pages/contact/img/contact.png

resume:
	cd resume/ && \
		pdflatex resume.tex && \
		mkdir -p ../assets/pdf/ && \
		mv resume.pdf ../assets/pdf/resume.pdf

site:
	jekyll build

clean:
	cd resume/ && \
		rm -f *.aux && \
		rm -f *.log
	rm -f assets/pages/contact/img/contact.png
	rm -f package-lock.json
	rm -rf node_modules/
	rm -rf _site/
	cd assets/lib/ && \
		rm -rf bootstrap/ && \
		rm -rf popper.js/ && \
		rm -rf jquery/ && \
		rm -rf devicon/

.PHONY: all
.PHONY: resume

all: deps resume site

deps:
	npm install
	cp -r node_modules/bootstrap/dist/ assets/lib/bootstrap/
	cp -r node_modules/popper.js/dist/ assets/lib/popper.js/
	cp -r node_modules/jquery/dist/ assets/lib/jquery/

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
	rm -f package-lock.json
	rm -rf node_modules/
	rm -rf _site/
	cd assets/lib/ && \
		rm -rf bootstrap/ && \
		rm -rf popper.js/ && \
		rm -rf jquery/

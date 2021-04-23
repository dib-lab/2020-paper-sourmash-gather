all: build

build: .PHONY
	bash build/build.sh
	manubot webpage

serve:
	manubot webpage
	cd webpage/ && python -m http.server

.PHONY:

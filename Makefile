all: build

build: .PHONY
	bash build/build.sh

serve:
	manubot webpage
	cd webpage/ && python -m http.server

.PHONY:

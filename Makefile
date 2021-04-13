
export=docker run -v $(PWD):/app grafana/tanka:0.15.0@sha256:f13a9667bef3bf30296347381aa2a29860c5f3c2a68ba506ca5b3dbb184bdcbe export

build: with-selector without-selector

.PHONY: without-selector
without-selector:
	rm -fr $@
	$(export) without-selector environments/default

.PHONY: with-selector
with-selector:
	rm -fr $@
	$(export) --selector 'app=helloworld' with-selector environments/default

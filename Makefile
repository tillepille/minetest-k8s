build-client-desktop:
	docker build -t tillepille/minetest-client:latest -f client/Dockerfile.desktop .

build-client-direct:
	docker build -t tillepille/minetest-client:latest -f client/Dockerfile.direct .

precompile:
	helm template minetest charts/minetest

lint:
	helm lint charts/minetest

test-chart:
	helm template minetest charts/minetest | kubeval
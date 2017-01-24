docker build -t udif/cae-build-base dockerfiles/cae-build-base
if x%1x == xiverilogx (
	docker build -t udif/icarus-win dockerfiles/icarus-win
	docker create --name icarus_win udif/icarus-win
	docker cp icarus_win:/zip .
	docker rm icarus_win
)
if x%1x == xyosysx (
	docker build -t udif/yosys-win dockerfiles/yosys-win
	docker create --name yosys_win udif/yosys-win
	docker cp yosys_win:/zip .
	docker rm yosys_win
)
if x%1x == xarachnex (
	docker build -t udif/arachne-win dockerfiles/arachne-win
	docker create --name arachne_win udif/arachne-win
	docker cp arachne_win:/zip .
	docker rm arachne_win
)
if x%1x == xcleanx (
	docker rm icarus_win
	docker rm yposys_win
	docker rm arachne_win
	docker rmi udif/icarus-win
	docker rmi udif/yosys-win
	docker rmi udif/arachne-win
	docker rmi udif/cae-build-base
)

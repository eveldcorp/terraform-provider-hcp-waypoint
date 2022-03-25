name = marketo
organization = hashicorp
version = 0.1.0

.PHONY: example

build:
	go build -o bin/terraform-provider-$(name)_v$(version)

install: build 
	mkdir -p ~/.terraform.d/plugins/local/$(organization)/$(name)/$(version)/linux_amd64
	mv bin/terraform-provider-$(name)_v$(version) ~/.terraform.d/plugins/local/$(organization)/$(name)/$(version)/linux_amd64/

example:
	cd $(PWD)/example ; \
	rm .terraform.lock.hcl || true ; \
	terraform init ; \
	terraform plan

protos:
	protoc --go_out=. --go_opt=paths=source_relative \
    --go-grpc_out=./waypoint --go-grpc_opt=paths=source_relative \
    waypoint/server.proto
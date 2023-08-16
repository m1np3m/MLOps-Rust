install:
	# Install if needed
	@echo "Updating rust toolchain"
	cargo clean &&\
	cargo build -j 6

rust-version:
	@echo "Rust command-line utility versions:"
	rustc --version 			#rust compiler
	cargo --version 			#rust package manager
	rustfmt --version			#rust code formatter
	rustup --version			#rust toolchain manager
	clippy-driver --version		#rust linter

format:
	@echo "Formatting all projects with cargo"
	./format.sh

lint:
	@echo "Linting all projects with cargo"
	@rustup component add clippy 2> /dev/null
	./lint.sh

test:
	@echo "Testing all projects with cargo"
	./test.sh

build-image:
	@echo "Building docker image"
	docker build -t rust-mlops .

run-image:
	@echo "Running docker image"
	docker run -it --rm rust-mlops

run:
	cargo run

release:
	cargo build --release

all: install format lint test
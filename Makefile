install:
	# Install if needed
	@echo "Updating rust toolchain"
	rustup update stable
	rustup default stable

format:
	@echo "Formatting all projects with cargo"

lint:
	@echo "Linting all projects with cargo"

build:
	cargo build --verbose

test:
	@echo "Testing all projects with cargo"
	cargo test --verbose

check-gpu-linux:
	sudo lshw -C display

all: format lint build test
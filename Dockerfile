FROM rust:1.70-buster as builder
WORKDIR /usr/src/app
COPY . .
RUN cargo build --release

FROM gcr.io/distroless/cc-debian11
COPY --from=builder /usr/src/app/target/release/hello_cargo .
CMD ["./hello_cargo"]


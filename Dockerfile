FROM debian:bookworm-20240926 AS devcontainer

ARG RUST_VERSION=1.80.0

# Install Rust and gcc
RUN <<EOF bash -ex
apt-get update -y
apt-get install -y --no-install-recommends curl=7.88.1-10+deb12u7 ca-certificates=20230311
EOF
RUN <<EOF bash -ex
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain ${RUST_VERSION}
apt install -y --no-install-recommends gcc=4:12.2.0-3 libc6-dev=2.36-9+deb12u8
rm -rf /var/lib/lists
EOF

RUN <<EOF bash -ex
source "$HOME/.cargo/env"
rustc --version
cargo --version
EOF

# USER nobody
# ENTRYPOINT ["ls"]

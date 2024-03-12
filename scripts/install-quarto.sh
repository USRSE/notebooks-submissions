#!/bin/bash
set -e
set -o pipefail

QUARTO_RELEASE="${1:-1.4.550}"

INSTALL_DIR="$HOME/opt/quarto"
BIN_DIR="$HOME/.local/bin"
filename="quarto-${QUARTO_RELEASE}-linux-amd64.tar.gz"

mkdir -p "$INSTALL_DIR" "$BIN_DIR"
wget --quiet "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_RELEASE}/${filename}"
ls -lth "$filename"
tar -C "$INSTALL_DIR" -xzf "$filename"
ls -lth "$INSTALL_DIR"
rm "$filename"
ln -s "${INSTALL_DIR}/quarto-${QUARTO_RELEASE}/bin/quarto" "${BIN_DIR}/quarto"
which -a quarto
quarto check

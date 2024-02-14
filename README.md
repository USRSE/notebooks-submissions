# Example submission

## Installation

```bash
pushd "$(mktemp -d)"
QUARTO_RELEASE="1.3.361"
INSTALL_DIR="$HOME/opt/quarto"
BIN_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR" "$BIN_DIR"
wget "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_RELEASE}/quarto-${QUARTO_RELEASE}-linux-amd64.tar.gz"
tar -C "$INSTALL_DIR" -xvzf "quarto-${QUARTO_RELEASE}-linux-amd64.tar.gz"
ln -s "${INSTALL_DIR}/quarto-${QUARTO_RELEASE}/bin/quarto" "${BIN_DIR}/quarto"
which -a quarto
quarto check
popd
```

## Compiling document

```bash
git clone https://github.com/USRSE/jupyter-notebook-templates && cd jupyter-notebook-templates
git checkout reproducible-document
ls -l
quarto render reproducible_document_template.ipynb --to html
```

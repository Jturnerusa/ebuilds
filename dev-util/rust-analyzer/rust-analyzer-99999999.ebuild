# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES=""

inherit cargo git-r3

DESCRIPTION="A language server for the Rust programming language"
HOMEPAGE="https://rust-analyzer.github.io/"
EGIT_REPO_URI="https://github.com/rust-analyzer/rust-analyzer"
EGIT_BRANCH="master"
EGIT_CHECKOUT_DIR="${WORKDIR}/${PN}"
S="${EGIT_CHECKOUT_DIR}"

LICENSE="0BSD Apache-2.0 Artistic-2 BSD Boost-1.0 CC0-1.0 ISC MIT Unlicense ZLIB"
SLOT="0"

BDEPEND="${BDEPEND}
	>=dev-lang/rust-1.55.0"

RESTRICT="test"
DOCS=( README.md PRIVACY.md )

src_unpack() {
	git-r3_src_unpack
	cargo_live_src_unpack
}

src_configure() {
	cargo_src_configure --no-default-features
}

src_compile () {
	cargo_src_compile --manifest-path "${S}"/crates/${PN}/Cargo.toml
}

src_install() {
	cargo_src_install --path "${S}"/crates/${PN}
}

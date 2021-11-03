# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

NEED_EMACS="26.1"

inherit elisp

if [[ ${PV} = 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/joaotavora/eglot"
	EGIT_BRANCH="master"
	EGIT_CHECKOUT_DIR="${WORKDIR}/${P}"
	S="${EGIT_CHECKOUT_DIR}"
else
	SRC_URI="https://github.com/joaotavora/eglot/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

DESCRIPTION="A minimal Emacs LSP client"
HOMEPAGE="https://github.com/joaotavora/eglot"

LICENSE="GPL-3"
SLOT="0"
# test requires internet connection to install several language servers, one of which
# is not packaged
RESTRICT="test"

SITEFILE="50${PN}-gentoo.el"
ELISP_REMOVE="eglot-tests.el"
DOCS=( README.md NEWS.md )

src_install() {
	elisp-make-autoload-file "${S}"/${PN}-autoload.el "${S}"/
	elisp_src_install
}

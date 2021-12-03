# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit elisp git-r3

DESCRIPTION="Highlighting indentation for Emacs"
HOMEPAGE="https://github.com/antonj/Highlight-Indentation-for-Emacs"

EGIT_REPO_URI="https://github.com/antonj/Highlight-Indentation-for-Emacs/"
EGIT_BRANCH="master"
EGIT_CHECKOUT_DIR="${WORKDIR}/${P}"
S="${EGIT_CHECKOUT_DIR}"

LICENSE="GPL-2+"
SLOT="0"

SITEFILE="50highlight-indentation-gentoo.el"
DOCS=( README.org )

src_compile() {
	elisp-make-autoload-file "${S}"/${PN}-autoload.el "${S}"/
	elisp_src_compile
}

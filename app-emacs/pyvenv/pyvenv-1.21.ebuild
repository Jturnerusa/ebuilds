# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit elisp

DESCRIPTION="Python virtual environment support for Emacs"
HOMEPAGE="https://github.com/jorgenschaefer/pyvenv"
SRC_URI="https://github.com/jorgenschaefer/pyvenv/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="test" # test requires cast and ert runner which are not packaged yet
SITEFILE="50pyvenv-gentoo.el"
DOCS=( README.md )

src_compile() {
	elisp-make-autoload-file "${S}"/${PN}-autoload.el "${S}"/
	elisp_src_compile
}

# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

NEED_EMACS="26.1"

inherit elisp

DESCRIPTION="A simple alternative to read-string that allows reading input via a small child-frame spawned at the position of the cursor."
HOMEPAGE="https://github.com/Alexander-Miller/cfrs"
SRC_URI="https://github.com/Alexander-Miller/cfrs/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=">=app-emacs/dash-2.11.0
>=app-emacs/posframe-0.8.5
>=app-emacs/s-1.10.0"
RDEPEND="${DEPEND}"

SITEFILE="50cfrs-gentoo.el"
DOCS=( README.org )

src_compile() {
	elisp-make-autoload-file "${S}/${PN}-autoload.el" "${S}/"
	elisp_src_compile
}

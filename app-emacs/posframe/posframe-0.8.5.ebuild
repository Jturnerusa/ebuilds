# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

NEED_EMACS="27"

inherit elisp

DESCRIPTION="Pop a postframe at point."
HOMEPAGE="https://github.com/tumashu/posframe"
SRC_URI="https://github.com/tumashu/posframe/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=">=app-editors/emacs-27[gtk]"

SITEFILE="50${PN}-gentoo.el"
DOCS=( README.md )

src_compile() {
	elisp-make-autoload-file "${S}/${PN}-autoload.el" "${S}/"
	elisp_src_compile
}

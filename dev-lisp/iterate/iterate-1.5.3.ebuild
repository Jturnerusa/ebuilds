# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit common-lisp-3

DESCRIPTION="Common lisp iteration library"
HOMEPAGE="https://common-lisp.net/project/iterate/"
SRC_URI="https://gitlab.common-lisp.net/iterate/iterate/-/archive/${PV}/${P}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

src_prepare() {
	rm -rf "${S}/doc/examples"
	default
}

src_configure() {
	return
}

# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit common-lisp-3

DESCRIPTION="Convert strings between camelCase, param-case, snake_case and more"
HOMEPAGE="https://github.com/rudolfochrist/cl-change-case"
SRC_URI="https://github.com/rudolfochrist/cl-change-case/archive/refs/tags/${PV}.tar.gz
	-> ${P}.tar.gz"

LICENSE="LLGPL-2.1"
SLOT=0
KEYWORDS="~amd64"

RDEPENDS="dev-lisp/cl-ppcre
	dev-lisp/cl-ppcre-unicode"

PATCHES=(
	"${FILESDIR}/remove-uiop-read-file-from-asd.patch"
)

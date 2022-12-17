# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit common-lisp-3

DESCRIPTION="Modern, simple and consistent Common Lisp string manipulation library"
HOMEPAGE="https://vindarel.github.io/cl-str/"
SRC_URI="https://github.com/vindarel/cl-str/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT=0
KEYWORDS="~amd64"

RDEPEND="dev-lisp/cl-ppcre
	dev-lisp/cl-ppcre-unicode
	dev-lisp/cl-change-case"

# This patch can be removed on >cl-str-0.19 since
# the issue was fixed upstream.
PATCHES=(
	"${FILESDIR}/remove-uiop-read-from-asd-file.patch"
)

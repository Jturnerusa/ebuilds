# Copyright 2021-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit elisp

DESCRIPTION="Modern on-the-fly syntax checking extension for GNU Emacs"
HOMEPAGE="https://www.flycheck.org/ https://github.com/flycheck/flycheck/"
COMMIT="d2c0ec52dd16d7b16f6789e207122d78a3530775"
SRC_URI="https://github.com/flycheck/flycheck/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${COMMIT}"

KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~ppc64 ~riscv ~sparc ~x86 ~x64-macos"
LICENSE="GPL-3+"
SLOT="0"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND=""
BDEPEND="
	test? (
		app-emacs/buttercup
		app-emacs/shut-up
	)
"

ELISP_REMOVE="
	test/specs/test-documentation.el
	test/specs/test-melpa-package.el
"

SITEFILE="50${PN}-gentoo-r1.el"
DOCS=( CHANGES.rst README.md )

src_compile() {
	elisp-compile "${PN}.el"
	elisp-make-autoload-file
}

src_install() {
	elisp-install "${PN}" ${PN}.el{,c} "${PN}-autoloads.el"
	elisp-site-file-install "${FILESDIR}/${SITEFILE}"
	einstalldocs
}

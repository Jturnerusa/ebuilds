# Copyright 2021-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

NEED_EMACS="24.3"

inherit elisp

DESCRIPTION="Modern on-the-fly syntax checking extension for GNU Emacs"
HOMEPAGE="https://www.flycheck.org/"
COMMIT=5f2ef177cb21ae8b73714575802beef04abd0f5e
SRC_URI="https://github.com/flycheck/flycheck/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${COMMIT}"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="test" # test requires cask and ert-runner which are not packaged yet

RDEPEND=">=app-emacs/dash-2.12.1"

SITEFILE="50${PN}-gentoo.el"
PATCHES=( ${FILESDIR}/${P}-no-pkg-info.diff )
DOCS=( README.md )
ELISP_REMOVE="flycheck-buttercup.el flycheck-ert.el"

src_compile() {
	elisp_src_compile
	elisp-make-autoload-file
}

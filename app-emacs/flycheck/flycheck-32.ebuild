# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

NEED_EMACS="24.3"

inherit elisp

if [[ ${PV} = "9999" ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/flycheck/flycheck"
	EGIT_BRANCH="master"
	EGIT_CHECKOUT_DIR="${WORKDIR}/${PN}"
	S="${EGIT_CHECKOUT_DIR}"
else
	if [[ ${PV} = *_p* ]]; then
		COMMIT="784f184cdd9f9cb4e3dbb997c09d93e954142842"
		SRC_URI="https://github.com/flycheck/flycheck/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
		S="${WORKDIR}/${PN}-${COMMIT}"
	else
		SRC_URI="https://github.com/flycheck/flycheck/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
	fi
	KEYWORDS="~amd64"
fi

DESCRIPTION="Modern on-the-fly syntax checking extension for GNU Emacs"
HOMEPAGE="https://www.flycheck.org/"

LICENSE="GPL-3"
SLOT="0"
RESTRICT="test" # test requires cask and ert-runner which are not packaged yet

RDEPEND=">=app-emacs/dash-2.12.1
	>=app-emacs/pkg-info-0.4"

SITEFILE="50${PN}-gentoo.el"
DOCS=( README.md )
ELISP_REMOVE="flycheck-buttercup.el flycheck-ert.el"

src_compile() {
	elisp-make-autoload-file "${S}"/${PN}-autoload.el "${S}"/
	elisp_src_compile
}

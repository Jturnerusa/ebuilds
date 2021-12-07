# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

NEED_EMACS="26.1"

inherit elisp

if [[ ${PV} = "9999" ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/emacs-lsp/lsp-ui"
	EGIT_BRANCH="master"
	EGIT_CHECKOUT_DIR="${WORKDIR}/${P}"
	S="${EGIT_CHECKOUT_DIR}"
else
	SRC_URI="https://github.com/emacs-lsp/lsp-ui/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

DESCRIPTION="lsp-mode UI integrations"
HOMEPAGE="https://emacs-lsp.github.io/lsp-ui/"

LICENSE="GPL-3+"
SLOT="0"

DEPEND=">=app-emacs/lsp-mode-6
	>=app-emacs/dash-2.18.0
	>=app-emacs/markdown-mode-2.3"
RDEPEND="${DEPEND}"

SITEFILE="50lsp-ui-gentoo.el"
RESTRICT="test" # test requires ert-runner which is not packaged

src_install() {
	elisp-make-autoload-file "${S}"/${PN}-autoload.el "${S}"/
	elisp_src_install
}

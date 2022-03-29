# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

NEED_EMACS="26.1"

inherit elisp optfeature

if [[ ${PV} = "9999" ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/emacs-lsp/lsp-mode"
	EGIT_BRANCH="master"
	EGIT_CHECKOUT_DIR="${WORKDIR}/${P}"
	S="${EGIT_CHECKOUT_DIR}"
else
	SRC_URI="https://github.com/emacs-lsp/lsp-mode/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

DESCRIPTION="Emacs client/library for the Language Server Protocol"
HOMEPAGE="https://emacs-lsp.github.io/lsp-mode/"

LICENSE="GPL-3+"
SLOT="0"

RDEPEND="
	>=app-emacs/dash-2.18.0
	>=app-emacs/f-0.20.0
	>=app-emacs/ht-2.3
	>=app-emacs/lv-0.15.0
	>=app-emacs/markdown-mode-2.3
	>=app-emacs/spinner-1.7.3
"
DEPEND="${RDEPEND}"

SITEFILE="50${PN}-gentoo.el"
DOCS=( README.md CHANGELOG.org )
RESTRICT="test" # test requires ert-runner which is not packaged

BYTECOMPFLAGS="${BYTECOMPFLAGS} -L ${S}/clients/"

src_compile() {
	elisp-compile "${S}"/*.el "${S}"/clients/*.el
	elisp-make-autoload-file "${S}"/${PN}-autoload.el "${S}"/
}

src_install() {
	elisp-install ${PN} *.el *.elc
	elisp-install ${PN}/clients "${S}"/clients/{*.el,*.elc}
	elisp-site-file-install ${FILESDIR}/${SITEFILE}
}

pkg_postinst() {
	elisp_pkg_postinst
	optfeature "lsp-mode UI integration" app-emacs/lsp-ui
	optfeature "on the fly diagnostics" app-emacs/flycheck
	optfeature "code completion" app-emacs/company-mode
	optfeature "helm integration" app-emacs/helm
	optfeature "projectile integration" app-emacs/projectile
}

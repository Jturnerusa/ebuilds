# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

NEED_EMACS="26.3"

inherit elisp

DESCRIPTION="A minimal Emacs LSP client for GNU Emacs"
HOMEPAGE="https://github.com/joaotavora/eglot/
	https://elpa.gnu.org/packages/eglot.html"
if [[ ${PV} = *9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/alphapapa/plz.el"
else
	SRC_URI="https://github.com/alphapapa/plz.el/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
	S="${WORKDIR}/plz.el-${PV}"
fi

LICENSE="GPL-3+"
SLOT="0"

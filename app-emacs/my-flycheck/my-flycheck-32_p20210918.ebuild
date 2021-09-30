# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

NEED_EMACS="24.3"

inherit elisp

DESCRIPTION="Modern on-the-fly syntax checking extension for GNU Emacs"
HOMEPAGE="https://www.flycheck.org/"
SRC_URI="${P}.el"
MY_PN="flycheck"
MY_P="${MY_PN}-${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="test mirror fetch" # test requires cask and ert-runner which are not packaged yet

SITEFILE="50${PN}-gentoo.el"

src_unpack() {
	mkdir "${WORKDIR}/${P}"
	cp "${DISTDIR}/${P}.el" "${S}/${MY_PN}.el"
}

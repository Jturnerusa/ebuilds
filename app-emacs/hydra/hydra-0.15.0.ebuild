# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

NEED_EMACS="24.3"

inherit elisp

DESCRIPTION="A package for GNU Emacs that can be used to tie related commands \
into a family of short bindings with a common prefix - a Hydra."
HOMEPAGE="https://github.com/abo-abo/hydra"
SRC_URI="https://github.com/abo-abo/hydra/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=">=app-emacs/lv-0.15.0"
DEPEND="${RDEPEND}"

SITEFILE="50hydra-gentoo.el"
DOCS=( README.md doc/Changelog.org )
ELISP_REMOVE="hydra-examples.el hydra-ox.el lv.el"

src_compile() {
	elisp-make-autoload-file "${S}/${PN}-autoload.el" "${S}/"
	elisp_src_compile
}

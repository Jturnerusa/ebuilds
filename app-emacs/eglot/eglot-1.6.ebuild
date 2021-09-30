EAPI=7

inherit elisp

DESCRIPTION="Minimal Emacs LSP client"
HOMEPAGE="https://github.com/joaotavora/eglot"
SRC_URI="https://github.com/joaotavora/eglot/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="test mirror"

SITEFILE="50${PN}-gentoo.el"
ELISP_REMOVE="eglot-tests.el"
DOCS="README.md NEWS.md"

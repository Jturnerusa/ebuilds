# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit elisp

DESCRIPTION="Highlighting indentation for Emacs"
# The latest github release is from 2015, but the latest commit is from Feb 2021,
# so I think it’s a good idea to use a snapshot here.
MY_COMMIT="d88db4248882da2d4316e76ed673b4ac1fa99ce3"
HOMEPAGE="https://github.com/antonj/Highlight-Indentation-for-Emacs"
SRC_URI="https://github.com/antonj/Highlight-Indentation-for-Emacs/archive/${MY_COMMIT}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/Highlight-Indentation-for-Emacs-${MY_COMMIT}"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"

SITEFILE="50highlight-indentation-gentoo.el"
DOCS=( README.org )

src_compile() {
	elisp-make-autoload-file "${S}"/${PN}-autoload.el "${S}"/
	elisp_src_compile
}

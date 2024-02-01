# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit elisp

DESCRIPTION="Major mode for editing NASM assembly programs"
HOMEPAGE="https://github.com/skeeto/nasm-mode"
COMMIT="65ca6546fc395711fac5b3b4299e76c2303d43a8"
SRC_URI="https://github.com/skeeto/nasm-mode/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${COMMIT}"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~amd64"

SITEFILE="50${PN}-gentoo.el"

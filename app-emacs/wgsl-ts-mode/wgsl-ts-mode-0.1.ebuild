# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit elisp

DESCRIPTION="Tree sitter mode for WGSL"
HOMEPAGE="https://github.com/Jturnerusa/wgsl-ts-mode"
SRC_URI="https://github.com/Jturnerusa/wgsl-ts-mode/archive/refs/tags/v0.1.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

SITEFILE="50${PN}-gentoo.el"

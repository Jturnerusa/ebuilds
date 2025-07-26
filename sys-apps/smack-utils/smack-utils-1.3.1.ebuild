# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools

DESCRIPTION="Smack userspace "
HOMEPAGE="https://github.com/smack-team/smack"
SRC_URI="https://github.com/smack-team/smack/archive/refs/tags/v1.3.1.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/smack-${PV}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

src_prepare() {
   default
   eautoreconf
}

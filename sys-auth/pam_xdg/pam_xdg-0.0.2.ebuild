# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="A pam module to create XDG runtime directories."
HOMEPAGE="https://jturnerusa.dev/gitweb/?p=pam_xdg;a=summary"
SRC_URI="https://jturnerusa.dev/cgit/pam_xdg/snapshot/${P}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-db/sqlite"
RDEPEND="${DEPEND}"

src_configure() {
	local emesonargs=(--prefix=/ --libdir=$(get_libdir))
	meson_src_configure
}

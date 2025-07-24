# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="A pam module to create XDG runtime directories."
HOMEPAGE="https://jturnerusa.dev/gitweb/?p=pam_xdg;a=summary"
HASH="432cd2fe2f2e33b2cc8bec60246ea59b7e2210f9"
SRC_URI="https://jturnerusa.dev/gitweb/?p=pam_xdg;a=snapshot;h=${HASH};sf=tgz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-432cd2f"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-cpp/sqlitecpp"
RDEPEND="${DEPEND}"

src_configure() {
	local emesonargs=(--prefix=/ --libdir=$(get_libdir))
	meson_src_configure
}

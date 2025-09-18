# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="SSH key for John Turner."
HOMEPAGE="https://jturnerusa.dev"
SRC_URI="https://jturnerusa.dev/keys/ssh/gentoo-pc -> ${P}.asc"
S=${T}

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"

src_compile() {
	local principal="jturner.usa@gmail.com"
	echo "${principal} $(cat ${DISTDIR}/${P}.asc)" > ${S}/jturnerusa.asc || die
}

src_install() {
	insinto /usr/share/ssh-keys
	newins ${S}/jturnerusa.asc ${PN}.asc
}

# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="SQLiteC++ (SQLiteCpp) is a smart and easy to use C++ SQLite3 wrapper. "
HOMEPAGE="http://srombauts.github.io/SQLiteCpp"
SRC_URI="https://github.com/SRombauts/SQLiteCpp/archive/refs/tags/3.3.3.tar.gz"

S="${WORKDIR}/SQLiteCpp-${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-db/sqlite"
DEPEND="${RDEPEND}"
BDEPEND="dev-db/sqlite"

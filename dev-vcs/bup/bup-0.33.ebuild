# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(python3_{10,11})

inherit python-single-r1

DESCRIPTION="Efficient backup system based on git packfiles"
HOMEPAGE="https://bup.github.io/"
SRC_URI="https://github.com/bup/bup/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="par2 web fuse"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="${PYTHON_DEPS}
	dev-vcs/git
	sys-libs/readline:0
	par2? ( app-arch/par2cmdline )
	$(python_gen_cond_dep '
		dev-python/pyxattr[${PYTHON_USEDEP}]
		fuse? ( dev-python/fuse-python[${PYTHON_USEDEP}] )
		web? ( www-servers/tornado[${PYTHON_USEDEP}] )
	')"

DEPEND="${RDEPEND}"

src_configure() {
	true
}

src_compile() {
	emake PREFIX="${EPREFIX}/usr"
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}/usr" install
}

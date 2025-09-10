# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )

inherit git-r3 meson python-single-r1

DESCRIPTION="A simple paste service that stores data in S3, and provides syntax highlighting with pygments."
HOMEPAGE="https://jturnerusa.dev/cgit/pypaste"
EGIT_REPO_URI="https://jturnerusa.dev/cgit/pypaste"

EGIT_SSH_KEYS=(
	'jturner.usa@gmail.com ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA3D6QtWHDFV5agz2Ms/wPOAmRSuH3xGfsI/a8Nnex0c'
)

LICENSE="GPL-3"
SLOT="0"

DEPEND="
acct-user/pypaste
acct-group/pypaste
"

RDEPEND="
dev-python/aiohttp
dev-python/aiosqlite
dev-python/zstandard
dev-python/bozo4
"

src_install() {
	dobin ${S}/bin/pypaste
	newconfd ${S}/pypaste-confd pypaste
	newinitd ${S}/pypaste-initd pypaste
	meson_install
	python_optimize
}

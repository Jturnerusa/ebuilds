# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )

VERIFY_SIG_METHOD="git"

inherit verify-sig git-r3 meson python-single-r1

DESCRIPTION="A simple paste service that stores data in S3, and provides syntax highlighting with pygments."
HOMEPAGE="https://jturnerusa.dev/cgit/pypaste"
EGIT_REPO_URI="https://jturnerusa.dev/cgit/pypaste"

VERIFY_SIG_KEY_PATHS=(/usr/share/ssh-keys/jturnerusa.asc)

LICENSE="GPL-3"
SLOT="0"

IUSE="client server"

DEPEND="
acct-user/pypaste
acct-group/pypaste
"

RDEPEND="
dev-python/aiohttp
dev-python/aiosqlite
dev-python/zstandard
dev-python/bozo4
dev-python/pygments
"

src_configure() {
	local emesonargs=($(meson_feature client) $(meson_feature server))
	meson_src_configure
}

src_install() {
	meson_install
	python_optimize
}

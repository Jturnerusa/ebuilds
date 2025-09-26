# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )

VERIFY_SIG_METHOD="git"

inherit meson python-single-r1

DESCRIPTION="A password generator script."
HOMEPAGE="https://jturnerusa.dev/cgit/mkpw"
SRC_URI="https://jturnerusa.dev/cgit/mkpw/snapshot/mkpw-0.1.0.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

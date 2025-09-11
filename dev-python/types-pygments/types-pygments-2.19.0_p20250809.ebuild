# Copyright 2023-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..14} )

inherit distutils-r1 pypi

DESCRIPTION="Typing stubs for psutil"
HOMEPAGE="https://pypi.org/project/types-psutil/"
SRC_URI="https://files.pythonhosted.org/packages/51/1b/a6317763a8f2de01c425644273e5fbe3145d648a081f3bad590b3c34e000/types_pygments-2.19.0.20250809.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/types_pygments-$(ver_cut 1-3).$(ver_cut 5)"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~loong ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86"

# Copyright 2023-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..14} )

inherit distutils-r1 pypi

DESCRIPTION="Typing stubs for psutil"
HOMEPAGE="https://pypi.org/project/types-psutil/"
SRC_URI="https://files.pythonhosted.org/packages/ed/b0/9355adb86ec84d057fea765e4c49cce592aaf3d5117ce5609a95a7fc3dac/types_requests-2.32.4.20250809.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/types_requests-2.32.4.20250809"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~loong ~mips ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86"

# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=(python3_12)

inherit distutils-r1

DESCRIPTION="Asyncio support for botocore library using aiohttp."
HOMEPAGE="https://github.com/aio-libs/aiobotocore"
SRC_URI="https://github.com/aio-libs/aiobotocore/archive/refs/tags/2.24.1.tar.gz -> ${P}.tar.gz"

LICENSE="APACHE-2"
SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="${PYTHON_DEPS}"
BDEPEND="${RDEPEND}"

# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=(python3_12)

inherit distutils-r1

DESCRIPTION="Python Client for Google Cloud Storage"
HOMEPAGE="https://cloud.google.com/python/docs/reference/storage/latest"
SRC_URI="https://github.com/googleapis/python-storage/archive/refs/tags/v3.3.0.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/python-storage-${PV}"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="${PYTHON_DEPS}"
BDEPEND="${RDEPEND}"

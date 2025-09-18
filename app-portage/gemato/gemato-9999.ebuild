# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{11..14} pypy3_11 )
PYTHON_REQ_USE='threads(+),ssl(+)'

VERIFY_SIG_METHOD="git"

inherit verify-sig distutils-r1 git-r3

DESCRIPTION="Stand-alone Manifest generation & verification tool"
HOMEPAGE="
	https://github.com/projg2/gemato/
	https://pypi.org/project/gemato/
"
EGIT_REPO_URI="https://jturnerusa.dev/cgit/gemato"

VERIFY_SIG_KEYS=(
	'jturner.usa@gmail.com ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA3D6QtWHDFV5agz2Ms/wPOAmRSuH3xGfsI/a8Nnex0c'
)

LICENSE="GPL-2+"
SLOT="0"
IUSE="+gpg pretty-log tools"

RDEPEND="
	gpg? (
		>=app-crypt/gnupg-2.2.20-r1[ssl]
		dev-python/requests[${PYTHON_USEDEP}]
	)
	pretty-log? (
		dev-python/rich[${PYTHON_USEDEP}]
	)
"
BDEPEND="
	test? (
		>=app-crypt/gnupg-2.2.20-r1
		dev-python/requests[${PYTHON_USEDEP}]
		dev-python/responses[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest

python_install_all() {
	distutils-r1_python_install_all

	if use tools; then
		exeinto /usr/share/gemato
		doexe utils/*.{bash,py}
	fi
}

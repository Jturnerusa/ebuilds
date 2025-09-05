# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )

inherit git-r3 meson python-single-r1

DESCRIPTION="Make s3 requests without boto3."
HOMEPAGE="https://jturnerusa.dev/cgit/bozo4"
EGIT_REPO_URI="https://jturnerusa.dev/cgit/bozo4"

EGIT_SSH_KEYS=(
	'jturner.usa@gmail.com ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA3D6QtWHDFV5agz2Ms/wPOAmRSuH3xGfsI/a8Nnex0c'
)

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

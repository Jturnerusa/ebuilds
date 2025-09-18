# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )

VERIFY_SIG_METHOD="git"

inherit verify-sig git-r3 meson python-single-r1

DESCRIPTION="Make s3 requests without boto3."
HOMEPAGE="https://jturnerusa.dev/cgit/bozo4"
EGIT_REPO_URI="https://jturnerusa.dev/cgit/bozo4"

VERIFY_SIG_KEY_PATHS=(/usr/share/ssh-keys/jturnerusa.asc)

LICENSE="GPL-3"
SLOT="0"

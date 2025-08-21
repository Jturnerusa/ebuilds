# Copyright 2021-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit elisp

DESCRIPTION="Modern on-the-fly syntax checking extension for GNU Emacs"
HOMEPAGE="https://salsa.debian.org/dgrift/emacs-secil-mode"
COMMIT="bd7630f275c3efc30d168b515a9c283d1b0e37e8"
SRC_URI="https://salsa.debian.org/dgrift/emacs-secil-mode/-/archive/${COMMIT}/emacs-secil-mode-${COMMIT}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/emacs-${PN}-${COMMIT}"

KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~ppc64 ~riscv ~sparc ~x86 ~x64-macos"
LICENSE="GPL-3"
SLOT="0"

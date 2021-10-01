# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

NEED_EMACS="24.3"

inherit elisp

DESCRIPTION="Put semi-permanent hints in the echo area"
HOMEPAGE="https://github.com/abo-abo/hydra"
COMMIT="87873d788891029d9e44fa5458321d6a05849b94"
SRC_URI="https://github.com/abo-abo/hydra/archive/${COMMIT}.tar.gz -> hydra-${PV}.tar.gz"
S="${WORKDIR}/hydra-${COMMIT}"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"

RESTRICT="test" # the tests target hydra and not lv, so we should skip them
SITEFILE="50lv-gentoo.el"
ELISP_REMOVE="hydra-examples.el hydra-ox.el hydra-test.el hydra.el"

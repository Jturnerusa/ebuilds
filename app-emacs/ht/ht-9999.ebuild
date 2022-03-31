# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit elisp git-r3

DESCRIPTION="The missing hash table library for Emacs"
HOMEPAGE="https://github.com/Wilfred/ht.el"
EGIT_REPO_URI="https://github.com/Wilfred/ht.el/"
EGIT_BRANCH="master"
EGIT_CHECKOUT_DIR="${WORKDIR}/${P}"
S="${EGIT_CHECKOUT_DIR}"

LICENSE="GPL-3+"
SLOT="0"
RESTRICT="test" # test requires cask and ert-runner which are not packaged yet

RDEPEND=">=app-emacs/dash-2.12.0"
DEPEND="${RDEPEND}"

SITEFILE="50ht-gentoo.el"
DOCS=( README.md CHANGELOG.md )

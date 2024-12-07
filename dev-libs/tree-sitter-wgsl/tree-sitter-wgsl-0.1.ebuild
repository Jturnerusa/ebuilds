# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit tree-sitter-grammar

DESCRIPTION="WGSL grammar for tree sitter"
HOMEPAGE="https://github.com/Jturnerusa/tree-sitter-wgsl"
SRC_URI="https://github.com/Jturnerusa/tree-sitter-wgsl/archive/refs/tags/v0.1.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit elisp verify-sig git-r3

DESCRIPTION="A major emacs mode for editing Rust source code"
HOMEPAGE="https://github.com/rust-lang/rust-mode/"
EGIT_REPO_URI="https://jturnerusa.dev/cgit/rust-mode"

VERIFY_SIG_KEY_PATHS=(/usr/share/ssh-keys/jturnerusa.asc)

LICENSE="|| ( MIT Apache-2.0 )"
SLOT="0"

DOCS=( README.md )
SITEFILE="50${PN}-gentoo.el"

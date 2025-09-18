# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

VERIFY_SIG_METHOD="git"

inherit verify-sig git-r3 meson

DESCRIPTION="Spawns personal selinux policy, based off of dssp5."
HOMEPAGE="https://jturnerusa.dev/cgit/selinux-policy"
EGIT_REPO_URI="https://jturnerusa.dev/cgit/selinux-policy/"

BDEPEND="sys-apps/secilc"

VERIFY_SIG_KEY_PATHS=(/usr/share/ssh-keys/jturnerusa.asc)

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

SELINUXTYPE="spawns"

src_configure() {
	local emesonargs=("-Dmodular=true")
	meson_src_configure
}

pkg_postinst() {
	local modules=$(find /usr/share/selinux/${SELINUXTYPE} -type f -name '*.cil') || die

	ebegin "loading modules"
	semodule \
		--verbose \
		--priority=100 \
		--noreload \
		--preserve_tunables \
		--store ${SELINUXTYPE} \
		--install \
		${modules[@]}
	eend $? || die
}

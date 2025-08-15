# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="Spawns personal selinux policy, based off of dssp5."
HOMEPAGE="https://jturnerusa.dev/cgit/selinux-policy"
EGIT_REPO_URI="https://jturnerusa.dev/cgit/selinux-policy/"

BDEPEND="sys-apps/secilc"

EGIT_SSH_KEYS=(
	'jturner.usa@gmail.com ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA3D6QtWHDFV5agz2Ms/wPOAmRSuH3xGfsI/a8Nnex0c'
)

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

SELINUXTYPE="spawns"

src_configure() {
	local emesonargs=("-Dinstall_sources=true")
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

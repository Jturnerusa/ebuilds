# Copyright 2019-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="User for app-text/pypaste"
ACCT_USER_ID=-1
ACCT_USER_GROUPS=( ${PN} )
# The systemd unit needs HOME to be set
# https://bugs.gentoo.org/521916
ACCT_USER_HOME=/var/lib/pypaste
ACCT_USER_HOME_PERMS=0700

acct-user_add_deps

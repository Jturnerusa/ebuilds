# Copyright 2019-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="Buildbot program user"
ACCT_USER_ID=393

ACCT_USER_HOME=/var/lib/buildbot
ACCT_USER_HOME_PERMS=0700

acct-user_add_deps
SLOT="0"

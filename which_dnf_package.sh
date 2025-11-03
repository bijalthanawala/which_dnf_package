#! /bin/env sh

usage() {
    echo "-----------------------------------------------------------"
    echo "Usage:"
    echo "$0 <binary name>"
    echo ""
    echo "Example:"
    echo "$0 netstat"
    echo ""
    echo "Exaple output:"
    echo "Last metadata expiration check: 1:05:01 ago on Mon Nov  3 02:41:15 2025."
    echo "net-tools-0:2.0-0.64.20160912git.el9.x86_64"
    echo ""
    echo "Note: Specify full binary names -or- wildcard(s) within quotes"
    echo "-----------------------------------------------------------"

}

if [ -z "$1" ]; then
    echo "Usage error: Missing binary name."
    echo "Specify a binary to locate in dnf packages."
    usage
    exit 1
fi

if [ "$1" = "--help" ] || [ "$1" = "-h" ] || [ "$1" = "-?" ] ; then
    usage
    exit 0
fi

binaries=""
for binary in $*; do
    binaries="${binaries} /bin/${binary} /sbin/${binary}"
done
echo Running: dnf provides ${binaries}
dnf provides ${binaries}

# Prefixes /bin/ and /sbin/ in the above command is essential because of the dnf behaviour.
# Without the prefixes, dns stops the search if a package name matches the specified name
# and then we only get list of packages matching the name and not of the files.
#
# e.g.
#     dnf provides "nets*"
# gives the undesired -->
# Last metadata expiration check: 4:18:16 ago on Mon Nov  3 02:41:15 2025.
# netsniff-ng-0.6.8-11.el9.x86_64 : Packet sniffing beast
# Repo        : epel
# Matched from:
# Provide    : netsniff-ng = 0.6.8-11.el9
# Provide    : netsniff-ng(x86-64) = 0.6.8-11.el9
#
# netstandard-targeting-pack-2.1-9.0.111-1.el9_6.x86_64 : Targeting Pack for NETStandard.Library 2.1
# Repo        : appstream
# Matched from:
# Provide    : netstandard-targeting-pack-2.1 = 9.0.111-1.el9_6
# Provide    : netstandard-targeting-pack-2.1(x86-64) = 9.0.111-1.el9_6
#
# while
#     dnf provides /bin/nets* sbin/nets*
# gives the desired  -->
# Last metadata expiration check: 10:22:58 ago on Mon Nov  3 02:41:15 2025.
# net-tools-2.0-0.64.20160912git.el9.x86_64 : Basic networking tools
# Repo        : baseos
# Matched from:
# Filename    : /usr/bin/netstat
#
# netperf-2.7.0-2.20210803git3bc455b.el9.x86_64 : Benchmark to measure the performance of many different types of networking
# Repo        : epel
# Matched from:
# Filename    : /usr/bin/netserver

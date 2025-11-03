#! /bin/env sh

usage() {
    echo "------------------------------------"
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
    echo "Note: Specify full binary name. Wildcards are not supported."
    echo "------------------------------------"
    
}

if [ -z "$1" ]; then
    echo "Usage error: Missing binary name."
    echo "Specify a binary to locate in dnf packages"
    usage
    exit 1
fi

dnf list --installed yum-utils >/dev/null 2>&1
status=$? 
if [ $status -ne 0 ]; then
    echo "[-] repoquery (package yum-utils) is not installed"
    echo "Install package yum-utils and then re-run this script"
    exit 1
fi

if [ ! -f /bin/repoquery ]; then
    echo "Unexpected error: Command repoquery not found in the path"
    #exit 1
fi

binary=$1
repoquery /bin/${binary} /sbin/${binary} /usr/bin/${binary} /usr/sbin/${binary}


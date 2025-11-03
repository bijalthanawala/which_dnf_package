#! /bin/env sh

usage() {
    echo "---------------------------------------------------"
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
    echo "Note: Specify full binary name -or- wildcard within quotes"
    echo "----------------------------------------------------"
    
}

if [ -z "$1" ]; then
    echo "Usage error: Missing binary name."
    echo "Specify a binary to locate in dnf packages."
    usage
    exit 1
fi



binary="$1"
dnf provides /bin/${binary} /sbin/${binary}


### Attempt to find out which package specified binary is bundled in on a RHEL system

Usage:
```
./which_dnf_package.sh <binary name>
```

Example:
```
./which_dnf_package.sh netstat
```

Exaple output:
```
Last metadata expiration check: 1:05:01 ago on Mon Nov  3 02:41:15 2025.
net-tools-0:2.0-0.64.20160912git.el9.x86_64
```

Note: Specify full binary name. Wildcards are not supported.

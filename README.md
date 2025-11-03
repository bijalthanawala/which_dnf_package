### Attempt to find out which package specified binary is bundled in on a RHEL system

Usage:
```
./which_dnf_package.sh <full binary name -or- wildcard within quotes>
```

Example #1:
```
./which_dnf_package.sh ip
```

Exaple #1 output:
```
Last metadata expiration check: 3:18:20 ago on Mon Nov  3 02:41:15 2025.
iproute-6.11.0-1.el9.x86_64 : Advanced IP routing and network device configuration tools
Repo        : baseos
Matched from:
Provide    : /sbin/ip
```

Example #2:
```
./which_dnf_package.sh "nets*"
```

Example #2 output:
```
Last metadata expiration check: 2:55:45 ago on Mon Nov  3 02:41:15 2025.
net-tools-2.0-0.64.20160912git.el9.x86_64 : Basic networking tools
Repo        : baseos
Matched from:
Filename    : /usr/bin/netstat

netperf-2.7.0-2.20210803git3bc455b.el9.x86_64 : Benchmark to measure the performance of many different types of networking
Repo        : epel
Matched from:
Filename    : /usr/bin/netserver

netsniff-ng-0.6.8-11.el9.x86_64 : Packet sniffing beast
Repo        : epel
Matched from:
Filename    : /usr/sbin/netsniff-ng

wodim-1.1.11-48.el9.x86_64 : A command line CD/DVD recording program
Repo        : epel
Matched from:
Filename    : /usr/sbin/netscsid

```

Example #3:
```
./which_dnf_package.sh  'user??d'
```

Example #3 output:
```
Last metadata expiration check: 3:28:40 ago on Mon Nov  3 02:41:15 2025.
shadow-utils-2:4.9-8.el9.x86_64 : Utilities for managing accounts and shadow password files
Repo        : @System
Matched from:
Filename    : /usr/sbin/usermod
Filename    : /usr/sbin/useradd

shadow-utils-2:4.9-8.el9.x86_64 : Utilities for managing accounts and shadow password files
Repo        : @System
Matched from:
Filename    : /usr/sbin/usermod
Filename    : /usr/sbin/useradd

shadow-utils-2:4.9-12.el9.x86_64 : Utilities for managing accounts and shadow password files
Repo        : baseos
Matched from:
Filename    : /usr/sbin/usermod
Filename    : /usr/sbin/useradd

shadow-utils-2:4.9-12.el9.x86_64 : Utilities for managing accounts and shadow password files
Repo        : baseos
Matched from:
Filename    : /usr/sbin/usermod
Filename    : /usr/sbin/useradd
```

### Attempt to find out which package(s) the specified binary/binaries are bundled in on a RHEL system

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

Example #4:
```
./which_dnf_package.sh ss netstat ps ping man locate
```

Example #4 output:
```
Running: dnf provides /bin/ss /sbin/ss /bin/netstat /sbin/netstat /bin/ps /sbin/ps /bin/ping /sbin/ping /bin/man /sbin/man /bin/locate /sbin/locate
Last metadata expiration check: 0:19:38 ago on Mon Nov  3 13:19:49 2025.
iproute-6.11.0-1.el9.x86_64 : Advanced IP routing and network device configuration tools
Repo        : baseos
Matched from:
Filename    : /usr/sbin/ss

iputils-20210202-11.el9_6.3.x86_64 : Network monitoring tools including ping
Repo        : baseos
Matched from:
Filename    : /usr/sbin/ping
Provide    : /bin/ping

iputils-20210202-11.el9_6.3.x86_64 : Network monitoring tools including ping
Repo        : baseos
Matched from:
Filename    : /usr/sbin/ping
Provide    : /bin/ping

man-db-2.9.3-7.el9.x86_64 : Tools for searching and reading man pages
Repo        : baseos
Matched from:
Filename    : /usr/bin/man

mandoc-1.14.6-2.el9.x86_64 : A suite of tools for compiling mdoc and man
Repo        : epel
Matched from:
Filename    : /usr/bin/man

mlocate-0.26-30.el9.x86_64 : An utility for finding files by name
Repo        : baseos
Matched from:
Filename    : /usr/bin/locate

net-tools-2.0-0.64.20160912git.el9.x86_64 : Basic networking tools
Repo        : baseos
Matched from:
Filename    : /usr/bin/netstat

procps-ng-3.3.17-14.el9.i686 : System and process monitoring utilities
Repo        : baseos
Matched from:
Provide    : /bin/ps

procps-ng-3.3.17-14.el9.x86_64 : System and process monitoring utilities
Repo        : baseos
Matched from:
Provide    : /bin/ps
```

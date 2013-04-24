#!/bin/bash
rm -f dhcpd.leases
touch dhcpd.leases
./dhcpd -4v6 -4v6interface 4over6 -p 67 -cf dhcpd.conf -lf dhcpd.leases -f eth3

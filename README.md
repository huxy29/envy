# envy
basic development environment configuration

```
# sudo vim /etc/network/interfaces
# sudo /etc/init.d/networking restart

# interfaces(5) file used by ifup(8) and ifdown(8)
auto lo
iface lo inet loopback

auto enp0s31f6
iface enp0s31f6 inet static
hwaddress ether 24:B6:FD:41:43:28
address 172.18.233.141
netmask 255.255.254.0
gateway 172.18.233.254
dns-nameservers 10.8.8.8
```

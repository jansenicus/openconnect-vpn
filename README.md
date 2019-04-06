# OPENCONNECT-VPN

## openconnect installer
```
chmod +x openconnect-installer
sudo ./openconnect-installer.sh
```

## openconnect launcher
```
chmod +x openconnect-launcher.sh
sudo ./openconnect-launcher
```

## credential updater
updating your encrypted user and password for convenience for use in `openconnect-launcher`
```
chmod +x credential-updater.sh
sudo ./credential-updater.sh
```

# OpenConnect

OpenConnect is an SSL VPN client initially created to support Cisco's AnyConnect SSL VPN. It has since been ported to support the Juniper SSL VPN (which is now known as Pulse Connect Secure), and to the Palo Alto Networks GlobalProtect SSL VPN.

OpenConnect is released under the GNU Lesser Public License, version 2.1.

Like vpnc, OpenConnect is not officially supported by, or associated in any way with, Cisco Systems, Juniper Networks, Pulse Secure, or Palo Alto Networks. It just happens to interoperate with their equipment.

# OpenConnect VPN Installer and Launcher

## OpenConnect VPN Installer
```bash
# Linux
chmod +x ovinstaller
sudo ./ovinstaller
```
or in Mac:
```
brew install openconnect jq oath-toolkit
```

## OpenConnect VPN Launcher
```
chmod +x ovlauncher
sudo ./ovlauncher
```

## OpenConnect VPN Credential
updating your encrypted user and password for convenience for use in `ovlauncher`
```
chmod +x ovcredential
sudo ./ovcredential
```

# OpenConnect VPN

OpenConnect is an SSL VPN client initially created to support Cisco's AnyConnect SSL VPN. It has since been ported to support the Juniper SSL VPN (which is now known as Pulse Connect Secure), and to the Palo Alto Networks GlobalProtect SSL VPN.

OpenConnect is released under the GNU Lesser Public License, version 2.1.

Like vpnc, OpenConnect is not officially supported by, or associated in any way with, Cisco Systems, Juniper Networks, Pulse Secure, or Palo Alto Networks. It just happens to interoperate with their equipment.

# Use with crontab 
```bash
@reboot /etc/init.d/ovstealth
```
# GlobalProtect for Linux/ Mac/ Windows
http://files.mobilemini.com/GlobalProtect/

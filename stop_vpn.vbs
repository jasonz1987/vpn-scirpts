Dim Wsh
Set Wsh = WScript.CreateObject("WScript.Shell")
Wsh.Run "rasdial vpn_name /disconnect",0,True
msgbox ("VPN Disconnect Success!")
Set Wsh=NoThing
WScript.quit
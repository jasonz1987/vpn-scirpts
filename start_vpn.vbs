Dim Wsh,Name,User,Passwd
Set Wsh = WScript.CreateObject("WScript.Shell")
Wsh.Run "rasdial vpn_name vpn_user vpn_password",0,True
msgbox ("VPN Connect Success!")
Set Wsh=NoThing
WScript.quit
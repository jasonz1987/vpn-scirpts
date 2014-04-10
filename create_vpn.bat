@echo off & color 0a

@rem setlocal enabledelayedexpansion

@rem Script create_vpn.bat
@rem Creation Data 2013-05-22
@rem Last Modified 2013-05-22
@rem Author Jason_z
@rem E-mail ccnuzxg@gmail.com

@rem ***********************************
@rem Description:Create VPN Connect 
@rem ***********************************

set name=VPN
set ip=10.10.10.10

echo Write Into PBK...

(echo [%name%]
echo Encoding=1
echo PBVersion=1
echo Type=2
echo AutoLogon=0
echo UseRasCredentials=1
echo LowDateTime=-267272272
echo HighDateTime=30295956
echo DialParamsUID=4347607
echo Guid=110A64EF76E85D48A4DD0371CE487702
echo VpnStrategy=2
echo ExcludedProtocols=0
echo LcpExtensions=1
echo DataEncryption=256
echo SwCompression=0
echo NegotiateMultilinkAlways=0
echo SkipDoubleDialDialog=0
echo DialMode=0
echo OverridePref=15
echo RedialAttempts=3
echo RedialSeconds=60
echo IdleDisconnectSeconds=0
echo RedialOnLinkFailure=1
echo CallbackMode=0
echo CustomDialDll=
echo CustomDialFunc=
echo CustomRasDialDll=
echo ForceSecureCompartment=0
echo DisableIKENameEkuCheck=0
echo AuthenticateServer=0
echo Sha::sFilePrint=1
echo BindMsNetClient=1
echo SharedPhoneNumbers=0
echo GlobalDeviceSettings=0
echo PrerequisiteEntry=
echo PrerequisitePbk=
echo PreferredPort=VPN3-0
echo PreferredDevice=WAN Miniport (PPTP^)
echo PreferredBps=0
echo PreferredHwFlow=1
echo PreferredProtocol=1
echo PreferredCompression=1
echo PreferredSpeaker=1
echo PreferredMdmProtocol=0
echo PreviewUserPw=1
echo PreviewDomain=1
echo PreviewPhoneNumber=0
echo ShowDialingProgress=1
echo ShowMonitorIconInTaskBar=1
echo CustomAuthKey=0
echo AuthRestrictions=544
echo IpPrioritize::ote=1
echo IpInterfaceMetric=0
echo IpHeaderCompression=0
echo IpAddress=0.0.0.0
echo IpDnsAddress=168.95.1.1
echo IpDns2Address=0.0.0.0
echo IpWinsAddress=0.0.0.0
echo IpWins2Address=0.0.0.0
echo IpAssign=1
echo IpNameAssign=2
echo IpDnsFlags=0
echo IpNBTFlags=1
echo TcpWindowSize=0
echo UseFlags=2
echo IpSecFlags=0
echo IpDnsSuffix=
echo Ipv6Assign=1
echo Ipv6Address=::
echo Ipv6PrefixLength=0
echo Ipv6Prioritize::ote=1
echo Ipv6InterfaceMetric=0
echo Ipv6NameAssign=1
echo Ipv6DnsAddress=::
echo Ipv6Dns2Address=::
echo Ipv6Prefix=0000000000000000
echo Ipv6InterfaceId=0000000000000000
echo DisableClassBasedDefaultRoute=0
echo DisableMobility=0
echo NetworkOutageTime=0
echo ProvisionType=0
echo PreSharedKey=
echo.
echo NETCOMPONENTS=
echo ms_msclient=1
echo ms_server=1
echo.
echo MEDIA=rastapi
echo Port=VPN3-0
echo Device=WAN Miniport (PPTP^)
echo.
echo DEVICE=vpn
echo PhoneNumber=%ip%
echo AreaCode=
echo CountryCode=0
echo CountryID=0
echo UseDialingRules=0
echo Comment=
echo FriendlyName=
echo LastSelectedPhone=0
echo PromoteAlternates=0
echo TryNextAlternateOnFail=1)>%temp%\vpn.pbk

echo "Copy PBK To User App Data..."

copy /y %temp%\vpn.pbk "%USERPROFILE%\Application Data\Microsoft\Network\Connections\Pbk\rasphone.pbk" >nul

echo Create Desktop Shortcut...

::shortcut
(echo set ws=createobject("wscript.shell"^) 
echo ws.run "cmd /c ncpa.cpl",0 
echo wscript.sleep 1000 
echo ws.sendkeys "{f5}" 
echo wscript.sleep 1000 
echo ws.sendkeys "vpn" 
echo wscript.sleep 500 
echo ws.sendkeys "%%{f}" 
echo wscript.sleep 500 
echo ws.sendkeys "{s}" 
echo wscript.sleep 300 
echo ws.sendkeys "{y}" 
echo wscript.sleep 300 
echo ws.sendkeys "%%{f4}")>%temp%\vpn.vbs

start /wait %temp%\vpn.vbs

echo  Delete temp files...

del /f /q %temp%\vpn.pbk %temp%\vpn.vbs >nul

echo VPN Connect Create Success,Please Reboot!

echo "Just Enjoy!"

pause
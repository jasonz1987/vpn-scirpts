@echo on

setlocal enabledelayedexpansion

@Rem 用户名   
set user=vpnusername          
@Rem 密码 
set pass=vpnpassword       
@Rem 拨号文件名   
set NIC_name=VPN     
echo 正在VPN连接...   
rasdial %NIC_name% %user% %pass%   
echo 已经连接.   
for /f "tokens=1* delims=:" %%i in ('ipconfig /all^|find "192.168.8"') do set ip=%%j   
echo %ip%   
::route delete 0.0.0.0 mask 0.0.0.0 %ip% METRIC 1    
::route add 192.168.21.0 mask 255.255.255.0 %ip% METRIC 1       
::route add 192.168.13.0 mask 255.255.255.0 %ip% METRIC 1
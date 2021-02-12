@echo off
setlocal
:: Por @otgo https://github.com/otgo
for /f "tokens=2 delims==" %%G in ('wmic os get Caption /value') do (
	if not defined VersionDeWindows set VersionDeWindows=%%G
)
:: Error si no tienes Windows 10
if "x%VersionDeWindows:Windows 10=%" == "x%VersionDeWindows%" (
	echo Seu sistema operacional nao eh Windows
	pause
	exit
)
:: Windows 10 Home *
if not "x%VersionDeWindows:Home=%" == "x%VersionDeWindows%" (
	:: Elimina variable si esta definida
	set WindowsToken=
	set WindowsToken=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
)
if not "x%VersionDeWindows:Home N=%" == "x%VersionDeWindows%" (
	:: Elimina variable si esta definida
	set WindowsToken=
	set WindowsToken=3KHY7-WNT83-DGQKR-F7HPR-844BM
)
if not "x%VersionDeWindows:Single Language=%" == "x%VersionDeWindows%" (
	:: Elimina variable si esta definida
	set WindowsToken=
	set WindowsToken=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
)
if not "x%VersionDeWindows:Country=%" == "x%VersionDeWindows%" (
	:: Elimina variable si esta definida
	set WindowsToken=
	set WindowsToken=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
)
:: Windows 10 Enterprise *
if not "x%VersionDeWindows:Enterprise=%" == "x%VersionDeWindows%" (
	:: Elimina variable si esta definida
	set WindowsToken=
	set WindowsToken=NPPR9-FWDCX-D2C8J-H872K-2YT43
)
if not "x%VersionDeWindows:Enterprise N=%" == "x%VersionDeWindows%" (
	:: Elimina variable si esta definida
	set WindowsToken=
	set WindowsToken=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
)
:: Windows 10 Education *
if not "x%VersionDeWindows:Education=%" == "x%VersionDeWindows%" (
	:: Elimina variable si esta definida
	set WindowsToken=
	set WindowsToken=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
)
if not "x%VersionDeWindows:Education N=%" == "x%VersionDeWindows%" (
	:: Elimina variable si esta definida
	set WindowsToken=
	set WindowsToken=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
)
:: Windows 10 Enterprise 2015
if not "x%VersionDeWindows:LTSB=%" == "x%VersionDeWindows%" (
	:: Elimina variable si esta definida
	set WindowsToken=
	set WindowsToken=WNMTR-4C88C-JK8YV-HQ7T2-76DF9
)
if not "x%VersionDeWindows:LTSB N=%" == "x%VersionDeWindows%" (
	:: Elimina variable si esta definida
	set WindowsToken=
	set WindowsToken=2F77B-TNFGY-69QQF-B8YKP-D69TJ
)
:: Windows 10 Pro *
if not "x%VersionDeWindows:Pro=%" == "x%VersionDeWindows%" (
	:: Elimina variable si esta definida
	set WindowsToken=
	set WindowsToken=W269N-WFGWX-YVC9B-4J6C9-T83GX
)
if not "x%VersionDeWindows:Pro N=%" == "x%VersionDeWindows%" (
	:: Elimina variable si esta definida
	set WindowsToken=
	set WindowsToken=MH37W-N47XK-V7XM9-C7227-GCQG9
)
echo Versao detectada: %VersionDeWindows%
echo Chave de ativacao que sera usada: %WindowsToken%
pause
slmgr /ipk %WindowsToken%
slmgr /skms kms.digiboy.ir
slmgr /ato
endlocal
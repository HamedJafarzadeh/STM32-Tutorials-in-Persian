
****************************************************************************************************
                                     YAT Installation ReadMe.
 --------------------------------------------------------------------------------------------------
                                    YAT - Yet Another Terminal.
     Engineering, testing and debugging of serial communications. Supports RS-232/422/423/485...
   ...as well as TCP/IP Client/Server/AutoSocket, UDP/IP Client/Server/PairSocket and USB Ser/HID.
 --------------------------------------------------------------------------------------------------
                    Visit YAT at https://sourceforge.net/projects/y-a-terminal/.
                     Contact YAT by mailto:y-a-terminal@users.sourceforge.net.
 --------------------------------------------------------------------------------------------------
                    Copyright © 2003-2004 HSR Hochschule für Technik Rapperswil.
                                Copyright © 2003-2019 Matthias Kläy.
                                        All rights reserved.
 --------------------------------------------------------------------------------------------------
                                YAT is licensed under the GNU LGPL.
                   See http://www.gnu.org/licenses/lgpl.html for license details.
****************************************************************************************************


====================================================================================================
1. Installation
====================================================================================================

YAT uses .NET 3.5 SP1. The YAT installer verifies that .NET is installed on the target computer.
The YAT installer also verifies that Windows Installer 4.5 is installed on the target computer.

First, chose the most appropriate package:
 > For up-to-date systems, use the compact package "...(32-bit).zip" or "...(64-bit).zip".
   (Windows Installer and .NET are already installed on up-to-date systems.)
 > For offline installation, use a full package "..._with_.NET...zip".
   (Windows Installer and .NET are included for installation.)
 > For Windows XP, use a binary distribution.
   (The YAT installer is no longer compatible with Windows XP.)

It is recommended to unzip this package to a temporary location before starting installation.

Run the ".msi" if Windows Installer is installed, otherwise "setup.exe".
 > Installer checks prerequisites and installs what is missing.
 > Installer installs YAT. Older versions of YAT are automatically replaced.

You can also download .NET and/or Windows Installer from <https://www.microsoft.com/en-us/download>
or by googling for "Microsoft Download .NET Framework 3.5 SP1 Full" or "Windows Installer 4.5".
Installing .NET and/or Windows Installer requires administrator permissions.


x86 (32-bit) -vs- x64 (64-bit)
----------------------------------------------------------------------------------------------------

YAT can be installed as x86 or x64 application. x86 works on either 32-bit or 64-bit systems whereas
x64 can only be installed on 64-bit systems. By default, x86 is installed to "\Program Files (x86)"
whereas x64 is installed to "\Program Files".

It is not possible to install both distributions for the same user. When changing from x86 to x64 of
the same version of YAT, or vice versa, the installed distribution must first be uninstalled before
the other distribution can be installed. If this limitation is not acceptable for somebody, create a
new feature request ticket and describe the impacts/rationale/use case as detailed as possible.


====================================================================================================
2. Execution
====================================================================================================

Run YAT by selecting "Start > Programs > YAT > YAT".

Use "C:\<Program Files>\YAT\YAT.exe" to run YAT normally.
Use "C:\<Program Files>\YAT\YATConsole.exe" to run YAT from console.


****************************************************************************************************
                                   End of YAT Installation ReadMe.
****************************************************************************************************

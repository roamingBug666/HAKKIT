@echo off

:: canvas size (half left screen)
mode 100

:home

:: some variabls
set version=no data
set dateversion=date unknown
set p=emergency
set qp1=null
set qp2=null
set pset=upd date unknown
call version.bat>NUL 2>&1
call pcalc.bat>NUL 2>&1

:: nice hacking colors
color 0a
color %colset%

title Virus Control Panel v.%version%

set choice=0
set qchoice=0
set filename=0
set flash=0

:: START DAT ACTION!!!
:: a noice logo go first
echo    �                                                                                           �
echo   ���                                                                                         ���
echo   ����                                                                                       ����
echo   �����                                                                                     �����
echo  ���۱�                                                                                     ��۲��
echo  �۲��  ���    ���     ���     ���    ��� ���    ��� �����������������    ��������    ���    ���۱
echo ܰ�۲�� ���    ���   ��� ���   ���   ���  ���   ���    ���      ���      ���    ��� �����   ܰ�۲��
echo ������� ���    ���  ���   ���  ���  ���   ���  ���     ���      ���      ���          ���   �������
echo  �  �  �۲����۲� �۲����۲�� �۲����    �۲����      �۲      �۲      �۲����۲�   �۲    �  �
echo  ���  �۲    �۲ �۲     �۲ �۲  �۲   �۲  �۲     �۲      �۲             �۲   �۲    ���
echo  �  �  ۲�    ۲� ۲�     ۲� ۲�   ۲�  ۲�   ۲�    ۲�      ۲�      ۲�    ۲�   ۲�    �  �
echo ������� ���    ��� ���     ��� ���    ��� ���    ��� �������    ���       ��������  ������� �������
echo ���������������������������������������������������������������������������������������������������

:: cool uplifting text
echo.
echo � Welcome, King of Chaos.
echo � Current version: %version% (%dateversion%) s1.
echo � Choose an option!
echo � Happy Hacking, Pranking, and Trolling!
echo.
echo Note: hey alec, go over to the README first pls (type "2" then ENTER)
echo.
echo �

:: the actual menu
:menu
echo � Menu �����������������������������
echo ������˼
echo � 1 � Execute a virus
echo � 2 � Read the README
echo � 3 � Read the License
echo � 4 � Settings
echo � 5 � Get time
echo � 6 � Control Panel S2
echo � 7 � Quit
echo �����ļ
echo.
set choice=0
:: yes yes yea ik its a horrible pun
set /p choice=- Your wish is my command (prompt): 
if /I "%choice%"=="1" goto confirmation
if /I "%choice%"=="2" (
	start "" "README.txt"
	cls
	goto home
)
if /I "%choice%"=="3" (
	start "" "LICENSE.txt"
	cls
	goto home
)
if /I "%choice%"=="4" goto settings
if /I "%choice%"=="5" (
	start time_date.bat
	cls
	goto home
)
if /I "%choice%"=="6" (
	goto p2warning
)
if /I "%choice%"=="7" goto fin
goto errormenu

:: ------------------------------------------------------------------
:: PASSWORD SCREENS -------------------------------------------------
:: ------------------------------------------------------------------

:confirmation
echo.
set /p choice= Verify yourself: Just write the incredibly difficult passtring (modified on "%pset%"), "back", or "quit": 
if /I %choice%==back (
	cls
	goto home
)
if /I %choice%==quit goto fin
if /I %choice%==%pacc% goto h1nt
if /I %choice%==%p% goto viruschoice
if /I %choice%==%qp1% goto qp
goto recommence

:h1nt
cls
echo hackerized hacker
echo.
echo Modified on "%pset%"
pause
cls
goto confirmation

:qp
set /p qchoice= Write the next qkey (or "exit" to exit): 
if /I %qchoice%==exit goto home
if /I %qchoice%==%qp2% goto viruschoice
goto qpr

:qpr
cls
echo Wrong QP!
pause
cls
goto confirmation

:: ------------------------------------------------------------------
:: CHOICE -----------------------------------------------------------
:: ------------------------------------------------------------------

:viruschoice
cls
echo PASSWORD GOOD! Choose a weapon of incredible destruction, please!
echo Note: None can harm the computer.
echo The number at the left is the controlability, ranked 3 (close button), 2 (task manager), 1 (Alt+F4), 0 (Unclosable).
echo The number at the right is the Annoy-o-Meter, ranked 1-5.
echo.
echo ����������Ļ
echo �2� 01 �5� Naughty Windows - Error messages that disappear and crash!
echo �0� 02 �5� Crasher Windows - Spawns cmd windows until computer *CRASHES*
echo �3� 03 �1� Matrix - A very cool cmd window that spews random numbers forever
echo �0� 04 �3� Restart - Makes your computer restart. DUH DUH DUH
echo �0� 05 �3� Forced landing - Makes your computer shutdown.
echo �2� 06 �4� Beepparty - Makes da computer BEEP (Windows Vista or prior).
echo �3� 07 �3� Flashin - Makes ya screen do da flash foreveranever!
echo �1� 08 �5� BLUERIP - Display a beeyootiful BLUE SCREEN OF DEATH
echo �2� 09 �4� dontdiedude - An unclosable series of alarm windows.
echo �3� 10 �4� Mega Flash Color - FLASH the screens bright colors!
echo �0� 11 �5� Crasher Matrix - Mix of Crasher Windows (2) and Matrix (3)!
echo �2� 12 �4� DVD Takeover - DVD Reader keeps popping out!
echo �3� 13 �4� EvilAI - Realistic looking virus! And then shutdown!
echo �3� 14 �4� NOOB Party - A cool disco party! With funny messages!
echo �1� 15 �2� GEFRAFT - Dangerous looking virus, resistant to alt f4
echo �1� 16 �2� Blank - Need to urgently blank out your screen?
echo �1� 17 �5� WBSOD - Seriously freaker-outer supreme... BSOD gone lunatic.
echo �2� 18 �3� CAPSLOCKED - Caps lock switching every few seconds... CRASY!
echo �3� 19 �2� SuperMe - Flashin logo lets goooo!!
echo �0� 20 �5� FLOPSUCKER_TREMENDIS - Horrible. HORRIBLE. Only open in emergencies!
echo �1� 21 �4� CRACKET - Cracked screen simulator! Everyone go screeeeaaaam!
echo �0� 22 �5� Startalotta - Starts a ton of programs until computer CRASHES
echo �0� 23 �5� EnterBug - types the Enter key and types "enter" every x time.
echo �3� 24 �5� JunpScare - Generates a maze game that suddendly jumpscares RLY BAD!
echo ����������ļ
echo.
set virusid = 0
set /p virusid= Enter the number of the virus you want to execute, "exit", "home", or the secret easter word: 

if %virusid% ==  1 goto virus1
if %virusid% == 01 goto virus1
if %virusid% ==  2 goto virus2
if %virusid% == 02 goto virus2
if %virusid% ==  3 goto virus3
if %virusid% == 03 goto virus3
if %virusid% ==  4 goto virus4
if %virusid% == 04 goto virus4
if %virusid% ==  5 goto virus5
if %virusid% == 05 goto virus5
if %virusid% ==  6 goto virus6
if %virusid% == 06 goto virus6
if %virusid% ==  7 goto virus7
if %virusid% == 07 goto virus7
if %virusid% ==  8 goto virus8
if %virusid% == 08 goto virus8
if %virusid% ==  9 goto virus9
if %virusid% == 09 goto virus9
if %virusid% == 10 goto virus10
if %virusid% == 11 goto virus11
if %virusid% == 12 goto virus12
if %virusid% == 13 goto virus13
if %virusid% == 14 goto virus14
if %virusid% == 15 goto virus15
if %virusid% == 16 goto virus16
if %virusid% == 17 goto virus17
if %virusid% == 18 goto virus18
if %virusid% == 19 goto virus19
if %virusid% == 20 goto virus20
if %virusid% == 21 goto virus21
if %virusid% == 22 goto virus22
if %virusid% == 23 goto virus23
if %virusid% == 24 goto virus24

if /I %virusid%==egg goto egg
if /I %virusid%==home goto home
if /I %virusid%==exit goto fin
if /I %virusid%==quit goto fin
goto recommence2

:recommence2
cls
echo Write again! Wrong input!
pause
cls
goto viruschoice

:: ------------------------------------------------------------------
:: VIRUSES ----------------------------------------------------------
:: ------------------------------------------------------------------

:: NAUGHTY WINDOWS
:virus1
set virusname=anticlicvirus.bat
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
if not exist "anticlicvirus.bat" goto filenotfound
title Naughty Windows
cls

:: CRASHER WINDOWS
:virus2
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
set o=0
title Crasher Windows
cls
:infinif
start
set /a o=%o%+1
title %0% Crasher Windows
goto infinif

:: MATRIX1
:virus3
set virusname=matrix.bat
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
if not exist "matrix.bat" goto :filenotfound
set fsmatrix=0
set /p fsmatrix= Do you wanna go fullscreen (y for yes/n for no)? 
if %fsmatrix%==y screen.exe
cls
call matrix.bat
exit

:: RESTART
:virus4
set virusname=restart.bat
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
if not exist "restart.bat" goto :filenotfound else
start restart.bat
cls
exit

:: FORCED LANDING
:virus5
set virusname=extinction-pc.bat
echo.
echo � Choose a type: �����������
echo ����������������ļ
echo � 1 � Instant
echo � 2 � Loading bar
echo � 3 � Shutdown in x seconds
echo � 4 � 10s with message
echo �����ļ
echo.
set setsh=0
set /p setsh=- Type here your choice: 
if /I "%setsh%"=="1" (
	shutdown -s -t 0
	exit
)
if /I "%setsh%"=="2" (
	start extinction-pc.bat
	exit
)
if /I "%setsh%"=="3" (
	goto virus5s1
)
if /I "%setsh%"=="4" (
	goto virus5s2
)
goto errorv5
cls
exit

:virus5s1
set setmll=0
set /p setmll=- Type here the time in seconds: 
if /I "%setmll%"<"86400000" (
	shutdown -s -t %setmll%
	exit
)
cls
goto errorv5

:virus5s2
set setmsg=0
set /p setmsg=- Type here the message: 
if /I "%setmsg%"!="" (
	shutdown.exe -s -t 10 -c "%setmsg%"
	exit
)
cls
goto errorv5

:: BEEPPARTY
:virus6
set virusname=beep.bat
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
if not exist "beep.bat" goto filenotfound
title Beepparty
cls
start beep.bat
cls
exit

:: FLASHIN
:virus7
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
set fsflash=0
set /p fsflash= Do you wanna go fullscreen (y for yes/n for no)? 
if %fsflash%==y screen.exe
cls
title Mega Flash
set flash=0
:flash
color F0
set /a flash=%flash%+1
title Mega Flash (%flash% flashs)
color 0F
goto flash

:: BLUERIP
:virus8
set virusname=bsod.hta
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
if not exist "bsod.hta" goto filenotfound
cls
start bsod.hta
cls
exit

:: DONTDIEDUDE
:virus9
set virusname=msg.vbs
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
if not exist "msg.vbs" goto filenotfound
cls
start msg.vbs
cls
exit

:: MEGA FLASH COLOR
:virus10
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
set fsflash2=0
set /p fsflash2= Do you wanna go fullscreen (y for yes/n for no)? 
if %fsflash2%==y screen.exe
cls
title Mega Flash Color
set flash2=0
:flash2
mode 1000
color F0
set /a flash2=%flash2%+1
title Mega Flash Color (%flash2% flashs)
color 0F
color 10
color 20
color 30
color 40
color 50
color 60
color 70
color 80
color 90
color A0
color B0
color C0
color E0
goto flash2

:: CRASHER MATRIX
:virus11
set virusname=matrix.bat
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
if not exist "matrix.bat" goto filenotfound
set o=0
:infmatrix
set /a o=%o%+1
title %0% wtf
start matrix.bat
goto infmatrix
exit

:: DVD TAKEOVER
:virus12
set virusname=dvd.vbs
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
if not exist "dvd.vbs" goto filenotfound
title DVD POPPER-OUTER
cls
:dvd
start dvd.vbs
cls
exit

:: EVIL AI
:virus13
set virusname=fakvir.bat
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
if not exist "fakvir.bat" goto filenotfound
title VIRUS DETEKTED
cls
:fakevirus
start fakvir.bat
cls
exit

:: NOOB PARTY
:virus14
set virusname=noob.bat
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
if not exist "noob.bat" goto filenotfound
title Noob PARTY!!
cls
:noobparty
start noob.bat
cls
exit

:: GEFRAKT
:virus15
set virusname=gefrakt.hta
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
if not exist "gefrakt.hta" goto filenotfound
cls
start gefrakt.hta
cls
exit

:: BLANK
:virus16
set virusname=blank.hta
if not exist "blank.hta" goto filenotfound
cls
start blank.hta
cls
exit

:: WBSOD
:virus17
set virusname=wbsod.hta
if not exist "wbsod.hta" goto filenotfound
cls
start wbsod.hta
cls
exit

:: CAPSLOCKED
:virus18
set virusname=capslocked.vbs
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
if not exist "capslocked.vbs" goto filenotfound
title CAPS GO NUTS
cls
:cps
start capslocked.vbs
cls
exit

:: SUPERME
:virus19
cls
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
set fsspme=0
set /p fsspme= Do you wanna go fullscreen (y for yes/n for no)? 
if %fsspme%==y screen.exe
cls
start zerozap.bat
exit

:: FLOPSUCKER REMENDIS
:virus20
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
start GGC/hck1.bat
cls
exit

:: CRACKET
:virus21
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
cls
echo � Crackedness: �����������
echo ��������������ļ
echo � 1 � Low
echo � 2 � Medium
echo � 3 � High 
echo �����ļ
echo.
set setset=0
set /p setset=- Type here your choice: 
if /I "%setset%"=="1" (
	start crack1.hta
	exit
)
if /I "%setset%"=="2" (
	start crack2.hta
	exit
)
if /I "%setset%"=="3" (
	start crack3.hta
	exit
)
goto errorv21

:virus22
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
start startalotta.bat
cls
exit

:virus23
echo Type anything to continue! If you do not want to proceed, close the window.
pause>nul
cls
echo � Crazyness: �����������
echo ��������������ļ
echo � 1 � Low (1/10s)
echo � 2 � Medium (1/1s)
echo � 3 � High (10/1s)
echo �����ļ
echo.
set setcrz=0
set /p setcrz=- Type here your choice: 
if /I "%setcrz%"=="1" (
	start enterbug1.vbs
	exit
)
if /I "%setcrz%"=="2" (
	start enterbug2.vbs
	exit
)
if /I "%setcrz%"=="3" (
	start enterbug3.vbs
	exit
)
goto errorv23

:: WBSOD
:virus24
set virusname=jump.hta
if not exist "jump.hta" goto filenotfound
cls
start jump.hta
cls
exit


:: ------------------------------------------------------------------
:: SETTINGS ---------------------------------------------------------
:: ------------------------------------------------------------------

:settings
cls
echo � Settings �����������
@echo ����������ļ
echo � 1 � Theme colors
echo � 2 � Instructions
echo � 3 � Exit 
echo �����ļ
echo.
set setset=0
set /p setset=- Type here your choice: 
if /I "%setset%"=="1" goto color
if /I "%setset%"=="2" goto instructions
if /I "%setset%"=="3" (
	cls
	goto home
)
goto errorsettings

:color
cls
echo � Changes will apply when you go to the home screen (you do not have to go there immediatly)
echo � Choose a mode: �����������
echo ����������������ļ
echo � 1 � Dark Hacker Mode
echo � 2 � Dark ^>_ CMD Mode
echo � 3 � An Innocent Mode
echo � 4 � Deep Waters Mode
echo � 5 � Lush Forest Mode
echo � 6 � Crazy Clown Mode
echo � 7 � Megalomania Mode
echo � 8 � Blood Craze Mode
echo �����ļ
echo.
set colchoice=0
set /p colchoice=- Type in your choice: 
if /I "%colchoice%"=="1" (
	set colset=0a
	cls
	goto home
)
if /I "%colchoice%"=="2" (
	set colset=0f
	cls
	goto home
)
if /I "%colchoice%"=="3" (
	set colset=f0
	cls
	goto home
)
if /I "%colchoice%"=="4" (
	set colset=1b
	cls
	goto home
)
if /I "%colchoice%"=="5" (
	set colset=2a
	cls
	goto home
)
if /I "%colchoice%"=="6" (
	set colset=ce
	cls
	goto home
)
if /I "%colchoice%"=="7" (
	set colset=04
	cls
	goto home
)
if /I "%colchoice%"=="8" (
	set colset=4c
	cls
	goto home
)
if /I %colchoice%==exit goto home
if /I %colchoice%==quit goto fin
goto errorcolor

:_
cls
echo � Choose a _ type: �����������
echo ���������������������ļ
echo � 1 � _
echo � 2 � _
echo � 3 � _
echo � 4 � _
echo � 5 � _
echo �����ļ
echo.
set _choice=0
set _=1
set /p _choice=- Type in your choice: 
if /I "%_choice%"=="1" (
	set _=1
	goto settings
)
if /I "%_choice%"=="2" (
	set _=2
	goto settings
)
if /I "%_choice%"=="3" (
	set _=3
	goto settings
)
if /I "%_choice%"=="4" (
	set _=4
	goto settings
)
if /I "%_choice%"=="5" (
	set _=5
	goto settings
)
if /I %_choice%==exit goto home
if /I %_choice%==quit goto fin
goto error_

:instructions
cls
echo                                  ))^>^>==-- INSTRUCTIONS --==^<^<((
echo.
echo This is the L-Studios official licensed Virus Control Panel (c).
echo At the home screen, you can choose to
echo  (1) Execute a virus; Passtring protected executable list of around 25 viruses.
echo  (2) Read the README; Opens a text window with warnings, license, info. READ THIS FIRST.
echo  (3) Read the License; An incredibly boring GNU license, by which this is licensed.
echo  (4) Settings (WIP section):
echo      Note: Changes apply only when returning to homepage!
echo     - Instructions
echo     - Colors
echo  (5) Control Panel v2; No passtring required. Experimental features. Read warning.
echo  (6) Quit; closes window.
echo.
echo An important thing to note is the difference between "exit", "back", or "home" and "quit"; "quit" closes the program, the others go back or home.
pause
goto settings

:: ------------------------------------------------------------------
:: Control Panel s2 -------------------------------------------------
:: ------------------------------------------------------------------

:p2warning
cls
title 
echo Are you sure? CP2(beta) has experimental features. Unofficial releases, Unpublished/developing viruses and features may not work properly. BotNet feature is especially prone to malfunction, use at your own risk.
echo.
echo ---...--- THIS AREA IS MEANT FOR DEVELOPERS ---...---
pause
start gonnakill.bat
goto fin

:: ------------------------------------------------------------------
:: EASTER EGG -------------------------------------------------------
:: ------------------------------------------------------------------

:egg
cls
set virusname=w.bat
if not exist "w.bat" goto filenotfound
call w.bat
goto home

:: ------------------------------------------------------------------
:: ERRORS -----------------------------------------------------------
:: ------------------------------------------------------------------

:recommence
cls
echo Invalid input. Try again. (limited number of tries till emergency activation of all viruses simultaneously)
pause
cls
goto confirmation

:filenotfound
cls
echo �IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII�
echo �                HAHAAAAAHAAAAAAAAAA                �
echo �  ERROR ERROR ERROR FILE NOT FOUND FILE NOT FOUND  �
echo �                HAHAAAAAHAAAAAAAAAA                �
echo EIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII�
echo The %virusname% file could not be found! Oh no! Try freaking out.
pause
cls 
goto home

:errorsettings
cls
echo Please select an option typing in its number. Try again?
pause
cls
goto settings

:errorcolor
cls
echo Please select an option typing in its number. Try again?
pause
cls
goto color

:errorsize
cls
echo Please select an option typing in its number. Try again?
pause
cls
goto screensize

:errormenu
cls
echo Please select an option typing in its number. Try again?
pause
cls
goto menu

:errorv5
cls
echo Please select an option typing in its number. Try again?
pause
cls
goto virus5

:errorv21
cls
echo Please select an option typing in its number. Try again?
pause
cls
goto virus21

:errorv23
cls
echo Please select an option typing in its number. Try again?
pause
cls
goto virus23

:: ------------------------------------------------------------------
:: END --------------------------------------------------------------
:: ------------------------------------------------------------------

:fin
exit
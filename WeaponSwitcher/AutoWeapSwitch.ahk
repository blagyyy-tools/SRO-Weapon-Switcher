SetWorkingDir %A_ScriptDir%
#SingleInstance, Force

FileInstall, icon.ico, %a_temp%/Icon.ico, 1

FileInstall, sroskillbar.jpg, %a_temp%/sroskillbar.jpg, 1

FileInstall, sroskillbarspacehold.jpg, %a_temp%/sroskillbarspacehold.jpg, 1

FileInstall, GUIBackground.jpg, %a_temp%/GUIBackground.jpg, 1

if (A_Language = "0407")
MsgBox, 0, Bitte wähle das Silkroad Fenster aus, Drücke F5 um das aktive Silkroad Fenster auszuwählen!
else
MsgBox, 0, Please select the Silkroad Window, Press F5 to select the active Silkroad Window!

F5::
WinGetActiveTitle, SilkroadWinTitle
if (A_Language = "0407")
WinClose, Bitte wähle das Silkroad Fenster aus
else
WinClose, Please select the Silkroad Window

_win_ = %SilkroadWinTitle%
#If WinActive(_win_)

IniRead, Key1, SwitcherConfig.ini, Key1Config, Weapon, %A_Space%
IniRead, Key2, SwitcherConfig.ini, Key2Config, Weapon, %A_Space%
IniRead, Key3, SwitcherConfig.ini, Key3Config, Weapon, %A_Space%
IniRead, Key4, SwitcherConfig.ini, Key4Config, Weapon, %A_Space%
IniRead, Key5, SwitcherConfig.ini, Key5Config, Weapon, %A_Space%
IniRead, Key6, SwitcherConfig.ini, Key6Config, Weapon, %A_Space%
IniRead, Key7, SwitcherConfig.ini, Key7Config, Weapon, %A_Space%
IniRead, Key8, SwitcherConfig.ini, Key8Config, Weapon, %A_Space%
IniRead, Key9, SwitcherConfig.ini, Key9Config, Weapon, %A_Space%
IniRead, Key0, SwitcherConfig.ini, Key0Config, Weapon, %A_Space%
IniRead, SpaceHoldKey1, SwitcherConfig.ini, SpaceHoldKey1Config, Weapon, %A_Space%
IniRead, SpaceHoldKey2, SwitcherConfig.ini, SpaceHoldKey2Config, Weapon, %A_Space%
IniRead, CB1, SwitcherConfig.ini, Checkboxes, CBHoldSpace, 0
IniRead, CB2, SwitcherConfig.ini, Checkboxes, CBWeaponSwitcher, 0
IniRead, CB3, SwitcherConfig.ini, Checkboxes, CBST1, 0
IniRead, CB4, SwitcherConfig.ini, Checkboxes, CBST2, 0
IniRead, CB5, SwitcherConfig.ini, Checkboxes, CBST3, 0
IniRead, CB6, SwitcherConfig.ini, Checkboxes, CBST4, 0
IniRead, CB7, SwitcherConfig.ini, Checkboxes, CBST5, 0
IniRead, CB8, SwitcherConfig.ini, Checkboxes, CBST6, 0
IniRead, CB9, SwitcherConfig.ini, Checkboxes, CBST7, 0
IniRead, CB10, SwitcherConfig.ini, Checkboxes, CBST8, 0
IniRead, CB11, SwitcherConfig.ini, Checkboxes, CBST9, 0
IniRead, CB12, SwitcherConfig.ini, Checkboxes, CBST0, 0

Default:
Menu, Tray, Icon, %a_temp%/Icon.ico, 1, 1
Gui, Font, s11 cBlack, Verdana
gui, destroy
gui -caption
Gui Add, Picture, x0 y-1 w815 h530, %a_temp%/GUIBackground.jpg
Gui Add, Button, x624 y124 w100 h20 gKey1Set, Set Key 1
Gui Add, Button, x624 y157 w100 h20 gKey2Set, Set Key 2
Gui Add, Button, x624 y190 w100 h20 gKey3Set, Set Key 3
Gui Add, Button, x624 y223 w100 h20 gKey4Set, Set Key 4
Gui Add, Button, x624 y258 w100 h20 gKey5Set, Set Key 5
Gui Add, Button, x624 y291 w100 h20 gKey6Set, Set Key 6
Gui Add, Button, x624 y324 w100 h20 gKey7Set, Set Key 7
Gui Add, Button, x624 y359 w100 h20 gKey8Set, Set Key 8
Gui Add, Button, x624 y392 w100 h20 gKey9Set, Set Key 9
Gui Add, Button, x624 y427 w100 h20 gKey0Set, Set Key 0
Gui Add, Button, x51 y140 w100 h20 gSpaceHoldKey1Set, Space Down
Gui Add, Button, x155 y140 w100 h20 gSpaceHoldKey2Set, Space Up
if (A_Language = "0407")
Gui Add, Button, x640 y486 w80 h23 gButtonEXIT, SCHLIESSEN
else
Gui Add, Button, x640 y486 w80 h23 gButtonEXIT, EXIT
if (A_Language = "0407")
Gui Add, Button, x409 y486 w80 h23 gReadme, LIES MICH!
else
Gui Add, Button, x409 y486 w80 h23 gReadme, READ ME!
Gui Show, w814 h529, Silkroad Weapon Switcher by blagyyy
if (A_Language = "0407")
Gui, Add, Checkbox, x50 y120 vHoldSpace Checked%CB1% gSave, Funktion aktivieren
else
Gui, Add, Checkbox, x50 y120 vHoldSpace Checked%CB1% gSave, Enable this Feature
if (A_Language = "0407")
Gui, Add, Checkbox, x480 y90 vWeaponSwitcherCheck Checked%CB2% gSave, Funktion aktivieren
else
Gui, Add, Checkbox, x480 y90 vWeaponSwitcherCheck Checked%CB2% gSave, Enable this Feature
Gui, Add, Checkbox, x50 y220 vSelfTarget1 Checked%CB3% gSave, Key 1
Gui, Add, Checkbox, x120 y220 vSelfTarget2 Checked%CB4% gSave, Key 2
Gui, Add, Checkbox, x190 y220 vSelfTarget3 Checked%CB5% gSave, Key 3
Gui, Add, Checkbox, x260 y220 vSelfTarget4 Checked%CB6% gSave, Key 4
Gui, Add, Checkbox, x330 y220 vSelfTarget5 Checked%CB7% gSave, Key 5
Gui, Add, Checkbox, x50 y240 vSelfTarget6 Checked%CB8% gSave, Key 6
Gui, Add, Checkbox, x120 y240 vSelfTarget7 Checked%CB9% gSave, Key 7
Gui, Add, Checkbox, x190 y240 vSelfTarget8 Checked%CB10% gSave, Key 8
Gui, Add, Checkbox, x260 y240 vSelfTarget9 Checked%CB11% gSave, Key 9
Gui, Add, Checkbox, x330 y240 vSelfTarget0 Checked%CB12% gSave, Key 0
if (A_Language = "0407")
Gui Add, Button, x365 y116 w80 h23 gReadmeSpaceHold, LIES MICH!
else
Gui Add, Button, x365 y116 w80 h23 gReadmeSpaceHold, READ ME!
Gui, Submit, NoHide
Return

Save:
Gui, Submit, NoHide
IniWrite, %HoldSpace%, SwitcherConfig.ini, Checkboxes, CBHoldSpace
IniWrite, %WeaponSwitcherCheck%, SwitcherConfig.ini, Checkboxes, CBWeaponSwitcher
IniWrite, %SelfTarget1%, SwitcherConfig.ini, Checkboxes, CBST1
IniWrite, %SelfTarget2%, SwitcherConfig.ini, Checkboxes, CBST2
IniWrite, %SelfTarget3%, SwitcherConfig.ini, Checkboxes, CBST3
IniWrite, %SelfTarget4%, SwitcherConfig.ini, Checkboxes, CBST4
IniWrite, %SelfTarget5%, SwitcherConfig.ini, Checkboxes, CBST5
IniWrite, %SelfTarget6%, SwitcherConfig.ini, Checkboxes, CBST6
IniWrite, %SelfTarget7%, SwitcherConfig.ini, Checkboxes, CBST7
IniWrite, %SelfTarget8%, SwitcherConfig.ini, Checkboxes, CBST8
IniWrite, %SelfTarget9%, SwitcherConfig.ini, Checkboxes, CBST9
IniWrite, %SelfTarget0%, SwitcherConfig.ini, Checkboxes, CBST0
return

Key1Set:
suspend
if (A_Language = "0407")
InputBox, Key1, Slot 1 auswählen, Bitte wähle den Waffenslot aus!, , 200, 150
else
InputBox, Key1, Set Slot 1, Please set which Weaponslot you want to use!, , 200, 150
IniWrite, %Key1%, SwitcherConfig.ini, Key1Config, Weapon
suspend
return

Key2Set:
suspend
if (A_Language = "0407")
InputBox, Key2, Slot 2 auswählen, Bitte wähle den Waffenslot aus!, , 200, 150
else
InputBox, Key2, Set Slot 2, Please set which Weaponslot you want to use!, , 200, 150
IniWrite, %Key2%, SwitcherConfig.ini, Key2Config, Weapon
suspend
return

Key3Set:
suspend
if (A_Language = "0407")
InputBox, Key3, Slot 3 auswählen, Bitte wähle den Waffenslot aus!, , 200, 150
else
InputBox, Key3, Set Slot 3, Please set which Weaponslot you want to use!, , 200, 150
IniWrite, %Key3%, SwitcherConfig.ini, Key3Config, Weapon
suspend
return

Key4Set:
suspend
if (A_Language = "0407")
InputBox, Key4, Slot 4 auswählen, Bitte wähle den Waffenslot aus!, , 200, 150
else
InputBox, Key4, Set Slot 4, Please set which Weaponslot you want to use!, , 200, 150
IniWrite, %Key4%, SwitcherConfig.ini, Key4Config, Weapon
suspend
return

Key5Set:
suspend
if (A_Language = "0407")
InputBox, Key5, Slot 5 auswählen, Bitte wähle den Waffenslot aus!, , 200, 150
else
InputBox, Key5, Set Slot 5, Please set which Weaponslot you want to use!, , 200, 150
IniWrite, %Key5%, SwitcherConfig.ini, Key5Config, Weapon
suspend
return

Key6Set:
suspend
if (A_Language = "0407")
InputBox, Key6, Slot 6 auswählen, Bitte wähle den Waffenslot aus!, , 200, 150
else
InputBox, Key6, Set Slot 6, Please set which Weaponslot you want to use!, , 200, 150
IniWrite, %Key6%, SwitcherConfig.ini, Key6Config, Weapon
suspend
return

Key7Set:
suspend
if (A_Language = "0407")
InputBox, Key7, Slot 7 auswählen, Bitte wähle den Waffenslot aus!, , 200, 150
else
InputBox, Key7, Set Slot 7, Please set which Weaponslot you want to use!, , 200, 150
IniWrite, %Key7%, SwitcherConfig.ini, Key7Config, Weapon
suspend
return

Key8Set:
suspend
if (A_Language = "0407")
InputBox, Key8, Slot 8 auswählen, Bitte wähle den Waffenslot aus!, , 200, 150
else
InputBox, Key8, Set Slot 8, Please set which Weaponslot you want to use!, , 200, 150
IniWrite, %Key8%, SwitcherConfig.ini, Key8Config, Weapon
suspend
return

Key9Set:
suspend
if (A_Language = "0407")
InputBox, Key9, Slot 9 auswählen, Bitte wähle den Waffenslot aus!, , 200, 150
else
InputBox, Key9, Set Slot 9, Please set which Weaponslot you want to use!, , 200, 150
IniWrite, %Key9%, SwitcherConfig.ini, Key9Config, Weapon
suspend
return

Key0Set:
suspend
if (A_Language = "0407")
InputBox, Key0, Slot 0 auswählen, Bitte wähle den Waffenslot aus!, , 200, 150
else
InputBox, Key0, Set Slot 0, Please set which Weaponslot you want to use!, , 200, 150
IniWrite, %Key0%, SwitcherConfig.ini, Key0Config, Weapon
suspend
return

SpaceHoldKey1Set:
suspend
if (A_Language = "0407")
InputBox, SpaceHoldKey1, Slot 1 auswählen, Bitte wähle die Waffe aus die bei gehaltender Leertaste angelegt werden soll!, , 200, 160
else
InputBox, SpaceHoldKey1, Set Slot 1, Please set which Weapon you want to equip while holding the Spacebar!, , 200, 160
IniWrite, %SpaceHoldKey1%, SwitcherConfig.ini, SpaceHoldKey1Config, Weapon
suspend
return

SpaceHoldKey2Set:
suspend
if (A_Language = "0407")
InputBox, SpaceHoldKey2, Slot 2 auswählen, Bitte wähle die Waffe aus die beim loslassen der Leertaste angelegt werden soll!, , 200, 160
else
InputBox, SpaceHoldKey2, Set Slot 2, Please set which Weapon you want to equip when you release the Spacebar!, , 200, 160
IniWrite, %SpaceHoldKey2%, SwitcherConfig.ini, SpaceHoldKey2Config, Weapon
suspend
return

ButtonEXIT:
FileAppend, DEL "%A_ScriptFullPath%"`nDEL "%A_ScriptDir%\del.bat", del.bat

Loop {

   if (FileExist("del.bat"))

      break

}

Run, del.bat,, Hide
ExitApp
return

Readme:
Menu, Tray, Icon, %a_temp%/Icon.ico, 1, 1
Gui, Destroy
Gui, Font, s11 cBlack, Verdana
if (A_Language = "0407")
Gui, Add, Button, x350 y7 h20 w60 gDefault, Zurück
else
Gui, Add, Button, x350 y7 h20 w60 gDefault, Back
Gui, Show, w750 h760, Silkroad Weapon Switcher by blagyyy
if (A_Language = "0407")
Gui, Add, Text, x55 y355, Das Script benutzt die Floating Skill Bar um zwischen den Waffen zu wechseln.
else
Gui, Add, Text, x55 y355, The Script uses the Floating Skill Bar to switch between Weapons.
if (A_Language = "0407")
Gui, Add, Text, x55 y395, Die Waffenslots können manuell eingestellt werden!
else
Gui, Add, Text, x55 y395, You can manually set the Weapon Slots you want to use!
if (A_Language = "0407")
Gui, Add, Text, x55 y435, Lege die Skills einfach in die Skillbar wie du möchtest,
else
Gui, Add, Text, x55 y435, Just place the Skill in your Skillbar like you want to,
if (A_Language = "0407")
Gui, Add, Text, x55 y455, und stelle den passenden Waffenslot dazu ein!
else
Gui, Add, Text, x55 y455, define the Weaponslots and you are good to go!
if (A_Language = "0407")
Gui, Add, Text, x55 y495, Wenn du 2 Waffen einstellen möchtest (Schild/Schwert o. Schild/clericRod)
else
Gui, Add, Text, x55 y495, You need to set 2 Weapons in 1 Weaponslot Setting if you
if (A_Language = "0407")
Gui, Add, Text, x55 y515, musst du 2 Zahlen in den Waffenslot eintragen. (Bsp.: 53 für Schild/Schwert)
else
Gui, Add, Text, x55 y515, want to switch to both. e.g.: 53 for Sword/Shield or 54 for Cleric/Shield.
if (A_Language = "0407")
Gui, Add, Text, x55 y535, Bitte beachte, dass du den Skill 2 mal drücken musst damit beide Waffen angelegt werden.
else
Gui, Add, Text, x55 y535, Please keep in mind that you need to hit the Skillbutton twice to equip both Weapons.
if (A_Language = "0407")
Gui, Add, Text, x55 y575, Die Einstellungen werden automatisch in einer Config.ini gespeichert.
else
Gui, Add, Text, x55 y575, The Settings are automatically saved to a Config.ini.
if (A_Language = "0407")
Gui, Add, Text, x55 y595, Die Settingsdatei muss im gleichen Ordner wie das Script liegen!
else
Gui, Add, Text, x55 y595, Keep it in the same Folder with the Script!
if (A_Language = "0407")
Gui, Add, Text, x55 y635, Das Script kann manuell mit F8 pausiert werden.
else
Gui, Add, Text, x55 y635, You can manually pause the Script with F8.
if (A_Language = "0407")
Gui, Add, Text, x55 y655, Jedoch wird es automatisch pausiert, wenn Silkroad nicht im Vordergrund ist.
else
Gui, Add, Text, x55 y655, The Script will automatically be paused if the Silkroad Window is not active.
if (A_Language = "0407")
Gui, Add, Text, x55 y695, Das Script muss als Admin gestartet werden
else
Gui, Add, Text, x55 y695, You need to start the Script as Admin.
if (A_Language = "0407")
Gui, Add, Text, x55 y715, da sonst keine Leertaste an Silkroad gesendet wird!
else
Gui, Add, Text, x55 y715, Otherwise it won't send the Space Button to the Silkroad Client.
Gui, Add, Picture, x55 y32 w639 h320, %a_temp%/sroskillbar.jpg
Return

ReadmeSpaceHold:
Menu, Tray, Icon, %a_temp%/Icon.ico, 1, 1
Gui, Destroy
Gui, Font, s11 cBlack, Verdana
if (A_Language = "0407")
Gui, Add, Button, x150 y7 h20 w60 gDefault, Zurück
else
Gui, Add, Button, x150 y7 h20 w60 gDefault, Back
Gui, Show, w360 h250, Silkroad Weapon Switcher by blagyyy
if (A_Language = "0407")
Gui, Add, Text, x10 y80, Die ausgewählte Waffe bleibt angelegt,
else
Gui, Add, Text, x10 y80, The Weapon will be equipped,
if (A_Language = "0407")
Gui, Add, Text, x10 y100, solange die Leertaste gedrückt ist.
else
Gui, Add, Text, x10 y100, as long as you hold the Space Bar.
if (A_Language = "0407")
Gui, Add, Text, x10 y140, Die Waffen müssen in der Hauptskillbar liegen.
else
Gui, Add, Text, x10 y140, The Weapons need to be in the Main Skill Bar.
if (A_Language = "0407")
Gui, Add, Text, x10 y180, Es können Skills verwendet werden,
else
Gui, Add, Text, x10 y180, You can use Skills
if (A_Language = "0407")
Gui, Add, Text, x10 y200, die in der Floating Skill Bar liegen.
else
Gui, Add, Text, x10 y200, from the Floating Skill Bar.
Gui, Add, Picture, x142 y32 w76 h36, %a_temp%/sroskillbarspacehold.jpg
Return

F8::
  Suspend
  Pause ,,1
  if A_IsPaused {
    ToolTip, PAUSED, 200, 250
  } else {
    ToolTip, RUNNING, 200, 250
    SetTimer RemoveToolTip, 1000
  }
return

RemoveToolTip:
  ToolTip
  SetTimer, RemoveToolTip, Off
return

$Space::
    If HoldSpace = 1
{
    sendinput %SpaceHoldKey1%
    GoSub, HoldSpaceSub
    keyWait, Space
    sendinput %SpaceHoldKey2%
    sendinput {Space up}
return
}
else
    Send {Space}
Return

HoldSpaceSub:
sleep 100
sendinput {Space down}
return

$1::
If (WeaponSwitcherCheck = 1 && SelfTarget1 = 1 && HoldSpace = 1)
{
    If (GetKeyState("Space"))
    {
        Send ^1
        sleep 200
        send 1
return
    }
    else
    {
        Send {Space down}%Key1%{Space up}
        Send ^1
        sleep 200
        Send 1
return
    }
}
else If (GetKeyState("Space") && SelfTarget1 = 1)
{
    Send ^1
    sleep 200
    Send 1
return
}
else If (GetKeyState("Space"))
{
    Send 1
return
}
else If (WeaponSwitcherCheck = 1 && SelfTarget1 = 1)
{
	Send {Space down}%Key1%{Space up}
    Send ^1
    sleep 200
	Send 1
return
}
else If WeaponSwitcherCheck = 1
{
	Send {Space down}%Key1%{Space up}
	Send 1
return
}
else if SelfTarget1 = 1
{
    send ^1
    sleep 200
    send 1
return
}
else
    Send 1
return

$2::
If (WeaponSwitcherCheck = 1 && SelfTarget2 = 1 && HoldSpace = 1)
{
    If (GetKeyState("Space"))
    {
        Send ^1
        sleep 200
        send 2
return
    }
    else
    {
        Send {Space down}%Key2%{Space up}
        Send ^1
        sleep 200
        Send 2
return
    }
}
else If (GetKeyState("Space") && SelfTarget2 = 1)
{
    Send ^1
    sleep 200
    Send 2
return
}
else If (GetKeyState("Space"))
{
    Send 2
return
}
else If (WeaponSwitcherCheck = 1 && SelfTarget2 = 1)
{
	Send {Space down}%Key2%{Space up}
    Send ^1
    sleep 200
	Send 2
return
}
else If WeaponSwitcherCheck = 1
{
	Send {Space down}%Key2%{Space up}
	Send 2
return
}
else if SelfTarget2 = 1
{
    send ^1
    sleep 200
    send 2
return
}
else
    Send 2
return

$3::
If (WeaponSwitcherCheck = 1 && SelfTarget3 = 1 && HoldSpace = 1)
{
    If (GetKeyState("Space"))
    {
        Send ^1
        sleep 200
        send 3
return
    }
    else
    {
        Send {Space down}%Key3%{Space up}
        Send ^1
        sleep 200
        Send 3
return
    }
}
else If (GetKeyState("Space") && SelfTarget3 = 1)
{
    Send ^1
    sleep 200
    Send 3
return
}
else If (GetKeyState("Space"))
{
    Send 3
return
}
else If (WeaponSwitcherCheck = 1 && SelfTarget3 = 1)
{
	Send {Space down}%Key3%{Space up}
    Send ^1
    sleep 200
	Send 3
return
}
else If WeaponSwitcherCheck = 1
{
	Send {Space down}%Key3%{Space up}
	Send 3
return
}
else if SelfTarget3 = 1
{
    send ^1
    sleep 200
    send 3
return
}
else
    Send 3
return

$4::
If (WeaponSwitcherCheck = 1 && SelfTarget4 = 1 && HoldSpace = 1)
{
    If (GetKeyState("Space"))
    {
        Send ^1
        sleep 200
        send 4
return
    }
    else
    {
        Send {Space down}%Key4%{Space up}
        Send ^1
        sleep 200
        Send 4
return
    }
}
else If (GetKeyState("Space") && SelfTarget4 = 1)
{
    Send ^1
    sleep 200
    Send 4
return
}
else If (GetKeyState("Space"))
{
    Send 4
return
}
else If (WeaponSwitcherCheck = 1 && SelfTarget4 = 1)
{
	Send {Space down}%Key4%{Space up}
    Send ^1
    sleep 200
	Send 4
return
}
else If WeaponSwitcherCheck = 1
{
	Send {Space down}%Key4%{Space up}
	Send 4
return
}
else if SelfTarget4 = 1
{
    send ^1
    sleep 200
    send 4
return
}
else
    Send 4
return

$5::
If (WeaponSwitcherCheck = 1 && SelfTarget5 = 1 && HoldSpace = 1)
{
    If (GetKeyState("Space"))
    {
        Send ^1
        sleep 200
        send 5
return
    }
    else
    {
        Send {Space down}%Key5%{Space up}
        Send ^1
        sleep 200
        Send 5
return
    }
}
else If (GetKeyState("Space") && SelfTarget5 = 1)
{
    Send ^1
    sleep 200
    Send 5
return
}
else If (GetKeyState("Space"))
{
    Send 5
return
}
else If (WeaponSwitcherCheck = 1 && SelfTarget5 = 1)
{
	Send {Space down}%Key5%{Space up}
    Send ^1
    sleep 200
	Send 5
return
}
else If WeaponSwitcherCheck = 1
{
	Send {Space down}%Key5%{Space up}
	Send 5
return
}
else if SelfTarget5 = 1
{
    send ^1
    sleep 200
    send 5
return
}
else
    Send 5
return

$6::
If (WeaponSwitcherCheck = 1 && SelfTarget6 = 1 && HoldSpace = 1)
{
    If (GetKeyState("Space"))
    {
        Send ^1
        sleep 200
        send 6
return
    }
    else
    {
        Send {Space down}%Key6%{Space up}
        Send ^1
        sleep 200
        Send 6
return
    }
}
else If (GetKeyState("Space") && SelfTarget6 = 1)
{
    Send ^1
    sleep 200
    Send 6
return
}
else If (GetKeyState("Space"))
{
    Send 6
return
}
else If (WeaponSwitcherCheck = 1 && SelfTarget6 = 1)
{
	Send {Space down}%Key6%{Space up}
    Send ^1
    sleep 200
	Send 6
return
}
else If WeaponSwitcherCheck = 1
{
	Send {Space down}%Key6%{Space up}
	Send 6
return
}
else if SelfTarget6 = 1
{
    send ^1
    sleep 200
    send 6
return
}
else
    Send 6
return

$7::
If (WeaponSwitcherCheck = 1 && SelfTarget7 = 1 && HoldSpace = 1)
{
    If (GetKeyState("Space"))
    {
        Send ^1
        sleep 200
        send 7
return
    }
    else
    {
        Send {Space down}%Key7%{Space up}
        Send ^1
        sleep 200
        Send 7
return
    }
}
else If (GetKeyState("Space") && SelfTarget7 = 1)
{
    Send ^1
    sleep 200
    Send 7
return
}
else If (GetKeyState("Space"))
{
    Send 7
return
}
else If (WeaponSwitcherCheck = 1 && SelfTarget7 = 1)
{
	Send {Space down}%Key7%{Space up}
    Send ^1
    sleep 200
	Send 7
return
}
else If WeaponSwitcherCheck = 1
{
	Send {Space down}%Key7%{Space up}
	Send 7
return
}
else if SelfTarget7 = 1
{
    send ^1
    sleep 200
    send 7
return
}
else
    Send 7
return

$8::
If (WeaponSwitcherCheck = 1 && SelfTarget8 = 1 && HoldSpace = 1)
{
    If (GetKeyState("Space"))
    {
        Send ^1
        sleep 200
        send 8
return
    }
    else
    {
        Send {Space down}%Key8%{Space up}
        Send ^1
        sleep 200
        Send 8
return
    }
}
else If (GetKeyState("Space") && SelfTarget8 = 1)
{
    Send ^1
    sleep 200
    Send 8
return
}
else If (GetKeyState("Space"))
{
    Send 8
return
}
else If (WeaponSwitcherCheck = 1 && SelfTarget8 = 1)
{
	Send {Space down}%Key8%{Space up}
    Send ^1
    sleep 200
	Send 8
return
}
else If WeaponSwitcherCheck = 1
{
	Send {Space down}%Key8%{Space up}
	Send 8
return
}
else if SelfTarget8 = 1
{
    send ^1
    sleep 200
    send 8
return
}
else
    Send 8
return

$9::
If (WeaponSwitcherCheck = 1 && SelfTarget9 = 1 && HoldSpace = 1)
{
    If (GetKeyState("Space"))
    {
        Send ^1
        sleep 200
        send 9
return
    }
    else
    {
        Send {Space down}%Key9%{Space up}
        Send ^1
        sleep 200
        Send 9
return
    }
}
else If (GetKeyState("Space") && SelfTarget9 = 1)
{
    Send ^1
    sleep 200
    Send 9
return
}
else If (GetKeyState("Space"))
{
    Send 9
return
}
else If (WeaponSwitcherCheck = 1 && SelfTarget9 = 1)
{
	Send {Space down}%Key9%{Space up}
    Send ^1
    sleep 200
	Send 9
return
}
else If WeaponSwitcherCheck = 1
{
	Send {Space down}%Key9%{Space up}
	Send 9
return
}
else if SelfTarget9 = 1
{
    send ^1
    sleep 200
    send 9
return
}
else
    Send 9
return

$0::
If (WeaponSwitcherCheck = 1 && SelfTarget0 = 1 && HoldSpace = 1)
{
    If (GetKeyState("Space"))
    {
        Send ^1
        sleep 200
        send 0
return
    }
    else
    {
        Send {Space down}%Key0%{Space up}
        Send ^1
        sleep 200
        Send 0
return
    }
}
else If (GetKeyState("Space") && SelfTarget0 = 1)
{
    Send ^1
    sleep 200
    Send 0
return
}
else If (GetKeyState("Space"))
{
    Send 0
return
}
else If (WeaponSwitcherCheck = 1 && SelfTarget0 = 1)
{
	Send {Space down}%Key0%{Space up}
    Send ^1
    sleep 200
	Send 0
return
}
else If WeaponSwitcherCheck = 1
{
	Send {Space down}%Key0%{Space up}
	Send 0
return
}
else if SelfTarget0 = 1
{
    send ^1
    sleep 200
    send 0
return
}
else
    Send 0
return

GuiClose:
ExitApp
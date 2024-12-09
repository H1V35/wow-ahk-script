;
; AutoHotkey Version:	1.1.33.09
; Script Version:	0.4.2
; Language:		English
; Platform:		Win10
;
; Script Function:
;	Easy configure action key spam toggle with robust modifier keys support. Set your
;	activation key, and save. Start the macro by pressing that key, and insert modifiers
;	by holding down any combination of alt, ctrl, and shift. Stop the macro by pressing
;	the activation key again. A non-interactable display in the top-center of your
;	monitor will tell you if the macro is currently active (toggleable).
;
; Of Note:
;	Testing in-game found that wow does not recognize the difference between left and
;	right modifier keys in their macros. That still leaves 8 total combinations when you
;	include [nomod].
; Additionally:
;	Some modifier and hotkey combos do not work as expected. Particularly Shift+Numpad or letters
;
; Please make sure you are running the lastest version of AutoHotKey <https://www.autohotkey.com/>
;

#NoEnv                       ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input               ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#MaxThreadsPerHotkey 5

#ifWinActive World of Warcraft ; Only run if window "World of Warcraft" is active

;================= User Configurable Values =================
activationkey := "F1"		; Set the mouse or keyboard key to start or run the macro
runms := "90"			; Set your preferred macro run time in ms
monitor := true			; Set if monitor display is active
;================= User Configurable Values =================

if (monitor)
	_mvar := ""
if not monitor
	_mvar := "hide "

CustomColor := "EEAA99"  				; Can be any RGB color (it will be made transparent below).
Gui +LastFound +AlwaysOnTop -Caption +ToolWindow  	; +ToolWindow avoids a taskbar button and an alt-tab menu item.
Gui, Color, %CustomColor%
Gui, Font, s12  ; Set a large font size (32-point).
Gui, Add, Text, vMyText cyellow, Press :  %activationkey%`tMS :  %runms%`n       --- Macro : OFF ---
; Make all pixels of this color transparent and make the text itself translucent (150):
WinSet, TransColor, %CustomColor% 150
Gui, Show
return

Guisize:
	guiheight := A_guiheight
	guiwidth := A_guiwidth
	gui,show, % _mvar "x" (A_ScreenWidth/2) - (GuiWidth/2) " y30 w" Guiwidth " h" GuiHeight NoActivate

toggle = false

SetTimer, PressKey, %runms%

#UseHook On			; do not allow AHK to trigger these hotkeys with Send

HotKey,%activationkey%,DoToggle

#UseHook Off

DoToggle:

If (toggle := !toggle)		; toggle on/off spamming hotkey
	{
		Gosub PressKey
	}
Return

PressKey:

if not toggle
	GuiControl,, MyText, Press :  %activationkey%`tMS :  %runms%`n       --- Macro : OFF ---
else
	{
		GuiControl,, MyText, Press :  %activationkey%`tMS :  %runms%`n       --- Macro : ON   ---
		
		if NOT WinActive("World of Warcraft") 		; if NOT same window as when this loop started, then…
			WinWaitActive, World of Warcraft 	; pause loop here and wait for original window to become Active again

		if GetKeyState("1", "P") {
			Send, {Blind}{1}			; blind mode to send modifiers
		}
		
		if GetKeyState("2", "P") {
			Send, {Blind}{2}
		}
		
		if GetKeyState("3", "P") {
			Send, {Blind}{3}
		}
		
		if GetKeyState("4", "P") {
			Send, {Blind}{4}
		}
		
		if GetKeyState("5", "P") {
			Send, {Blind}{5}
		}
		
		if GetKeyState("TAB", "P") {
			Send, {Blind}{TAB}
		}
		
		if GetKeyState("q", "P") {
			Send, {Blind}{q}
		}
		
		if GetKeyState("e", "P") {
			Send, {Blind}{e}
		}
		
		if GetKeyState("r", "P") {
			Send, {Blind}{r}
		}
		
		if GetKeyState("t", "P") {
			Send, {Blind}{t}
		}
		
		if GetKeyState("s", "P") {
			Send, {Blind}{s}
		}
		
		if GetKeyState("f", "P") {
			Send, {Blind}{f}
		}
		
		if GetKeyState("g", "P") {
			Send, {Blind}{g}
		}
		
		if GetKeyState("z", "P") {
			Send, {Blind}{z}
		}
		
		if GetKeyState("x", "P") {
			Send, {Blind}{x}
		}
		
		if GetKeyState("c", "P") {
			Send, {Blind}{c}
		}
		
		if GetKeyState("v", "P") {
			Send, {Blind}{v}
		}
		
		if GetKeyState("b", "P") {
			Send, {Blind}{b}
		}
	}
		
return

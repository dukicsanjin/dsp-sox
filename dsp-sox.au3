#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <SliderConstants.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
;#include "StringSize.au3"
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
#include <WindowsConstants.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>


#Region ### START Koda GUI section ### Form=
$Form1_1 = GUICreate("Form1", 625, 317, 192, 114)
$Button1 = GUICtrlCreateButton("play", 168, 8, 73, 33, $WS_GROUP)
$Button2 = GUICtrlCreateButton("stop", 488, 8, 73, 33, $WS_GROUP)
$Label1 = GUICtrlCreateLabel("", 80, 160, 364, 44)
$Label2 = GUICtrlCreateLabel("", 80, 96, 364, 44)
$Button3 = GUICtrlCreateButton("open", 8, 8, 73, 33, $WS_GROUP)
;$Button4 = GUICtrlCreateButton("Button1", 472, 264, 89, 41, $WS_GROUP)
$Button4 = GUICtrlCreateButton("analyze", 488, 240, 89, 25, $WS_GROUP)
$Button5 = GUICtrlCreateButton("data file", 136, 256, 89, 41, $WS_GROUP)
GUICtrlSetState(-1, $GUI_HIDE)
$Button6 = GUICtrlCreateButton("analyze data imput", 368, 264, 89, 41, $WS_GROUP)
GUICtrlSetState(-1, $GUI_HIDE)
$Button7 = GUICtrlCreateButton("dat", 24, 256, 89, 41, $WS_GROUP)
GUICtrlSetState(-1, $GUI_HIDE)
$Button8 = GUICtrlCreateButton("save", 88, 8, 73, 33, $WS_GROUP)
$Label3 = GUICtrlCreateLabel("output", 8, 112, 34, 17)
$Label4 = GUICtrlCreateLabel("input", 16, 168, 27, 17)
$Button9 = GUICtrlCreateButton("convet", 328, 8, 73, 33, $WS_GROUP)
$Button10 = GUICtrlCreateButton("play new", 408, 8, 73, 33, $WS_GROUP)
$Button11 = GUICtrlCreateButton("record", 248, 8, 73, 33, $WS_GROUP)
$Button12 = GUICtrlCreateButton("spectoram in", 488, 104, 97, 33, $WS_GROUP)
$Button13 = GUICtrlCreateButton("spectogram out", 488, 160, 97, 33, $WS_GROUP)
$Button14 = GUICtrlCreateButton("analyze", 256, 264, 89, 41, $WS_GROUP)
GUICtrlSetState(-1, $GUI_HIDE)

;$Button15 = GUICtrlCreateButton("Button15", 488, 224, 97, 25, $WS_GROUP)

$Button15 = GUICtrlCreateButton("waveform", 488, 208, 89, 25, $WS_GROUP)

GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


$iLastSlider1 = ""
$iLastSlider2 = ""



;$fName = $sFile
Global $sFileOpenDialog
Global $sFileSaveDialog

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

Case $Button1

Run('sox.exe "' & $iLastSlider1 & '" -t waveaudio 0')

 Case $Button2
ProcessClose("sox.exe")


Case $Button3
;ProcessClose("sox.exe")
;$sFileOpenDialog = FileOpenDialog("fdsafd", @WindowsDir & "\", "Images (*.jpg;*.bmp)|Videos (*.avi;*.mpg)", $FD_FILEMUSTEXIST + $FD_MULTISELECT)

;$fName = StringRegExpReplace($sFile, "^.*\\", "")
$sFileOpenDialog = FileOpenDialog("open", @MyDocumentsDir & "\", "Soundfiles (*.*)" )
 MsgBox($MB_SYSTEMMODAL, "", "You chose the following file:" & @CRLF & $sFileOpenDialog)

Case $Button8

$sFileSaveDialog = FileSaveDialog("save", @MyDocumentsDir & "\", "aiff (*.aiff)|dat (*.dat)|mp3 (*.mp3)|ogg (*.ogg)|raw (*.raw)|wav (*.wav)|8svx (*.8svx)|aif (*.aif)|al (*.al)|amb (*.amb)|amr-nb (*.amr-nb)|amr-wb (*.amr-wb)|au (*.au)|avr (*.avr)|caf (*.caf)|cdda (*.cdda)|cdr (*.cdr)|cvs (*.cvs)|cvsd (*.cvsd)|cvu (*.cvu)|dvms (*.dvms)|f32 (*.f32)|f4 (*.f4)|f64 (*.f64)|f8 (*.f8)|fap (*.fap)|flac (*.flac)|fssd (*.fssd)|gsm (*.gsm)|gsrt (*.gsrt)|hcom (*.hcom)|htk (*.htk)|ima (*.ima)|ircam (*.ircam)|la (*.la)|lpc (*.lpc)|lpc10 (*.lpc10)|lu (*.lu)|mat (*.mat)|mat4 (*.mat4)|mat5 (*.mat5)|maud (*.maud)|mp2 (*.mp2)|nist (*.nist)|ogg (*.ogg)|opus (*.opus)|oss (*.oss)|prc (*.prc)|pvf (*.pvf)|s1 (*.s1)|s16 (*.s16)|s2 (*.s2)|s24 (*.s24)|s3 (*.s3)|s32 (*.s32)|s4 (*.s4)|s8 (*.s8)|sb (*.sb)|sd2 (*.sd2)|sds (*.sds)|sl (*.sl)|sln (*.sln)|smp (*.smp)|snd (*.snd)|sph (*.sph)|sw (*.sw)|txw (*.txw)|u1 (*.u1)|u16 (*.u16)|u2 (*.u2)|u24 (*.u24)|u3 (*.u3)|u32 (*.u32)|u4 (*.u4)|u8 (*.u8)|ub (*.ub)|ul (*.ul)|uw (*.uw)|vms (*.vms)|voc (*.voc)|vorbis (*.vorbis)|vox (*.vox)|w64 (*.w64)|wavpcm (*.wavpcm)|wv (*.wv)|wve (*.wve)|xa (*.xa)|xi (*.xi)")
 ;MsgBox($MB_SYSTEMMODAL, "", "You chose the following file:" & @CRLF & $FileSaveDialog)
  MsgBox($MB_SYSTEMMODAL, "", "You saved the following file:" & @CRLF & $sFileSaveDialog)



 Case $Button4
;ProcessClose("sox.exe")


 ;Run('sox.exe --plot gnuplot -t waveaudio 0 -t waveaudio 0 allpass ' & $iLastSlider1 & " " & $iLastSlider2 & ">new4324.plt")

;RunWait(@ComSpec & "cmd /k" & " sox.exe --plot gnuplot -t waveaudio 0 -t waveaudio 0 allpass " & $iLastSlider1 & " " & $iLastSlider2 & ">new43245.plt")
Run('cmd.exe')
;ConsoleWrite('sox.exe --plot gnuplot -t waveaudio 0 -t waveaudio 0 allpass ' & $iLastSlider1 & " " & $iLastSlider2 & ' >new4324.plt')
;WinWaitActiveActivate
WinWait(@SystemDir & "\cmd.exe")

WinWaitActive(@SystemDir & "\cmd.exe")

;Send('sox.exe --plot gnuplot -t waveaudio 0 -t waveaudio 0 fir '& $iLastSlider1 & " " & $iLastSlider2 & " " & $iLastSlider3 & ' >plotx.plt')

;Send("{ENTER}")
Send('gnuplot\bin\wgnuplot.exe new4.gp')
Send("{ENTER}")
;Send('exit')
;Send("{ENTER}")
ProcessClose("cmd.exe")




 Case $Button5
Run('sox.exe "' & $iLastSlider1 & '" ' & $iLastSlider1 & '.dat ')




 Case $Button6
   Run('sox.exe "' & $iLastSlider1 & '" ' & 'new.dat')
   FileCopy(@TempDir & "new.dat", @TempDir & "\gnuplot\bin\", $FC_OVERWRITE + $FC_CREATEPATH)





	Case $Button7

 ;Run('sox.exe --plot gnuplot -t waveaudio 0 -t waveaudio 0 allpass ' & $iLastSlider1 & " " & $iLastSlider2 & ">new4324.plt")

;RunWait(@ComSpec & "cmd /k" & " sox.exe --plot gnuplot -t waveaudio 0 -t waveaudio 0 allpass " & $iLastSlider1 & " " & $iLastSlider2 & ">new43245.plt")
Run('cmd.exe')
;ConsoleWrite('sox.exe --plot gnuplot -t waveaudio 0 -t waveaudio 0 allpass ' & $iLastSlider1 & " " & $iLastSlider2 & ' >new4324.plt')
;WinWaitActiveActivate
WinWait(@SystemDir & "\cmd.exe")

WinWaitActive(@SystemDir & "\cmd.exe")

Send('sox.exe "' & $iLastSlider1 & '" gnuplot\bin\new.dat')

Send("{ENTER}")
Send('cd gnuplot\bin\wgnuplot.exe new4.gp')
Send("{ENTER}")
;Send('exit')
;Send("{ENTER}")
ProcessClose("cmd.exe")

 Case $Button9
	Run('sox.exe "' & $iLastSlider1 & '" "' & $iLastSlider2 & '" ')

 Case $Button10
	Run('sox.exe "' & $iLastSlider2 & '" -t waveaudio 0')

 Case $Button11
	Run('sox.exe -t waveaudio 0 "' & $iLastSlider2 & '" ')
 Case $Button12
	Run('sox.exe "' & $iLastSlider1 & '" -n spectrogram')
	Run(@ComSpec & ' /c start' & ' spectogram.png')
 Case $Button13
	Run('sox.exe "' & $iLastSlider2 & '" -n spectrogram')
	Run(@ComSpec & ' /c start' & ' spectogram.png')



Case  $Button14

 ;Run('sox.exe --plot gnuplot -t waveaudio 0 -t waveaudio 0 allpass ' & $iLastSlider1 & " " & $iLastSlider2 & ">new4324.plt")

;RunWait(@ComSpec & "cmd /k" & " sox.exe --plot gnuplot -t waveaudio 0 -t waveaudio 0 allpass " & $iLastSlider1 & " " & $iLastSlider2 & ">new43245.plt")
Run('cmd.exe')
;ConsoleWrite('sox.exe --plot gnuplot -t waveaudio 0 -t waveaudio 0 allpass ' & $iLastSlider1 & " " & $iLastSlider2 & ' >new4324.plt')
;WinWaitActiveActivate
WinWait(@SystemDir & "\cmd.exe")

WinWaitActive(@SystemDir & "\cmd.exe")

;Send('sox.exe --plot gnuplot -t waveaudio 0 -t waveaudio 0 bandpass -c '& $iLastSlider1 & " " & $iLastSlider2 & ' >plotx.plt')

;Send("{ENTER}")
Send('gnuplot\bin\wgnuplot.exe new4.gp')

;Send('gnuplot\bin\wgnuplot.exe plotx.plt')
Send("{ENTER}")
;Send('exit')
;Send("{ENTER}")
ProcessClose("cmd.exe")

   Case  $Button15
	  MsgBox($MB_SYSTEMMODAL, "wave", "Yet  to be implemented," & @LF & "save file like new.dat in folder gnuplot\bin\,"  & @LF & "press analyse button!")


	EndSwitch



	$iCurrSlider1 = $sFileOpenDialog
	$iCurrSlider2 = $sFileSaveDialog

If $iCurrSlider1 <> $iLastSlider1 Then
        GUICtrlSetData($Label1, $iCurrSlider1)
        $iLastSlider1 = $iCurrSlider1

		ElseIf $iCurrSlider2 <> $iLastSlider2 Then
        GUICtrlSetData($Label2, $iCurrSlider2)
        $iLastSlider2 = $iCurrSlider2



  EndIf









WEnd

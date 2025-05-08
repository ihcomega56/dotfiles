#Requires AutoHotkey v2.0
A_MaxHotkeysPerInterval := 200

/*
Changekey:
Caps Lockに右Ctrl
WinにAlt
Altに左Ctrl
左CtrlにWin
*/

/*
アプリ切り替える
Cmd + Tab :: Alt + Tab
Cmd + Shift + Tab :: Alt + Shift + Tab
*/
<^Tab::AltTab

/*
カーソルを文頭・文末へ移動する
*/
>^a::Home
>^e::End

/*
Chromeとかでタブ移動する
Cmd (Left Ctrl) + Shift + [ :: Ctrl + PgUp
Cmd (Left Ctrl) + Shift + ] :: Ctrl + PgDn
*/
<^+sc01A::^PgUp
<^+sc01B::^PgDn

/*
範囲選択式のスクショ
Cmd (Left Ctrl) + Shift + 4 :: Win + Shift + S
*/
<^+4::#+s

/*
IMEのトグル
Cmd (Left Ctrl) + Space :: Win + Space
*/
>^Space::#Space

/*
vimiumのページ送りと
chromeの検索がぶつかる問題を回避
※vimium側にも要設定
Cmd (Left Ctrl) + f :: Ctrl + g
*/
#HotIf WinActive("ahk_exe msedge.exe")
<^f::^g

/*
========== かつて使っていたもの ==========
*/

/*
マウスのスクロールを逆にする
WheelUp::WheelDown
WheelDown::WheelUp
*/

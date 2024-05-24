#Requires AutoHotkey v2.0
A_MaxHotkeysPerInterval := 200

/*
Changekey:
Caps Lockに右Ctrl
Win（物理キーのCmd）に左Ctrl
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
Cmd + Shift + [ :: Ctrl + PgUp
Cmd + Shift + ] :: Ctrl + PgDn
*/
<^+sc01A::^PgUp
<^+sc01B::^PgDn

/*
vimiumのページ送りと
chromeの検索がぶつかる問題を回避
※vimium側にも要設定
Caps lock + f :: Ctrl + g
*/
>^f::^c

/*
範囲選択式のスクショ
Cmd + Shift + 4 :: Win + Shift + S
*/
<^+4::#+s

/*
マウスのスクロールを逆にする
*/
WheelUp::WheelDown
WheelDown::WheelUp

/*
Notepadを起動する（動作確認用）
*/
#n::
{
    if WinExist("ahk_class Notepad")
        WinActivate  ; Activate the window found above
    else
        Run "notepad"  ; Open a new Notepad window
}

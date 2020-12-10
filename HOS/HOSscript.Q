[General]
SyntaxVersion=2
BeginHotkey=116
BeginHotkeyMod=0
PauseHotkey=117
PauseHotkeyMod=0
StopHotkey=120
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=c5986ae0-375b-4539-ac0d-208cc676aa06
Description=我的脚本1
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
Rem mars

IfColor 505,715,"FFC8CD",0 Then
Call mmove (505,715)
Delay 1000
LeftClick 1
Call mmove(483, 431)
End If

//战斗
FindColor 719,515,987,684,"00007E",intX,intY
If intX > 0 And intY > 0 Then 
Call mmove(intx,inty)
LeftClick 1
Delay 1000
KeyPress "A", 1
Call mmove(483,431)
Delay 18000
KeyDown 17, 1
KeyPress 49, 1
Delay 300
KeyPress 49, 1
KeyUp 17, 1
KeyPress "Q", 1
KeyPress "W", 1
KeyPress "E", 1
KeyPress "R", 1
KeyPress "D", 1
KeyPress "1", 1
Delay 3000
KeyPress "Q", 1
KeyPress "W", 1
KeyPress "E", 1
KeyPress "R", 1
KeyPress "D", 1
KeyPress "1", 1
End If
KeyPress "Q", 1
KeyPress "W", 1
KeyPress "E", 1
KeyPress "R", 1
KeyPress "D", 1
KeyPress "1", 1


//中途加入 514,336  FFF4E6
IfColor 514,336,"FFF4E6",0 Then
Call mmove (444,440)
Delay 1000
LeftClick 1
Call mmove (483, 431)
End If
  
//加入错误 516,345  E2D7CB 506,433    
IfColor 516,345,"E2D7CB",0 Then
Call mmove (506,433)
Delay 1000
LeftClick 1
Delay 1000
Call mmove (483, 431)
End If

//连接错误 501,341  FFF1E0 504,434
IfColor 501,341,"FFF1E0",0 Then
Call mmove (504,434)
Delay 1000
LeftClick 1
Delay 1000
Call mmove (483, 431)
End If

//离开界面1 244,133  FFF0DD  81,733
IfColor 244,133, "FFF0DD",0 Then
Call mmove (81,733)
Delay 1000
LeftClick 1
Call mmove (483, 431)
End If


//离开界面2 513,543  FFFFFF   81,733
IfColor 513,543,"FFFFFF",0 Then
Call mmove (81,733)
Delay 1000
LeftClick 1
Call mmove (483, 431)
End If


//游戏结束
IfColor 117,718,"FFC9CE",0 Then
Call mmove (117, 718)
Delay 5000
LeftClick 1
Call mmove (483, 431)
End If

//该游戏已结束 510,278  FFFFFF   507,449
IfColor 510,278,"FFFFFF",0 Then
Call mmove (507,449)
Delay 1000
LeftClick 1
Call mmove (483, 431)
End If

Delay 5000
Call mmove(483, 431)

Goto mars

Sub mmove(temx,temy)
	x1 = temx : y1 = temy
GetCursorPos x, y
If abs(x - x1) > abs(y - y1) Then
    cs = abs(x - x1)
Else
    cs = abs(y - y1)
End If
轨迹x = (x1 - x) / cs : 轨迹y = (y1 - y) / cs
移动次数 = 0 : 随机次数 = 0 : 移动步长 = Int((20 - 16 + 1) * Rnd + 16)
While x <> x1 and y <>y1
    移动次数 = 移动次数 + 1
    x = x + 轨迹x : y = y + 轨迹y
    If 移动次数 = 移动步长 Then 
        Randomize
        移动次数 = 0 : 随机次数 = 随机次数 + 1 : 移动步长 = Int((20 - 16 + 1) * Rnd + 16) : 移动延时 = Int((15 - 10 + 1) * Rnd + 10)
        If 随机次数 = 4 Then 
            移动偏差x = Int((12 + 12 + 1) * Rnd - 12) : 移动偏差y = Int((9 + 9 + 1) * Rnd - 9) : 随机次数 = 0
        End If
        MoveTo x + 移动偏差x, y + 移动偏差y
        Delay 移动延时
    ElseIf abs(x - x1) <= 移动步长 and abs(y - y1) <= 移动步长 Then
        x = x1 : y = y1
        MoveTo x1, y1
    End If
Wend

End Sub

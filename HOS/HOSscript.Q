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
Description=�ҵĽű�1
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

//ս��
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


//��;���� 514,336  FFF4E6
IfColor 514,336,"FFF4E6",0 Then
Call mmove (444,440)
Delay 1000
LeftClick 1
Call mmove (483, 431)
End If
  
//������� 516,345  E2D7CB 506,433    
IfColor 516,345,"E2D7CB",0 Then
Call mmove (506,433)
Delay 1000
LeftClick 1
Delay 1000
Call mmove (483, 431)
End If

//���Ӵ��� 501,341  FFF1E0 504,434
IfColor 501,341,"FFF1E0",0 Then
Call mmove (504,434)
Delay 1000
LeftClick 1
Delay 1000
Call mmove (483, 431)
End If

//�뿪����1 244,133  FFF0DD  81,733
IfColor 244,133, "FFF0DD",0 Then
Call mmove (81,733)
Delay 1000
LeftClick 1
Call mmove (483, 431)
End If


//�뿪����2 513,543  FFFFFF   81,733
IfColor 513,543,"FFFFFF",0 Then
Call mmove (81,733)
Delay 1000
LeftClick 1
Call mmove (483, 431)
End If


//��Ϸ����
IfColor 117,718,"FFC9CE",0 Then
Call mmove (117, 718)
Delay 5000
LeftClick 1
Call mmove (483, 431)
End If

//����Ϸ�ѽ��� 510,278  FFFFFF   507,449
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
�켣x = (x1 - x) / cs : �켣y = (y1 - y) / cs
�ƶ����� = 0 : ������� = 0 : �ƶ����� = Int((20 - 16 + 1) * Rnd + 16)
While x <> x1 and y <>y1
    �ƶ����� = �ƶ����� + 1
    x = x + �켣x : y = y + �켣y
    If �ƶ����� = �ƶ����� Then 
        Randomize
        �ƶ����� = 0 : ������� = ������� + 1 : �ƶ����� = Int((20 - 16 + 1) * Rnd + 16) : �ƶ���ʱ = Int((15 - 10 + 1) * Rnd + 10)
        If ������� = 4 Then 
            �ƶ�ƫ��x = Int((12 + 12 + 1) * Rnd - 12) : �ƶ�ƫ��y = Int((9 + 9 + 1) * Rnd - 9) : ������� = 0
        End If
        MoveTo x + �ƶ�ƫ��x, y + �ƶ�ƫ��y
        Delay �ƶ���ʱ
    ElseIf abs(x - x1) <= �ƶ����� and abs(y - y1) <= �ƶ����� Then
        x = x1 : y = y1
        MoveTo x1, y1
    End If
Wend

End Sub
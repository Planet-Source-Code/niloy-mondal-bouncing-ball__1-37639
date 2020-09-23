VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6405
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7245
   LinkTopic       =   "Form1"
   ScaleHeight     =   6405
   ScaleWidth      =   7245
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   6720
      Top             =   120
   End
   Begin VB.Shape shprect 
      Height          =   6135
      Left            =   120
      Top             =   120
      Width           =   6975
   End
   Begin VB.Shape shpcircle 
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   600
      Shape           =   3  'Circle
      Top             =   360
      Width           =   735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Make a rectangle, circle and a timer
'Name them like this:-
'Rectangle - shprect
'Circle - shpcircle & fill the circle with any color you like
'timer - timer1
Dim i, j As Integer ' i and j act as unit vectors i.e. their values are either 1 or -1
Private Sub Form_Load()
Form1.Height = 6810
Form1.Width = 7365
shprect.Top = 120
shprect.Left = 120
shprect.Width = 6975
shprect.Height = 6135
shpcircle.Height = 615
shpcircle.Width = 735
i = 1   'i decides the direction in which the ball will move horizontally
j = 1   'j decides the direction in which the ball will move vertically
End Sub
Private Sub Timer1_Timer() 'This is the code that makes the ball bounce
'if i is '+', then shpcircle.left is incremented, else it is decremented, same is for j
shpcircle.Left = shpcircle.Left + (i * 80)
shpcircle.Top = shpcircle.Top + (j * 80)
If shpcircle.Left <= 120 Or shpcircle.Left >= 6360 Then 'when the ball touches the rectangle horizontally
    i = i * -1
End If
If shpcircle.Top <= 120 Or shpcircle.Top >= 5640 Then   'when the ball touches the rectangle vertically
    j = j * -1
End If
End Sub

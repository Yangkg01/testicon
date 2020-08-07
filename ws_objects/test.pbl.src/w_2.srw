$PBExportHeader$w_2.srw
forward
global type w_2 from window
end type
type cb_1 from commandbutton within w_2
end type
type mc_1 from monthcalendar within w_2
end type
end forward

global type w_2 from window
integer width = 4754
integer height = 1980
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
mc_1 mc_1
end type
global w_2 w_2

on w_2.create
this.cb_1=create cb_1
this.mc_1=create mc_1
this.Control[]={this.cb_1,&
this.mc_1}
end on

on w_2.destroy
destroy(this.cb_1)
destroy(this.mc_1)
end on

type cb_1 from commandbutton within w_2
integer x = 581
integer y = 1404
integer width = 457
integer height = 132
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;close(w_2)
end event

type mc_1 from monthcalendar within w_2
integer x = 530
integer y = 300
integer width = 1006
integer height = 760
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long titletextcolor = 134217742
long trailingtextcolor = 134217745
long monthbackcolor = 1073741824
long titlebackcolor = 134217741
integer maxselectcount = 31
integer scrollrate = 1
boolean todaysection = true
boolean todaycircle = true
boolean border = true
borderstyle borderstyle = stylelowered!
end type


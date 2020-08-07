$PBExportHeader$w_2.srw
forward
global type w_2 from window
end type
type cb_1 from commandbutton within w_2
end type
end forward

global type w_2 from window
integer width = 3959
integer height = 1648
boolean titlebar = true
string title = "w2"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
boolean center = true
cb_1 cb_1
end type
global w_2 w_2

on w_2.create
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on w_2.destroy
destroy(this.cb_1)
end on

type cb_1 from commandbutton within w_2
integer x = 736
integer y = 1148
integer width = 457
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type


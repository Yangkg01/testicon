$PBExportHeader$w_1.srw
forward
global type w_1 from window
end type
type cb_4 from commandbutton within w_1
end type
type cb_3 from commandbutton within w_1
end type
type cb_2 from commandbutton within w_1
end type
type dw_2 from datawindow within w_1
end type
type dw_1 from datawindow within w_1
end type
type cb_1 from commandbutton within w_1
end type
end forward

global type w_1 from window
integer width = 3959
integer height = 2392
boolean titlebar = true
string title = "w1"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "Question!"
boolean center = true
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
dw_2 dw_2
dw_1 dw_1
cb_1 cb_1
end type
global w_1 w_1

on w_1.create
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.dw_2=create dw_2
this.dw_1=create dw_1
this.cb_1=create cb_1
this.Control[]={this.cb_4,&
this.cb_3,&
this.cb_2,&
this.dw_2,&
this.dw_1,&
this.cb_1}
end on

on w_1.destroy
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.dw_2)
destroy(this.dw_1)
destroy(this.cb_1)
end on

event open;dw_1.settrans(sqlca)
dw_1.retrieve()

end event

type cb_4 from commandbutton within w_1
integer x = 2002
integer y = 2072
integer width = 457
integer height = 132
integer taborder = 50
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "new"
end type

type cb_3 from commandbutton within w_1
integer x = 1417
integer y = 2072
integer width = 457
integer height = 132
integer taborder = 40
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "display"
end type

event clicked;dw_2.dataobject="test.psr"
	dw_2.settrans(sqlca)
	dw_2.retrieve()
end event

type cb_2 from commandbutton within w_1
integer x = 709
integer y = 2060
integer width = 457
integer height = 132
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "psr"
end type

event clicked;
integer li_rtn
li_rtn=dw_1.saveas("test.psr",PSReport!,false)

if li_rtn=1 then
	messagebox("Error","generate psr success!")
else
	messagebox("Error","no psr!")
end if
end event

type dw_2 from datawindow within w_1
integer x = 1920
integer y = 76
integer width = 1966
integer height = 1724
integer taborder = 20
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_1
integer y = 76
integer width = 1861
integer height = 1728
integer taborder = 10
string title = "none"
string dataobject = "d_1"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_1
integer x = 69
integer y = 2092
integer width = 457
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Null"
end type

event clicked;string ls_value
datawindowchild  ldwc
//setnull(ls_value)

ls_value = ldwc.getsqlselect()

if pos(ls_value,":") > 0 then
                messagebox("1","1")
else
                messagebox("0","0")
end if

end event


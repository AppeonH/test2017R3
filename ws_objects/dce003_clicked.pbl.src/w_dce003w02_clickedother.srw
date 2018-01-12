$PBExportHeader$w_dce003w02_clickedother.srw
forward
global type w_dce003w02_clickedother from window
end type
type cb_retrieve from commandbutton within w_dce003w02_clickedother
end type
type cb_insert from commandbutton within w_dce003w02_clickedother
end type
type cb_delete from commandbutton within w_dce003w02_clickedother
end type
type dw_1 from datawindow within w_dce003w02_clickedother
end type
type cb_clear from commandbutton within w_dce003w02_clickedother
end type
type cb_save from commandbutton within w_dce003w02_clickedother
end type
type cb_close from commandbutton within w_dce003w02_clickedother
end type
type mle_output from multilineedit within w_dce003w02_clickedother
end type
type mle_view from multilineedit within w_dce003w02_clickedother
end type
type lb_items from listbox within w_dce003w02_clickedother
end type
type gb_3 from groupbox within w_dce003w02_clickedother
end type
type gb_4 from groupbox within w_dce003w02_clickedother
end type
type gb_5 from groupbox within w_dce003w02_clickedother
end type
type mle_describe from multilineedit within w_dce003w02_clickedother
end type
type gb_1 from groupbox within w_dce003w02_clickedother
end type
type gb_2 from groupbox within w_dce003w02_clickedother
end type
end forward

global type w_dce003w02_clickedother from window
integer width = 4133
integer height = 2384
boolean titlebar = true
string title = "DataWindow Clicked  Event"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_retrieve cb_retrieve
cb_insert cb_insert
cb_delete cb_delete
dw_1 dw_1
cb_clear cb_clear
cb_save cb_save
cb_close cb_close
mle_output mle_output
mle_view mle_view
lb_items lb_items
gb_3 gb_3
gb_4 gb_4
gb_5 gb_5
mle_describe mle_describe
gb_1 gb_1
gb_2 gb_2
end type
global w_dce003w02_clickedother w_dce003w02_clickedother

type variables
//OutPut Index 
Integer ii_index = 0
end variables

forward prototypes
public subroutine wf_describe ()
public subroutine wf_init_items ()
public subroutine wf_scriptexe (integer ai_item, boolean ab_execute)
public subroutine wf_scriptview (string as_script)
public subroutine wf_output (string as_mess, boolean ab_clear)
end prototypes

public subroutine wf_describe ();//You must Define this Function for call
////////////////////////////////////////////////////////////////
//Function : wf_describe ; Output Describe
//Argument : none
//Output   : none
//Designer : 
//Date     :
////////////////////////////////////////////////////////////////

mle_describe.text  = "1.Appeon Window : "
mle_describe.text +=  Classname() + "~r~n" //This Must be the First output
mle_describe.text += "2.Testing Purpose : DataWindow Clicked  Event " // This must include
mle_describe.text += "~r~n"
mle_describe.text += "3.Operation Step : ~r~n" // Optional
mle_describe.text += ""
mle_describe.text += "4.Object Declare : ~r~n" // Optional
Return
end subroutine

public subroutine wf_init_items ();////////////////////////////////////////////////////////////////
//Function : wf_init_items ; Initialization ListBox Items
//Argument : none
//Output   : none
//Designer : 
//Date     :
////////////////////////////////////////////////////////////////

lb_items.reset()
//script below  use to add test item into listbox control
lb_items.additem("DCE003W02P001: Click Button Control")
lb_items.additem("DCE003W02P002: Click Text Control")
lb_items.additem("DCE003W02P003: Click Computed Field Control")
lb_items.additem("DCE003W02P004: Click DataWindow ScrollBar")
lb_items.additem("DCE003W02P005: Click DataWindow Blank Area")

end subroutine

public subroutine wf_scriptexe (integer ai_item, boolean ab_execute);//You must Define this Function for view and Execute Script

//////////////////////////////////////////////////////////////////////
//Function: wf_scriptexe  View and Execute Script
//Argument: Int ai_item: SelectedItem;
//          Boolean ab_execute: Execute or View Flag
//Output:   none
//Designer:	
//Date:		2003-06-09
/////////////////////////////////////////////////////////////////////
String 		ls_item,ls_descript
long			ll_pos
long			ll_row

If ai_item < 1 Then Return

ll_pos = PosA(lb_items.text(ai_item),':')
ls_item = MidA(lb_items.text(ai_item),1,ll_pos - 1)
ls_descript = MidA(lb_items.text(ai_item),ll_pos + 1,LenA(lb_items.text(ai_item)))
ll_row = dw_1.getrow()
Wf_output('Test Point: ' + ls_item,true)
Wf_output('Describe  : ' + ls_descript,False)

/*
Choose Case ls_item
	Case 'DCE003W02P001'
		if ab_execute then
			//Click Button Control
			Wf_output('Test Point: ' + ls_item,true)
			Wf_output('Describe  : ' + ls_descript,False)
			dw_1.Event Clicked(0,0,ll_row,dw_1.object.b_header)
		else
			
		end if
	Case 'DCE003W02P002'
		if ab_execute then
			//Click Text Control
			Wf_output('Test Point: ' + ls_item,true)
			Wf_output('Describe  : ' + ls_descript,False)
			dw_1.Event Clicked(0,0,ll_row,dw_1.object.t_text)
		else
			
		end if
	Case 'DCE003W02P003'
		if ab_execute then
			//Click Computed Field Control
			Wf_output('Test Point: ' + ls_item,true)
			Wf_output('Describe  : ' + ls_descript,False)
			dw_1.Event Clicked(0,0,ll_row,dw_1.object.compute_1)
		else
			
		end if
	Case 'DCE003W02P004'
		if ab_execute then
			//Click DataWindow ScrollBar
			Wf_output('Test Point: ' + ls_item,true)
			Wf_output('Describe  : ' + ls_descript,False)
			Messagebox('Information','Pls Click ScrollBar and make sure Clicked Event Not Trigger')
		else
			
		end if
	Case 'DCE003W02P005'
		if ab_execute then
			//Click DataWindow Blank Area
			Wf_output('Test Point: ' + ls_item,true)
			Wf_output('Describe  : ' + ls_descript,False)
			Messagebox('Information','Pls Click DataWindow Blank Area ')
		else
			
		end if
	Case Else
	 	MessageBox("Error","This Point Not Coding",Exclamation!)
End Choose
*/
end subroutine

public subroutine wf_scriptview (string as_script);//You must Define this Function for view and Execute Script

//////////////////////////////////////////////////////////////////////
//Function: wf_scriptview  View a line Script
//Argument: String  as_mess a line Script
//Output:   none
//Designer:
//Date:
/////////////////////////////////////////////////////////////////////

mle_view.Text += as_script + "~r~n"

Return
end subroutine

public subroutine wf_output (string as_mess, boolean ab_clear);////////////////////////////////////////////////////////////////
//Function : Wf_OutPut
//Argument : String   as_mess;   The Message you will output 
//				 Boolean  ab_clear;  Clear Flag
//Output   : None
//Designer : 
//Date     :
////////////////////////////////////////////////////////////////

If ab_clear Then
	mle_output.Text = ""
	ii_index = 0
End IF	

ii_index = ii_index + 1
mle_output.Text += String(ii_index,'00')+". "+as_mess+"~r~n"
end subroutine

on w_dce003w02_clickedother.create
this.cb_retrieve=create cb_retrieve
this.cb_insert=create cb_insert
this.cb_delete=create cb_delete
this.dw_1=create dw_1
this.cb_clear=create cb_clear
this.cb_save=create cb_save
this.cb_close=create cb_close
this.mle_output=create mle_output
this.mle_view=create mle_view
this.lb_items=create lb_items
this.gb_3=create gb_3
this.gb_4=create gb_4
this.gb_5=create gb_5
this.mle_describe=create mle_describe
this.gb_1=create gb_1
this.gb_2=create gb_2
this.Control[]={this.cb_retrieve,&
this.cb_insert,&
this.cb_delete,&
this.dw_1,&
this.cb_clear,&
this.cb_save,&
this.cb_close,&
this.mle_output,&
this.mle_view,&
this.lb_items,&
this.gb_3,&
this.gb_4,&
this.gb_5,&
this.mle_describe,&
this.gb_1,&
this.gb_2}
end on

on w_dce003w02_clickedother.destroy
destroy(this.cb_retrieve)
destroy(this.cb_insert)
destroy(this.cb_delete)
destroy(this.dw_1)
destroy(this.cb_clear)
destroy(this.cb_save)
destroy(this.cb_close)
destroy(this.mle_output)
destroy(this.mle_view)
destroy(this.lb_items)
destroy(this.gb_3)
destroy(this.gb_4)
destroy(this.gb_5)
destroy(this.mle_describe)
destroy(this.gb_1)
destroy(this.gb_2)
end on

event open;declare my_proc1 procedure for dec_emp_init using sqlca;
execute my_proc1;
commit using sqlca;

//Add Describe
Wf_Describe()
//Init ListBox to add Test Items
Wf_Init_Items()

dw_1.setTransObject(sqlca)
dw_1.Retrieve()
end event

type cb_retrieve from commandbutton within w_dce003w02_clickedother
integer x = 1262
integer y = 2080
integer width = 448
integer height = 128
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Retrieve"
end type

event clicked;dw_1.Retrieve()
end event

type cb_insert from commandbutton within w_dce003w02_clickedother
boolean visible = false
integer x = 1733
integer y = 2080
integer width = 448
integer height = 128
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Insert"
end type

event clicked;long		ll_row

ll_row = dw_1.insertRow(0)
dw_1.ScrollToRow(ll_row)
end event

type cb_delete from commandbutton within w_dce003w02_clickedother
boolean visible = false
integer x = 2203
integer y = 2080
integer width = 448
integer height = 128
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Delete"
end type

event clicked;dw_1.deleteRow(0)
end event

type dw_1 from datawindow within w_dce003w02_clickedother
integer x = 1765
integer y = 112
integer width = 2263
integer height = 1408
integer taborder = 20
string title = "none"
string dataobject = "d_dce003w01_other"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;string ls_output

ls_output = 'Information : ' + " Clicked "+" (xpos = "+string(xpos)+",ypos = "+string(ypos)+",Row="+string(row)+", dwo.name="+dwo.name+")"
mle_output.text = mle_output.text + ls_output + '~r~n'

end event

type cb_clear from commandbutton within w_dce003w02_clickedother
integer x = 3145
integer y = 2080
integer width = 448
integer height = 128
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Clear"
end type

event clicked;ii_index = 0
mle_output.text=''
end event

type cb_save from commandbutton within w_dce003w02_clickedother
boolean visible = false
integer x = 2674
integer y = 2080
integer width = 448
integer height = 128
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Save"
end type

event clicked;String		ls_error

If dw_1.Update() = 1 Then
	commit;
Else
	ls_error = sqlca.sqlErrText
	rollback;
	Messagebox('Information','Update Failed!' + ls_error )
End If
end event

type cb_close from commandbutton within w_dce003w02_clickedother
integer x = 3616
integer y = 2080
integer width = 448
integer height = 128
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Close"
end type

event clicked;close(parent)
end event

type mle_output from multilineedit within w_dce003w02_clickedother
integer x = 64
integer y = 1640
integer width = 3959
integer height = 352
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type mle_view from multilineedit within w_dce003w02_clickedother
boolean visible = false
integer x = 1765
integer y = 740
integer width = 2263
integer height = 792
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type lb_items from listbox within w_dce003w02_clickedother
integer x = 73
integer y = 740
integer width = 1559
integer height = 792
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean sorted = false
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;//View Script
IF index > 0 THEN
	mle_view.text = ''
	wf_Scriptexe(lb_items.selectedindex(),False)
END IF
end event

event doubleclicked;//Execute Script
IF index > 0 THEN
	wf_Scriptexe(lb_items.selectedindex(),True)
END IF
end event

type gb_3 from groupbox within w_dce003w02_clickedother
integer x = 27
integer y = 668
integer width = 1655
integer height = 888
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Test Items"
end type

type gb_4 from groupbox within w_dce003w02_clickedother
boolean visible = false
integer x = 1728
integer y = 668
integer width = 2327
integer height = 888
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Script View"
end type

type gb_5 from groupbox within w_dce003w02_clickedother
integer x = 27
integer y = 1560
integer width = 4032
integer height = 464
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "OutPut"
end type

type mle_describe from multilineedit within w_dce003w02_clickedother
integer x = 73
integer y = 112
integer width = 1559
integer height = 524
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_1 from groupbox within w_dce003w02_clickedother
integer x = 27
integer y = 32
integer width = 1655
integer height = 632
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Description"
end type

type gb_2 from groupbox within w_dce003w02_clickedother
integer x = 1728
integer y = 32
integer width = 2327
integer height = 1520
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Test Items"
end type


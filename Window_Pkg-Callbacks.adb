with System;					use System;
with Glib;						use Glib;
with Gdk.Event;					use Gdk.Event;
with Gdk.Types;					use Gdk.Types;
with Gtk.Accel_Group;           use Gtk.Accel_Group;
with Gtk.Enums;                 use Gtk.Enums;
with Gtk.Style;                 use Gtk.Style;
with Gtk.Widget;                use Gtk.Widget;

with Gtk.Main;
with Ada.Text_IO;				use Ada.Text_IO;
with Ada.Strings.Unbounded;		use Ada.Strings.Unbounded;

package body Window_Pkg.Callbacks is
	
	--use Gtk.Arguments;

	--------------
	-- Clicked ---
	--------------
	procedure Clicked ( Widget : access Gtk_Button_Record'Class) is
		pragma Unreferenced (Widget);
		S : Unbounded_String :=  To_Unbounded_String( Get_Text (Get_Window.Edit) );
	begin
		if Get_Text ( Get_Window.Label ) = "How old are you ?" then
			Set_Text ( Get_Window.Message, "You are" & Integer'Image ( Integer'Value ( Get_Text (Get_Window.Edit) ) ) & " years old" );
			Set_Sensitive ( Get_Window.Button, False );
			Set_Text ( Get_Window.Edit, "");
		else
			Set_Text ( Get_Window.Message, "Your name is " & Get_Text ( Get_Window.Edit ) );
			Set_Text ( Get_Window.Label, "How old are you ?");
			Set_Text ( Get_Window.Edit, "");
		end if;

		--Put_Line (" You type : " & To_String (S));

	exception
		when Constraint_Error =>
			Set_Text ( Get_Window.Message, "Error integer input ");

	end Clicked;

	----------------------------
	-- On_Window_Delete_Event --
	----------------------------
	function On_Window_Delete_Event
		( Object : access Gtk_Widget_Record'Class) return Boolean is
	begin
		Gtk.Main.Main_Quit;
		return False;
	end On_Window_Delete_Event;

end Window_Pkg.Callbacks;
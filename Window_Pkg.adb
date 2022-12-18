with Gtk;							use Gtk;
with Glib;							use Glib;
with Glib.Enums;					use Glib.Enums;
with Gdk.Types; 					use Gdk.Types;
with Gtk.Window;			   		use Gtk.Window;
with Gtk.Widget;					use Gtk.Widget;

with Gtkada.Handlers;				use Gtkada.Handlers;
with Callback_User_Input;			use Callback_User_Input;
with Window_Pkg.Callbacks;			use Window_Pkg.Callbacks;

package body Window_Pkg is

	Window_Ptr : Window_Access := null;

	-------------
	-- Gtk_New --
	-------------
	procedure Gtk_New ( Window : out Window_Access ) is
	begin
		Window := new Window_Record;
		Window_Pkg.Initialize (Window);
		Window_Ptr := Window;
	end Gtk_New;

	----------------
	-- Initialize --
	----------------
	procedure Initialize ( Window : access Window_Record'Class) is
		pragma Suppress (All_Checks);

	begin

		Gtk.Window.Initialize (Window);
		Window.Set_Title ("User input with GtkAda");

		Gtk_New (Window.Grid, 2, 3, False);
		Window.Add (Window.Grid);

		-- Create Label
		Gtk_New (Window.Label, "What's your name ?");
		Window.Grid.Attach (Window.Label, 0, 1, 0, 1);

		-- Create Input text
		Gtk_New (Window.Edit);
		Window.Grid.Attach (Window.Edit, 1, 2, 0, 1);

		-- Create Button
		Gtk_New (Window.Button, "OK");
		Window.Grid.Attach (Window.Button, 2, 3, 0, 1);

		-- Create second label
		Gtk_New (Window.Message);
		Window.Grid.Attach (Window.Message, 0, 3, 1, 2);


		-- Connect Signals
		Button_Callback.Connect 
			( Window.Button, "clicked", Button_Callback.To_Marshaller(Clicked'Access), False);

		Return_Callback.Connect 
			( Window, "delete_event", On_Window_Delete_Event'Access, False);
		Window.Grid.Show_All;


	end Initialize;

	----------------
	-- Get_Window --
	----------------
	function Get_Window  return Window_Access is
	begin
		return Window_Ptr;
	end Get_Window;



end Window_Pkg;

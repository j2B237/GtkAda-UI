with Gtk.Window;			use Gtk.Window;
with Gtk.Label;				use Gtk.Label;
with Gtk.GEntry;			use Gtk.GEntry;
with Gtk.Table;				use Gtk.Table;
with Gtk.Button;			use Gtk.Button;
with Gtk.Widget;			use Gtk.Widget;

package Window_Pkg is

	type Window_Record is new Gtk_Window_Record with record
		Window : Gtk_Window;
		Grid   : Gtk_Table;
		Label  : Gtk_Label;
		Message: Gtk_Label;
		Edit   : Gtk_GEntry;
		Button : Gtk_Button;
	end record;

	-- Pointer on Window widget
	type Window_Access is access all Window_Record'Class;


	procedure Gtk_New    ( Window : out Window_Access );
	procedure Initialize ( Window : access Window_Record'Class) ;
	function  Get_Window  return Window_Access;



end Window_Pkg;

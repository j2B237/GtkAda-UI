with Gtk.Handlers;
pragma Elaborate_All (Gtk.Handlers);
with Gtk.Button;			use Gtk.Button;

package Callback_User_Input is
	
	package Button_Callback is new
		Gtk.Handlers.Callback (Gtk_Button_Record);

end Callback_User_Input;
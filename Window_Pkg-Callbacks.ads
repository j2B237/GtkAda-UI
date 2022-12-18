with Gtk.Widget;			use Gtk.Widget;

package Window_Pkg.Callbacks is
	
	procedure Clicked 
		( Widget : access Gtk_Button_Record'Class);
		-- Signal trigger when user click on OK button

	function On_Window_Delete_Event
		( Object : access Gtk_Widget_Record'Class) return Boolean;
		-- Signal trigger when user close current window
end Window_Pkg.Callbacks;
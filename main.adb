with Window_Pkg;     		use Window_Pkg;
with Gtk.Main;

procedure Main is

	Window : Window_Access;

begin
	Gtk.Main.Init;

	GTk_New (Window);

	Window.Show_All;
	Window.Present;

	Gtk.Main.Main;

end Main;

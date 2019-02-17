namespace Agile {
    public class MainWindow : Gtk.ApplicationWindow {
        public MainWindow (Gtk.Application app) {
            Object (
                application: app,
                default_height: 640,
                default_width: 1280
            );

            var header_bar = new HeaderBar ();
            this.set_titlebar (header_bar);

            var main_grid = new Gtk.Grid ();
            main_grid.orientation = Gtk.Orientation.VERTICAL;
            main_grid.row_spacing = 6;
            main_grid.expand = true;

            var welcome = new WelcomeView ();
            main_grid.add (welcome);
            
            this.add (main_grid);
        }
    }
}
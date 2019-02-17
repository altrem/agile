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

            var welcome = new Granite.Widgets.Welcome ("No Board Open", "Create or open a board to start organizing your tasks.");
            welcome.append ("document-new", "New Board", "Create a new Kanban Board.");
            welcome.append ("text-x-source", "Import A Board", "Import a Board from a file on your hard drive.");

            main_grid.add (welcome);
            this.add (main_grid);
        }
    }
}
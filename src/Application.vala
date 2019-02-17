namespace Agile {
    public class AgileApp : Gtk.Application {

        public AgileApp () {
            Object (
                application_id: "com.github.altrem.agile",
                flags : ApplicationFlags.FLAGS_NONE
            );
        }

        protected override void activate () {
            var main_window = new MainWindow (this);
            main_window.show_all ();
        }

        public static int main (string[] args) {
            var app = new AgileApp ();
            return app.run (args);
        }
    }
}


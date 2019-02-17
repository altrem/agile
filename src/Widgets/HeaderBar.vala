namespace Agile { 
    class HeaderBar : Gtk.HeaderBar { 
        public HeaderBar() {
            Object(
                show_close_button: true,
                title: "Agile",
                subtitle: "Kanban Boards"
            );

            var add_board_button = new Gtk.Button.from_icon_name ("document-new", Gtk.IconSize.LARGE_TOOLBAR);
            add_board_button.tooltip_text = "New Board";
            this.pack_start (add_board_button);

            var preferences_button = new Gtk.Button.from_icon_name ("open-menu", Gtk.IconSize.LARGE_TOOLBAR);
            add_board_button.tooltip_text = "Preferences";
            this.pack_end (preferences_button);
        }
    }
}
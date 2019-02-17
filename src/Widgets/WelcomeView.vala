namespace Agile {
    class WelcomeView : Granite.Widgets.Welcome {
        public WelcomeView () {
            Object (
                title: "Hello There",
                subtitle: "General Kenobi!"
            );

            this.append ("document-new", "New Board", "Create a new Kanban board.");
            this.append ("document-open", "Import Board", "Import a board from a file on your hard drive.");
        }
    }
}
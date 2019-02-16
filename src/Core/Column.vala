namespace Agile {

    class Column : GLib.Object {

        public int id { get; set; }

        public string name { get; set; }

        public Column (string name) {
            this.id = 1;
            this.name = name;
        }
    }
}
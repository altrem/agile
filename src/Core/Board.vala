using Gee;

namespace Agile {

    class Board : GLib.Object {

        public int id { get; private set; }

        public string name { get; set; }

        private ArrayList<Column> columns;

        public Board (string name) {
            this.id = 1;
            this.name = name;
            this.columns = new ArrayList<Column>();
        }

        public int ? add_new_column (string column_name) {

            if (!is_column_name_available (column_name)) {
                return null;
            }

            Column new_column = new Column (column_name);
            this.columns.add (new_column);
            return new_column.id;
        }

        public void rename_column (int column_id, string new_column_name) {

            if (!is_column_name_available (new_column_name)) {
                return;
            }

            Column ? found_column = Collections.get_first<Column>(Collections.where<Column>(this.columns, (col) => col.id == column_id));
            if (found_column == null) {
                return;
            }

            found_column.name = new_column_name;
        }

        public void change_column_position (int column_id, int new_column_position) {

            Column ? found_column = Collections.get_first<Column>(Collections.where<Column>(this.columns, (col) => col.id == column_id));

            if (found_column == null) {
                return;
            }

            this.columns.remove (found_column);
            this.columns.insert (new_column_position, found_column);
        }

        private bool is_column_name_available (string column_name) {

            if (column_name == "") {
                return false;
            }

            return Collections.any<Column> (this.columns, (col) => col.name == column_name);
        }
    }
}
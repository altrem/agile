namespace Agile {

    interface BoardRepository : GLib.Object {
        public abstract Board ? find_by_id (int board_id);
        public abstract bool exists (string board_name);
        public abstract void save (Board board);
    }

    class BoardService : GLib.Object {

        public BoardRepository board_repository { get; private set; }

        public BoardService (BoardRepository board_repository) {
            this.board_repository = board_repository;
        }

        public void create_board (string board_name) {

            if (board_repository.exists (board_name)) {
                return;
            }

            Board new_board = new Board (board_name);
            board_repository.save (new_board);
        }

        public void rename_board (int board_id, string board_name) {

            if (board_repository.exists (board_name)) {
                return;
            }

            Board ? board = board_repository.find_by_id (board_id);
            board.name = board_name;
            board_repository.save (board);
        }
    }
}
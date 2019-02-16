using Gee;

namespace Agile {

    namespace Collections {

        public Gee.List<T> where<T> (Gee.List<T> collection, Predicate<T> predicate) {

            Gee.List<T> new_list = new Gee.ArrayList<T>();
            foreach (var item in collection) {
                if (predicate (item)) {
                    new_list.add (item);
                }
            }

            return new_list;
        }

        public T ? get_first<T> (Gee.List<T> collection) {

            if (collection.size < 1) {
                return null;
            }

            return collection.get (0);
        }

        public bool any<T> (Gee.List<T> collection, Predicate<T> predicate) {
            foreach (var item in collection) {
                if (predicate (item)) {
                    return true;
                }
            }

            return false;
        }
    }
}
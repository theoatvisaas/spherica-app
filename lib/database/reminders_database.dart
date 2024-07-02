import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:spherica/models/reminder.dart';
import 'objectbox.g.dart';

class RemindersDatabase {
  late final Store store;
  late final Box<Reminder> box;

  Future<RemindersDatabase> init() async {
    final dir = await getApplicationDocumentsDirectory();
    final path = p.join(dir.path, 'objectbox');
    store = Store(getObjectBoxModel(), directory: path);
    box = store.box<Reminder>();
    return this;
  }

  int saveReminder(Reminder reminder) {
    final id = box.put(reminder);
    return id;
  }

  Reminder? getReminder(int id) {
    return box.get(id);
  }

  bool removeReminder(int id) {
    return box.remove(id);
  }

  List<Reminder> getAllReminders() {
    return box.getAll();
  }

  void close() {
    store.close();
  }
}

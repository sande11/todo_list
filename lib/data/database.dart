import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];
  // reference the box
  final _myBox = Hive.box('myBox');

  // load db
  void loadData() {
    // Provide a default value (empty list) if the key doesn't exist
    toDoList = _myBox.get("TODOLIST", defaultValue: []);
  }

  // update db
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}

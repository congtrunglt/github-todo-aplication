import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabse {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  void createInitaldata() {
    // List of todo list
    List toDoList = [
      ['Complete first project', true],
      ['continue to learn flutter', true]
    ];
  }

  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  void updateData() {
    _myBox.put('TODOLIST', toDoList);
  }
}

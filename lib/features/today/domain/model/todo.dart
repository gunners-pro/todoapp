import 'package:todoapp/features/today/domain/enums/todo_status.dart';

class Todo {
  final String id;
  final String title;
  final DateTime date;
  final TodoStatus status;

  Todo({
    required this.id,
    required this.title,
    required this.date,
    this.status = TodoStatus.inProgress,
  });
}

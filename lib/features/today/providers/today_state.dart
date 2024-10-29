import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/features/today/domain/model/todo.dart';
import 'package:todoapp/features/todos/providers/todos_state.dart';

part 'today_state.g.dart';

@riverpod
List<Todo> listTodoToday(Ref ref) {
  var todoProvider = ref.watch(todosProvider);
  var today = DateTime.now().day;
  var todayList = todoProvider.where((p) => p.date.day == today).toList();
  return todayList;
}

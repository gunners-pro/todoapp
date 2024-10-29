import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todoapp/features/today/domain/enums/todo_status.dart';
import 'package:todoapp/features/today/domain/model/todo.dart';

part 'todos_state.g.dart';

@riverpod
class Todos extends _$Todos {
  @override
  List<Todo> build() => [
        Todo(
          id: '1',
          title: 'Comprar mantimentos',
          date: DateTime.now(),
          status: TodoStatus.inProgress,
        ),
        Todo(
          id: '2',
          title: 'Reunião com a equipe',
          date: DateTime.now(),
          status: TodoStatus.inProgress,
        ),
        Todo(
          id: '3',
          title: 'Fazer exercícios',
          date: DateTime.now().subtract(const Duration(days: 1)),
          status: TodoStatus.late,
        ),
        Todo(
          id: '4',
          title: 'Ler um livro',
          date: DateTime.now(),
          status: TodoStatus.completed,
        ),
        Todo(
          id: '5',
          title: 'Organizar documentos',
          date: DateTime.now(),
          status: TodoStatus.inProgress,
        ),
      ];
}

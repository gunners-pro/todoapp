import 'package:riverpod_annotation/riverpod_annotation.dart';
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
          isDone: false,
        ),
        Todo(
          id: '2',
          title: 'Reunião com a equipe',
          date: DateTime.now().add(const Duration(days: 1)),
          isDone: false,
        ),
        Todo(
          id: '3',
          title: 'Fazer exercícios',
          date: DateTime.now().add(const Duration(days: 2)),
          isDone: false,
        ),
        Todo(
          id: '4',
          title: 'Ler um livro',
          date: DateTime.now().add(const Duration(days: 3)),
          isDone: false,
        ),
        Todo(
          id: '5',
          title: 'Organizar documentos',
          date: DateTime.now().add(const Duration(days: 4)),
          isDone: false,
        ),
      ];
}

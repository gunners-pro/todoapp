import 'package:flutter/material.dart';
import 'package:todoapp/features/today/domain/enums/todo_status.dart';
import 'package:todoapp/features/today/domain/model/todo.dart';

class TodoCard extends StatelessWidget {
  final Todo todo;

  const TodoCard({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(16);
    final hour = todo.date.hour;
    final minute = todo.date.minute;

    Color bgColor() {
      switch (todo.status) {
        case TodoStatus.completed:
          return Theme.of(context).colorScheme.tertiary;
        case TodoStatus.late:
          return Theme.of(context).colorScheme.secondary;
        default:
          return Theme.of(context).colorScheme.primary;
      }
    }

    void bottomSheet() {
      showBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 100,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: borderRadius,
                      child: Ink(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                              color: Colors.black,
                            ),
                            borderRadius: borderRadius,
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(2, 3),
                                color: Colors.black45,
                              )
                            ]),
                        child: const Text(
                          "Editar",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: borderRadius,
                      child: Ink(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.tertiary,
                            border: Border.all(
                              width: 2,
                              color: Colors.black,
                            ),
                            borderRadius: borderRadius,
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(2, 3),
                                color: Colors.black45,
                              )
                            ]),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Completar",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.done, size: 25, weight: 60)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          });
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        boxShadow: const [
          BoxShadow(
            offset: Offset(1, 4),
            color: Colors.black45,
          ),
        ],
      ),
      child: Material(
        borderRadius: borderRadius,
        child: InkWell(
          onTap: bottomSheet,
          borderRadius: borderRadius,
          child: Ink(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              color: bgColor(),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  todo.title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.access_time, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      "$hour:$minute",
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

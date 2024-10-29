import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/components/todo_card.dart';
import 'package:todoapp/features/today/providers/today_state.dart';
import 'package:todoapp/features/today/views/widgets/header.dart';

class TodayPage extends ConsumerWidget {
  final PageController pageController;
  const TodayPage({super.key, required this.pageController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var todayTodos = ref.watch(listTodoTodayProvider);

    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Stack(
        children: [
          Positioned(
            right: -20,
            top: 36,
            child: GestureDetector(
              onHorizontalDragUpdate: (details) => {
                if (details.delta.dx < -0.5)
                  {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.slowMiddle,
                    )
                  }
              },
              child: const IconButton(
                onPressed: null,
                icon: Image(
                  image: AssetImage("assets/btn_left.png"),
                  width: 60,
                  height: 60,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 57, left: 24, right: 24),
            child: Column(
              children: [
                const Header(),
                const SizedBox(
                  height: 24,
                ),
                Flexible(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(bottom: 16, top: 8),
                    itemCount: todayTodos.length,
                    itemBuilder: (BuildContext context, int index) {
                      return const TodoCard();
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

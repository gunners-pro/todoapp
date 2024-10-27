import 'package:flutter/material.dart';
import 'package:todoapp/components/todo_card.dart';

class HomePage extends StatelessWidget {
  final PageController pageController;
  const HomePage({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff278e8d),
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
                Row(
                  children: [
                    Text(
                      "Hoje",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      " Seg - Out 25",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.add,
                      size: 32,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Flexible(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(bottom: 16, top: 8),
                    itemCount: 10,
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

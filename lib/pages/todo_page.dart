import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  final PageController pageController;

  const TodoPage({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff303036),
      child: Stack(
        children: [
          Positioned(
            left: -20,
            top: 36,
            child: GestureDetector(
              onHorizontalDragUpdate: (details) => {
                if (details.delta.dx > -0.5)
                  {
                    pageController.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.slowMiddle,
                    )
                  }
              },
              child: const IconButton(
                onPressed: null,
                icon: Image(
                  image: AssetImage("assets/btn_right.png"),
                  width: 60,
                  height: 60,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

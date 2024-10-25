import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}

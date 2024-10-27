import 'package:flutter/material.dart';
import 'package:todoapp/features/today/utils/format_date.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    String today = formatDate(DateTime.now());

    return Row(
      children: [
        Text(
          "Hoje",
          style: TextStyle(
            color: Theme.of(context).colorScheme.tertiary,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          " $today",
          style: const TextStyle(
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
    );
  }
}

import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  const RoundedCard({super.key, required this.color, required this.labelText});
  final Color color;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      color: Theme.of(context).colorScheme.surfaceVariant,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: SizedBox(
        width: 300,
        height: 100,
        child: Center(
          child: Text(labelText,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
      ),
    );
  }
}

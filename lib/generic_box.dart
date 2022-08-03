import 'package:flutter/cupertino.dart';

class GenericBox extends StatelessWidget {
  final Color? color;
  const GenericBox({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: color!, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

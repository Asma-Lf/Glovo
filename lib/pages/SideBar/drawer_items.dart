import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {Key? key,
      required this.name,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  final String name;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: Color(0xFF005b71),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 20, color: Color(0xFF005b71)),
            )
          ],
        ),
      ),
    );
  }
}

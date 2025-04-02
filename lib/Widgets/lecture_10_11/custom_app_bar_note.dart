import 'package:flutter/material.dart';

class AppBarNote extends StatelessWidget implements PreferredSizeWidget {
  const AppBarNote({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });

  final String text;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text,
          style: TextStyle(
              fontSize: 25, color: Colors.white,
              fontFamily: "Agbalumo"
          )),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 18.0,top: 8),
          child: InkWell(
            onTap: onTap,
            child: Container(
              height: 30,
              width: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.teal),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(
    double.maxFinite,
    60,
  );
}
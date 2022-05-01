import 'package:flutter/material.dart';

import '../screens/vid1.dart';

class VerticalIconButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function()? onPressed;

  const VerticalIconButton({
    Key ?key,
    required this.icon,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async=> {
        // ScaffoldMessenger.of(context)
        //     .showSnackBar(SnackBar(content: Text(content.name)))
        // Navigator.of(context).pushReplacement(
        //     MaterialPageRoute(builder: (context) => Vid1()))
      },
      child: Column(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(height: 2.0),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

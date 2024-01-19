import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String title;
  final Color color ;
  final VoidCallback onPress;
  const MyButtons({super.key, required this.title,
    this.color= const Color(0xffa5a5a5),
    required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(child: Text(title , style: const TextStyle(

              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),),

          ),
        ),
      ),
    );
  }
}
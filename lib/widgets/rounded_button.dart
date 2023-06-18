import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
  final String name;
  final double height;
  final double width;
  // final Function onPressed;

  RoundedButton({
    required this.name,
    required this.height,
    required this.width,
    // required this.onPressed(),
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            height*0.35,
        ),
        color: Colors.grey[500],
      ),
      child:
      // TextButton(
      //   onPressed: (){},
      //   child: Text(
      //       name,
      //     style: TextStyle(
      //         fontSize: 22,
      //       color: Colors.black54,
      //       height: 1.5,
      //     ),
      //   ),
      // ),
      Center(
        child: Text(
          name,
          style: TextStyle(
            fontSize: 22,
            color: Colors.black54,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}
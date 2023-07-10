
import 'package:flutter/material.dart';


class Number extends StatelessWidget {
  const Number({Key? key , this.value = 0 , this.color = const Color(0xff2196f3)})
        :super(key: key);
  final int value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      constraints: const BoxConstraints(minWidth: 50, maxWidth: 100),
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color
      ),
      child:Text("$value",
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 30 ,
              color: Colors.white ,
              fontWeight: FontWeight.bold ,
              decoration: TextDecoration.none,
          )),
    );
  }
}



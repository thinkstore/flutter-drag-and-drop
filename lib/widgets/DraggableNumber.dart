
import 'package:flutter/material.dart';

import 'DraggingNumber.dart';
import 'Number.dart';

class DraggableNumber extends StatelessWidget {
  const DraggableNumber({Key? key , required this.number}) : super(key: key);

  final Number number;

  @override
  Widget build(BuildContext context) {
    return Draggable<int>(
      data : number.value,
      feedback: DraggingNumber( number: number ),
      childWhenDragging: Number( value: number.value , color: Colors.grey.shade500,),
      child: number,
    );

  }
}

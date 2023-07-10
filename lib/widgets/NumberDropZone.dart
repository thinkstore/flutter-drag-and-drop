
import 'package:flutter/material.dart';

import 'Number.dart';

typedef SetNumber = void Function(Number);
typedef GetNumber = Number Function();



class NumberDropZone extends StatelessWidget {
  const NumberDropZone({Key? key , required this.setNumber , required this.getNumber}) : super(key: key);

  final SetNumber setNumber;
  final GetNumber getNumber;


  @override
  Widget build(BuildContext context) {
    return DragTarget<int>( builder: (context, candidateData, rejectedData) {

      return Container(
        padding: const EdgeInsets.all(20),
        child: getNumber(),
      );
      // return getNumber();
    },
      onAccept: (data) {
        final number = getNumber();
        setNumber(Number( value : number.value + data , color : const Color(0xff1565c0)) );
      });
  }
}
/*
typedef ValueChanged<T> = void Function(T value);

class NumberDropZone extends StatefulWidget {
  NumberDropZone({Key? key, required this.number , this.updateNumber }) : super(key: key);

  Number number;


  @override
  State<NumberDropZone> createState() => _NumberDropZoneState();
}

class _NumberDropZoneState extends State<NumberDropZone> {

  @override
  Widget build(BuildContext context) {
    return DragTarget<int>( builder: (context, candidateData, rejectedData) {
      return widget.number ;
    },
    onAccept: (data) {
      widget.number = Number( value : widget.number.value + data , color : const Color(0xff1565c0));
    },);
  }


}
*/
import 'package:drag_ui_element/widgets/Number.dart';
import 'package:flutter/material.dart';

class DraggingNumber extends StatelessWidget {
  const DraggingNumber({Key? key , required this.number }) : super(key: key);

  final Number number  ;

  @override
  Widget build(BuildContext context) {
    return FractionalTranslation(
      translation: const Offset(0.05,0.05),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Opacity(
            opacity: 0.5,
            child: number
        ),
      ),
    );
  }
}

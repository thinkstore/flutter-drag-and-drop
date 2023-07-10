import 'package:drag_ui_element/widgets/Number.dart';
import 'package:drag_ui_element/widgets/NumberDropZone.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/DraggableNumber.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(child: _buildContent()),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context){
    return AppBar(
      title : Text(
        "Drag and Drop Practise",
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontSize: 20 ,
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),
      ),
      elevation: 2,
    );
  }

  Number numberWidget = const Number(value: 0, color: Color(0xff1565c0));

  Number getNumber() => numberWidget;
  Number setNumber(Number nb) => numberWidget = nb;

  Widget _buildContent(){
    return Column(
      children: [
        const Gap(30),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DraggableNumber( number :Number( value: 1 ) ),
            DraggableNumber( number :Number( value: 2 ) ),
            DraggableNumber( number :Number( value: 3 ) ),
            DraggableNumber( number :Number( value: 4 ) ),
            DraggableNumber( number :Number( value: 5 ) ),
          ],
        ),
        const Gap(40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NumberDropZone( getNumber: getNumber, setNumber: setNumber ),
          ],
        ),
        const Gap(40),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DraggableNumber( number :Number( value: 6 ) ),
            DraggableNumber( number :Number( value: 7 ) ),
            DraggableNumber( number :Number( value: 8 ) ),
            DraggableNumber( number :Number( value: 9 ) ),
            DraggableNumber( number :Number( value: 10 ) ),
          ],
        ),
        const Gap(100),
        ElevatedButton(
          onPressed: () {
            // Add your button click logic here
            setState(() {
              numberWidget = const Number( value: 0, color: Color(0xff1565c0)) ;
            });
          },
          child: Container(
              padding: const EdgeInsets.all(10),
              child: const Text('Reset' , style: TextStyle(fontSize: 25),)
          ),
        ),
        const Gap(20),
        Container(
            padding: const EdgeInsets.all(10),
            child: const Text('Drag a number into the middle box to sum' , style: TextStyle(fontSize: 18),)
        ),
      ],
    );
  }



}

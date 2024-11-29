import 'package:flutter/material.dart';
class setstate extends StatefulWidget {
  const setstate({super.key});

  @override
  State<setstate> createState() => _setstateState();
}

class _setstateState extends State<setstate> {
  int a=0;


   void increment(){
     setState(() {
  a++;
     });
   }

   void decrement(){
     setState(() {
       a--;
     });
   }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        children: [
          Center(
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('${a}'),
               ElevatedButton(onPressed: (){increment();}, child: Text('Increment')),
               ElevatedButton(onPressed: (){decrement();}, child: Text('Decrement')),
             ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bloc_getx_provider_setstate/viewmodel/get_control.dart';

class gets extends StatefulWidget {
  const gets({super.key});

  @override
  State<gets> createState() => _getsState();
}

class _getsState extends State<gets> {
  
  
final countercontrollar  controlar=Get.put(countercontrollar());
  
  
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
                Obx(() =>  Text('${controlar.count}')
          ),
                ElevatedButton(onPressed: (){controlar.increment();}, child: Text('Increment')),
                ElevatedButton(onPressed: (){controlar.decrement();}, child: Text('Decrement')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_getx_provider_setstate/viewmodel/bloc_control.dart';
class bloc extends StatefulWidget {
  const bloc({super.key});

  @override
  State<bloc> createState() => _blocState();
}

class _blocState extends State<bloc> {
  @override
  Widget build(BuildContext context) {
    final counterCubit = context.read<CounterCubit>();

    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        children: [
        Center(
        child: BlocBuilder<CounterCubit, int>(
      builder: (context, count) {
        return Text('Count: $count', style: TextStyle(fontSize: 24));
      },),),

          ElevatedButton(onPressed: (){
            counterCubit.increment();
          }, child:Text('Increment')),


          ElevatedButton(onPressed: (){
            counterCubit.decrement();
          }, child:Text('Increment')),


        ],
      ),
    );


  }
}

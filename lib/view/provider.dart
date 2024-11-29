import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bloc_getx_provider_setstate/viewmodel/provider_control.dart'; // Ensure correct import

class provider extends StatefulWidget {
  const provider({super.key});

  @override
  State<provider> createState() => _providerState();
}

class _providerState extends State<provider> {

  @override
  Widget build(BuildContext context) {
    // Access the Countercontrol provider using context.watch()
    var counter = context.watch<Countercontrol>();

    return Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(

            children: [
              // Display the current count
              Text(
                '${counter.count}',
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(height: 20),
              // Increment button
              ElevatedButton(
                onPressed: () {
                  // Use context.read to access the provider and call increment method
                  context.read<Countercontrol>().increment();
                },
                child: Text('Increment'),
              ),
              // Decrement button
              ElevatedButton(
                onPressed: () {
                  // Use context.read to access the provider and call decrement method
                  context.read<Countercontrol>().decrement();
                },
                child: Text('Decrement'),
              ),
            ],
          ),
        ),
      );
  }
}

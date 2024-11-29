
import 'package:flutter/material.dart';
import 'view/bloc.dart';
import 'view/get.dart';
import 'view/provider.dart';
import 'view/setstate.dart';
import 'viewmodel/provider_control.dart';

import 'viewmodel/bloc_control.dart';

import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



//using general setstate
// void main() {
//   runApp(Home());
// }


//using Provider

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => Countercontrol(),
//       child: MaterialApp(
//      debugShowCheckedModeBanner: false,
//       home:Home()
//       ),
//     ),
//   );
// }



//using getx
// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => Countercontrol(),
//       child: GetMaterialApp(
//           debugShowCheckedModeBanner: false,
//           home:Home()
//       ),
//     ),
//   );
// }

//using cubic

void main() {
  runApp(
    BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    ),
  );
}






class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _selectedIndex = 0;
  final List<Widget> _pages = [
    bloc(),
    gets(),
    provider(),
    setstate(),
  ];

  void pageview(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  pageview(0);
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width/5,
                  decoration: BoxDecoration(
                    color: _selectedIndex == 0 ? Colors.green : Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'bloc',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  pageview(1);
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width/5,
                  decoration: BoxDecoration(
                    color: _selectedIndex == 1 ? Colors.green : Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Get',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  pageview(2);
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width/5,
                  decoration: BoxDecoration(
                    color: _selectedIndex == 2 ? Colors.green : Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Provider',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  pageview(3);
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width/5,
                  decoration: BoxDecoration(
                    color: _selectedIndex == 3 ? Colors.green : Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'setstate',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _pages[_selectedIndex],
            ],
          ),
        ),
      );
  }
}

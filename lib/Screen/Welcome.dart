import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Screen1 extends ConsumerStatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Screen1State();
}

class _Screen1State extends ConsumerState<Screen1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
           MaterialButton(onPressed: (){
              Navigator.of(context).popUntil((route) => route.isFirst);
          },
          child: Text('Logout'),
          ),
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Logged In'))
        ],
      ),
    );
  }
}
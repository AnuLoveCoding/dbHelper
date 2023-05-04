import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Test0'),
      ),

      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Input first number',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Input the Second number'
              ),
            ),
            SizedBox(height: 20.0,),
            ElevatedButton(onPressed: (){

              }, child: Text('Sum of two numbers'),
            ),
          ],
        ),
      ),
    );
  }
}

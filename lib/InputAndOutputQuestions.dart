import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  Widget textarea({required var control, required var name}){
    return TextField(
      controller: control,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
          ),
          hintText: name,
      ),
    );
  }
  var text1 = TextEditingController();
  var text2 = TextEditingController();
  var c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back_ios),
        title: Text('Resitration Form'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            textarea(control: text1, name: 'Input First Number'),
            SizedBox(height: 10.0,),
            textarea(control: text2, name: 'Input Second Number'),
            SizedBox(height: 20.0,),
            ElevatedButton(onPressed: (){
              setState(() {
               c = int.parse(text1.text) + int.parse(text2.text);
              });
              }, child: Text('Sum of two numbers'),
            ),
            SizedBox(height: 5.0,),
            Text('Sum $c'),
          ],
        ),
      ),
    );
  }
}

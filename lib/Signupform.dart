import 'package:dbhelper_registrationform/DbHelper.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {

  Widget textarea({required var name1, required var name}){
    return TextField(
      controller: name1,
      decoration: InputDecoration(
        hintText: name,
      ),
    );
  }
  int _counter = 0;

  final id = TextEditingController();
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final mobile = TextEditingController();

  var dbHelper;

  @override
  void initState(){
  //  TODO: implement initstate
    super.initState();
    dbHelper = DbHelperData();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup Form"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          textarea(name1: id, name: 'id'),
          SizedBox(height: 10.0,),
          textarea(name1: name, name: 'Name'),
          SizedBox(height: 10.0,),
          textarea(name1: email , name: 'Email'),
          SizedBox(height: 10.0,),
          textarea(name1: password,name: 'password'),
          SizedBox(height: 10.0,),
          textarea(name1: mobile,name: 'Mobile No:'),
          SizedBox(height: 10.0,),
          ElevatedButton(onPressed: (){
            int aa = dbHelper.InsertData(id.text,name.text,email.text,password.text,mobile.text);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$aa')));
            }, child: Text('Register Here'))
          ]
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Container(
          color: Colors.cyanAccent,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}

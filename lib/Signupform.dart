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
  final n = TextEditingController();
  final e= TextEditingController();
  final p = TextEditingController();
  final m = TextEditingController();

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
          textarea(name1: n, name: 'Name'),
          SizedBox(height: 10.0,),
          textarea(name1: e, name: 'Email'),
          SizedBox(height: 10.0,),
          textarea(name1: p,name: 'password'),
          SizedBox(height: 10.0,),
          textarea(name1: m,name: 'Mobile No:'),
          SizedBox(height: 10.0,),
          ElevatedButton(onPressed: (){
            int aa = dbHelper.InsertData(id.text,n.text,e.text,p.text,m.text);
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

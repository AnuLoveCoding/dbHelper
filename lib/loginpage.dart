import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: (){
            },
            icon: Icon(Icons.arrow_back_ios,color: Colors.grey,)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 170.0),
            child: Text('Login In',style: TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 30.0,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50.0) ,
            child: Column(
              children: [
                textFeild(
                  obscureText: false,
                  hintText: 'UserName',
                  icon: Icons.person_outline,),
                SizedBox(height: 30.0,),
                textFeild(
                    obscureText: true,
                    icon: Icons.password,
                    hintText: 'Password'),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            width: 150.0,
            height: 40.0,
            child: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    // side: BorderSide(color: Colors.red)
                  ),
                ),
              ),
              onPressed: (){

              },
              child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 20.0),),
            ),
          ),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('New User ? ',style: TextStyle(color: Colors.grey),),
              Text('Register Now.',style: TextStyle(color: Colors.red),),

            ],
          )
        ],
      ),
    );;
  }
}
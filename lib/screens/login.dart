

import 'package:clothshop/homeScreen.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

 late String email;
 late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Image.asset("images/e.png",
                  ),
                ),
                SizedBox(height:100),
                Text("login to e-shop",style: TextStyle(fontSize:30,fontWeight:FontWeight.bold,)),
                SizedBox(height: 20),
                TextFormField(
                  onChanged: (value){
                    email=value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "enter your email",
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),

                  ),),

                SizedBox(height: 20),
                TextFormField(
                  onChanged: (value){
                   password=value;
                  },

                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "enter your password",
                    labelText: "password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(onPressed: (){}, child: Text("forget password",style: TextStyle(color: Colors.black,fontSize: 16),),),
                SizedBox(height: 20),
                Container(
                  width: 400,
                  height: 50,
                  child: MaterialButton(
                    color: Colors.orange,
                    onPressed: (){
                      print(email);
                      print(password);
                      Navigator.push(context, MaterialPageRoute(builder:(builder)=>homeScreen()));
                    },
                    child: Text("login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
                ),
                SizedBox(height:150),

                Row(children: [
                  Text("dont have account"),
                  SizedBox(width:150),
                  TextButton(onPressed: (){}, child: Text("Sign up",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 20),),)

                ],)

              ]),
        )


    );
  }
}

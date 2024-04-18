
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

  late String email;
  late String password;
  GlobalKey <FormState>formState=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
    Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 20,),
            TextFormField(
              onChanged: (value){
                email=value;

              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                  prefixIcon:Icon(Icons.email) ,
                  hintText: "enter your email"

              ),
            ),


            TextFormField(
              onChanged: (value){
                password=value;

              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon:Icon(Icons.lock) ,
                  hintText: "enter your password"

              ),
            ),



            Container(
              width:double.infinity,
              child: MaterialButton(
                color: Colors.orange,
                onPressed:()async{

                } ,child: Text("sign up"),),
            )



          ],
        ),
      ),
    );
  }
}

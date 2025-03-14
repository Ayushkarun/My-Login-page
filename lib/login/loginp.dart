// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './success.dart';

class MyWidget extends StatelessWidget {
  MyWidget({super.key});

  String Username = "ayush";
  String Password = "1234";
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar
      // backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Login page"),
        centerTitle: true,
      ),
      ///Body start
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center, // Centering elements
              children: [
                Icon(
                  Icons.person,
                  size: 150,
                ),
                SizedBox(height: 13.5),
                // Username Field
                TextField(
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.blue, width: 3),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    labelText: "Username",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 10), //for space
                // Password Field
                TextField(
                  controller: passwordcontroller,
                  obscureText: true,
                  keyboardType: TextInputType.number, //number keyboard
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.blue, width: 3),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    ),
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(height: 13),
                // Login Button
                ElevatedButton(
                  onPressed: () {
                    login(context);
                    usernamecontroller.clear();
                    passwordcontroller.clear();   
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),

                SizedBox(height: 30),

                Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      ),
                    ),
                    Text(
                      "Don't have an account? Sign Up",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  void login(BuildContext context) {
    String username = usernamecontroller.text;
    String password = passwordcontroller.text;

    if (username.isEmpty && password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("No username and password entered")),
      );
      return;
    }
    if (username.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Username is not entered")),
      );
      return;
    }

    if (password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Password is not entered")),
      );
      return;
    }

    if (username == Username && password == Password) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Screen2(),
        ),
      );
    } 
    else
    {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Username or Password is incorrect")),
      );
    }
  }
}

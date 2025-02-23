// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
            const CircleAvatar(
                radius: 50, backgroundImage: AssetImage('asset/Ayush.jpg')),
            const Text(
              'Ayush Karun',
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            Card(
                color: Colors.black,
                margin: EdgeInsets.all(15),
                // padding: EdgeInsets.all(15),
                child: ListTile(
                    leading: Icon(
                      Icons.work,
                      //size: 100,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'Makbig,Kannur',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    )
                    )
                    ),
            Card(
                color: Colors.black,
                margin: EdgeInsets.all(15),
                // padding: EdgeInsets.all(15),
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      //size: 100,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'ayushkarun2580@gmail.com',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    )
                    )
                    ),
            Card(
                color: Colors.black,
                margin: EdgeInsets.all(15),
                // padding: EdgeInsets.all(15),
              
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      //size: 100,
                      color: Colors.blue,
                    ),
                    title: Text(
                      '9400168994',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    )
                    )
                ),
                 SizedBox(
                width: 126,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Row(
                      children: [Text("Sign-out",style: TextStyle(color: Colors.blue),), Icon(Icons.logout,color: Colors.blue)],
                    )),
              )
                    ],
            
                  ),
          )
      ),
    );
  }
}


/*
mainAxisAlignment
child 
children

Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            //margin: EdgeInsets.fromLTRB(20,13,43,12),//for giving margin space to all
            //padding: EdgeInsets.all(20),
            height: 100,
            width: 100,
            //width: double.infinity,
            color: Colors.white,
            child: Text('One'),
          ),
             SizedBox(height:10,),
             //SizedBox(width:10,), for raw
          Container(
              color: Colors.blue,
              height: 100,
              width: 100,
              child: Text('Ayush')),
              SizedBox(height:10,),
          Container(
              color: Colors.red,
               height: 100, width: 100,
                child: Text('Ayush'))
        ],
      )

      Row(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(25, 25, 25, 25)),
                  Icon(
                    Icons.email,
                    //size: 100,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'ayushkarun2580@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  )
                ],
              )
*/
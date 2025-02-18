import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Screen2 extends StatelessWidget {
   const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Image.network("https://img.freepik.com/free-vector/mobile-login-concept-illustration_114360-83.jpg"),
            const SizedBox(height: 20),
            Text("Login Successful!", 
            style: GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.bold ),),
            const SizedBox(height: 20),
          
            SizedBox(
              width: 130,
              height: 80,
              child: ElevatedButton
              (
                
                onPressed: (){
                Navigator.pop(context);
              }, child: 
              const Row(
                children: [
                  Text("Sign-out"),
                  Icon(Icons.logout)
                ],
              )),
            )
          ],
          
        ),
      ),
    );
  }
}
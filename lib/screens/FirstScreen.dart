import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minifurs_app/screens/LoginScreen.dart';
import 'package:minifurs_app/screens/SignupScreen.dart';
    
class FirstScreen extends StatelessWidget {

  const FirstScreen({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/chaise.png',
              alignment: Alignment.center,
            ),
            const Text("Optimize your space using \ntech and creativity in Africa", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23, color: Color.fromARGB(255, 131, 129, 129)),),
            const SizedBox(height: 20),
            const Text("Fiting your furnitures in your space before buying", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 20),
            SizedBox(
              width: 400.0,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color.fromARGB(255, 236, 31, 99)
                  
                ),
                onPressed: () {
                 Get.to(const LoginScreen());
                },
                child: const Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20.0),)
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 400.0,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: const Color.fromARGB(255, 246, 199, 145)
                  
                ),
                onPressed: () {
                  Get.to(const SignupScreen());
                },
                child: const Text("Sign Up", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w600, fontSize: 20.0),)
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: "By tapping create account and using Minifurs, you agree to our ",
                  style:
                      TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Terms of Service & Privacy Policy',
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
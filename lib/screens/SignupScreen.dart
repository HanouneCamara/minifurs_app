import 'package:flutter/material.dart';
    
class SignupScreen extends StatelessWidget {

  const SignupScreen({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.only(top: 68.0, left: 10),
              child: Image.asset(
                'assets/images/logo.png',
                width: 100,
                height: 100,
                alignment: Alignment.topLeft,
              ),
            ),
            const SizedBox(height: 28),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
            const Align(
            alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Enter your details for a new account',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Full name",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Email Adress",
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.visibility,
                      )
                    ),
                  ),
                ),
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.visibility,
                      )
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Radio(
                      value: 0,
                      groupValue: 1,
                      onChanged: ((value) {
                        
                      }),
                    ),
                    const Text(
                      "I accept the Terms of Service & Privacy Policy",
                        style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 400.0,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    //print("hello");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 245, 57, 120),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.white
                    )
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 58.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: "Already have an account? ",
                  style:
                      TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Login Here',
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
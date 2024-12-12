import 'package:eco_mitra/Login_Signup/signup.dart';
import 'package:flutter/material.dart';
import '';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              // Back Button
              ElevatedButton(
                onPressed: () {
                  print('Arrow Button Pressed');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, // Remove button background
                  shadowColor: Colors.transparent, // Remove shadow
                  padding: EdgeInsets.all(0), // Remove padding
                  minimumSize: Size(0, 0), // Remove default size
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Shrink touch target
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0), // No border radius
                    side: BorderSide.none, // No border
                  ),
                ),
                child: Image.asset("assets/icons/back.png", width: 16, height: 16),
              ),

              SizedBox(height: 40),

              // Avatar
              Center(
                child: Image.asset(
                  'assets/icons/man.png',
                  height: 100,
                  width: 100,
                ),
              ),

              SizedBox(height: 20),

              // Login Title and Subtitle
              Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(height: 5),
              Text(
                "Login to continue using the app",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),

              SizedBox(height: 30),

              // Email Input
              Padding(padding: EdgeInsets.only(left: 8),
                child:
                Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),

              ),

              SizedBox(height: 5),
              Padding(padding: EdgeInsets.only(left: 8, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    hintText: "Enter your email",
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Password Input
              Padding(padding: EdgeInsets.only(left: 8),
                child:
                Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),

              ),

              SizedBox(height: 5),

              Padding(padding: EdgeInsets.only(left: 8, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    hintText: "Enter Password",
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                  ),
                ),
              ),

              SizedBox(height: 15),

              // Forgot Password
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(left: 240),
                    child:
                    Row(
                      children: [
                        Transform.translate(offset: Offset(0,-20),
                          child: TextButton(onPressed: (){
                            print("Button Clicked");
                          }, child: Text("Forgot password?", style: TextStyle(color: Colors.black45),)),
                        )
                      ],
                    ),
                  )
                ],
              ),

              Column(
                children: [
                  Transform.translate(offset: Offset(0, -13),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          print("Login Button Clicked");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF00BF63),
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          fixedSize: Size(360, 63),
                        ),

                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 9),

              // Or Login with
              Center(
                child: Text(
                  "⎯⎯⎯⎯⎯⎯⎯⎯   Or Login with   ⎯⎯⎯⎯⎯⎯⎯⎯",
                  style: TextStyle(fontSize: 14, color: Colors.black45),
                ),
              ),

              SizedBox(height: 20),

              // Social Media Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Facebook Button
                  ElevatedButton(
                    onPressed: () {
                      print("Facebook Button Clicked");
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      fixedSize: Size(60, 60),
                    ),
                    child: Image.asset(
                      'assets/icons/facebook.png',
                      height: 25,
                      width: 25,
                    ),
                  ),

                  // Google Button
                  ElevatedButton(
                    onPressed: () {
                      print("Google Button Clicked");
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      fixedSize: Size(60, 60),
                    ),
                    child: Image.asset(
                      'assets/icons/google.png',
                      height: 25,
                      width: 25,
                    ),
                  ),

                  // Apple Button
                  ElevatedButton(
                    onPressed: () {
                      print("Apple Button Clicked");
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black12),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      fixedSize: Size(60, 60),
                    ),
                    child: Image.asset(
                      'assets/icons/apple-logo.png',
                      height: 25,
                      width: 25,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              Center(
                child:
                Column(
                  children: [
                    TextButton(
                        onPressed: (){
                          print("Register Clicked");
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => signup()));
                        }, child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Don't have an account?",
                              style: TextStyle(color: Colors.black45),
                            ),
                            TextSpan(
                              text: " Register",
                              style: TextStyle(color: Color(0xFF00BF63)),
                            )
                          ],
                        ),
                    )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

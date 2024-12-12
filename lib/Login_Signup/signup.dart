import 'package:flutter/material.dart';
import 'login.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _LoginState();
}

class _LoginState extends State<signup> {

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
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

              SizedBox(height: 30),

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
                "Register",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(height: 5),
              Text(
                "Enter your personal information",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),

              SizedBox(height: 20),

              // Email Input
              Padding(padding: EdgeInsets.only(left: 8),
                child:
                Text(
                  "Username",
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
                    hintText: "Enter username",
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                  ),
                ),
              ),

              SizedBox(height: 15),

              // Password Input
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

              SizedBox(height: 13),

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

              // Password Input
              Padding(padding: EdgeInsets.only(left: 8),
                child:
                Text(
                  "Confirm Password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),

              ),

              SizedBox(height: 6),

              Padding(padding: EdgeInsets.only(left: 8, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    hintText: "Enter confirm password",
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                  ),
                ),
              ),

              SizedBox(height: 35),

              Column(
                children: [
                  Transform.translate(offset: Offset(0, -13),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          print("Register Button Clicked");
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
                          "Register",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

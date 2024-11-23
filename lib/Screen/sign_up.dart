import 'package:flutter/material.dart';
import 'package:travelmate_pj/Screen/sign_in.dart';
import 'package:travelmate_pj/Screen/signup_gender.dart';
import 'package:travelmate_pj/components/button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignIn(),
                    ));
              },
              icon: Icon(Icons.arrow_back))),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            Column(
              children: [
                Text(
                  "Sign up now",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xff4A6670)),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Please fill the detail and create account",
                  style: TextStyle(color: Color(0xff7AA0A7)),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(color: Color(0xff7AA0A7)),
                    filled: true,
                    fillColor: Color(0xfffDFEAF1),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Color(0xff7AA0A7)),
                    filled: true,
                    fillColor: Color(0xfffDFEAF1),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Create a password",
                    hintStyle: TextStyle(color: Color(0xff7AA0A7)),
                    filled: true,
                    fillColor: Color(0xfffDFEAF1),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Repeat password",
                        hintStyle: TextStyle(color: Color(0xff7AA0A7)),
                        filled: true,
                        fillColor: Color(0xfffDFEAF1),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Password must be 8 Character",
                      style: TextStyle(color: Color(0xff7AA0A7)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Button(
                  name: "Sign Up",
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupGender(),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(color: Color(0xff7AA0A7)),
                    ),
                    Text(
                      "Sign in",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4A6670)),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.facebook,
                          color: Colors.blue,
                        )),
                    Container(
                      child: Image.asset("image/google-color-svgrepo-com.png"),
                      height: 20,
                      width: 20,
                    ),
                    Container(
                      child: Image.asset("image/twitter.png"),
                      height: 20,
                      width: 20,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

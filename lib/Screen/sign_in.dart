import 'package:flutter/material.dart';
import 'package:travelmate_pj/Screen/forgot_password.dart';
import 'package:travelmate_pj/components/button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(children: [
          Column(children: [
            Text(
              "Sign in now",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xff4A6670)),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Please Sign in to continue our app",
              style: TextStyle(color: Color(0xff7AA0A7)),
            ),
            SizedBox(
              height: 80,
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
                hintText: "Password",
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
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Color(0xff4A6670), fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Button(
              name: "Sign Up",
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgotPassword(),
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
                  "Sign up",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff4A6670)),
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
          ]),
        ]),
      ),
    );
  }
}

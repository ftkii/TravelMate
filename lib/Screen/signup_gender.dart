import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelmate_pj/Screen/sign_up.dart';
import 'package:travelmate_pj/Screen/signup_location.dart';
import 'package:travelmate_pj/components/button.dart';

class SignupGender extends StatelessWidget {
  const SignupGender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp(),
                  ));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Image.asset("image/image_gender.png"),
          Text(
            "Please choose your gender",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff4A6670),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.male,
                      color: Colors.black,
                    ),
                    Text(
                      "Male",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color(0xffDFEAF1),
                  ),
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.female,
                      color: Colors.black,
                    ),
                    Text(
                      "Female",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color(0xffDFEAF1),
                  ),
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 150,
          ),
          Button(
            name: "Next",
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignupLocation(),
                )),
          ),
        ],
      ),
    );
  }
}

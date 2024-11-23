//signup_guide or tourst

import 'package:flutter/material.dart';
import 'package:travelmate_pj/Screen/plan_screen.dart';
import 'package:travelmate_pj/Screen/signup_location.dart';
import 'package:travelmate_pj/components/button.dart';

class SignupGot extends StatelessWidget {
  const SignupGot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Tab(
              child: Text(
                "Skip",
                style: TextStyle(fontSize: 20, color: Color(0xff4A6670)),
              ),
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignupLocation(),
                ));
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Image.asset("image/guide.png"),
          Text(
            "Are you interested in ",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff4A6670)),
          ),
          Text(
            "becoming a travel guide?",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff4A6670)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Register as a local guide and earn money by offering ",
            style: TextStyle(fontSize: 15, color: Color(0xff7AA0A7)),
          ),
          Text(
            "tours in your city by offering tours in your city",
            style: TextStyle(fontSize: 15, color: Color(0xff7AA0A7)),
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            "Maybe later",
            style: TextStyle(color: Colors.grey[600], fontSize: 15),
          ),
          SizedBox(
            height: 70,
          ),
          Button(
            name: "Yes",
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlanSelectionScreen(),
                )),
          )
        ],
      ),
    );
  }
}

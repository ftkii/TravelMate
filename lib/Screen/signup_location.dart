import 'package:flutter/material.dart';
import 'package:travelmate_pj/Screen/signup_gender.dart';
import 'package:travelmate_pj/Screen/signup_got.dart';
import 'package:travelmate_pj/components/button.dart';

class SignupLocation extends StatefulWidget {
  const SignupLocation({super.key});

  @override
  State<SignupLocation> createState() => _SignupLocationState();
}

class _SignupLocationState extends State<SignupLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignupGender(),
                ));
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Image.asset("image/location.png"),
            Text(
              "Which country or region ",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4A6670)),
            ),
            Text(
              "are you from?",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4A6670)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Share your location with others",
              style: TextStyle(fontSize: 15, color: Color(0xff7AA0A7)),
            ),
            SizedBox(
              height: 60,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xff4A6670),
                ),
                hintText: "Search your location",
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
              height: 90,
            ),
            Button(
              name: "Next",
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupGot(),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

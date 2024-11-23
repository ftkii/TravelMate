import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:travelmate_pj/Screen/sign_in.dart';
import 'package:travelmate_pj/components/button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
        child: ListView(
          children: [
            Column(
              children: [
                Text(
                  "Forgot Password",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xff4A6670)),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Enter your email account to reset your Password",
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
                  height: 60,
                ),
                Button(
                  name: "Sign in",
                  onTap: () => AwesomeDialog(
                    context: context,
                    dialogType: DialogType.noHeader,
                    animType: AnimType.rightSlide,
                    title: 'Check your email',
                    desc:
                        'We have send password recovery instruction to your email',
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  )..show(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

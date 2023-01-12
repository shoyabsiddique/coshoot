import 'package:coshoot/colors.dart';
import 'package:coshoot/widgets/input.dart';
import 'package:flutter/material.dart';

class LoginPhone extends StatefulWidget {
  LoginPhone({Key? key}) : super(key: key);
  @override
  State<LoginPhone> createState() => _LoginPhoneState();
}

class _LoginPhoneState extends State<LoginPhone> {
  static Input email = Input(
    hint: "Phone Number",
    keyBoardType: TextInputType.phone,
  );
  static Input pass = Input(
    hint: "Password",
    keyBoardType: TextInputType.visiblePassword,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ColorTheme.PRIMARY),
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Image.asset(
                "Assets/Icons/logo.png", //Change the file in Assets/Icons
                scale: 4,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Login To Continue",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  email,
                  SizedBox(
                    height: 10,
                  ),
                  pass,
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(ColorTheme.TERTIARY),
                      ),
                      child: Center(
                          child: TextButton(
                            onPressed: (){},
                            child: Text("Sign In",style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                          )
                          ),
                        ),
                        ),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(ColorTheme.TERTIARY),
                      ),
                      child: TextButton(
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, '/login_email');
                          },
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("Assets/Icons/email.png", scale: 22),
                                Text("Login With Email",style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a Member?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      TextButton(
                          onPressed: (){},
                          child: TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/register');
                            },
                            child: Text("Register Here",style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18, color: Color(ColorTheme.TERTIARY)),
                            ),
                          )
                      ),
                    ],
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

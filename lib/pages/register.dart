import 'package:coshoot/colors.dart';
import 'package:coshoot/widgets/input.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  static Input uname = Input(hint: "Username",keyBoardType: TextInputType.text,);
  static Input password = Input(hint: "Password",keyBoardType: TextInputType.visiblePassword,);
  static Input name = Input(hint: "Name",keyBoardType: TextInputType.name,);
  static Input shooterId = Input(hint: "Shooter Id",keyBoardType: TextInputType.text,);
  static Input phone = Input(hint: "Phone Number",keyBoardType: TextInputType.phone,);
  static Input dob = Input(hint: "Date Of Birth",keyBoardType: TextInputType.datetime,);
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
                    "CoShoot Welcomes You",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Join Our Family",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  uname,
                  SizedBox(
                    height: 20,
                  ),
                  shooterId,
                  SizedBox(
                    height: 20,
                  ),
                  name,
                  SizedBox(
                    height: 20,
                  ),
                  phone,
                  SizedBox(
                    height: 20,
                  ),
                  dob,
                  SizedBox(
                    height: 20,
                  ),
                  password,
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Add Profile Picture",style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                        ElevatedButton(
                          child: Text('UPLOAD FILE'),
                          onPressed: () async {
                            var pickedFile = await FilePicker.platform.pickFiles();
                            if(pickedFile != null){
                              print(pickedFile.files.first.name);
                            }
                          },
                        )
                      ],
                    ),
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
                            child: Text("Sign Up",style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                            )
                        ),
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
                        "Already Registered?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      TextButton(
                          onPressed: (){
                            Navigator.pushNamedAndRemoveUntil(context, '/login_phone', (route) => false);
                          },
                          child: Text("Login Here",style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18, color: Color(ColorTheme.TERTIARY)),
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

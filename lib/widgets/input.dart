import 'package:coshoot/colors.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  String hint = "";
  TextInputType? keyBoardType;
  String data = "";
  bool obs = false;
  Input({hint, keyBoardType}){
    this.hint = hint;
    this.keyBoardType = keyBoardType;
    if(this.keyBoardType == TextInputType.visiblePassword)
      this.obs = true;
    else
      this.obs = false;
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
            color: Color(ColorTheme.SECONDARY),
            border: Border.all(color: Color(ColorTheme.TERTIARY)),
            borderRadius: BorderRadius.circular(12)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextField(
            obscureText: this.obs,
            onChanged: (data){
              this.data = data;
            },
            keyboardType: this.keyBoardType,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: this.hint
            ),
          ),
        ),
      ),
    );
  }
}

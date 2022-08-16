import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/components/rounded_button.dart';
import 'package:login_ui/constants.dart';

import 'login_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: LoginBackground(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "ເຂົ້າສູ່ລະບົບ",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                SvgPicture.asset(
                  "assets/icons/login.svg",
                  width: size.width * 0.6,
                ),
                SizedBox(
                  height: 22,
                ),
                TextFieldContainer(
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      hintText: "ອີເມວ",
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                TextFieldContainer(
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.password),
                      hintText: "ລະຫັດຜ່ານ",
                      border: InputBorder.none,
                      
                    ),
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                RoundButton(
                  text: "LOGIN",
                  press: () {},
                  icon: Icons.lock,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 1,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
        border: Border.all(color: kPrimaryColor),
      ),
      child: child,
    );
  }
}

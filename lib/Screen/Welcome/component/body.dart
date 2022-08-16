import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/Screen/Login/login_screen.dart';
import 'package:login_ui/constants.dart';

import '../../../components/rounded_button.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =
        MediaQuery.of(context).size; //get width and height of mobile screen

    return Background(
      childer: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: size.width * 0.02,
          ),
          Text(
            "ຍີນດີຕ້ອນຮັບ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.5,
          ),
          SizedBox(
            height: 15,
          ),
          RoundButton(
            color: kPrimaryColor,
            text: "ເຂົ້າສູ່ລະບົບ",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
            icon: Icons.login,
          ),
          RoundButton(
            text: "ລົງທະບຽນ",
            color: Colors.purple.shade100,
            textColor: Colors.black,
            press: () {},
            icon: Icons.app_registration,
          ),
        ],
      ),
    );
  }
}

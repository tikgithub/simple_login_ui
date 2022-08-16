import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;
  const LoginBackground({
    Key? key,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get Screen size
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/login_bottom.png",
              width: size.width * 0.4,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.3,
            ),
          ),
          child // Load component from login screen
        ],
      ),
    );
  }
}

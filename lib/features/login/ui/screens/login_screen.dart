import 'package:e_commerce_web/features/login/ui/widgets/SignInAndSignUpContainer.dart';
import 'package:e_commerce_web/features/login/ui/widgets/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/login_part.dart';

class SignInAndSignUpScreen extends StatefulWidget {
  const SignInAndSignUpScreen({super.key});

  @override
  _SignInAndSignUpScreenState createState() => _SignInAndSignUpScreenState();
}

class _SignInAndSignUpScreenState extends State<SignInAndSignUpScreen> {
  bool _isSignUp = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final halfScreenWidth = screenWidth / 2.4;

    return Scaffold(
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: ClipRRect(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          borderRadius: BorderRadius.circular(20.0),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 22.w,
              vertical: 20.h,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 10,
              child: Stack(
                alignment:
                    _isSignUp ? Alignment.centerRight : Alignment.centerLeft,
                children: [
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                    left: _isSignUp ? 0 : halfScreenWidth,
                    right: _isSignUp ? halfScreenWidth : 0,
                    top: 0,
                    bottom: 0,
                    child: _isSignUp
                        ? SignUp(
                            isSignUp: _isSignUp,
                          )
                        : LoginPart(isSignUp: _isSignUp),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                    right: _isSignUp ? 0 : halfScreenWidth,
                    left: _isSignUp ? halfScreenWidth : 0,
                    top: 0,
                    bottom: 0,
                    child: SizedBox(
                      width: halfScreenWidth,
                      height: screenHeight,
                      child: SignInAndSignUpContainer(
                        isSignUp: _isSignUp,
                        signChange: _changeSignUp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _changeSignUp() {
    setState(() {
      _isSignUp = !_isSignUp;
    });
  }
}

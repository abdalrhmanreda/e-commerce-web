import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/methods/get_responsive_text/responsive_text.dart';

class SignInAndSignUpContainer extends StatelessWidget {
  const SignInAndSignUpContainer(
      {super.key, required this.isSignUp, required this.signChange});
  final bool isSignUp;
  final void Function() signChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff724f3b),
            Color(0xffc07b5b),
          ],
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isSignUp
                ? AppLocalizations.of(context)!.welcomeBack
                : AppLocalizations.of(context)!.helloFriend,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: getResponsiveFontSize(context, fontSize: 25),
                  fontWeight: FontWeight.bold,
                  color: AppColors.kWhiteColor,
                ),
          ),
          Spacing.verticalSpace(15),
          Text(
            isSignUp
                ? AppLocalizations.of(context)!.toKeepConnected
                : AppLocalizations.of(context)!.enterYourPersonalDetails,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: getResponsiveFontSize(context, fontSize: 14),
                  color: AppColors.kWhiteColor,
                ),
          ),
          Spacing.verticalSpace(25),
          SizedBox(
            width: MediaQuery.of(context).size.width / 6.2,
            height: 40.h,
            child: OutlinedButton(
              onPressed: signChange,
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.kWhiteColor,
                side: const BorderSide(
                  color: AppColors.kWhiteColor,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                isSignUp
                    ? AppLocalizations.of(context)!.signIn
                    : AppLocalizations.of(context)!.signUp,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: getResponsiveFontSize(context, fontSize: 15),
                      color: AppColors.kWhiteColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

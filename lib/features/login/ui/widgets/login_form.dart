import 'package:e_commerce_web/config/themes/font_weight.dart';
import 'package:e_commerce_web/core/methods/get_responsive_text/responsive_text.dart';
import 'package:e_commerce_web/features/login/logic/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../core/components/app_text_form_feild.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/methods/pass_validate/pass_validate.dart';
import '../../../../core/methods/validate_email/vaildate_email.dart';
import '../../logic/auth_state.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Form(
          key: context.read<AuthCubit>().loginFormKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              children: [
                AppTextFormField(
                  controller: context.read<AuthCubit>().loginEmailController,
                  label: AppLocalizations.of(context)!.email,
                  unFocusBorderColor: AppColors.kBackgroundHintTextColor,
                  prefixIcon: Iconsax.message_outline,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return AppLocalizations.of(context)!
                          .loginScreenEnterEmail;
                    } else if (!isEmailValid(value)) {
                      return AppLocalizations.of(context)!.emailShouldContain;
                    }
                    return null;
                  },
                ),
                Spacing.verticalSpace(25),
                AppTextFormField(
                  isPassword: isObscure,
                  controller: context.read<AuthCubit>().loginPasswordController,
                  label: AppLocalizations.of(context)!.password,
                  unFocusBorderColor: AppColors.kBackgroundHintTextColor,
                  prefixIcon: Iconsax.lock_outline,
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return AppLocalizations.of(context)!
                          .loginScreenEnterPassword;
                    } else if (!isPasswordValid(value)) {
                      return AppLocalizations.of(context)!
                          .passwordShouldContain;
                    }
                    return null;
                  },
                  suffixIcon: isObscure
                      ? Iconsax.eye_outline
                      : Iconsax.eye_slash_outline,
                  suffixPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                ),
                Spacing.verticalSpace(25),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AppLocalizations.of(context)!.forgotPassword,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 12),
                          color: AppColors.kButtonColor,
                          fontWeight: FontWeightHelper.semiBold,
                        ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

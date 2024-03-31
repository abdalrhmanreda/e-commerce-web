import 'package:e_commerce_web/features/login/logic/auth_cubit.dart';
import 'package:e_commerce_web/features/login/logic/auth_state.dart';
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

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Form(
          key: context.read<AuthCubit>().registerFormKey,
          child: Column(
            children: [
              AppTextFormField(
                type: TextInputType.emailAddress,
                controller: context.read<AuthCubit>().registerEmailController,
                label: AppLocalizations.of(context)!.email,
                unFocusBorderColor: AppColors.kBackgroundHintTextColor,
                prefixIcon: Iconsax.message_outline,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return AppLocalizations.of(context)!.loginScreenEnterEmail;
                  } else if (!isEmailValid(value)) {
                    return AppLocalizations.of(context)!.emailShouldContain;
                  }
                  return null;
                },
              ),
              Spacing.verticalSpace(25.h),
              AppTextFormField(
                type: TextInputType.name,
                controller: context.read<AuthCubit>().registerNameController,
                label: AppLocalizations.of(context)!.fullName,
                unFocusBorderColor: AppColors.kBackgroundHintTextColor,
                prefixIcon: Iconsax.profile_bulk,
                validate: (value) {},
              ),
              Spacing.verticalSpace(25.h),
              AppTextFormField(
                type: TextInputType.visiblePassword,
                isPassword: isObscure,
                controller:
                    context.read<AuthCubit>().registerPasswordController,
                label: AppLocalizations.of(context)!.password,
                unFocusBorderColor: AppColors.kBackgroundHintTextColor,
                prefixIcon: Iconsax.lock_outline,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return AppLocalizations.of(context)!
                        .loginScreenEnterPassword;
                  } else if (!isPasswordValid(value)) {
                    return AppLocalizations.of(context)!.passwordShouldContain;
                  }
                  return null;
                },
                suffixIcon:
                    isObscure ? Iconsax.eye_outline : Iconsax.eye_slash_outline,
                suffixPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

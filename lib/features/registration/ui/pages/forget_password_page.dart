import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/const/text_style.dart';
import 'package:medica/core/helper/custom_dialog.dart';
import 'package:medica/core/helper/custom_snake_bar.dart';
import 'package:medica/core/route.dart';
import 'package:medica/core/widget/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medica/features/registration/business_logic/forget_password/forget_password_cubit.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  late final GlobalKey<FormBuilderState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormBuilderState>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        state.when(
            initial: () {},
            loading: () {
              CustomDialog.showLoadingDialog(context);
            },
            success: () {
              context.pop();
              context.pushNamed(CustomRoutes.verifyCode, extra: {
                CustomRouteParameter.previousPage: CustomRoutes.forgetPassword,
                CustomRouteParameter.email: _formKey.currentState!.value[email]
              });
            },
            failure: (error) {
              context.pop();
              CustomSnakeBar.show(
                  context: context, isError: true, message: error);
            });
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric( horizontal: 16.w ,vertical: 16.h),
            child: SingleChildScrollView(
              child: Column(children: [
                 Gap(24.h),
                buildForm(context),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  static const email = 'email';

  Widget buildForm(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          const Text('Reset Password', style: CustomTextStyle.h1),
           Gap(12.h),
          const Text(
            'Enter your email to receive a password reset link.',
            style: CustomTextStyle.bodySRegular,
          ),
           Gap(32.h),
          CustomTextField(
            name: email,
            label: 'Email',
            prefixIcon: const Icon(Icons.email_outlined),
            validator: _emailValidator(),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
          ),
           Gap(32.h),
          Container(
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: FilledButton(
              onPressed: _sendEmail,
              child: const Text('Send Code'),
            ),
          )
        ],
      ),
    );
  }

  FormFieldValidator<String> _emailValidator() {
    return FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: 'your Email is empty'),
      FormBuilderValidators.email(errorText: 'please enter right email')
    ]);
  }

  void _sendEmail() {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      context.read<ForgetPasswordCubit>().onRequestResetPassword(
          _formKey.currentState!.value[email] as String);
    }
  }
}

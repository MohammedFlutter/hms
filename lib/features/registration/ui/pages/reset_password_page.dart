import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:medica/core/const/text_style.dart';
import 'package:medica/core/helper/custom_dialog.dart';
import 'package:medica/core/helper/custom_snake_bar.dart';
import 'package:medica/core/route/route.dart';
import 'package:medica/core/widget/custom_text_field.dart';
import 'package:medica/features/registration/business_logic/reset_password/reset_password_cubit.dart';
import 'package:medica/features/registration/data/model/reset_password.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key, required this.email});

  final String email;

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  late final GlobalKey<FormBuilderState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormBuilderState>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listener: (context, state) {
        state.when(
            initial: () {},
            loading: () {
              CustomDialog.showLoadingDialog(context);
            },
            success: () {
              context.pop();
              context.goNamed(CustomRoutes.signIn);
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

  static const _password = 'password';
  static const _confirmPassword = 'confirm password';

  Widget buildForm(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          const Text('Create New Password',
              style: CustomTextStyle.h1),
           Gap(12.h),
          const Text(
            'Your new password must be different form previously used password',
            style: CustomTextStyle.bodySRegular
                ,
          ),
           Gap(32.h),
          CustomTextField(
            name: _password,
            label: 'password',
            prefixIcon: const Icon(Icons.lock_outline),
            validator: _passwordValidator(),
            keyboardType: TextInputType.name,
            type: TextFieldType.password,
            textInputAction: TextInputAction.next,
          ),
           Gap(20.h),
          CustomTextField(
            name: _confirmPassword,
            label: 'password',
            prefixIcon: const Icon(Icons.lock_outline),
            validator: _passwordConfirmValidator(),
            textInputAction: TextInputAction.send,
            keyboardType: TextInputType.name,
            type: TextFieldType.password,
            onFieldSubmitted: (_) => _resetPassword(context),
          ),
           Gap(32.h),
          Container(
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: FilledButton(
              onPressed: () => _resetPassword(context),
              child: const Text('Reset Password'),
            ),
          )
        ],
      ),
    );
  }

  FormFieldValidator<String> _passwordValidator(
      // AppLocalizations appLocalizations
      ) {
    return FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: 'your password is empty'),
      FormBuilderValidators.minLength(8,
          errorText: 'your password must be greater than 7 litter')
    ]);
  }

  FormFieldValidator<String> _passwordConfirmValidator(
      // AppLocalizations appLocalizations
      ) {
    return FormBuilderValidators.compose([
      FormBuilderValidators.required(
          errorText: 'confirm password is empty'),
      (value) {
        if (_formKey.currentState?.value[_password] !=
            _formKey.currentState?.value[_confirmPassword]) {
          return 'confirm password is not equal password';
        }
        return null;
      },
    ]);
  }

  void _resetPassword(BuildContext context) {
    if (_formKey.currentState?.saveAndValidate() ?? false) {
      context.read<ResetPasswordCubit>().onResetPassword(ResetPassword(
          email: widget.email,
          newPassword: _formKey.currentState!.value[_password]));
    }
  }
}

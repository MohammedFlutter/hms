import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/const/text_style.dart';
import 'package:medica/core/helper/custom_dialog.dart';
import 'package:medica/core/helper/custom_snake_bar.dart';
import 'package:medica/core/route.dart';
import 'package:medica/core/widget/custom_text_field.dart';
import 'package:medica/features/registration/business_logic/sign_in/sign_in_cubit.dart';
import 'package:medica/features/registration/data/model/sign_in_credential.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late final GlobalKey<FormBuilderState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormBuilderState>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) {
        state.when(
            initial: () {},
            loading: () {
              CustomDialog.showLoadingDialog(context);
            },
            success: () {
              context.pop();
              context.goNamed(CustomRoutes.splash);
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
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: SingleChildScrollView(
              child: Column(children: [
                const Gap(24),
                buildForm(context),
                const Gap(24),
                buildFooter(context),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  static const email = 'email';
  static const password = 'password';

  Widget buildForm(BuildContext context) {
    return FormBuilder(
        key: _formKey,
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hi, Welcome Back!',
                    style: CustomTextStyle.h1.copyWith(
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1C2A3A))),
                Text(
                  'Hope you’re doing fine.',
                  style: CustomTextStyle.bodySRegular
                      .copyWith(color: const Color(0xFF6B7280)),
                )
              ],
            ),
            const Gap(32),
            CustomTextField(
              name: email,
              label: 'Email',
              prefixIcon: const Icon(Icons.email_outlined),
              validator: _emailValidator(),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
            const Gap(20),
            CustomTextField(
              name: password,
              label: 'password',
              prefixIcon: const Icon(Icons.lock_outline),
              validator: _passwordValidator(),
              textInputAction: TextInputAction.send,
              keyboardType: TextInputType.name,
              type: TextFieldType.password,
              onFieldSubmitted: (_) => _signIn,
            ),
            const Gap(24),
            Container(
              constraints: const BoxConstraints(minWidth: double.infinity),
              child: FilledButton(
                onPressed: () => _signIn(context),
                style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 16))),
                child: const Text('Sign In'),
              ),
            )
          ],
        ));
  }

  FormFieldValidator<String> _emailValidator() {
    return FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: 'your Email is empty'),
      FormBuilderValidators.email(errorText: 'please enter right email')
    ]);
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

  Widget buildFooter(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () => _goForgotPassword(context),
            child: const Text('Forgot password?')),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an account yet?',
              style: CustomTextStyle.bodySRegular,
            ),
            TextButton(
                onPressed: () => _goSignUp(context),
                child: const Text(
                  'Sign Up',
                  // style: CustomTextStyle.bodySRegular.copyWith(color: Colors.blue),
                ))
          ],
        ),
      ],
    );
  }

  void _signIn(BuildContext context) {
    final formState = _formKey.currentState;
    if (formState?.saveAndValidate() ?? false) {
      final signInCredential = SignInCredential(
          email: formState!.value[email].toString().trim(),
          password: formState.value[password].toString());
      BlocProvider.of<SignInCubit>(context).onSignIn(signInCredential);
    }
  }

  void _goSignUp(BuildContext context) {
    context.goNamed(CustomRoutes.signUp);
  }

  void _goForgotPassword(BuildContext context) {
    context.goNamed(CustomRoutes.forgetPassword);
  }
}

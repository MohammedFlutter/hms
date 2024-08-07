import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/const/text_style.dart';
import 'package:medica/core/helper/custom_dialog.dart';
import 'package:medica/core/helper/custom_snake_bar.dart';
import 'package:medica/core/route/route.dart';
import 'package:medica/core/widget/custom_text_field.dart';
import 'package:medica/features/registration/business_logic/sign_up/sign_up_cubit.dart';
import 'package:medica/features/registration/data/model/sign_up_credential.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late final GlobalKey<FormBuilderState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormBuilderState>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        state.when(
            initial: () {},
            loading: () {
              CustomDialog.showLoadingDialog(context);
            },
            success: () {
              context.pop();
              context.pushNamed(CustomRoutes.verifyCode, extra: {
                CustomRouteParameter.previousPage: CustomRoutes.signUp,
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
                 Gap(24.h),
                buildFooter(context),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  static const firstName = 'first_name';
  static const lastName = 'last_name';
  static const email = 'email';
  static const password = 'password';

  Widget buildForm(BuildContext context) {
    return FormBuilder(
        key: _formKey,
        child: Column(
          children: [
            const Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Create Account', style: CustomTextStyle.h1),
                Text(
                  'We are here to help you!',
                  style: CustomTextStyle.bodySRegular,
                )
              ],
            ),
            Gap(32.h),

            CustomTextField(
              name: firstName,
              label: 'First Name',
              prefixIcon: const Icon(Icons.person_outlined),
              validator: FormBuilderValidators.required(
                  errorText: 'your name is empty'),
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
            ),
            Gap(20.h),
            CustomTextField(
              name: lastName,
              label: 'Last Name',
              prefixIcon: const Icon(Icons.person_outlined),
              validator: FormBuilderValidators.required(
                  errorText: 'your name is empty'),
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
            ),
            Gap(20.h),
            CustomTextField(
              name: email,
              label: 'Email',
              prefixIcon: const Icon(Icons.email_outlined),
              validator: _emailValidator(),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
            Gap(20.h),
            CustomTextField(
              name: password,
              label: 'password',
              prefixIcon: const Icon(Icons.lock_outline),
              validator: _passwordValidator(),
              textInputAction: TextInputAction.send,
              keyboardType: TextInputType.name,
              type: TextFieldType.password,
              onFieldSubmitted: (_) => _signUp,
            ),
            Gap(24.h),
            Container(
              constraints: const BoxConstraints(minWidth: double.infinity),
              child: FilledButton(
                onPressed: () => _signUp(context),
                child: const Text('Create Account'),
              ),
              // ElevatedButton(
              //     onPressed: signIn, child: const Text('Create Account'),),
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
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Do you have an account ?',
          style: CustomTextStyle.bodySRegular,
        ),
        TextButton(
            onPressed: () => _goSignIn(context),
            child: const Text(
              'Sign In',
              // style: CustomTextStyle.bodySRegular.copyWith(color: Colors.blue),
            ))
      ],
    );
  }

  void _signUp(BuildContext context) {
    var formState = _formKey.currentState!;
    if (formState.saveAndValidate()) {
      context.read<SignUpCubit>().onSignIn(SignUpCredential(
            email: formState.value[email],
            password: formState.value[password],
            firstname: formState.value[firstName],
            lastname: formState.value[lastName],
          ));
    }
    //   todo implements
  }

  void _goSignIn(BuildContext context) {
    context.pushNamed(CustomRoutes.signIn);
  }
}

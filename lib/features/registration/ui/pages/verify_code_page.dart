import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/const/text_style.dart';
import 'package:medica/core/helper/custom_dialog.dart';
import 'package:medica/core/helper/custom_snake_bar.dart';
import 'package:medica/core/route.dart';
import 'package:medica/features/registration/business_logic/verify_code/verify_code_cubit.dart';
import 'package:pinput/pinput.dart';

enum PreviousRoute {
  forgotPasswordVerification,
  accountActivationVerification,
}

class VerifyCodePage extends StatefulWidget {
  const VerifyCodePage(
      {super.key, required this.previousRoute, required this.email});

  final PreviousRoute previousRoute;
  final String email;

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
  late final GlobalKey<FormState> _formKey;

  late final TextEditingController _otpController;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _otpController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyCodeCubit, VerifyCodeState>(
      listener: (context, state) {
        state.when(
            initial: () {},
            loading: () {
              CustomDialog.showLoadingDialog(context);
            },
            loaded: () {
              context.pop();
            },
            success: () {
              context.pop();
              CustomSnakeBar.show(
                  context: context,
                  isError: false,
                  message: 'account created successfully');
              if (widget.previousRoute ==
                  PreviousRoute.forgotPasswordVerification) {
                context.goNamed(Routes.resetPassword, extra: widget.email);
              } else if (widget.previousRoute ==
                  PreviousRoute.accountActivationVerification) {
                context.goNamed(Routes.signIn);
              }
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

  Widget buildForm(BuildContext context) {
    return Column(
      children: [
        Text('Verify Code',
            style: CustomTextStyle.h1.copyWith(
                fontWeight: FontWeight.w600, color: const Color(0xFF1C2A3A))),
        const Gap(12),
        Text(
          'Enter the the code we just sent you on your registered Email',
          textAlign: TextAlign.center,
          style: CustomTextStyle.bodySRegular
              .copyWith(color: const Color(0xFF6B7280)),
        ),
        const Gap(32),
        Form(
          key: _formKey,
          child: Pinput(
            length: 6,
            validator: _codeValidator(),
            controller: _otpController,
            // keyboardType: TextInputType.,
            onChanged: (value) {
              // to delete any character
              // if (int.tryParse(value) == null) {
              //   _otpController.text = (value.length <= 1)
              //       ? ''
              //       : value.substring(0, value.length - 1);
              // }
            },
            onCompleted: (input) {
              _onVerify(context);
            },
          ),
        ),
        const Gap(32),
        Container(
          constraints: const BoxConstraints(minWidth: double.infinity),
          child: FilledButton(
            onPressed: () => _onVerify(context),
            child: const Text('Send Code'),
          ),
        ),
      ],
    );
  }

  Widget buildFooter(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Didn’t get the Code?  ',
          style: CustomTextStyle.bodySRegular,
        ),
        TextButton(
            onPressed: () => _onResend(),
            child: const Text(
              'Resend',
              // style: CustomTextStyle.bodySRegular.copyWith(color: Colors.blue),
            ))
      ],
    );
  }

  void _onVerify(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    switch (widget.previousRoute) {
      case PreviousRoute.forgotPasswordVerification:
        BlocProvider.of<VerifyCodeCubit>(context)
            .onVerifyCode(_otpController.text);
        break;
      case PreviousRoute.accountActivationVerification:
        BlocProvider.of<VerifyCodeCubit>(context)
            .onActivateAccount(_otpController.text);
        break;
    }
    _otpController.text = '';
  }

  void _onResend() {
    //todo on resend
    _otpController.text = '';
    // if (widget.previousRoute == PreviousRoute.forgotPasswordVerification) {
    BlocProvider.of<VerifyCodeCubit>(context).onResentOtp(widget.email);
    // }
    // c
    // ontext.pushNamed(CustomRoute.resetPassword);
  }

  FormFieldValidator<String> _codeValidator(// AppLocalizations appLocalizations
      ) {
    return FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: 'code is empty'),
      FormBuilderValidators.equalLength(6,
          errorText: 'your code must be 6 letters'),
      // FormBuilderValidators.numeric(errorText: 'your code must be number')
    ]);
  }
}

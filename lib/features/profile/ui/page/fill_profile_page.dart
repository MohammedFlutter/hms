import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import 'package:medica/core/widget/custom_text_field.dart';
import 'package:intl/intl.dart';

import 'package:medica/features/profile/business_logic/profile_edit/profile_edit_bloc.dart';
import 'package:medica/features/profile/business_logic/profile_edit/profile_edit_event.dart';
import 'package:medica/features/profile/business_logic/profile_edit/profile_edit_state.dart';
import 'package:medica/features/profile/data/model/profile.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late final GlobalKey<FormBuilderState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormBuilderState>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('Edit Your Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: BlocListener<ProfileEditBloc, ProfileEditState>(
          listener: (context, state) {
            if (state is Success) {
              context.pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Profile updated successfully!')),
              );
            } else if (state is Failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text('Error updating profile: ${state.error}')),
              );
            }
          },
          child: SingleChildScrollView(child: _buildForm()),
        ),
      ),
    );
  }

  Widget _buildForm() {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          _buildPicture(context),
          const Gap(20),
          CustomTextField(
            name: 'firstname',
            label: 'First Name',
            prefixIcon: const Icon(Icons.person_outlined),
            validator: FormBuilderValidators.required(errorText: 'Required'),
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
          ),
          const Gap(20),
          CustomTextField(
            name: 'lastname',
            label: 'Last Name',
            prefixIcon: const Icon(Icons.person_outlined),
            validator: FormBuilderValidators.required(errorText: 'Required'),
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
          ),
          const Gap(20),
          CustomTextField(
            name: 'email',
            label: 'Email',
            prefixIcon: const Icon(Icons.email_outlined),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(errorText: 'Required'),
              FormBuilderValidators.email(errorText: 'Invalid email'),
            ]),
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
          ),
          const Gap(20),
          CustomTextField(
            name: 'phone',
            label: 'Phone',
            prefixIcon: const Icon(Icons.phone_outlined),
            validator: FormBuilderValidators.required(errorText: 'Required'),
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
          ),
          const Gap(20),
          CustomTextField(
            name: 'address',
            label: 'Address',
            prefixIcon: const Icon(Icons.location_on_outlined),
            validator: FormBuilderValidators.required(errorText: 'Required'),
            textInputAction: TextInputAction.next,
          ),
          const Gap(20),
          FormBuilderDateTimePicker(
            name: 'dob',
            textInputAction: TextInputAction.next,
            inputType: InputType.date,
            lastDate: DateTime.now(),
            format: DateFormat('yyyy-MM-dd'),
            decoration: const InputDecoration(
              label: Text('Date of Birth'),
              prefixIcon: Icon(Icons.date_range),
            ),
            validator: FormBuilderValidators.required(errorText: 'Required'),
          ),
          const Gap(20),
          /**/ const Gap(20),
          const Gap(32),
          Container(
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: FilledButton(
              onPressed: () => _save(context),
              child: const Text('Save'),
            ),
          ),
        ],
      ),
    );
  }

  void _save(BuildContext context) {
    if (_formKey.currentState!.saveAndValidate()) {
      final formData = _formKey.currentState!.value;


      context.read<ProfileEditBloc>().add(UpdateProfile(Profile(
            firstname: formData['firstname'],
            lastname: formData['lastname'],
            email: formData['email'],
            dob: formData['dob'].toString().split(' ')[0],
            phone: formData['phone'],
            address: formData['address'],
          )));
    }
  }

  Widget _buildPicture(BuildContext context) {
    final randomColor = Colors.primaries[
        DateTime.now().millisecondsSinceEpoch % Colors.primaries.length];

    return Stack(
      children: [
        InkWell(
          onTap: () => () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(80.r),
            child: Container(
              color: const Color(0xFFEDEDF8),
              width: 160,
              height: 160,
              alignment: AlignmentDirectional.center,
              child: Transform.translate(
                offset: const Offset(-20, 0),
                child: Icon(
                  Icons.person,
                  size: 200,
                  color: randomColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

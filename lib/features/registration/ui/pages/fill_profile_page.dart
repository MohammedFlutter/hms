import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/enums/gender.dart';
import 'package:medica/core/route.dart';
import 'package:medica/core/widget/custom_text_field.dart';

class FillProfilePage extends StatefulWidget {
  const FillProfilePage({super.key});

  @override
  State<FillProfilePage> createState() => _FillProfilePageState();
}

class _FillProfilePageState extends State<FillProfilePage> {
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
          title: const Text('Fill Your Profile'),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: SingleChildScrollView(child: _buildForm())));
  }

  Widget _buildForm() {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          _buildPicture(),
          const Gap(20),
          CustomTextField(
            name: 'name',
            label: 'name',
            prefixIcon: const Icon(Icons.person_outlined),
            validator:
                FormBuilderValidators.required(errorText: 'your name is empty'),
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
          ),
          const Gap(20),
          CustomTextField(
            name: 'name',
            label: 'name',
            prefixIcon: const Icon(Icons.person_outlined),
            validator:
                FormBuilderValidators.required(errorText: 'your name is empty'),
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
          ),
          const Gap(20),
          CustomTextField(
            name: 'name',
            label: 'name',
            prefixIcon: const Icon(Icons.person_outlined),
            validator:
                FormBuilderValidators.required(errorText: 'your name is empty'),
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
          ),
          const Gap(20),
          FormBuilderDateTimePicker(
              name: 'birthday',
              textInputAction: TextInputAction.next,
              inputType: InputType.date,
              lastDate: DateTime.now(),
              decoration: const InputDecoration(
                  label: Text('Date of Birth'),
                  // border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.date_range)),
              validator: FormBuilderValidators.required(
                  errorText: 'please enter your birthday')),
          const Gap(20),
          FormBuilderDropdown(
              name: 'gender',
              decoration: const InputDecoration(
                label: Text('Gender'),
                // border: OutlineInputBorder(),
              ),
              items: Gender.values
                  .map((e) => DropdownMenuItem(
                        value: e.index,
                        child: Text(e.name),
                      ))
                  .toList()),
          const Gap(32),
          Container(
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: FilledButton(
              onPressed: () => _save(context),
              child: const Text('Save'),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPicture() {
    return Stack(
      children: [
        InkWell(
          onTap: () => _selectImage(context),
          // child: Container(
          //   width: 100,
          //   height: 100,
          //   decoration: BoxDecoration(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Container(
              color: const Color(0xFFEDEDF8),
              // color: Colors.red,
              width: 160,
              height: 160,
              alignment: AlignmentDirectional.center,
              child: Transform.translate(
                offset: const Offset(-20, 0),
                child: const Icon(
                  Icons.person,
                  size: 200,
                  color: Color(0xFFE5E7EB),
                ),
              ),
            ),
          ),
        ),
        // Container(
        //   height: 200,
        //   width: 200,
        //   decoration: const BoxDecoration(
        //     shape: BoxShape.circle,
        //     image: DecorationImage(
        //       image: AssetImage('assets/images/doctor.png'),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        // ),
        Positioned(
            bottom: 10,
            right: 10,
            child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4),
                      bottomRight: Radius.circular(4),
                    )),
                child: const Icon(
                  Icons.edit_outlined,
                  color: Colors.white,
                ))),
      ],
    );
  }

  // void _logout() {
  //   context.go(Routes.signIn);
  // }

  void _save(BuildContext context) {}

  _selectImage(BuildContext context) {}
}

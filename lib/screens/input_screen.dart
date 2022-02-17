import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKeySingin = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role': '',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Singin'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: formKeySingin,
          child: Column(
            children: [
              CustomTextFormField(
                  inputName: 'name',
                  formValues: formValues,
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  helperText: 'This is a helper text',
                  prefixIcon: Icons.person),
              const SizedBox(height: 20),
              CustomTextFormField(
                  inputName: 'last_name',
                  formValues: formValues,
                  labelText: 'Last name',
                  hintText: 'Enter your last name',
                  prefixIcon: Icons.person_outline),
              const SizedBox(height: 20),
              CustomTextFormField(
                  inputName: 'email',
                  formValues: formValues,
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(height: 20),
              CustomTextFormField(
                  inputName: 'password',
                  formValues: formValues,
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: Icons.lock,
                  obscureText: true),
              const SizedBox(height: 20),
              DropdownButtonFormField<String>(
                value: 'admin',
                items: const [
                  DropdownMenuItem<String>(
                    value: 'admin',
                    child: Text('Admin'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'user',
                    child: Text('User'),
                  ),
                ],
                onChanged: (value) {
                  print(value);
                  formValues['role'] = value ?? 'user';
                },
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (formKeySingin.currentState!.validate()) {
                      formKeySingin.currentState!.save();
                      print(formValues);
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

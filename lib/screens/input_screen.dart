import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final Map<String, dynamic> inputs = {
      "name": "Favio",
      "surname": "Amarilla",
      "email": "amarillaf@gmail.com",
      "password": "123456",
      "role": "ADMIN",
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Screen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                CustomInput(
                    hintText: 'Name',
                    labelText: 'Name',
                    formProperty: "name",
                    formValues: inputs),
                const SizedBox(height: 30),
                CustomInput(
                    labelText: 'Surname',
                    hintText: 'Surname',
                    formProperty: "surname",
                    formValues: inputs),
                const SizedBox(height: 30),
                CustomInput(
                    labelText: 'Email',
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: "email",
                    formValues: inputs),
                const SizedBox(height: 30),
                CustomInput(
                    labelText: 'Password',
                    hintText: 'Password',
                    obscureText: true,
                    formProperty: "password",
                    formValues: inputs),
                const SizedBox(height: 30),
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(
                      value: "SUPER",
                      child: Text("Superuser"),
                    ),
                    DropdownMenuItem(
                      value: "ADMIN",
                      child: Text("Administrator"),
                    ),
                    DropdownMenuItem(
                      value: "USER",
                      child: Text("User"),
                    ),
                    DropdownMenuItem(
                      value: "DEV",
                      child: Text("Developer"),
                    ),
                  ],
                  onChanged: (value) {
                    inputs["role"] = value ?? "Admin";
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // hide keyboard
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!formKey.currentState!.validate()) {
                      return;
                    }

                    print(inputs);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text("Save"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

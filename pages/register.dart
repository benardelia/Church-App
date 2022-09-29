import 'package:church/database_api/database_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

final formKey = GlobalKey<FormState>();
TextEditingController passwordController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController phoneController = TextEditingController();
bool hide = true;
class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  validator: ((value) {
                    if (value == null || value.isEmpty) {
                      return 'field can\'t remain empty';
                    } else {
                      return null;
                    }
                  }),
                  decoration: const InputDecoration(label: Text('Name')),
                ),
                TextFormField(
                  controller: emailController,
                  validator: ((value) {
                    if (value == null || value.isEmpty) {
                      return 'field can\'t remain empty';
                    } else {
                      return null;
                    }
                  }),
                  decoration: const InputDecoration(label: Text('Phone')),
                ),
                TextFormField(
                  controller: phoneController,
                  validator: ((value) {
                    if (value == null || value.isEmpty) {
                      return 'field can\'t remain empty';
                    } else {
                      return null;
                    }
                  }),
                  decoration: const InputDecoration(label: Text('email')),
                ),
                TextFormField(
                  obscureText: hide,
                  controller: passwordController,
                  validator: ((value) {
                    if (value!.length < 6 || value.isEmpty) {
                      return 'password should be atleast 6 charactors';
                    } else {
                      return null;
                    }
                  }),
                  decoration: InputDecoration(
                      label: const Text('password'),
                      suffix: IconButton(
                        icon: const Icon(Icons.remove_red_eye),
                        onPressed: () {
                          setState(() {
                            hide = !hide;
                          });
                        },
                      )),
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        try {
                          String answer = await DatabaseServices().register(
                              emailController.text.trim(),
                              passwordController.text.trim());
                          if (!mounted) return;
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text(answer)));
                          Navigator.pop(context);
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(e.toString())));
                        }
                      }
                    },
                    child: const Text('Register'))
              ],
            )),
      ),
    );
  }
}

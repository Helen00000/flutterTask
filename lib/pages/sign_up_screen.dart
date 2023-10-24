import 'package:dancing/constants.dart';
import 'package:flutter/material.dart';
import 'package:dancing/widgets/text_input_field.dart';

class SingupScreen extends StatelessWidget {
  SingupScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Text',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
          ),
          const Text(
            'Regitster',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              const CircleAvatar(
                radius: 64,
                backgroundColor: Colors.black,
              ),
              Positioned(
                bottom: -10,
                left: 80,
                child: IconButton(
                    onPressed: () => authController.pickImage(),
                    icon: const Icon(
                      Icons.add_a_photo,
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextInputField(
              controller: (_usernameController),
              labelText: 'User name',
              icon: Icons.person,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextInputField(
              controller: (_emailController),
              labelText: 'Email',
              icon: Icons.email,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextInputField(
              controller: (_passwordController),
              labelText: 'Password',
              icon: Icons.lock,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  )),
              child: InkWell(
                onTap: () => authController.registerUser(
                    _usernameController.text,
                    _emailController.text,
                    _passwordController.text,
                    authController.profilePhoto),
                child: const Center(
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                  ),
                ),
              )),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account? ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              InkWell(
                onTap: () {
                  print('f');
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

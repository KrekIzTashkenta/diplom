import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final username = TextEditingController();
  final password = TextEditingController();

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                //Username field

                Image.asset(
                  "lib/assets/login.png",
                  width: 210,
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.deepPurple.withOpacity(.2)
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      border: InputBorder.none,
                      label: Text('Username'),
                    ),
                  ),
                ),

                //Password field
                Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.deepPurple.withOpacity(.2)
                  ),
                  child: TextFormField(
                    obscureText: !isVisible,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
                      border: InputBorder.none,
                      label: const Text('Password'),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          }, icon: Icon(isVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                        )
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                //Login button
                Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * .9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.deepPurple
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white,
                      ),
                    ),
                  ),
                ),

                //Sign up button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
                    TextButton(onPressed: () {}, child: const Text('Sign up'),)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

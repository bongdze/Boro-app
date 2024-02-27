import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/momo.jpg'),
            radius: 50,
          ),
          const SizedBox(height: 30),
          Form(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      //contentPadding: EdgeInsets.symmetric(vertical: 20),
                      label: Text('Email Address*'),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      // contentPadding: EdgeInsets.symmetric(vertical: 20),
                      label: Text('Password'),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Color.fromARGB(255, 48, 113, 165),
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(400, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          backgroundColor:
                              const Color.fromARGB(255, 15, 109, 185),
                          foregroundColor: Colors.white),
                      child: const Text('Log in')),
                  const SizedBox(height: 20),
                  const Text(
                    'or connect with',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                      icon: const Icon(Icons.apple),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(400, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          backgroundColor: const Color.fromARGB(145, 0, 0, 0),
                          foregroundColor: Colors.white),
                      label: const Text('Sign in with Apple')),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(400, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          backgroundColor:
                              const Color.fromARGB(255, 196, 13, 0),
                          foregroundColor: Colors.white),
                      child: const Text('Google')),
                  const SizedBox(height: 30),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Back',
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(color: Color.fromARGB(255, 48, 113, 165)),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

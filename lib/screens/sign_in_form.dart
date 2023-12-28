import 'package:example/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() {
    return _SignInScreenState();
  }
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    openSignup(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => const HomeScreen()),
      );
    }

    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Create an account',
            style: TextStyle(color: Colors.green),
          ),
          iconTheme: const IconThemeData(color: Colors.green),
          backgroundColor: const Color.fromARGB(160, 230, 230, 250)),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: const InputDecoration(
                  label: Text('Full Names'),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Phone Number'),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Password'),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        padding:
                            const MaterialStatePropertyAll(EdgeInsets.all(16)),
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromARGB(255, 13, 103, 15)),
                      ),
                      onPressed: () {
                        openSignup(context);
                      },
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

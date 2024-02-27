//import 'package:example/screens/home_screen.dart';
import 'dart:convert';
import 'package:example/screens/login_screen.dart';
import 'package:http/http.dart' as http;
import 'package:example/screens/tabs.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() {
    return _SignInScreenState();
  }
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  var _firstName = '';
  var _lastName = '';
  var _email = '';
  var _phoneNum = '';
  var _location = '';
  Future _move() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final url = Uri.parse('http://localhost/src/sign_in.php');
      //var url = 'http://192.168.226.27/src/sign_in.php';
      Map body = {
        'fname': _firstName,
        'lname': _lastName,
        'email': _email,
        'phoneNum': _phoneNum,
        'location': _location
      };

      http.Response response = await http.post(url, body: body);

      var data = jsonDecode(response.body);
      print(data);
      /*http.post(
        url,
        headers: {'Content-Type': ' application.json'},
        body: json.encode(
          {
            'fname': _firstName,
            'lname': _lastName,
            'email': _email,
            'phoneNum': _phoneNum,
            'location': _location
          },
        ),
      );*/

      Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => const TabsScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Create an account',
            style: TextStyle(color: Colors.green),
          ),
          iconTheme: const IconThemeData(color: Colors.green),
          backgroundColor: const Color.fromARGB(160, 230, 230, 250)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(
                    label: Text('First Name'),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value.trim().length <= 1 ||
                        value.trim().length > 20) {
                      return 'Must be between 1 and 20 characters';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _firstName = value!;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Last Name'),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value.trim().length <= 1 ||
                        value.trim().length > 20) {
                      return 'Must be between 1 and 20 characters';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _lastName = value!;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Email'),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value.trim().length <= 1 ||
                        value.trim().length > 40) {
                      return 'Must be between 1 and 40 characters';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Phone Number'),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value.trim().length <= 1 ||
                        value.trim().length > 12) {
                      return 'Must be between 1 and 12 characters';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _phoneNum = value!;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Location'),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value.trim().length <= 1 ||
                        value.trim().length > 20) {
                      return 'Must be between 1 and 20 characters';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _location = value!;
                  },
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.all(16)),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 13, 103, 15)),
                        ),
                        onPressed: _move,
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 220),
                Row(
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (ctx) => const LogInScreen()),
                        );
                      },
                      child: const Text(
                        'Log in',
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

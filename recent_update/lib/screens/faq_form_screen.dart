import 'package:flutter/material.dart';

class FaqFormScreen extends StatelessWidget {
  const FaqFormScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
        child: Card(
          elevation: 5,
          child: Container(
            color: Colors.white10,
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            height: 800,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              //contentPadding: EdgeInsets.symmetric(vertical: 20),
                              label: Text('Name*'),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            decoration: const InputDecoration(
                              // contentPadding: EdgeInsets.symmetric(vertical: 20),
                              label: Text('Email*'),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            decoration: const InputDecoration(
                              // contentPadding: EdgeInsets.symmetric(vertical: 20),
                              label: Text('Address*'),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            maxLines: 7,
                            decoration: const InputDecoration(
                              // contentPadding: EdgeInsets.symmetric(vertical: 20),
                              label: Text(
                                'Please describe the issue*',
                                textAlign: TextAlign.start,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              // contentPadding: EdgeInsets.symmetric(vertical: 20),
                              label: Text('Phone Number*'),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                              ),
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
                                      const Color.fromARGB(255, 19, 19, 105),
                                  foregroundColor: Colors.white),
                              child: const Text('Submit')),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

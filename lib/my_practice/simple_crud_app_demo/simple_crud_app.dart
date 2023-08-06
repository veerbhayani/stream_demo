import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:stream_demo/my_practice/simple_crud_app_demo/simple_crud_stream.dart';

class SimpleCrudApp extends StatelessWidget {
  const SimpleCrudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text.rich(
          TextSpan(
            text: 'Simple',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            children: [
              TextSpan(
                text: ' Crude',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              TextSpan(
                text: ' App',
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 15,
              top: 5,
              bottom: 5,
            ),
            child: Text(
              "User Details",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      25,
                    ),
                  ),
                ),
                hintText: 'User Name',
                labelText: 'User Name',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      25,
                    ),
                  ),
                ),
                hintText: 'Father Name',
                labelText: 'Father Name',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      25,
                    ),
                  ),
                ),
                hintText: 'Surname',
                labelText: 'Surname',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 15,
              top: 10,
              bottom: 5,
            ),
            child: Text(
              "Select Gender",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Radio(
                  value: SimpleCrudStream.male,
                  groupValue: SimpleCrudStream.gender,
                  onChanged: (value) {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 5,
                  top: 5,
                  bottom: 5,
                ),
                child: Text(
                  "Male",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Radio(
                  value: SimpleCrudStream.female,
                  groupValue: SimpleCrudStream.gender,
                  onChanged: (value) {
                    log("$value");
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 5,
                  top: 5,
                  bottom: 5,
                ),
                child: Text(
                  "Female",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 15,
              top: 10,
              bottom: 5,
            ),
            child: Text(
              "Select Hobbies",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 5,
                ),
                child: Checkbox.adaptive(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 5,
                  top: 5,
                  bottom: 5,
                ),
                child: Text(
                  "Cricket",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 5,
                ),
                child: Checkbox.adaptive(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 5,
                  top: 5,
                  bottom: 5,
                ),
                child: Text(
                  "Football",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 5,
                ),
                child: Checkbox.adaptive(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 5,
                  top: 5,
                  bottom: 5,
                ),
                child: Text(
                  "Swimming",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 5,
                ),
                child: Checkbox.adaptive(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 5,
                  top: 5,
                  bottom: 5,
                ),
                child: Text(
                  "Reading",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 5,
                ),
                child: Checkbox.adaptive(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 5,
                  top: 5,
                  bottom: 5,
                ),
                child: Text(
                  "Dancing",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  100,
                ),
                color: Colors.black,
              ),
              child: MaterialButton(
                elevation: 15,
                animationDuration: const Duration(
                  seconds: 2,
                ),
                onPressed: () {},
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

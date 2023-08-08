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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: SimpleCrudStream.txtNameEditingController,
              decoration: const InputDecoration(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: SimpleCrudStream.txtLastNameEditingController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      25,
                    ),
                  ),
                ),
                hintText: 'Last Name',
                labelText: 'Last Name',
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
          StreamBuilder(
            stream: SimpleCrudStream.genderStreamController,
            builder: (context, snapshot) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Radio(
                        value: SimpleCrudStream.male,
                        groupValue: SimpleCrudStream.gender,
                        onChanged: (value) {
                          SimpleCrudStream.gender =
                              SimpleCrudStream.genderControllerValue = value!;
                        },
                      ),
                      const Text(
                        'Male',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Radio(
                        value: SimpleCrudStream.feMale,
                        groupValue: SimpleCrudStream.gender,
                        onChanged: (value) {
                          SimpleCrudStream.genderControllerValue =
                              SimpleCrudStream.gender = value!;
                        },
                      ),
                      const Text(
                        'Female',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    StreamBuilder(
                      stream: SimpleCrudStream.hobbyCricketStreamController,
                      builder: (context, snapshot) => Checkbox(
                        value: SimpleCrudStream.isCricket,
                        onChanged: (value) {
                          SimpleCrudStream.hobbyCricketControllerValue =
                              SimpleCrudStream.isCricket = value!;
                        },
                      ),
                    ),
                    const Text(
                      'Cricket',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    StreamBuilder(
                      stream: SimpleCrudStream.hobbyFootballStreamController,
                      builder: (context, snapshot) => Checkbox(
                        value: SimpleCrudStream.isFootball,
                        onChanged: (value) {
                          SimpleCrudStream.hobbyFootballControllerValue =
                              SimpleCrudStream.isFootball = value!;
                        },
                      ),
                    ),
                    const Text(
                      'Football',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    StreamBuilder(
                      stream: SimpleCrudStream.hobbySingingStreamController,
                      builder: (context, snapshot) => Checkbox(
                        value: SimpleCrudStream.isSinging,
                        onChanged: (value) {
                          SimpleCrudStream.hobbySingingControllerValue =
                              SimpleCrudStream.isSinging = value!;
                        },
                      ),
                    ),
                    const Text(
                      'Singing',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
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
                onPressed: () {
                  SimpleCrudStream.submitControllerValue = true;
                  SimpleCrudStream.addUserData();
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          StreamBuilder(
              builder: (context, snapshot) => SimpleCrudStream
                      .userData.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: SimpleCrudStream.userData.length,
                        itemBuilder: (context, index) => Container(
                          height: 200,
                          width: double.infinity,
                          color: Colors.tealAccent,
                          child: Column(
                            children: [
                              StreamBuilder(
                                stream: SimpleCrudStream.nameStreamController,
                                builder: (context, snapshot) => Text(
                                  snapshot.data.toString(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : const Center(child: Text('There is not data'))),
        ],
      ),
    );
  }
}

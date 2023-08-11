import 'package:flutter/material.dart';
import 'package:stream_demo/my_practice/simple_crud_app_demo/simple_crud_stream.dart';

class SimpleCrudeApp extends StatelessWidget {
  const SimpleCrudeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            StreamBuilder(
              stream: SimpleCrudStream.nameStreamController,
              builder: (context, snapshot) => TextField(
                controller: SimpleCrudStream.txtNameEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Name',
                  labelText: 'Name',
                ),
              ),
            ),
            const SizedBox(height: 5),
            StreamBuilder(
              stream: SimpleCrudStream.middleNameStreamController,
              builder: (context, snapshot) => TextField(
                controller: SimpleCrudStream.txtMiddleNameEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'MiddleName',
                  labelText: 'MiddleName',
                ),
              ),
            ),
            const SizedBox(height: 5),
            StreamBuilder(
              stream: SimpleCrudStream.lastNameStreamController,
              builder: (context, snapshot) => TextField(
                controller: SimpleCrudStream.txtLastNameEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'LastName',
                  labelText: 'LastName',
                ),
              ),
            ),
            const SizedBox(height: 5),
            StreamBuilder(
              stream: SimpleCrudStream.genderStreamController,
              builder: (context, snapshot) => Row(
                children: [
                  const Text('Gender :  '),
                  const Text('Male'),
                  Radio(
                    value: SimpleCrudStream.male,
                    groupValue: SimpleCrudStream.gender,
                    onChanged: (value) {
                      SimpleCrudStream.genderControllerValue =
                          SimpleCrudStream.gender = value!;
                    },
                  ),
                  const Text('Female'),
                  Radio(
                    value: SimpleCrudStream.feMale,
                    groupValue: SimpleCrudStream.gender,
                    onChanged: (value) {
                      SimpleCrudStream.genderControllerValue =
                          SimpleCrudStream.gender = value!;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Text('Hobby :   '),
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
                const Text('Cricket'),
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
                const Text('Football'),
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
                const Text('Singing'),
              ],
            ),
            const SizedBox(height: 5),
            // StreamBuilder(
            //   stream: SimpleCrudStream.ageStreamController,
            //   builder: (context, snapshot) => Slider(
            //     value: SimpleCrudStream.selectedAge,
            //     onChanged: (value) {
            //       SimpleCrudStream.ageControllerValue =
            //           SimpleCrudStream.selectedAge = value;
            //     },
            //     min: 0,
            //     max: 100,
            //   ),
            // ),
            const SizedBox(height: 5),
            StreamBuilder(
              stream: SimpleCrudStream.submitStreamController,
              builder: (context, snapshot) => ElevatedButton(
                onPressed: () {
                  SimpleCrudStream.submitControllerValue =
                      SimpleCrudStream.submited = true;

                  SimpleCrudStream.addUserData();
                  SimpleCrudStream.userDataControllerValue =
                      SimpleCrudStream.userData;
                  SimpleCrudStream.clearData();
                  SimpleCrudStream.submitControllerValue =
                      SimpleCrudStream.submited = false;
                },
                child: const Text('Submit'),
              ),
            ),
            const SizedBox(height: 5),
            StreamBuilder(
              stream: SimpleCrudStream.userDataStreamController,
              builder: (context, snapshot) =>
                  SimpleCrudStream.userData.isNotEmpty
                      ? Expanded(
                          child: ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                SimpleCrudStream.selecedIndex = index;
                                SimpleCrudStream.onTapAdd();
                                SimpleCrudStream.onUpdatTapAdd();
                              },
                              child: Dismissible(
                                key: UniqueKey(),
                                onDismissed: (direction) {
                                  SimpleCrudStream.userData.removeAt(index);
                                },
                                child: Container(
                                  height: 100,
                                  width: double.infinity,
                                  color: Colors.amber,
                                  child: Column(
                                    children: [
                                      Text(
                                          'Name : ${snapshot.data![index]['name']}'),
                                      Text(
                                          'MiddleName : ${snapshot.data![index]['middleName']}'),
                                      Text(
                                          'LastName : ${snapshot.data![index]['lastName']}'),
                                      Text(
                                          'Gender : ${snapshot.data![index]['gender']}'),
                                      Text(
                                          'Hobby : ${snapshot.data![index]['hobby']}'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : const Text('There is no data'),
            )
          ],
        ),
      ),
    );
  }
}

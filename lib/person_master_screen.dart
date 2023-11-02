import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:master_details/person_class.dart';

import 'details_screen.dart';

class MasterScreen extends StatelessWidget {
  const MasterScreen({super.key});

  List<Person> getPersonsInfo() {
    List<Person> list = [];
    list.add(Person(
      image: 'kawser.jpg',
      name: 'Kaiser Ahmed',
      designation: 'Software Engineer',
      email: 'kawser.crop@example.com',
      phoneNo: '(888) 963-7890',
    ));
    list.add(Person(
      image: 'smith.jpg',
      name: 'Smith Lille',
      designation: 'Product Manager',
      email: 'smit@example.com',
      phoneNo: '(888) 458-8524',
    ));
    list.add(Person(
      image: 'adam.jpg',
      name: 'Junker Mahatma',
      designation: 'Software Engineer',
      email: 'junker@example.com',
      phoneNo: '(888) 758-6984',
    ));
    list.add(Person(
      image: 'srabonti.jpg',
      name: 'Srabonti Roy',
      designation: 'Customer Support',
      email: 'srabonti@example.com',
      phoneNo: '(888) 565-7563',
    ));
    list.add(Person(
      image: 'priter.jpg',
      name: 'Adam Kalliopi',
      designation: 'Architect',
      email: 'adam@example.com',
      phoneNo: '(888) 545-6985',
    ));
    list.add(Person(
      image: 'nishd.jpg',
      name: 'Nishd Kabir',
      designation: 'HR Manager',
      email: 'nishad@example.com',
      phoneNo: '(888) 999-7548',
    ));
    list.add(Person(
      image: 'somas.jpg',
      name: 'Somas Jeet',
      designation: 'Product Manager',
      email: 'somas@example.com',
      phoneNo: '(888) 554-9875',
    ));
    list.add(Person(
      image: 'hellak.jpg',
      name: 'Hellak Smith',
      designation: 'Manager Support',
      email: 'hellak@example.com',
      phoneNo: '(888) 987-8952',
    ));
    list.add(Person(
      image: 'adam.jpg',
      name: 'Peter Kmoms',
      designation: 'Consultant',
      email: 'peter@example.com',
      phoneNo: '(888) 967-5485',
    ));
    list.add(Person(
      image: 'hitler.jpg',
      name: 'Hitler Lams',
      designation: 'Data Analyst',
      email: 'hitler@example.com',
      phoneNo: '(888) 545-5451',
    ));
    list.add(Person(
      image: 'priter.jpg',
      name: 'Priter Dim',
      designation: 'Architect',
      email: 'peter@example.com',
      phoneNo: '(888) 555-8874',
    ));

    return list;
  }

  @override
  Widget build(BuildContext context) {
    //person information list
    var personlist = getPersonsInfo();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: const [
          Icon(Icons.search),
          Icon(Icons.person),
        ],
        elevation: 0.5,
        backgroundColor: CupertinoColors.systemTeal,
        centerTitle: true,
        title: const Text(
          "All Person List",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: CupertinoColors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CupertinoColors.systemTeal,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: personlist.length,
        itemBuilder: (context, index) {
          return Container(
            height: 140,
            padding: const EdgeInsets.all(7),
            child: SafeArea(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (cxt) =>
                          DetailsScreen(personDetails: personlist[index])));
                },
                child: Card(
                  elevation: 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 6, top: 15, bottom: 5),
                          height: 100,
                          width: MediaQuery.of(context).size.width / 2.5,
                          child:
                              Image.asset("assets/${personlist[index].image}"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.only(right: 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                personlist[index].name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                              Text(personlist[index].designation),
                              Text(personlist[index].email),
                              Text(personlist[index].phoneNo),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

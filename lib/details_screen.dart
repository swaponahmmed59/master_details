import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:master_details/person_class.dart';

class DetailsScreen extends StatelessWidget {
  final Person personDetails;
  const DetailsScreen({super.key, required this.personDetails});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.only(left: 40, right: 40, top: 30),
              child: Image.asset(
                "assets/${personDetails.image}",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${personDetails.name}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            Text("${personDetails.designation}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.mail),
                Text("${personDetails.email}"),
              ],
            ),
            InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.call),
                    Text("${personDetails.phoneNo}"),
                  ],
                )),
            const SizedBox(
              height: 30,
            ),
            Text(
                "Hey: ${personDetails.name}' - This is the full name of the individual, and it appears to be "
                "Hello Sneck."
                "Designation: 'Software Developer' - This indicates job title or role, which is "
                "Software Debveloper."
                "It suggests that he works in software development."
                " Email: 'hello@example.com' - This is the email address associated with John Doe, which is 'john.doe@example.com'"
                "Phone Number: '017456-7890' - This is John Doe's contact phone number, which is '(888) 456-7890'"
                "Overall, this information could be used in various contexts, such as a personal or professional profile, contact information, or within an application to display information about John Doe, including his image, name, job title, email, and phone number.")
          ],
        ),
      ),
    ));
  }
}

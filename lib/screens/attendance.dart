import 'package:flutter/material.dart';
import 'package:qr_code_mind_game/models/attendee.dart';

class Attendance extends StatelessWidget {
  final Attendee attendee;

  const Attendance(
      {Key? key,
      required this.attendee})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Attendees data",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ///container for background image
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/attend.jpeg'),
                    fit: BoxFit.cover)),
            width: double.infinity,
            height: double.infinity,
          ),

          ///Attendees data
          Container(
            padding:
                const EdgeInsets.only(left: 30, bottom: 20, top: 70, right: 30),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.values(BoxConstraints.tight(Size:20)),
              //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Name : ${attendee.name}',
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: TextField(
                //
                //     //controller: $username,
                //     decoration: InputDecoration(
                //         border: OutlineInputBorder(),
                //         //labelText: 'Enter your Name'
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black54,
                  height: 10,
                ),

                Text('Id : ${attendee.id}',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black54,
                  height: 10,
                ),
                Text('Email : ${attendee.email}',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black54,
                  height: 10,
                ),
                Text('Day : ${attendee.attendTime}',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black54,
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                left: 20, bottom: 20, top: 350, right: 20),
            child: Text(
              '${attendee.name} attended',
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, bottom: 20, top: 450),
            child: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                      minimumSize: const Size(80, 40)),
                  onPressed: () {},
                  // onPressed: () => Navigator.pushReplacement(context,
                  //     MaterialPageRoute(builder: (context) => const Form())),
                  child: const Text(
                    'Back',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

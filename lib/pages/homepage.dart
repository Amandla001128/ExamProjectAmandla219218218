import 'package:flutter/material.dart';

import 'aboutpage.dart';
import 'booking.dart';
import 'contactpage.dart';
import 'login.dart';
import 'signup.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("Homepage"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const About();
                  }));
                }, child: const Text("About")),
                ElevatedButton(onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return  const Contactpage();
                      }));
                }, child: const Text("Contact")),
                ElevatedButton(onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const Signup();
                      }));
                }, child: const Text("Signup")),
                ElevatedButton(onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const Login();
                      }));
                }, child: const Text("Login")),
                ElevatedButton(onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const Booking();
                      }));
                }, child: const Text("Booking")),
              ]
            ),
          ),
        ),
    );
  }
}
import 'package:flutter/material.dart';
class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);
  @override
  State<About> createState() => _AboutState();
}
class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("About page"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: const Text("This is an application where one can book a traveling ticket using their smartphones without having take a taxi to town to make ticket booking."
          "This application was developed by Amandla Ntwana a student doing Advanced Diploma in Application development for the module Application technology as a problem solving application for people living in rural areas who have to take a taxi to town for them to book a ticket."
          "This application was developed in November 2022 "),

    );
  }
}
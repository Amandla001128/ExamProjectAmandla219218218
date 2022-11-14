import 'package:flutter/material.dart';
class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);
  @override
  State<Booking> createState() => _BookingState();
}
class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking page"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: MyCustomForm(),
    );
  }
}
class MyCustomForm extends StatefulWidget{
  @override
  MyCustomFormState createState(){
    return MyCustomFormState();
  }
}
class MyCustomFormState extends State<MyCustomForm>{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: "Enter your First name",
              labelText: "First Name",
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: "Enter your Last Name",
              labelText: "Last Name",
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.email),
              hintText: "Enter your email address",
              labelText: "Email Address",
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: "Enter your cellphone number",
              labelText: "Cellphone Number",
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.place),
              hintText: "Enter location",
              labelText: "Location",
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.time_to_leave),
              hintText: "Enter time to leave",
              labelText: "Time",
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.date_range),
              hintText: "Enter date for your booking",
              labelText: "Date",
            ),
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: TextButton(
                child: const Text("Book a ticket"),
                onPressed: null,
              )),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
class Contactpage extends StatefulWidget {
  const Contactpage({Key? key}) : super(key: key);
  @override
  State<Contactpage> createState() => _ContactpageState();
}
class _ContactpageState extends State<Contactpage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact page"),
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
              icon: const Icon(Icons.message),
              hintText: "Enter your message",
              labelText: "Message",
            ),
          ),
          new Container(
            padding: const EdgeInsets.only(left: 150.0, top: 40.0),
            child: TextButton(
              child: const Text("Submit"),
              onPressed: null,
            )),
        ],
      ),
    );
  }
}

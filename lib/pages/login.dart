import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login page"),
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
              hintText: "Enter your username",
              labelText: "Username",
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.password),
              hintText: "Enter your password",
              labelText: "Password",
            ),
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: TextButton(
                child: const Text("Login"),
                onPressed: null,
              )),
        ],
      ),
    );
  }
}

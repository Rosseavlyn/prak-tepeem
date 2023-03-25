import 'package:flutter/material.dart';

String username = "";
String password = "";

bool isLoginSuccess = true;

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          _usernameField(),
          _passwordField(),
          _loginButton(context)
        ]),
        appBar: AppBar(
          title: Text("Login Page"),
        ),
      ),
    );
  }
}

Widget _usernameField() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: TextFormField(
      enabled: true,
      onChanged: (value){
        username = value;
      },
      decoration: const InputDecoration(
        hintText: 'Username',
        contentPadding: const EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    ),
  );
}

Widget _passwordField() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: TextFormField(
      enabled: true,
      onChanged: (value){
        password = value;
      },
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'password',
        contentPadding: const EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    ),
  );
}

Widget _loginButton(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    width: MediaQuery.of(context).size.width,
    child: ElevatedButton(
      onPressed: () {
        String text = "";
        if(username == "cek" && password == "tes"){
          text = "Success";
        } else {
          text = "Gaiso Mlebu";
        }

        SnackBar snackBar = SnackBar(
          content: Text(text),
        );
        ScaffoldMessenger.of(context) .showSnackBar(snackBar);
      },
      child: const Text('Login'),
    ),
  );
}

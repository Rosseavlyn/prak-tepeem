import 'package:flutter/material.dart';

String username = "";
String password = "";

bool isLoginSuccess = true;

class LoginPageState extends StatefulWidget {
  const LoginPageState({Key? key}) : super(key: key);

  @override
  State<LoginPageState> createState() => _LoginPageStateState();
}

class _LoginPageStateState extends State<LoginPageState> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
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
      decoration: InputDecoration(
        hintText: 'Username',
        contentPadding: const EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: (isLoginSuccess) ? Colors.blue : Colors.red),
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
      decoration: InputDecoration(
        hintText: 'password',
        contentPadding: const EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: (isLoginSuccess) ? Colors.blue : Colors.red),
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
      style: ElevatedButton.styleFrom(
        primary: (isLoginSuccess) ? Colors.blue : Colors.red,
        onPrimary: Colors.white
      ),
      
      onPressed: () {
        String text = "";
        if(username == "cek" && password == "tes"){
          setState((){
            text = "Login Success";
            isLoginSuccess = true;
          });
        } else {
          setState((){
            text = "Gaiso Mlebu";
            isLoginSuccess = false;
          });
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

void setState(Null Function() param0) {
}

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildText('Email'),
          SizedBox(height: 10),
          emailTextField(),
          SizedBox(height: 15),
          buildText('Password'),
          SizedBox(height: 10),
          passwordTextField(),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: RaisedButton(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  color: Theme.of(context).accentColor,

                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget emailTextField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1, color: Colors.black),
      ),
      child: TextField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(),
        onChanged: (value) {
          emailController.text = value;
        },
      ),
    );
  }

  Widget passwordTextField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1, color: Colors.black),
      ),
      child: TextField(
        controller: passwordController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(),
        onChanged: (value) {
          passwordController.text = value;
        },
      ),
    );
  }

  Widget buildText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey[600],
        fontSize: 18,
      ),
    );
  }
}

import 'package:auth/features/login/presentation/widgets/message_display.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 10),
                MessageDisplay(
                  message: 'Auth',
                ),
                SizedBox(height: 20),
                Login()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
              hintText: 'Enter your email'
          ),
          onChanged: (value) {
            emailController.text = value;
          },
        ),
        SizedBox(height: 15),
        TextField(
          controller: passwordController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
              hintText: 'Enter your password',
          ),
          obscureText: true,
          onChanged: (value) {
            passwordController.text = value;
          },
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: RaisedButton(
                child: Text('Login', style: TextStyle(color: Colors.white),),
                color: Theme.of(context).accentColor,
                onPressed: (){},
              ),
            ),
          ],
        )
      ],
    );
  }
}

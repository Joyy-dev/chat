import 'package:chat/widget/auth/auth_form.dart';
import 'package:flutter/material.dart';

class AuthScreens extends StatefulWidget {
  const AuthScreens({super.key});

  @override
  State<AuthScreens> createState() => _AuthScreensState();
}

class _AuthScreensState extends State<AuthScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Groupie',
            style: TextStyle(
              fontSize: 40,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold
            ), textAlign: TextAlign.center,),
            SizedBox(height: 10),
            Text('Login to see how they are talking'),
            SizedBox(height: 30,),
            Image.asset('assets/images/teamwork-and-brainstorming.jpg'),
            SizedBox(height: 20,),
            AuthForm()
          ],
        ),
      ),
    );
  }
}
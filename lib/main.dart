import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily:"OpenSans"
      ),
      home: const SignInPage(title: 'park'),
    );
  }
}

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  void _incrementCounter() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100.00,left:60.00),
                child: Image.asset('assets/logo.png'),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email or phone number',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Password'
                ),
              ),
              const Align(
                  alignment:Alignment.centerRight,
                  child:TextButton(onPressed: null, child: Text('Forgot Password')
                  )
              )
            ],
          ),
        ),
    );
  }
}

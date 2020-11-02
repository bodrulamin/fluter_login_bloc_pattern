import 'package:flutter/material.dart';
import 'package:login_bloc/src/bloc/provider.dart';
import 'package:login_bloc/src/screen/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text('Login Bloc'),
          ),
          body: LoginScreen(),
        ),
      ),
    );
  }
}

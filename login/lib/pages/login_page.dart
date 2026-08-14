import 'package:flutter/material.dart';
import 'package:login/auth/auth_service.dart';


class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _MyPageState();
}

class _MyPageState extends State<LoginPage> {
  final service= AuthService();
  final emailcontroller= TextEditingController();
  final passwordcontroller=TextEditingController();
  void login()async{
    final email=emailcontroller.text;
    final password=passwordcontroller.text;
    try {
      await service.signinwithpassword(email, password);
    } catch (e) {
      e;
      
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('LoginPage')),
    body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(),
          TextField(),
          TextButton(onPressed: login, child: Text("Login"))
        ],
      ),
    ),

    
    );
  }
}
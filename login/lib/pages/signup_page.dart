import 'package:flutter/material.dart';
import 'package:login/auth/auth_service.dart';


class SignupPage extends StatefulWidget {

  @override
  State<SignupPage> createState() => _MyPageState();
}

class _MyPageState extends State<SignupPage> {
  final service= AuthService();
  final emailcontroller= TextEditingController();
  final passwordcontroller=TextEditingController();
  final confirmpasswordcontroller=TextEditingController();
  void signup()async{
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
    appBar: AppBar(title: Text('Signup Page')),
    body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(),
          TextField(),
          TextButton(onPressed: signup, child: Text("Signup"))
        ],
      ),
    ),

    
    );
  }
}
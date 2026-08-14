import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  // supabase init
  await Supabase.initialize(
    publishableKey: "sb_publishable_4oJSQ1UccCw8BwQcKL01LA_9-I7gcOC",
    url: "https://qgeacquzlaymovzxmvgo.supabase.co",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(),
    );
  }
}

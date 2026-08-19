import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:login/auth/auth_get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');

  final String supabaseUrl =
      dotenv.env['SUPABASE_URL'] ?? '';

  final String supabasePublishableKey =
      dotenv.env['SUPABASE_PUBLISHABLE_KEY'] ?? '';

  if (supabaseUrl.isEmpty) {
    throw Exception(
      'SUPABASE_URL is missing from the .env file',
    );
  }

  if (supabasePublishableKey.isEmpty) {
    throw Exception(
      'SUPABASE_PUBLISHABLE_KEY is missing from the .env file',
    );
  }

  await Supabase.initialize(
    url: supabaseUrl,
    publishableKey: supabasePublishableKey,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supabase Login',
      home: AuthGet(),
    );
  }
}
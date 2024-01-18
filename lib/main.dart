import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'homescreen.dart';

void main() async {
  //Initialize Flutter Binding
  WidgetsFlutterBinding.ensureInitialized();

  //Assign publishable key to flutter_stripe
  Stripe.publishableKey = "pk_test_51KhRV7SAWPAAIeuzLCz7vHZ2ytUfzxJsXZzqcWgJHaylAKZdo9rqZaucs50bvbNn5ftUMe6K39lN1ixvLkWXYYGt00AL2KCtJg";

  //Load our .env file that contains our Stripe Secret key
  await dotenv.load(fileName: "assets/.env");

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //initial route
      home: HomeScreen(),
    );
  }
}
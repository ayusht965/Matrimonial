import 'package:flutter/material.dart';
import 'package:matrimonial/Pages/splashScreen/splash.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://miqfmsjnktzexiftfkmt.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1pcWZtc2pua3R6ZXhpZnRma210Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NDQ1OTk1ODksImV4cCI6MTk2MDE3NTU4OX0.-q-Lb0tkVzwSq8coX_cOvxUNMDHfn7o4G3eDE4WfRAA',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matrimonial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

import 'package:click_mart_desing/root_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final schame = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          bodyLarge: GoogleFonts.oswald(textStyle:TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color:Colors.black)),
          bodyMedium: GoogleFonts.oswald(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: schame.primary)),
        ),
        colorScheme: ColorScheme.fromSeed(
          primary: Color(0xFF323232),
          seedColor: Color(0xFF3C3D32),
          secondary: Colors.grey
        ),
      ),
      home: const RoutePage(),
    );
  }
}

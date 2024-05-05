import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(const BMIcalculator());

class BMIcalculator extends StatelessWidget {
  const BMIcalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        //primaryColor: Color(0xFF1D2136),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF1D2136)),
        scaffoldBackgroundColor: const Color(0xFF1D2136),
      ),
      home: const InputPage(),
    );
  }
}



/*import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMIcalculator());

class BMIcalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        //primaryColor: Color(0xFF0A0E21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
      ),
      home: const InputPage(),
    );
  }
}*/

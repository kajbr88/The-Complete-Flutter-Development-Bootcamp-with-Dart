import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(//appbar is the parent widget and contains toolbar and tabbar(to switch the tabs aka screens)
// toolbars includes title, navigation buttons and action cuttons like Search, Refresh, Share, Settings Add.
          backgroundColor: Color(0xFF0A0E21),//FF is Aplha hex value rest(0A0E21) is RGB hex value.
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: InputPage(),
    ); 
  }
}

// BMI AppIcon attribution:
//<a href="https://www.flaticon.com/free-icons/bmi" title="bmi icons">Bmi icons created by juicy_fish - Flaticon</a>

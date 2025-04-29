import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kidsuz/constants.dart';
import 'package:kidsuz/screens/Games/mathGame/chooseGameType.dart';
import 'package:kidsuz/screens/Games/mathGame/introPage.dart';
import 'package:kidsuz/screens/Games/memory.dart';
import 'package:kidsuz/screens/animals_screen.dart';
import 'package:kidsuz/screens/family_screen.dart';
import 'package:kidsuz/screens/splash_screen.dart';
import 'package:kidsuz/screens/main_screen.dart';
import 'package:kidsuz/screens/nums_screen.dart';
import 'package:kidsuz/screens/letters_screen.dart';
import 'package:kidsuz/screens/Games/color_match.dart';
import 'package:kidsuz/screens/games_screen.dart';
import 'package:kidsuz/screens/fruits_screen.dart';
import 'package:kidsuz/screens/vegetables_screen.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
  // WidgetsBinding.instance!.addObserver(new MusicHandler());
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersive,
  );

  // Music().play();.
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kiddo',
      theme: ThemeData(
          useMaterial3: false,
          scaffoldBackgroundColor: AppColors.backGround,
          fontFamily: 'Kalam'),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/Intro': (context) => ChooseGameType(),
        '/Main': (context) => MainScreen(),
        '/Nums': (context) => NumsScreen(),
        '/Animals': (context) => AnimalScreen(),
        '/Letters': (context) => LettersScreen(),
        '/Family': (context) => FamilyScreen(),
        '/Games': (context) => GameScreen(),
        '/Color': (context) => ColorMatch(),
        '/Memory': (context) => Memory(),
        '/Fruits': (context) => Fruits(),
        '/Vegetables': (context) => Vegetables(),
      },
    );
  }
}

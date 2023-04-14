import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:audioplayers/audioplayers.dart';

//RESPONSIVE SCREENS
class ScreenSize {
  BuildContext context;

  ScreenSize(this.context) : assert(true);

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}

class AppColors {
  static const white = Color(0xffEEEEEE);
  static const black = Color(0xff1e212d);
  static const backGround = Color(0xffaf8aff);
  static const secondary = Color(0xff5fffe0);
  static const crimson = Color(0xffff5f7e);
  static const yellow = Color(0xfffbe698);
  static const orange = Color(0xffff884b);
  static const Lpink = Color(0xffffcce7);
  static const sage = Color(0xffdaf2dc);
  static const pale = Color(0xffeacfff);
  static const tale = Color(0xffdaf2dc);
}

//FONT STYLING
class PrimaryText extends StatelessWidget {
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final double height;

  const PrimaryText({
    required this.text,
    this.fontWeight: FontWeight.w400,
    this.color: AppColors.black,
    this.size: 20,
    this.height: 1.3,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.almarai(
        height: height,
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}


const CardsList = [
  {
    'imagePath': 'assets/nums.png',
    'name': 'raqamlar',
  },
  {
    'imagePath': 'assets/letters.png',
    'name': ' harflar',
  },
  {
    'imagePath': 'assets/animals.png',
    'name': 'hayvonlar',
  },
  {
    'imagePath': 'assets/family.png',
    'name': 'oila',
  },
  {
    'imagePath': 'assets/fruits.png',
    'name': 'mevalar',
  },
  {
    'imagePath': 'assets/vegetables.png',
    'name': 'sabzavotlar',
  },
];

//ROUTES
const routesList = [
  {
    'routePath': '/Nums',
  },
  {
    'routePath': '/Letters',
  },
  {
    'routePath': '/Animals',
  },
  {
    'routePath': '/Family',
  },
  {
    'routePath': '/Fruits',
  },
  {
    'routePath': '/Vegetables',
  },
];

const GamesList = [
  {'GameName': 'Rangini top', 'imagePath': 'assets/games/color.png'},
  {'GameName': 'Eslab qol', 'imagePath': 'assets/games/memo.png'},
];

const gamesRoutes = [
  {'routePath': '/Color'},
  {'routePath': '/Memory'},
];

//NUMS LIST
const numsList = [
  {
    'imagePath': '0',
    'counterPath': 'assets/counters/hands0.png',
    'name': 'Nol',
  },
  {
    'imagePath': '1',
    'counterPath': 'assets/counters/hands1.png',
    'name': 'Bir',
  },
  {
    'imagePath': '2',
    'counterPath': 'assets/counters/hands2.png',
    'name': 'Ikki',
  },
  {
    'imagePath': '3',
    'counterPath': 'assets/counters/hands3.png',
    'name': 'Uch',
  },
  {
    'imagePath': '4',
    'counterPath': 'assets/counters/hands4.png',
    'name': """To'rt""",
  },
  {
    'imagePath': '5',
    'counterPath': 'assets/counters/hands5.png',
    'name': 'Besh',
  },
  {
    'imagePath': '6',
    'counterPath': 'assets/counters/hands6.png',
    'name': 'Olti',
  },
  {
    'imagePath': '7',
    'counterPath': 'assets/counters/hands7.png',
    'name': 'Yetti',
  },
  {
    'imagePath': '8',
    'counterPath': 'assets/counters/hands8.png',
    'name': """Sakkiz""",
  },
  {
    'imagePath': '9',
    'counterPath': 'assets/counters/hands9.png',
    'name': """To'qqiz""",
  },
];

//ANIMALS LIST
const animalsList = [
  {
    'imagePath': 'assets/animals/leo.png',
    'voice': 'voices/leo.mp3',
    'name': 'Sher',
  },
  {
    'imagePath': 'assets/animals/duck.png',
    'voice': 'voices/duck.mp3',
    'name': """O'rdak""",
  },
  {
    'imagePath': 'assets/animals/chicken.png',
    'voice': 'voices/chicken.mp3',
    'name': """Xo'roz""",
  },
  {
    'imagePath': 'assets/animals/horse.png',
    'voice': 'voices/horse.mp3',
    'name': 'Ot',
  },
  {
    'imagePath': 'assets/animals/goat.png',
    'voice': 'voices/goat.mp3',
    'name': 'Echki',
  },
  {
    'imagePath': 'assets/animals/cat.png',
    'voice': 'voices/cat.mp3',
    'name': 'Mushuk',
  },
  {
    'imagePath': 'assets/animals/mouse.png',
    'voice': 'voices/mouse.mp3',
    'name': 'Sichqon',
  },
  {
    'imagePath': 'assets/animals/frog.png',
    'voice': 'voices/frog.mp3',
    'name': 'Qurbaqa',
  },
  {
    'imagePath': 'assets/animals/dog.png',
    'voice': 'voices/dog.mp3',
    'name': 'It',
  },
  {
    'imagePath': 'assets/animals/cow.png',
    'voice': 'voices/cow.mp3',
    'name': 'Sigir',
  },
];

//LETTERS LIST
const lettersList = [
  {
    'subImage': 'assets/letters/a.png',
  },
  {
    'subImage': 'assets/letters/b.png',
  },
  {
    'subImage': 'assets/letters/d.png',
  },
  {
    'subImage': 'assets/letters/e.png',
  },
  {
    'subImage': 'assets/letters/f.png',
  },
  {
    'subImage': 'assets/letters/g.png',
  },
  {
    'subImage': 'assets/letters/h.png',
  },
  {
    'subImage': 'assets/letters/i.png',
  },
  {
    'subImage': 'assets/letters/j.png',
  },
  {
    'subImage': 'assets/letters/k.png',
  },
  {
    'subImage': 'assets/letters/l.png',
  },
  {
    'subImage': 'assets/letters/m.png',
  },
  {
    'subImage': 'assets/letters/n.png',
  },
  {
    'subImage': 'assets/letters/o.png',
  },
  {
    'subImage': 'assets/letters/p.png',
  },
  {
    'subImage': 'assets/letters/q.png',
  },
  {
    'subImage': 'assets/letters/r.png',
  },
  {
    'subImage': 'assets/letters/s.png',
  },
  {
    'subImage': 'assets/letters/t.png',
  },
  {
    'subImage': 'assets/letters/u.png',
  },
  {
    'subImage': 'assets/letters/v.png',
  },
  {
    'subImage': 'assets/letters/x.png',
  },
  {
    'subImage': 'assets/letters/y.png',
  },
  {
    'subImage': 'assets/letters/z.png',
  },
  {
    'subImage': 'assets/letters/ou.png',
  },
  {
    'subImage': 'assets/letters/gh.png',
  },
  {
    'subImage': 'assets/letters/sh.png',
  },
  {
    'subImage': 'assets/letters/ch.png',
  },
  {
    'subImage': 'assets/letters/ng.png',
  },
];

//FAMILY LIST
const familyList = [
  {
    'imagePath': 'assets/family/0.png',
    'name': 'Bobo',
  },
  {
    'imagePath': 'assets/family/1.png',
    'name': 'Buva',
  },
  {
    'imagePath': 'assets/family/2.png',
    'name': 'Dada',
  },
  {
    'imagePath': 'assets/family/3.png',
    'name': 'Ona',
  },
  {
    'imagePath': 'assets/family/4.png',
    'name': "Amaki/Tog'a",
  },
  {
    'imagePath': 'assets/family/5.png',
    'name': 'Xola/Amma',
  },
  {
    'imagePath': 'assets/family/6.png',
    'name': 'Aka/Uka',
  },
  {
    'imagePath': 'assets/family/7.png',
    'name': 'Opa/Singil',
  },
  {
    'imagePath': 'assets/family/8.png',
    'name': 'Qarindosh',
  },
];

const fruitsList = [
  {
    'imagePath': 'assets/fruits/مانجو.png',
    'name': 'Mango',
  },
  {
    'imagePath': 'assets/fruits/بطيخ.png',
    'name': 'Tarvuz',
  },
  {
    'imagePath': 'assets/fruits/كيوي.png',
    'name': 'Kivi',
  },
  {
    'imagePath': 'assets/fruits/عنب.png',
    'name': 'Uzum',
  },
  {
    'imagePath': 'assets/fruits/أناناس.png',
    'name': 'Ananas',
  },
];

const vegetablesList = [
  {
    'imagePath': 'assets/vegetables/بطاطس.png',
    'name': 'Kartoshka',
  },
  {
    'imagePath': 'assets/vegetables/بازلاء.png',
    'name': 'Loviya',
  },
  {
    'imagePath': 'assets/vegetables/فلفل.png',
    'name': 'Qalampir',
  },
  {
    'imagePath': 'assets/vegetables/باذنجان.png',
    'name': 'Baqlajon',
  },
  {
    'imagePath': 'assets/vegetables/خيار.png',
    'name': 'Bodring',
  },
];

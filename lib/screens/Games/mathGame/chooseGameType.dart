import 'package:flutter/material.dart';
import 'package:kidsuz/constants.dart';
import 'package:kidsuz/screens/Games/mathGame/level.dart';
import 'package:kidsuz/screens/Games/mathGame/quizGame/selectClass.dart';

class ChooseGameType extends StatefulWidget {
  const ChooseGameType({super.key});

  @override
  State<ChooseGameType> createState() => _ChooseGameTypeState();
}

class _ChooseGameTypeState extends State<ChooseGameType> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 41, 40, 0),
        body: Container(
          decoration: BoxDecoration(gradient: AppColors.background),
          height: MediaQuery.of(context).size.height,
          alignment: AlignmentDirectional.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: AppColors.backGround),
                ),
                Image.asset('assets/images/Logo_color.png',
                    width: 65, height: 65),
                Text("            "),
              ]),
              Expanded(
                child: Container(
                  color: Color.fromRGBO(255, 41, 40, 0),
                  alignment: AlignmentDirectional.center,
                  child: const Text(
                    'Birini tanlang',
                    style: TextStyle(
                        color: AppColors.backGround,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Level(gameType: 'plus')),
                            );
                          },
                          child: Image.asset(
                            'assets/games/images/plus.png',
                            height: 150,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Level(gameType: 'multiplication')),
                            );
                          },
                          child: Image.asset(
                            'assets/games/images/multiplication.png',
                            height: 150,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Level(gameType: 'minus')),
                            );
                          },
                          child: Image.asset(
                            'assets/games/images/minus.png',
                            height: 150,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Level(gameType: 'division')),
                            );
                          },
                          child: Image.asset(
                            'assets/games/images/division.png',
                            height: 150,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

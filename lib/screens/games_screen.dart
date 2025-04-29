import 'package:flutter/material.dart';
import 'package:kidsuz/constants.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int selectedCard = -1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: Container(
          decoration: BoxDecoration(gradient: AppColors.background),
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back,
                                color: AppColors.backGround),
                          ),
                          Image.asset('assets/images/Logo_color.png',
                              width: 65, height: 65),
                          Text("            "),
                        ]),
                  ),
                  buildCards(context),
                  Container(
                    height: 120,
                    width: ScreenSize(context).width,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset("assets/gamesFooter.png"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget cardsStyle(String imagePath, String name, int index) {
    return InkWell(
      onTap: () => {
        setState(
          () => {
            selectedCard = index,
            Navigator.pushNamed(
                context, gamesRoutes[index]['routePath'].toString())
          },
        ),
      },
      child: Container(
        height: 100,
        width: ScreenSize(context).width * 0.9,
        margin: EdgeInsets.only(right: 20, top: 20, bottom: 20, left: 20),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: selectedCard == index ? AppColors.crimson : AppColors.yellow,
            boxShadow: [
              BoxShadow(
                color: AppColors.crimson,
                blurRadius: 2,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.transparent,
              height: 150,
              width: 90,
              child: Image.asset(imagePath, fit: BoxFit.contain),
            ),
            PrimaryText(text: name, fontWeight: FontWeight.w800, size: 25),
          ],
        ),
      ),
    );
  }

  SizedBox buildCards(BuildContext context) {
    return SizedBox(
      height: ScreenSize(context).height,
      child: ListView.builder(
        itemCount: GamesList.length,
        itemBuilder: (BuildContext context, int index) {
          return cardsStyle(GamesList[index]['imagePath'].toString(),
              GamesList[index]['GameName'].toString(), index);
        },
      ),
    );
  }
}

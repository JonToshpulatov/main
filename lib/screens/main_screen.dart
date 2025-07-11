import 'package:flutter/material.dart';
import 'package:kidsuz/constants.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedCard = -1;
  Color _colorContainer = AppColors.crimson;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.Lpink,
        body: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                header(),
                SizedBox(height: ScreenSize(context).height * 0.025),
                buildCards(context),
                games(),
                // Container(
                //   height: 120,
                //   width: ScreenSize(context).width,
                //   child: Align(
                //     alignment: Alignment.bottomCenter,
                //     child: Image.asset("assets/mainFooter.png"),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container header() {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.auth_backround,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      padding: EdgeInsets.only(top: 8),
      child: Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: PrimaryText(
              text: "Xush kelibsiz",
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              size: 30,
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
                padding: EdgeInsets.only(right: 15),
                child: PrimaryText(
                  text: "Bugun nimalarni o'rganamiz",
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  size: 30,
                )),
          ),
          SizedBox(height: ScreenSize(context).height * 0.03),
          Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: PrimaryText(
                    text:
                        "Keling, ta'lim darslari va qiziqarli o'yinlar to'plami bilan birga o'rganish va o'ynash sayohatini boshlaylik",
                    size: 18,
                    color: AppColors.black,
                  ))),
          SizedBox(height: ScreenSize(context).height * 0.03)
        ],
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
                context, routesList[index]['routePath'].toString())
          },
        ),
      },
      child: Container(
        margin: EdgeInsets.all(18),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: selectedCard == index
                ? AppColors.background
                : AppColors.auth_backround,
            boxShadow: [
              BoxShadow(
                color: AppColors.secondary,
                blurRadius: 2,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.transparent,
              height: 120,
              width: 120,
              child: Image.asset(imagePath, fit: BoxFit.contain),
            ),
            Expanded(
                child: PrimaryText(
                    text: name, fontWeight: FontWeight.w800, size: 16)),
          ],
        ),
      ),
    );
  }

  SizedBox buildCards(BuildContext context) {
    return SizedBox(
      height: 650,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        children: List.generate(
          CardsList.length,
          (index) => cardsStyle(CardsList[index]['imagePath'].toString(),
              CardsList[index]['name'].toString(), index),
        ),
      ),
    );
  }

  InkWell games() {
    return InkWell(
      child: Container(
        height: 125,
        width: ScreenSize(context).width * 0.9,
        margin: EdgeInsets.all(18),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: _colorContainer,
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
              child: Image.asset("assets/games.png", fit: BoxFit.fill),
            ),
            PrimaryText(
                text: "o'yinlar", fontWeight: FontWeight.w800, size: 25),
          ],
        ),
      ),
      onTap: () {
        setState(() {
          _colorContainer = _colorContainer == AppColors.crimson
              ? AppColors.yellow
              : AppColors.crimson;
          Navigator.pushNamed(context, '/Games');
        });
      },
    );
  }
}

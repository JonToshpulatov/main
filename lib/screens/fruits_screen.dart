import 'package:flutter/material.dart';
import 'package:kidsuz/constants.dart';
import 'package:kidsuz/models/default_model.dart';

class Fruits extends StatefulWidget {
  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.Lpink,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: AppColors.backGround),
        ),
        title:
            Image.asset('assets/images/Logo_color.png', width: 65, height: 65),
      ),
      backgroundColor: Color.fromRGBO(1, 1, 1, 0),
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.background),
        child: Center(
          child: buildModels(),
        ),
      ),
    );
  }

  Widget buildModels() {
    return ListView.builder(
      itemCount: fruitsList.length,
      itemBuilder: (context, index) {
        return ModelStyle(
          cardModel: new CustomCardModel(
              title: fruitsList[index]['name'].toString(),
              image: fruitsList[index]['imagePath'].toString()),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kidsuz/constants.dart';
import 'package:kidsuz/models/default_model.dart';

class FamilyScreen extends StatefulWidget {
  @override
  _FamilyScreenState createState() => _FamilyScreenState();
}

class _FamilyScreenState extends State<FamilyScreen> {
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
      itemCount: familyList.length,
      itemBuilder: (context, index) {
        return ModelStyle(
          cardModel: CustomCardModel(
              title: familyList[index]['name'].toString(),
              image: familyList[index]['imagePath'].toString()),
        );
      },
    );
  }
}

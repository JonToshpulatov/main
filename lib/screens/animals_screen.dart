import 'package:flutter/material.dart';
import 'package:kidsuz/constants.dart';
import 'package:kidsuz/models/model_animals.dart';

class AnimalScreen extends StatefulWidget {
  @override
  _AnimalScreenState createState() => _AnimalScreenState();
}

class _AnimalScreenState extends State<AnimalScreen> {
  @override
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
      itemCount: animalsList.length,
      itemBuilder: (context, index) {
        return ModelStyle(
          cardModel: new CustomCardModel(
              title: animalsList[index]['name'].toString(),
              voice: animalsList[index]['voice'].toString(),
              image: animalsList[index]['imagePath'].toString()),
        );
      },
    );
  }
}

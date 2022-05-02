import 'package:flutter/material.dart';
import './food_page_body.dart';

class MainFoodpage extends StatefulWidget {
  const MainFoodpage({ Key? key, required String title }) : super(key: key);

  @override
  State<MainFoodpage> createState() => _MainFoodpageState();
}

class _MainFoodpageState extends State<MainFoodpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'));
      body: Column(
        children: [
          Container(
      child: Container(
        margin: const EdgeInsets.only(top: 45, bottom: 15),
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            children: [
              BigText(text: 'Ghana', color: AppColors.mainColor, size: 30),
              Row(
                children: [
                SmallText(text: 'Kumasi', color: Colors.black54),
                Icon(Icons.arrow_drop_down_rounded)
              ])
        ])]),
        Container(
          width: 45,
          height: 45,
          child: Icon(Icons.search, color: Colors.white),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.mainColor,
          )
        )
        )
    )
            FoodPageBody(),
        ]
      )
    );
  }
}
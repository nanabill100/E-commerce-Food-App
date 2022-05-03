import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';
import '../widgets/bigtext.dart';
import '../widgets/smalltext.dart';
import './food_page_body.dart';

class MainFoodpage extends StatefulWidget {
  const MainFoodpage({ Key? key, required String title }) : super(key: key);

  @override
  State<MainFoodpage> createState() => _MainFoodpageState();
}

class _MainFoodpageState extends State<MainFoodpage> {
  @override
  Widget build(BuildContext context) {
    //print('current height is '+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      appBar: AppBar(title: Text('Home'));
      body: Column(
        children: [
          Container(
      child: Container(
        margin: const EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
        padding: const EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            children: [
              BigText(text: 'Ghana', color: AppColors.mainColor, size: Dimensions.font20),
              Row(
                children: [
                SmallText(text: 'Kumasi', color: Colors.black54),
                Icon(Icons.arrow_drop_down_rounded)
              ])
        ])]),
        Center(
          child: Container(
          width: Dimensions.height45,
          height: Dimensions.height45,
          child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius15),
            color: AppColors.mainColor,
          ),
        ),
        )
        )
    )
            FoodPageBody(),
        ]
      )
    );
  }
}
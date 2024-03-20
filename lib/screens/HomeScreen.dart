import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/ColorsScreen.dart';
import 'package:toku/screens/FamilyMembersScreen.dart';
import 'package:toku/screens/NumbersScreen.dart';
import 'package:toku/screens/PhrasesScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Category(
          text: "Numbers",
          backgroundColor: const Color(0xffEF9235),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const NumbersScreen();
            }));
          },
        ),
        Category(
          text: "Family Members",
          backgroundColor: const Color(0xff558B37),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const FamilyMembersScreen();
            }));
          },
        ),
        Category(
          text: "Colors",
          backgroundColor: const Color(0xff79359F),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const ColorsScreen();
            }));
          },
        ),
        Category(
          text: "Phrases",
          backgroundColor: const Color(0xff50ADC7),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
            return const PhrasesScreen();
          }));},
        ),
      ],
    );
  }
}

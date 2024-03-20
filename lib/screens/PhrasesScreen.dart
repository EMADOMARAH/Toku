import 'package:flutter/material.dart';
import 'package:toku/components/Item.dart';
import 'package:toku/models/ItemModel.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  final List<ItemModel> phrases = const [
    ItemModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        jpName: 'Yes i am coming',
        enName: 'Are you coming ?'),
    ItemModel(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        jpName: 'Koudoku o wasurenaide kudasai',
        enName: 'Don\'t forget to subscribe' ),
    ItemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jpName: 'Kibun wa dou desu ka?',
        enName: 'How are you feeling'),
    ItemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        jpName: 'Kibun wa dou desu ka?',
        enName: 'I love anime'),
    ItemModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        jpName: 'Puroguramingu ga daisuki desu',
        enName: 'I love programming'),
    ItemModel(
        sound: 'sounds/phrases/programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantan desu',
        enName: 'programming is easy'),
    ItemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jpName: 'Anata no namae wa nan desu ka?',
        enName: 'what is your name'),
    ItemModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jpName: 'Doko ni iku no desu ka?',
        enName: 'where are you going'),
    ItemModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jpName: 'Hai, kimasu',
        enName: 'Yes i am coming'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Phrases',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
            itemCount: phrases.length,
            itemBuilder: (context, index) {
              return PhrasesItem(color: const Color(0xff50ADC7), model: phrases[index]);
            }));
  }
}

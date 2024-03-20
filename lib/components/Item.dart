import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/ItemModel.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.model, required this.color});

  final ItemModel model;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: const Color(0xffFFF0DC), child: Image.asset(model.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  model.jpName,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  model.enName,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          const Spacer(),
          IconButton(
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 36,
              ),
              onPressed: (){
                model.playSound();
              }
          )
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.model, required this.color});
  final ItemModel model;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  model.jpName,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  model.enName,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          const Spacer(),
          IconButton(
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 36,
              ),
              onPressed: (){
                model.playSound();
              }
          )
        ],
      ),
    );
  }
}



import 'package:audioplayers/audioplayers.dart';

class ItemModel{
  final String sound;
  final String? image;
  final String jpName;
  final String enName;
  final String? desc;

  const ItemModel({required this.sound,this.image,required this.jpName,required this.enName,this.desc});

  playSound(){
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }

}

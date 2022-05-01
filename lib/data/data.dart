import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/assets.dart';
import 'package:flutter_netflix_responsive_ui/models/models.dart';

final Content sintelContent = Content(
  name: 'Sintel',
  imageUrl: Assets.sintel,
  titleImageUrl: Assets.sintelTitle,
  videoUrl: Assets.sintelVideoUrl,
  color:Colors.transparent,
  description:
      'A lonely young woman, Sintel, helps and befriends a dragon,\nwhom she calls Scales. But when he is kidnapped by an adult\ndragon, Sintel decides to embark on a dangerous quest to find\nher lost friend Scales.',
);

final List<Content> previews = const [
  Content(
    name: 'Avatar The Last Airbender',
    imageUrl: Assets.atla,
    color: Colors.orange,
    titleImageUrl: Assets.atlaTitle, videoUrl: '', description: '',
  ),
  Content(
    name: 'The Crown',
    imageUrl: Assets.crown,
    color: Colors.red,
    titleImageUrl: Assets.crownTitle, description: '', videoUrl: '',
  ),
  Content(
    name: 'The Umbrella Academy',
    imageUrl: Assets.umbrellaAcademy,
    color: Colors.yellow,
    titleImageUrl: Assets.umbrellaAcademyTitle, description: '', videoUrl: '',
  ),
  Content(
    name: 'Carole and Tuesday',
    imageUrl: Assets.caroleAndTuesday,
    color: Colors.lightBlueAccent,
    titleImageUrl: Assets.caroleAndTuesdayTitle, videoUrl: '', description: '',
  ),
  Content(
    name: 'Black Mirror',
    imageUrl: Assets.blackMirror,
    color: Colors.green,
    titleImageUrl: Assets.blackMirrorTitle, description: '', videoUrl: '',
  ),
  Content(
    name: 'Avatar The Last Airbender',
    imageUrl: Assets.atla,
    color: Colors.orange,
    titleImageUrl: Assets.atlaTitle, description: '', videoUrl: '',
  ),
  Content(
    name: 'The Crown',
    imageUrl: Assets.crown,
    color: Colors.red,
    titleImageUrl: Assets.crownTitle, videoUrl: '', description: '',
  ),
  Content(
    name: 'The Umbrella Academy',
    imageUrl: Assets.umbrellaAcademy,
    color: Colors.yellow,
    titleImageUrl: Assets.umbrellaAcademyTitle, videoUrl: '', description: '',
  ),
  Content(
    name: 'Carole and Tuesday',
    imageUrl: Assets.caroleAndTuesday,
    color: Colors.lightBlueAccent,
    titleImageUrl: Assets.caroleAndTuesdayTitle, description: '', videoUrl: '',
  ),
  Content(
    name: 'Black Mirror',
    imageUrl: Assets.blackMirror,
    color: Colors.green,
    titleImageUrl: Assets.blackMirrorTitle, description: '', videoUrl: '',
  ),
];

final List<Content> myList = const [
  Content(name: 'Violet Evergarden', imageUrl: Assets.violetEvergarden, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'How to Sell Drugs Online (Fast)', imageUrl: Assets.htsdof, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'Kakegurui', imageUrl: Assets.kakegurui, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'Carole and Tuesday', imageUrl: Assets.caroleAndTuesday, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'Black Mirror', imageUrl: Assets.blackMirror, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'Violet Evergarden', imageUrl: Assets.violetEvergarden, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'How to Sell Drugs Online (Fast)', imageUrl: Assets.htsdof, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'Kakegurui', imageUrl: Assets.kakegurui, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'Carole and Tuesday', imageUrl: Assets.caroleAndTuesday, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'Black Mirror', imageUrl: Assets.blackMirror, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
];

final List<Content> originals = const [
  Content(name: 'Stranger Things', imageUrl: Assets.strangerThings, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'The Witcher', imageUrl: Assets.witcher, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'The Umbrella Academy', imageUrl: Assets.umbrellaAcademy, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: '13 Reasons Why', imageUrl: Assets.thirteenReasonsWhy, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'The End of the F***ing World', imageUrl: Assets.teotfw, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'Stranger Things', imageUrl: Assets.strangerThings, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'The Witcher', imageUrl: Assets.witcher, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'The Umbrella Academy', imageUrl: Assets.umbrellaAcademy, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: '13 Reasons Why', imageUrl: Assets.thirteenReasonsWhy, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'The End of the F***ing World', imageUrl: Assets.teotfw, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
];

final List<Content> trending = const [
  Content(name: 'Explained', imageUrl: Assets.explained, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'Avatar The Last Airbender', imageUrl: Assets.atla, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'Tiger King', imageUrl: Assets.tigerKing, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'The Crown', imageUrl: Assets.crown, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'Dogs', imageUrl: Assets.dogs, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'Explained', imageUrl: Assets.explained, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'Avatar The Last Airbender', imageUrl: Assets.atla, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'Tiger King', imageUrl: Assets.tigerKing, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'The Crown', imageUrl: Assets.crown, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
  Content(name: 'Dogs', imageUrl: Assets.dogs, description: '', titleImageUrl: '', color: Colors.blue, videoUrl: ''),
];

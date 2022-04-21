import 'package:flutter/material.dart';

class Story_widget extends StatelessWidget {
  Story_widget({Key? key}) : super(key: key);

  final List storyItems = [
    {"pseudo": 'Bassirou', "photo": 'Assets/images/photo/bassirou.jpg'},
    {"pseudo": 'Xeweul', "photo": 'Assets/images/photo/xeweul.jpg'},
    {"pseudo": 'Hizbou', "photo": 'Assets/images/photo/hizbou.jpg'},
    {"pseudo": 'Fallou', "photo": 'Assets/images/photo/fallou.jpg'},
    {"pseudo": 'M Diarra', "photo": 'Assets/images/photo/mame.jpg'},
    {"pseudo": 'Al mountaqa', "photo": 'Assets/images/photo/khalifa.jpg'},
    {"pseudo": 'S Saliou', "photo": 'Assets/images/photo/saliou.jpg'},
    {"pseudo": 'S Fallou', "photo": 'Assets/images/photo/galass.jpg'},
    // {"pseudo": 'Ndialabane',
    // "photo": "Assets/images/photo/"
    // },
    // {"pseudo": 'Ameth',
    // "photo": "Assets/images/photo/"
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyItems.map((story) {
          return Container(
            // height: 100,
            // width: 50,
            color: story['color'],
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'Assets/images/photo/storydet.png',
                      height: 68,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(story['photo']),
                      radius: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  story['pseudo'],
                  maxLines: 1,
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

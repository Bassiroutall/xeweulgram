import 'package:flutter/material.dart';

class Post_widget extends StatelessWidget {
  Post_widget({Key? key}) : super(key: key);

  final List postItems = [
    {
      "pseudo": 'Bassirou',
      "photo": 'Assets/images/photo/bassirou.jpg',
      "profil": 'Assets/images/photo/bassirou.jpg',
      "description": ' dhjdfk vfjfkk fjfjjf'
    },
    {
      "pseudo": 'Xéweul',
      "photo": 'Assets/images/photo/xeweul.jpg',
      "profil": 'Assets/images/photo/xeweul.jpg',
      "description": ' dhjdfk vfjfkk fjfjjf'
    },
    {
      "pseudo": 'Hizbou',
      "photo": 'Assets/images/photo/hizbou.jpg',
      "profil": 'Assets/images/photo/hizbou.jpg',
      "description": ' dhjdfk vfjfkk fjfjjf'
    },
    {
      "pseudo": 'Bassirou',
      "photo": 'Assets/images/photo/khalifa.jpg',
      "profil": 'Assets/images/photo/khalifa.jpg',
      "description": ' dhjdfk vfjfkk fjfjjf'
    },
    {
      "pseudo": 'Bassirou',
      "photo": 'Assets/images/photo/mame.jpg',
      "profil": 'Assets/images/photo/mame.jpg',
      "description": ' dhjdfk vfjfkk fjfjjf'
    },
    {
      "pseudo": 'Bassirou',
      "photo": 'Assets/images/photo/saliou.jpg',
      "profil": 'Assets/images/photo/saliou.jpg',
      "description": ' dhjdfk vfjfkk fjfjjf'
    },
    {
      "pseudo": 'Bassirou',
      "photo": 'Assets/images/photo/galass.jpg',
      "profil": 'Assets/images/photo/galass.jpg',
      "description": ' dhjdfk vfjfkk fjfjjf'
    },
    {
      "pseudo": 'Bassirou',
      "photo": 'Assets/images/photo/fallou.jpg',
      "profil": 'Assets/images/photo/fallou.jpg',
      "description": ' dhjdfk vfjfkk fjfjjf'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: postItems.map((post) {
        return Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(post['profil']),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    post['pseudo'],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(post['photo']),
                fit: BoxFit.cover,
              )),
              //color: Colors.blue,
              margin: EdgeInsets.only(top: 10),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_outline),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.message_outlined),
                ),
                Expanded(
                  child: Container(),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.bookmark_outline),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(post['profil']),
                    radius: 10,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Aimé par ',
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                            text: post['pseudo'],
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: ' et ',
                          ),
                          TextSpan(
                            text: '97 autres personnes',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}

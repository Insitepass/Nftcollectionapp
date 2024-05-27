// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:i_dream_of_space/Model/info.dart';
import 'package:i_dream_of_space/details.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<StatefulWidget> createState() {
    return GallerycreenState();
  }
}

class GallerycreenState extends State<Gallery> {
  final nfts = nftMap.values.toList();
  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "Galaxy Martini",
      "Space lolipop",
      "Space Stranger",
      "Space Ice Cream",
      "Good Smoke",
      "Portal to Space",
    ];
    final List<Widget> imgList = [
      Container(
        child: Image.asset(
            'lib/assets/images/galaxy_martini_removebg_preview.png'),
      ),
      Container(
        child:
            Image.asset('lib/assets/images/space_lolipop_removebg_preview.png'),
      ),
      Container(
        child: Image.asset(
            'lib/assets/images/space_stranger_removebg_preview.png'),
      ),
      Container(
        child: Image.asset(
            'lib/assets/images/space_icecream_removebg_preview.png'),
      ),
      Container(
        child: Image.asset('lib/assets/images/good_smoke_removebg_preview.png'),
      ),
      Container(
        child: Image.asset(
            'lib/assets/images/portal_to_space_removebg_preview.png'),
      )
    ];

    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(color: Colors.white),
          title:
              const Text('Collection', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: Stack(children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              'lib/assets/images/IrM.gif',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: VerticalCardPager(
                    titles: titles,
                    images: imgList,
                    textStyle: const TextStyle(
                        color: Colors.white, fontSize: 2, height: 5),
                    onPageChanged: (page) {},
                    onSelectedItem: (index) {
                      //Todo come up with design.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Details(
                                  nft: nfts[index],
                                )),
                      );
                    },
                    initialPage: 0,
                    align: ALIGN.CENTER,
                    physics: const ClampingScrollPhysics(),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}

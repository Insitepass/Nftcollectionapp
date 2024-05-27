import 'package:flutter/material.dart';
import 'package:i_dream_of_space/Model/info.dart';
import 'package:i_dream_of_space/Widget/detailscard.dart';

class Details extends StatefulWidget {
  final Nft nft;

  const Details({super.key, required this.nft});

  @override
  // ignore: library_private_types_in_public_api
  _DetailsState createState() => _DetailsState(nft: nft);
}

class _DetailsState extends State<Details> {
  final Nft nft;
  _DetailsState({required this.nft});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          title:
              const Text('Details page', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: Stack(children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              'lib/assets/images/IrM.gif',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomCard(
                name: nft.name, description: nft.description, link: nft.link),
          ),
        ]));
  }
}

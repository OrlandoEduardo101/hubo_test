import 'package:flutter/material.dart';

import 'wave_clipper.dart';

class SliderMenuWidget extends StatefulWidget {
  @override
  _SliderMenuWidgetState createState() => _SliderMenuWidgetState();
}

class _SliderMenuWidgetState extends State<SliderMenuWidget> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    List listCards = [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipPath(
                clipper: WaveClipper(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/img/image.jpg',
                    colorBlendMode: BlendMode.color,
                    color: Colors.purple.withOpacity(0.8),
                  
                  ),
                )),
            Positioned(
                bottom: 10,
                child: Text("ENQUETE",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold))),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipPath(
                clipper: WaveClipperInverted(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/img/image.jpg',
                    colorBlendMode: BlendMode.color,
                    color: Colors.purple.withOpacity(0.8),
                  ),
                )),
            Positioned(
                bottom: 0,
                child: Text("LINK\nEXTERNO",
                textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 25,
                        fontWeight: FontWeight.bold))),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipPath(
                clipper: WaveClipper(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/img/image.jpg',
                    colorBlendMode: BlendMode.color,
                    color: Colors.purple.withOpacity(0.8),
                  ),
                )),
            Positioned(
                bottom: 10,
                child: Text("QUIZ",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold))),
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipPath(
                clipper: WaveClipperInverted(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/img/image.jpg',
                    colorBlendMode: BlendMode.color,
                    color: Colors.purple.withOpacity(0.8),
                  ),
                )),
            Positioned(
                bottom: 10,
                child: Text("FOTOS",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    ];
    return Container(
      child: SizedBox(
        height: 0.1 * MediaQuery.of(context).size.height,
        child: PageView.builder(
          itemCount: listCards.length,
          controller: PageController(viewportFraction: 0.7),
          onPageChanged: (int index) => setState(() => _index = index),
          itemBuilder: (_, index) {
            return Transform.scale(
                scale: index == _index ? 1 : 0.9, child: listCards[index]);
          },
        ),
      ),
    );
  }
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildContainer extends StatelessWidget {
  final Color? startColor;
  final Color? endColor;
  final String? text;
  final String? imagePath;

  const BuildContainer(
      {super.key, this.startColor, this.endColor, this.text, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 9),
      width: MediaQuery.of(context).size.width * 0.8,
      height: 150,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(imagePath!), fit: BoxFit.cover),
        gradient: LinearGradient(
          colors: [startColor!, endColor!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        // image: DecorationImage(
        //   image: AssetImage(imagePath),
        //   fit: BoxFit.cover
        // ),
        borderRadius: const BorderRadius.all(
          Radius.circular(35),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 2,
            ),
            child: Text(
              text!,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Container buildContainer(
//   Color startColor,
//   Color endColor,
//   String? text,
// ) {
//
// }

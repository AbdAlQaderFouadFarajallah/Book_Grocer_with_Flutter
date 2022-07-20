import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OutBoardingContent extends StatelessWidget {
  final String mainText;
  final String basicText;
  final String secondText;
  final String url;

  // ignore: use_key_in_widget_constructors
  const OutBoardingContent(
      {required this.basicText, required this.mainText, required this.secondText, required this.url});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 78),
            Text(
              basicText,
              style: const TextStyle(
                fontSize: 30,
                color: Color(0XFF5ABD8C),
              ),
            ),
            Text(
              mainText,
              style: const TextStyle(
                fontSize: 30,
                color: Color(0XFF5ABD8C),
              ),
            ),
            Text(
              secondText,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0XFF5ABD8C),
              ),
            ),
            const SizedBox(height: 110),
            SvgPicture.asset(
              url,
              height: 225.4,
              width: 311.5,
            ),
          ],
        ),
      ),
    );
  }
}

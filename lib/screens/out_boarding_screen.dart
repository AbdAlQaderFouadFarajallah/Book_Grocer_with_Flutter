import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/out_boarding_content.dart';
import '../widgets/out_boarding_indicator.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  _OutBoardingScreenState createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                  minWidth: 0,
                  maxWidth: double.infinity,
                  minHeight: 0,
                  maxHeight: 650),
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                children: [
                  const OutBoardingContent(
                    basicText: 'Discounted',
                    mainText: 'Secondhand Books',
                    secondText:
                    'Used and near new secondhand books at great prices.',
                    url: 'images/p1.svg',
                  ),
                  const OutBoardingContent(
                    basicText: '20 Book Grocers',
                    mainText: 'Nationally',
                    secondText:
                    'We have successfully opened 20 stores across Australia.',
                    url: 'images/p2.svg',
                  ),
                  const OutBoardingContent(
                    basicText: 'Sell or Recycle Your Old',
                    mainText: 'Books With Us',
                    secondText:
                    'If you are looking to downsize, sell or recycle old books, the Book Grocer can help.',
                    url: 'images/p5.svg',
                  ),
                  SafeArea(
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 112),
                          const Text(
                            'Books For You',
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0XFF5ABD8C),
                            ),
                          ),
                          const SizedBox(height: 50),
                          SvgPicture.asset(
                            'images/p4.svg',
                            height: 225.4,
                            width: 311.5,
                          ),
                          Container(
                              height: 56,
                              width: 335,
                              color: const Color(0XFF5ABD8C),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Sing In',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )),
                          const SizedBox(height: 10),
                          Container(
                              height: 56,
                              width: 335,
                              color: const Color(0XFF5ABD8C),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Sing Up',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutBoardingIndicator(
                    marginEnd: 10, selected: _currentPage == 0),
                OutBoardingIndicator(
                    marginEnd: 10, selected: _currentPage == 1),
                OutBoardingIndicator(
                    marginEnd: 10, selected: _currentPage == 2),
                OutBoardingIndicator(selected: _currentPage == 3),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

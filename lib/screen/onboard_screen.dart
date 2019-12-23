import 'package:academy_app/screen/log_in_screen.dart';
import 'package:academy_app/utilities/style.dart';
import 'package:academy_app/widget/simple_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPage = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  _indecator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8,
      width: isActive == true ? 24.0 : 16.0,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Color(0xFF7D51D3),
          borderRadius: BorderRadius.circular(12)),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPage; i++) {
      list.add(i == _currentPage ? _indecator(true) : _indecator(false));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                    0.1,
                    0.4,
                    0.7,
                    0.9
                  ],
                  colors: [
                    Color(0xFF3594DD),
                    Color(0xFF4563DB),
                    Color(0xFF5036D5),
                    Color(0xFF5B16D0),
                  ]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 35),
                  child: Container(
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen())),
                          child: Text(
                            'Skip'.toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2),
                          ))),
                ),
                Container(
                  height: 600,
                  child: PageView(
                    controller: _pageController,
                    physics: ClampingScrollPhysics(),
                    onPageChanged: (page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      PageViewChild(
                        imgUrl: 'assets/images/onboarding0.png',
                        title: 'Connect people \naround the world',
                      ),
                      PageViewChild(
                        imgUrl: 'assets/images/onboarding1.png',
                        title: 'Connect people \naround the world',
                      ),
                      PageViewChild(
                        imgUrl: 'assets/images/onboarding0.png',
                        title: 'Connect people \naround the world',
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPage - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () => _pageController.nextPage(
                                duration: Duration(milliseconds: 400),
                                curve: Curves.easeInOut),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  'Next'.toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          )),
      bottomSheet: _currentPage == _numPage - 1
          ? Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => LoginScreen()));
                },
                child: Center(
                  child: Text(
                    'Get Stated',
                    style: TextStyle(
                        color: Color(0xFF5b16d0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}

class PageViewChild extends StatelessWidget {
  final String imgUrl;
  final String title;

  PageViewChild({this.imgUrl, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          FadeAnimation(
            1,
            Container(
              child: Center(
                child: Image(
                  height: 340,
                  width: 300,
                  image: AssetImage(this.imgUrl),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FadeAnimation(1.5,Text(this.title, style: kTitleStyle),),
          SizedBox(
            height: 20,
          ),
         FadeAnimation(2, Text(
             "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
             style: kSubtitleStyle),)
        ],
      ),
    );
  }
}

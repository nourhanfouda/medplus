import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mymed/screens/7createaccount.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBording extends StatefulWidget {
  @override
  _OnBordingState createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  List<PageModle> pages;
  ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);

  void _addPage() {
    pages = new List<PageModle>();

    pages.add(
      PageModle('assets/images/intro1.png'),
    );
    pages.add(
      PageModle('assets/images/intro2.png'),
    );
    pages.add(
      PageModle('assets/images/intro3.png'),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    _addPage();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(pages[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              );
            },
            itemCount: pages.length,
            onPageChanged: (index) {
              _pageViewNotifier.value = index;
            },
          ),
          Transform.translate(
            offset: Offset(0, 250),
            child: Align(
              alignment: Alignment.center,
              child: _displayIndicator(pages.length),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24.0, left: 16, right: 16),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    child: Text(
                      "Lets Start",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            _updateSeen();
                            return CreateAccount();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _displayIndicator(int length) {
    return PageViewIndicator(
      pageIndexNotifier: _pageViewNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );
  }


  void _updateSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen', true);
  }
}

class PageModle {
  String _image;

  PageModle(this._image);

  String get image => _image;
}

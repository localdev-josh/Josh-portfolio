import 'package:flutter/material.dart';
import 'package:portfolio_josh/views/portfolioIntro/portfolioIntro.dart';
import 'package:portfolio_josh/widgets/centeredView/centeredView.dart';
import 'package:portfolio_josh/widgets/joshIllustration/joshIllustration.dart';
import 'package:portfolio_josh/widgets/navigationBar/navigationBar.dart';

class HomeView extends StatelessWidget {
  final String title;

  const HomeView({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset("assets/images/wavyr.png", fit: BoxFit.contain, repeat: ImageRepeat.repeatY,),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavigationBar(),
              Expanded(
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                      ),
                      Positioned(
                        left: 65,
                        top: 310,
                        child: Container(
                          height: 260,
                          width: 260,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xff91D7E0), width: 2)
                          ),
                        ),
                      ),
                      Positioned(
                        left: 470,
                        top: 460,
                        child: Container(
                          height: 180,
                          width: 182,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/images/Polygon_dark.png'))
                          ),
                        ),
                      ),
                      Positioned(
                        right: 340,
                        top: 360,
                        child: Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Color(0xffF21A1A).withOpacity(0.8), width: 2)
                          ),
                        ),
                      ),
                      Positioned(
                        right: 240,
                        top: 300,
                        child: Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/images/Polygon_yellow.png'))
                          ),
                        ),
                      ),
                      CenteredView(child: Container(
                          child: Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  PortfolioIntro(),
                                  JoshIllustration()
                                ],
                              ),
                            ],
                          )
                      ),),
                    ],
                  )
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
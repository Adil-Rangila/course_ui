import 'package:course_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xfff5f4ef),
          image: DecorationImage(
              image: AssetImage('assets/images/ux_big.png'),
              alignment: Alignment.topRight),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SvgPicture.asset('assets/icons/arrow-left.svg'),
                      SvgPicture.asset('assets/icons/more-vertical.svg'),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                      color: kBestSellerColor,
                      child: Text(
                        'best seller'.toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'Design Thinking',
                    style: kHeadingextStyle,
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: <Widget>[
                      SvgPicture.asset('assets/icons/person.svg'),
                      SizedBox(width: 5.0),
                      Text('18K'),
                      SizedBox(width: 10.0),
                      SvgPicture.asset('assets/icons/star.svg'),
                      SizedBox(width: 5.0),
                      Text('4.8'),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\$50 ',
                          style: kHeadingextStyle.copyWith(fontSize: 32),
                        ),
                        TextSpan(
                          text: '\$90',
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.5),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Course Content',
                        style: kHeadingextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

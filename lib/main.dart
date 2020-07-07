import 'package:course_ui/constants.dart';
import 'package:course_ui/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course UI',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //top bar.............................................
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset('assets/icons/menu.svg'),
                Image.asset('assets/images/user.png'),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            //user name............................
            Text(
              'Hey ADIL,',
              style: kHeadingextStyle,
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'Find Courses you want to learn! ,',
              style: kSubHeadingextStyle,
            ),

            //Search bar.........................................
            Container(
              padding: EdgeInsets.only(left: 20.0),
              margin: EdgeInsets.symmetric(vertical: 25.0),
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xffe0e0e0),
              ),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset('assets/icons/search.svg'),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Search Your Course',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xff424242),
                    ),
                  ),
                ],
              ),
            ),
            //Categories and see all row.......................
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Categories',
                  style: kTitleTextStyle,
                ),
                Text(
                  'See All',
                  style: kSubtitleTextStyle.copyWith(color: Colors.blueAccent),
                ),
              ],
            ),
            //bottom grid view with scrollable images.............
            Expanded(
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                itemCount: categories.length,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
                itemBuilder: (context, index) {
                  return Container(
                    height: index.isEven ? 200 : 240,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(categories[index].image),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(17.0)),
                    child: null,
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

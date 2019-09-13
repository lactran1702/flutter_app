import 'package:myapp/data/lib.dart';

class StoryWidget extends StatefulWidget {
  StoryWidget({Key key}) : super(key: key);

  _StoryWidgetState createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: DefaultTheme.grey400,
      child: Container(
        color: DefaultTheme.white,
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Row(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          './assets/Images/user.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

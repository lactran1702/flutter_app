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
        padding: EdgeInsets.symmetric(vertical: 10),
        height: 250,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            UserStoryHolder(),
            FriendStoryHolder(
              {
                "name": "User A",
                "avatar": "./assets/Images/banner.jpg",
              },
            ),
            // FriendStoryHolder(),
            // FriendStoryHolder(),
            // FriendStoryHolder(),
          ],
        ),
      ),
    );
  }
}

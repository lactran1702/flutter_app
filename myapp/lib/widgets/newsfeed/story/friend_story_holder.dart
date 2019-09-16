import 'package:myapp/data/lib.dart';

class FriendStoryHolder extends StatelessWidget {
  final String storyImg;
  final dynamic friendInfo;

  const FriendStoryHolder(
    this.friendInfo, {
    Key key,
    this.storyImg = './assets/Images/banner.jpg',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _storyPost = Container(
      width: 120,
      height: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          storyImg,
          fit: BoxFit.cover,
        ),
      ),
    );

    Widget _friendName = Positioned(
      bottom: 10,
      left: 10,
      child: Text(
        friendInfo['name'].toString(),
        style: TextStyle(
          color: DefaultTheme.white,
        ),
      ),
    );

    Widget _storyAvatar = Container(
      height: 45,
      width: 45,
      margin: EdgeInsets.only(top: 8, left: 8),
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(
          color: Colors.blue,
          width: 3.0,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(
          friendInfo['avatar'].toString(),
          fit: BoxFit.cover,
        ),
      ),
    );

    return Container(
      margin: EdgeInsets.only(right: 5),
      child: GestureDetector(
        child: Stack(
          children: <Widget>[
            _storyPost,
            // _storyShadow,
            StoryShadow(),
            _friendName,
            _storyAvatar,
          ],
        ),
        onTap: () {
          print("Open friend's story");
        },
      ),
    );
  }
}

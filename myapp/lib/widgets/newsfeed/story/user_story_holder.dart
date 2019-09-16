import 'package:myapp/data/lib.dart';

class UserStoryHolder extends StatelessWidget {
  const UserStoryHolder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _storyIcon = Container(
      height: 45,
      width: 45,
      margin: EdgeInsets.only(top: 8, left: 8),
      decoration: BoxDecoration(
        color: DefaultTheme.white,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.add,
        color: DefaultTheme.blue,
      ),
    );

    Widget _storyText = Positioned(
      bottom: 10,
      left: 10,
      child: Text(
        'Add new story',
        style: TextStyle(
          color: DefaultTheme.white,
        ),
      ),
    );

    Widget _userImg = Container(
      width: 120,
      height: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          './assets/Images/user.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );

    return Container(
      margin: EdgeInsets.only(right: 5),
      child: GestureDetector(
        child: Stack(
          children: <Widget>[
            _userImg,
            StoryShadow(),
            _storyText,
            _storyIcon,
          ],
        ),
        onTap: () {
          print('Add new story');
        },
      ),
    );
  }
}

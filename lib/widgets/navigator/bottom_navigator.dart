import 'package:myapp/data/lib.dart';

class BottomNavigator extends StatefulWidget {
  BottomNavigator({Key key}) : super(key: key);

  StateBottomNavigator createState() => StateBottomNavigator();
}

class StateBottomNavigator extends State<BottomNavigator> {
  void homeOnPressed() {
    print('homeOnPressed');
  }

  void friendOnPressed() {
    print('friendOnPressed');
  }

  void watchOnPressed() {
    print('watchOnPressed');
  }

  void groupOnPressed() {
    print('groupOnPressed');
  }

  void notiOnPressed() {
    print('notiOnPressed');
  }

  void menuOnPressed() {
    print('menuOnPressed');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1,
              color: DefaultTheme.grey400,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ButtonBottomNavigator(
              id: 0,
              icon: Icon(CustomIcons.home_outline),
              callback: homeOnPressed,
            ),
            ButtonBottomNavigator(
              id: 1,
              icon: Icon(CustomIcons.people_outline),
              callback: friendOnPressed,
            ),
            ButtonBottomNavigator(
              id: 2,
              icon: Icon(CustomIcons.screen),
              callback: watchOnPressed,
            ),
            ButtonBottomNavigator(
              id: 3,
              icon: Icon(CustomIcons.group_circled),
              callback: groupOnPressed,
            ),
            ButtonBottomNavigator(
              id: 4,
              icon: Icon(CustomIcons.notifications_none),
              callback: notiOnPressed,
            ),
            ButtonBottomNavigator(
              id: 5,
              icon: Icon(Icons.menu),
              callback: menuOnPressed,
            ),
          ],
        ),
      ),
    );
  }
}

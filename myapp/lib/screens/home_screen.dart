import 'package:myapp/data/lib.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  StateHomeScreen createState() => StateHomeScreen();
}

class StateHomeScreen extends State<HomeScreen> {
  @override
  void initState() {
    print('HomeScreen initState');

    super.initState();
  }

  @override
  void dispose() {
    print('HomeScreen Dispose');

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget iconAppBar(IconData iconData) {
      return Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: DefaultTheme.grey400,
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          color: DefaultTheme.black87,
          size: 24,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: DefaultTheme.white,
        title: IconButton(
          icon: Image.asset(
            './assets/Images/fb-logo.png',
            // width: 250,
          ),
          iconSize: 150,
          alignment: Alignment.centerLeft,
          onPressed: () {
            print('LOGO');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: iconAppBar(Icons.search),
            onPressed: () {
              print('search');
            },
          ),
          IconButton(
            icon: iconAppBar(Icons.message),
            onPressed: () {
              print('message');
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          PostContent(),
        ],
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}

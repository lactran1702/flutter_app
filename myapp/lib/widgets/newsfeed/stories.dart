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
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 5),
              child: GestureDetector(
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 120,
                      height: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          './assets/Images/user.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0, 1],
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.transparent,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Text(
                        'Add new story',
                        style: TextStyle(
                          color: DefaultTheme.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(top: 5, left: 5),
                      decoration: BoxDecoration(
                        color: DefaultTheme.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.add,
                        color: DefaultTheme.blue,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  print('Add new story');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

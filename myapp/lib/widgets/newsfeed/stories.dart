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
            Row(
              children: <Widget>[
                Stack(
                  // alignment: AlignmentDirectional.topStart,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 120,
                      // color: Colors.blue,
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
                      bottom: 10,
                      left: 10,
                      child: Text(
                        'Add new story',
                        style: TextStyle(
                          color: DefaultTheme.white,
                        ),
                      ),
                    ),
                    MaterialButton(
                      padding: EdgeInsets.zero,
                      minWidth: 40,
                      height: 40,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: DefaultTheme.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          color: DefaultTheme.blue,
                        ),
                      ),
                      onPressed: () => {
                        print('Add new story'),
                      },
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

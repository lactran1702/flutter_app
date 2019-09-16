import 'package:myapp/data/lib.dart';

class PostThinker extends StatefulWidget {
  PostThinker({Key key}) : super(key: key);

  _PostThinkerState createState() => _PostThinkerState();
}

class _PostThinkerState extends State<PostThinker> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('./assets/Images/user.jpg'),
                radius: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'What is going on?',
                style: TextStyle(
                  fontSize: 18,
                  color: DefaultTheme.grey400,
                ),
              ),
            ],
          ),
        ),
        Container(
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
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.live_tv,
                        color: Colors.red,
                        size: 24,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Live',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.file_upload,
                        color: Colors.green,
                        size: 24,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Picture',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // decoration: BoxDecoration(
                  //   border: Border(
                  //     right: BorderSide(
                  //       width: 1,
                  //       color: Colors.black,
                  //     ),
                  //   ),
                  // ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.pin_drop,
                        color: Colors.pink,
                        size: 24,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Check in',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

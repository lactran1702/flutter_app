import 'package:myapp/data/lib.dart';

class PostThinker extends StatefulWidget {
  PostThinker({Key key}) : super(key: key);

  _PostThinkerState createState() => _PostThinkerState();
}

class _PostThinkerState extends State<PostThinker> {
  @override
  Widget build(BuildContext context) {
    Widget postContent = Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('./assets/Images/user.jpg'),
            radius: 35,
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
    );

    Expanded iconHolder(
      IconData icon,
      Color borderColor,
      Color color,
      String label,
    ) {
      return Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 1,
                color: borderColor,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: color,
                size: 24,
              ),
              SizedBox(
                width: 5,
              ),
              Text(label),
            ],
          ),
        ),
      );
    }

    Widget postButtonWrap = Container(
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
          iconHolder(
            Icons.live_tv,
            Colors.black26,
            Colors.red,
            'Live',
          ),
          iconHolder(
            Icons.file_upload,
            Colors.black26,
            Colors.green,
            'Picture',
          ),
          iconHolder(
            Icons.pin_drop,
            Colors.transparent,
            Colors.pink,
            'Check in',
          ),
        ],
      ),
    );

    return Column(
      children: <Widget>[
        postContent,
        postButtonWrap,
      ],
    );
  }
}

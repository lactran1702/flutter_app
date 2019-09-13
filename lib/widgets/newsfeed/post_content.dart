import 'package:myapp/data/lib.dart';

class PostContent extends StatefulWidget {
  PostContent({Key key}) : super(key: key);

  _PostContentState createState() => _PostContentState();
}

class _PostContentState extends State<PostContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PostThinker(),
        StoryWidget(),
      ],
    );
  }
}

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
        Container(
          padding: EdgeInsets.only(top: 10),
          color: Colors.blueGrey,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 45,
                          width: 45,
                          // margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            border: Border.all(
                              color: Colors.blue,
                              width: 3.0,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              './assets/Images/user.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 14,
                            height: 14,
                            decoration: BoxDecoration(
                              // shape: BoxShape.circle,
                              color: Colors.green,
                              border: Border.all(width: 2, color: Colors.white),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              text: 'User ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'added 4 new photos!',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '5 minutes ago',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.group,
                                color: Colors.black45,
                                size: 24,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Icon(
                        Icons.more_horiz,
                        size: 20,
                      ),
                      onPressed: () {
                        print('view more');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

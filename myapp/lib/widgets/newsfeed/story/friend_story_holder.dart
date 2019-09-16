import 'package:myapp/data/lib.dart';

class FriendStoryHolder extends StatelessWidget {
  const FriendStoryHolder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  './assets/Images/user2.jpg',
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
                "Friend's Name",
                style: TextStyle(
                  color: DefaultTheme.white,
                ),
              ),
            ),
            Container(
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
                  './assets/Images/user2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        onTap: () {
          print("Open friend's story");
        },
      ),
    );
  }
}

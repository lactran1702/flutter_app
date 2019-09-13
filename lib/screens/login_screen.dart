import 'package:myapp/data/lib.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Center(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 40),
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset(
                        './assets/Images/fb-logo.png',
                        fit: BoxFit.cover,
                        width: 250,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              height: 1,
                            ),
                          ),
                          color: Colors.blue,
                          onPressed: () {
                            print('CLICKED');
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned.fill(
              // child: Text('Sign Up'),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FlatButton(
                  child: Text('Sign Up for Facebook'),
                  onPressed: () {
                    print('sign up');
                  },
                ),
              ),
              bottom: 10,
            )
          ],
        ),
      ),
    );
  }
}

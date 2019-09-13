import 'package:myapp/data/lib.dart';

class ButtonBottomNavigator extends StatefulWidget {
  final int id;
  final Widget icon;
  final VoidCallback callback;

  ButtonBottomNavigator({Key key, this.icon, this.id, this.callback})
      : super(key: key);

  StateButtonBottomNavigator createState() => StateButtonBottomNavigator();
}

class StateButtonBottomNavigator extends State<ButtonBottomNavigator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 30,
      child: IconButton(
        icon: widget.icon,
        color: DefaultTheme.black87,
        iconSize: 28,
        onPressed: () {
          if (widget.callback != null) {
            widget.callback();
          }
        },
      ),
      // child: widget.icon,
    );
  }
}

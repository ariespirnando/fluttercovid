part of 'widget.dart';

Widget imageBackground(BuildContext context) => Container(
  width: MediaQuery.of(context).size.width,
  height: MediaQuery.of(context).size.width * 0.7,
  decoration: BoxDecoration(
      image: DecorationImage(
    image: AssetImage(bacgkasus),
    fit: BoxFit.cover,
  )),
);
Widget logoBackground(BuildContext context) => Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      SizedBox(
        height: (MediaQuery.of(context).size.width * 0.7) / 4,
      ),
      Container(
        padding: EdgeInsets.only(left: 24),
        height: MediaQuery.of(context).size.width / 8,
        child: Image(image: AssetImage(logokasus)),
      )
    ],
  ),
);

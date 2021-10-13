import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoDialg extends StatefulWidget {
  const CupertinoDialg({Key? key}) : super(key: key);

  @override
  _CupertinoDialgState createState() => _CupertinoDialgState();
}

class _CupertinoDialgState extends State<CupertinoDialg> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showCupertinoDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: Text(
                      'Allow "Maps" to access your location while you use the app?'),
                  content: Text(
                      'Your current location will be displayed on the map and used for directions,nearby search result and estimated travel time'),
                  actions: [
                    CupertinoDialogAction(
                        child: Text("Don't Allow"),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    CupertinoDialogAction(
                        child: Text('Allow'),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ],
                );
              });
        },
        child: Text('Cupertino Dialog'));
  }
}

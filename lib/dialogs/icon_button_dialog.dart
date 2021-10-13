import 'package:flutter/material.dart';

class Iconbttn extends StatelessWidget {
  const Iconbttn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  title: Text('Set backup account'),
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(10)),
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://pbs.twimg.com/profile_images/883859744498176000/pjEHfbdn_400x400.jpg"),
                              backgroundColor: Colors.transparent,
                            ),
                            Padding(padding: EdgeInsets.all(10)),
                            Text('user01@gmail.com'),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(10)),
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://m.media-amazon.com/images/I/51dNGHsCZ0L._AC_.jpg"),
                              backgroundColor: Colors.transparent,
                            ),
                            Padding(padding: EdgeInsets.all(10)),
                            Text('user02@gmail.com'),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(5)),
                            IconButton(
                                iconSize: 70,
                                onPressed: () {},
                                icon: Icon(Icons.add_circle)),
                            Padding(padding: EdgeInsets.all(5)),
                            Text('Add account'),
                          ],
                        ),
                      ],
                    )
                  ],
                );
              });
        },
        child: Text('Icon button Dialog'));
  }
}

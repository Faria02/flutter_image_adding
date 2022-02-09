import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  String imgUrl =
      'https://images.pexels.com/photos/4564996/pexels-photo-4564996.jpeg?cs=srgb&dl=pexels-%D0%B2%D0%BB%D0%B0%D0%B4%D0%B8%D0%BC%D0%B8%D1%80-%D0%B2%D0%B0%D1%81%D0%B8%D0%BB%D1%8C%D0%B5%D0%B2-4564996.jpg&fm=jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        constraints: BoxConstraints
            .expand(), //height width taken the full body instead of double.infinity
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              // child: Image.network(
              //   imgUrl,
              //   height: 300,
              //   width: 250,
              // ),
              backgroundImage: NetworkImage(imgUrl),
            ),
            const SizedBox(
              height: 20, //for white space
            ),
            const Text(
              'Faria Sabrin Jui',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 16),
            ),
            Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(16),
                color: Colors.amber,
                child: Row(
                  children: [
                    Icon(Icons.mail),
                    SizedBox(
                      width: 16,
                    ),
                    Text('abc@gmail.com'),
                  ],
                )),
            Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
                color: Colors.amber,
                child: Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(
                      width: 16,
                    ),
                    Text('01717761693'),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

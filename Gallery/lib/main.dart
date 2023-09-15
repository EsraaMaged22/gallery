import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> images = [
    'assets/images/img1.jpg',
    'assets/images/img2.jpg',
    'assets/images/img3.jpg',
    'assets/images/img1.jpg',
    'assets/images/img2.jpg',
    'assets/images/img3.jpg',
    'assets/images/img1.jpg',
    'assets/images/img2.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( backgroundColor: Colors.white
        ,
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 140,
                  height: 60,
                ),
                Text(
                  'Gallery',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
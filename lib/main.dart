import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}




class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gallery App',
      home: HomeScreen(),
    );
  }
}











class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    this.pictue,
    this.title,
  });

  final pictue;
  final title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade600,
        leading: InkWell(
          onTap: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            } else {
              exit(0);
            }
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green.shade300,
            ),
            margin: EdgeInsets.all(6),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Photo Gallery',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
              color: Colors.white,
              size: 26,
            ),
          ),
        ],
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        children: [
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  picture_name: 'image/mood.jpg',
                  picture_title: 'Mood',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage('image/mood.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 7,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Mood',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  picture_name: 'image/asthetic.jpg',
                  picture_title: 'Asthetic',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage('image/asthetic.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 7,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Asthetic',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  picture_name: 'image/animal.jpg',
                  picture_title: 'Animal',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage('image/animal.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 7,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Animal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  picture_name: 'image/road.jpg',
                  picture_title: 'Road',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage('image/road.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 7,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Road',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  picture_name: 'image/leaf.jpg',
                  picture_title: 'Leaves',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage('image/leaf.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 7,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Leaves',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  picture_name: 'image/travel.jpg',
                  picture_title: 'Travel',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage('image/travel.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 7,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Travel',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  picture_name: 'image/city.jpg',
                  picture_title: 'Travel',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage('image/city.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 7,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'City',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  picture_name: 'image/flower.jpg',
                  picture_title: 'Flower',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage('image/flower.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 7,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Flower',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  picture_name: 'image/dawn.jpg',
                  picture_title: 'Dawn',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage('image/dawn.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 7,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Dawn',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  picture_name: 'image/sky1.jpg',
                  picture_title: 'Sky',
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage('image/sky1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 7,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Sky',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}











class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    this.picture_name,
    this.picture_title,

  });

  final picture_name;
  final picture_title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade600,
        leading: InkWell(
          onTap: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            } else {
              exit(0);
            }
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green.shade300,
            ),
            margin: EdgeInsets.all(6),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          picture_title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
              color: Colors.white,
              size: 26,
            ),
          ),
        ],
      ),
      body: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 390,
                height: 325,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage(picture_name),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 7,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                //child: Image.asset(picture_name),
              ),
            ),
          )
        ],
      ),
    );
  }
}
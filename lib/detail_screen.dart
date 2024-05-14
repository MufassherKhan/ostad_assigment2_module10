import 'package:flutter/material.dart';
import 'dart:io';

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
            margin: const EdgeInsets.all(6),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          picture_title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.white,
              size: 26,
            ),
          ),
        ],
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.landscape) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 9),
                  child: Container(
                    width: 372,
                    height: 298,
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
                          offset: const Offset(0, 4),
                        )
                      ],
                    ),
                    //child: Image.asset(picture_name),
                  ),
                )
              ],
            ),
          );
        } else {
          return Column(
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
                          offset: const Offset(0, 4),
                        )
                      ],
                    ),
                    //child: Image.asset(picture_name),
                  ),
                ),
              )
            ],
          );
        }
      }),
    );
  }
}
import 'dart:math';

import 'package:festival_post_app/routes/routes.dart';
import 'package:festival_post_app/utils/festival_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          // separatorBuilder: (context, index) => Divider(),
          itemCount: festivals.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                // 'detail_page',
                AppRoutes.detailPage,
                arguments: allFestival[index],
              );
            },
            child: Container(
              height: size.height * 0.2,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 5,
                    offset: Offset(3, 3),
                  ),
                ],
                image: DecorationImage(
                  image: NetworkImage(allFestival[index].thumbnail),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListTile(
                // leading: Image.network(allFestival[index].thumbnail),
                title: Text(
                  allFestival[index].name,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                // subtitle: Text(allFestival[index].thumbnail),
                // return card();
              ),
            ),
          ),
        ),
      ),
    );
  }
}

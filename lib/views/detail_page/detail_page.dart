import 'package:festival_post_app/models/app_model.dart';
import 'package:festival_post_app/utils/extensions.dart';
import 'package:festival_post_app/utils/festival_utils.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String? bgImage;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    FestivalModal festival =
        ModalRoute.of(context)!.settings.arguments as FestivalModal;
    List<String> festivalsImg = festival.img;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: festivalsImg
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          bgImage = e;
                          setState(() {});
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          height: size.height * 0.2,
                          width: size.width * 0.44,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              image: NetworkImage(e),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            10.h,
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: bgImage == null
                    ? null
                    : DecorationImage(
                        image: NetworkImage(bgImage!),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

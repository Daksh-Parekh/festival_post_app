import 'package:festival_post_app/models/app_model.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    FestivalModal festival =
        ModalRoute.of(context)!.settings.arguments as FestivalModal;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          height: size.height * 0.5,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
          ),
        ),
      ),
    );
  }
}

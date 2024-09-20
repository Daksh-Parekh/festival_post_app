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
    // ModelRoutes fes = ./
    // ModelRoutes festival =
    //     ModalRoute.of(context)!.settings.arguments as ModelRoutes;
    FestivalModal fe =
        ModalRoute.of(context)!.settings.arguments as FestivalModal;
    // ModelRoutes fe = ModalRoute.of(context)!.settings.arguments as ModelRoutes;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
    );
  }
}

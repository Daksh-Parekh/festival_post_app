import 'package:festival_post_app/views/detail_page/detail_page.dart';
import 'package:festival_post_app/views/home_page/home_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static String homePage = '/';
  static String detailPage = "detail_page";

  static Map<String, Widget Function(BuildContext)> routes = {
    homePage: (context) => HomePage(),
    detailPage: (context) => DetailPage(),
  };
}

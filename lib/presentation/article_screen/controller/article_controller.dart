import 'package:denttech_plus/core/app_export.dart';
import 'package:denttech_plus/presentation/article_screen/models/article_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ArticleScreen.
///
/// This class manages the state of the ArticleScreen, including the
/// current articleModelObj
class ArticleController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ArticleModel> articleModelObj = ArticleModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

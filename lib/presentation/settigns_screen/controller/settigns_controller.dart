import 'package:denttech_plus/core/app_export.dart';
import 'package:denttech_plus/presentation/settigns_screen/models/settigns_model.dart';

/// A controller class for the SettignsScreen.
///
/// This class manages the state of the SettignsScreen, including the
/// current settignsModelObj
class SettignsController extends GetxController {
  Rx<SettignsModel> settignsModelObj = SettignsModel().obs;
}

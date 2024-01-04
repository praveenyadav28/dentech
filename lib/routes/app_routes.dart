import 'package:denttech_plus/presentation/splash_screen/splash_screen.dart';
import 'package:denttech_plus/presentation/splash_screen/binding/splash_binding.dart';
import 'package:denttech_plus/presentation/login_screen/login_screen.dart';
import 'package:denttech_plus/presentation/login_screen/binding/login_binding.dart';
import 'package:denttech_plus/presentation/signup_screen/signup_screen.dart';
import 'package:denttech_plus/presentation/signup_screen/binding/signup_binding.dart';
import 'package:denttech_plus/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:denttech_plus/presentation/dashboard_screen/binding/dashboard_binding.dart';
import 'package:denttech_plus/presentation/dr_list_screen/dr_list_screen.dart';
import 'package:denttech_plus/presentation/dr_list_screen/binding/dr_list_binding.dart';
import 'package:denttech_plus/presentation/dr_details_screen/dr_details_screen.dart';
import 'package:denttech_plus/presentation/dr_details_screen/binding/dr_details_binding.dart';
import 'package:denttech_plus/presentation/book_an_appointment_screen/book_an_appointment_screen.dart';
import 'package:denttech_plus/presentation/book_an_appointment_screen/binding/book_an_appointment_binding.dart';
import 'package:denttech_plus/presentation/chat_screen/chat_screen.dart';
import 'package:denttech_plus/presentation/chat_screen/binding/chat_binding.dart';
import 'package:denttech_plus/presentation/settigns_screen/settigns_screen.dart';
import 'package:denttech_plus/presentation/settigns_screen/binding/settigns_binding.dart';
import 'package:denttech_plus/presentation/pharmacy_screen/pharmacy_screen.dart';
import 'package:denttech_plus/presentation/pharmacy_screen/binding/pharmacy_binding.dart';
import 'package:denttech_plus/presentation/drug_details_screen/drug_details_screen.dart';
import 'package:denttech_plus/presentation/drug_details_screen/binding/drug_details_binding.dart';
import 'package:denttech_plus/presentation/article_screen/article_screen.dart';
import 'package:denttech_plus/presentation/article_screen/binding/article_binding.dart';
import 'package:denttech_plus/presentation/cart_screen/cart_screen.dart';
import 'package:denttech_plus/presentation/cart_screen/binding/cart_binding.dart';
import 'package:denttech_plus/presentation/ambulance_screen/ambulance_screen.dart';
import 'package:denttech_plus/presentation/ambulance_screen/binding/ambulance_binding.dart';
import 'package:denttech_plus/presentation/schedule_tab_container_screen/schedule_tab_container_screen.dart';
import 'package:denttech_plus/presentation/schedule_tab_container_screen/binding/schedule_tab_container_binding.dart';
import 'package:denttech_plus/presentation/message_tab_container_screen/message_tab_container_screen.dart';
import 'package:denttech_plus/presentation/message_tab_container_screen/binding/message_tab_container_binding.dart';
import 'package:denttech_plus/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:denttech_plus/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String drListScreen = '/dr_list_screen';

  static const String drDetailsScreen = '/dr_details_screen';

  static const String bookAnAppointmentScreen = '/book_an_appointment_screen';

  static const String chatScreen = '/chat_screen';

  static const String settignsScreen = '/settigns_screen';

  static const String pharmacyScreen = '/pharmacy_screen';

  static const String drugDetailsScreen = '/drug_details_screen';

  static const String articleScreen = '/article_screen';

  static const String cartScreen = '/cart_screen';

  static const String ambulanceScreen = '/ambulance_screen';

  static const String schedulePage = '/schedule_page';

  static const String scheduleTabContainerScreen =
      '/schedule_tab_container_screen';

  static const String messagePage = '/message_page';

  static const String messageTabContainerScreen =
      '/message_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: dashboardScreen,
      page: () => DashboardScreen(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: drListScreen,
      page: () => DrListScreen(),
      bindings: [
        DrListBinding(),
      ],
    ),
    GetPage(
      name: drDetailsScreen,
      page: () => DrDetailsScreen(),
      bindings: [
        DrDetailsBinding(),
      ],
    ),
    GetPage(
      name: bookAnAppointmentScreen,
      page: () => BookAnAppointmentScreen(),
      bindings: [
        BookAnAppointmentBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: settignsScreen,
      page: () => SettignsScreen(),
      bindings: [
        SettignsBinding(),
      ],
    ),
    GetPage(
      name: pharmacyScreen,
      page: () => PharmacyScreen(),
      bindings: [
        PharmacyBinding(),
      ],
    ),
    GetPage(
      name: drugDetailsScreen,
      page: () => DrugDetailsScreen(),
      bindings: [
        DrugDetailsBinding(),
      ],
    ),
    GetPage(
      name: articleScreen,
      page: () => ArticleScreen(),
      bindings: [
        ArticleBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: ambulanceScreen,
      page: () => AmbulanceScreen(),
      bindings: [
        AmbulanceBinding(),
      ],
    ),
    GetPage(
      name: scheduleTabContainerScreen,
      page: () => ScheduleTabContainerScreen(),
      bindings: [
        ScheduleTabContainerBinding(),
      ],
    ),
    GetPage(
      name: messageTabContainerScreen,
      page: () => MessageTabContainerScreen(),
      bindings: [
        MessageTabContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}

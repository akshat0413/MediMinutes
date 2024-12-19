import 'package:flutter/material.dart';
import 'package:mediminutes/core/app_export.dart';
import 'package:mediminutes/presentation/buy_screen/buy_binding/buy_binding.dart';
import 'package:mediminutes/presentation/buy_screen/buy_screen.dart';
import 'package:mediminutes/presentation/cart_screen/binding/cart_binding.dart';
import 'package:mediminutes/presentation/cart_screen/cart_screen_empty.dart';
import 'package:mediminutes/presentation/home_screen/home_screen.dart';
import 'package:mediminutes/presentation/login_screen/binding/login_binding.dart';
import 'package:mediminutes/presentation/login_screen/login_screen.dart';
import 'package:mediminutes/presentation/my_order_search_screen/binding/my_order_search_binding.dart';
import 'package:mediminutes/presentation/notification_screen/binding/notification_binding.dart';
import 'package:mediminutes/presentation/notification_screen/notification_screen.dart';
import 'package:mediminutes/presentation/offer_zone_screen/offer_zone_screen.dart';
import 'package:mediminutes/presentation/order_place/binding/order_place_binding.dart';
import 'package:mediminutes/presentation/order_place/order_place_screen.dart';
import 'package:mediminutes/presentation/profile/profile_screen.dart';
import 'package:mediminutes/presentation/pyment_options/binding/payment_options_binding.dart';
import 'package:mediminutes/presentation/pyment_options/payment_options_screen.dart';
import 'package:mediminutes/presentation/signup_screen/binding/signup_binding.dart';
import 'package:mediminutes/presentation/signup_screen/signup_screen.dart';
import 'package:mediminutes/presentation/splash_screen/binding/spleshscreen_binding.dart';
import 'package:mediminutes/presentation/splash_screen/spleshscreen_Screen.dart';

import '../presentation/buy_screen/buy_screen2.dart';
import '../presentation/cart_screen/cart_screen.dart';
import '../presentation/cart_screen/cart_screen2.dart';
import '../presentation/offer_zone_screen/binding/offer_zone_binding.dart';
import '../presentation/profile/binding/order_place_binding.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String homeInitialPage = '/home_initial_page';

  static const String profileScreen = '/profile_screen';

  static const String cartScreenEmpty = '/cart_screen_empty';

  static const String cartScreen = '/cart_screen';

  static const String cartScreen2 = '/cart_screen2';

  static const String orderPlaceScreen = '/order_place_screen';

  static const String notificationScreen = '/notification_screen';

  static const String offerZoneScreen = '/offer_zone_screen';

  static const String buyScreen = '/buy_screen';

  static const String buyScreen2 = '/buy_screen2';

  static const String spleshscreenScreen = '/spleshscreen_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String paymentOptionsScreen = '/payment_options_screen';

  static const String testingScreen = '/testing_screen';

  static const String testingInitialPage = '/Testing_initial_page';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [HomeBinding()],
    ),
    GetPage(
      name: cartScreenEmpty,
      page: () => CartScreenEmpty(),
      bindings: [CartBinding()],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [CartBinding()],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen2(),
      bindings: [CartBinding()],
    ),
    GetPage(
      name: orderPlaceScreen,
      page: () => OrderPlaceScreen(),
      bindings: [OrderPlaceBinding()],
    ),
    GetPage(
      name: offerZoneScreen,
      page: () => OfferZoneScreen(),
      bindings: [OfferZoneBinding()],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [LoginBinding()],
    ),
    GetPage(
      name: spleshscreenScreen,
      page: () => SpleshscreenScreen(),
      bindings: [SpleshscreenBinding()],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [SignupBinding()],
    ),
    GetPage(
      name: buyScreen,
      page: () => BuyScreen(),
      bindings: [BuyBinding()],
    ),
    GetPage(
      name: buyScreen2,
      page: () => BuyScreen2(),
      bindings: [BuyBinding()],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [NotificationBinding()],
    ),
    GetPage(
      name: paymentOptionsScreen,
      page: () => PaymentOptionsScreen(),
      bindings: [PaymentOptionsBinding()],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [ProfileScreenBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => SpleshscreenScreen(),
      bindings: [SpleshscreenBinding()],
    ),
  ];
}

import 'package:event_360/screen/choose_tickets/choose_tickets.dart';
import 'package:event_360/screen/detail_tickets/detail_ticket.dart';
import 'package:event_360/screen/event/event_detail.dart';
import 'package:event_360/screen/favoris/wishlist.dart';
import 'package:event_360/screen/feeds/feeds.dart';
import 'package:event_360/screen/home/home_screen.dart';
import 'package:event_360/screen/inner_screen/feeds/categorie_feed.dart';
import 'package:event_360/screen/mobile_money_screen/mobile_money.dart';
import 'package:event_360/screen/mobile_money_screen/visa_screen.dart';
import 'package:event_360/screen/nav%20bar/nav_bar.dart';
import 'package:event_360/screen/onboarding-screen/onboarding_screen.dart';
import 'package:event_360/screen/opt%20screen/verification_otp.dart';
import 'package:event_360/screen/payment/payement.dart';
import 'package:event_360/screen/settings/components/update_profil.dart';
import 'package:event_360/screen/settings/setting.dart';
import 'package:event_360/screen/sign_up/sign_up_screen.dart';
import 'package:event_360/screen/sign_up_success/sigu_up_success_screen.dart';
import 'package:event_360/screen/splash/splash_screen.dart';
import 'package:event_360/screen/tickets/ticket_screen.dart';
import 'package:flutter/widgets.dart';

//toutes les routes sont definis ici
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  VerificationOtp.routeName: (context) => VerificationOtp(),
  SignUpSuccessScreen.routeName: (context) => SignUpSuccessScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  EventDetail.routeName: (context) => EventDetail(),
  NavBarWidget.routeName: (context) => NavBarWidget(),
  ProfilScreen.routeName: (context) => ProfilScreen(),
  WishlistScreen.routeName: (context) => WishlistScreen(),
  TicketScreen.routeName: (context) => TicketScreen(),
  UpdateProfilScreen.routeName: (context) => UpdateProfilScreen(),
  TicketsDetails.routeName: (context) => TicketsDetails(),
  ChooseTicketScreen.routeName: (context) => ChooseTicketScreen(),
  PayementScreen.routeName: (context) => PayementScreen(),
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  FeedScreen.routeName: (context) => FeedScreen(),
  CategoryFeedScreen.routeName: (context) => CategoryFeedScreen(),
  MobileMoneyScreen.routeName: (context) => MobileMoneyScreen(),
  VisaScreen.routeName: (context) => VisaScreen()
};

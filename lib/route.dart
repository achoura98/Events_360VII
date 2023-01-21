import 'package:event_360/screen/cart/cart_screen.dart';
import 'package:event_360/screen/choose_tickets/choose_tickets.dart';
import 'package:event_360/screen/complete_profil/complete_profile_screen.dart';
import 'package:event_360/screen/detail_tickets/detail_ticket.dart';
import 'package:event_360/screen/event/event_detail.dart';
import 'package:event_360/screen/favoris/wishlist.dart';
import 'package:event_360/screen/home/home_screen.dart';
import 'package:event_360/screen/nav%20bar/nav_bar.dart';
import 'package:event_360/screen/opt%20screen/verification_otp.dart';
import 'package:event_360/screen/profil/components/update_profil.dart';
import 'package:event_360/screen/profil/profil.dart';
import 'package:event_360/screen/reservation/reservation.dart';
import 'package:event_360/screen/sign_up/sign_up_screen.dart';
import 'package:event_360/screen/sign_up_success/sigu_up_success_screen.dart';
import 'package:event_360/screen/splash/splash_screen.dart';
import 'package:event_360/screen/tickets/ticket_screen.dart';
import 'package:flutter/widgets.dart';

//toutes les routes sont definis ici
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  VerificationOtp.routeName: (context) => VerificationOtp(),
  SignUpSuccessScreen.routeName: (context) => SignUpSuccessScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  EventDetail.routeName: (context) => EventDetail(),
  BubbleNavBar.routeName: (context) => BubbleNavBar(),
  ProfilScreen.routeName: (context) => ProfilScreen(),
  WishlistScreen.routeName: (context) => WishlistScreen(),
  TicketScreen.routeName: (context) => TicketScreen(),
  UpdateProfilScreen.routeName: (context) => UpdateProfilScreen(),
  TicketsDetails.routeName: (context) => TicketsDetails(),
  ChooseTicketScreen.routeName: (context) => ChooseTicketScreen(),
  ReservationScreen.routeName: (context) => ReservationScreen(),
  CartScreen.routeName: (context) => CartScreen()
};

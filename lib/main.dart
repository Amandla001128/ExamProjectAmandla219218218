import 'dart:js';
import 'package:flutter/material.dart';
import 'package:ticket_booking/pages/homepage.dart';
import 'package:ticket_booking/pages/aboutpage.dart';
import 'package:ticket_booking/pages/contactpage.dart';
import 'package:ticket_booking/pages/signup.dart';
import 'package:ticket_booking/pages/login.dart';
import 'package:ticket_booking/pages/booking.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/homepage',
  routes: {
    '/':(context) => const About(),
    '/about':(context) => const Contactpage(),
    '/contact':(context) => const Signup(),
    '/signup':(context) => const Booking(),
    '/login': (context) => const Booking(),
  },
));

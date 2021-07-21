import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:latest_movies_state_management/src/models/index.dart';

const String applicationTitle = 'Latest movies';
const String detailsRoute = '/details';
const String showImageRoute = '/show_image';

const Color primaryColor = Color(0xff101820);
const Color secondaryColor = Color(0xfff2aa4c);
const Color whiteColor = Color(0xffffffff);
const Color starNotRatedColor = Color(0xffFAFAD2);
const Color transparentColor = Color(0x00000000);

Movie? selectedMovie;

void setTransparentStatusBar() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: transparentColor,
    ),
  );
}

import 'package:captaionshop/Screens/auth/Signup.dart';
import 'package:captaionshop/context/State.dart';
import 'package:captaionshop/utils/CustomColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class Slash extends StatefulWidget {
  const Slash({Key? key}) : super(key: key);

  @override
  _SlashState createState() => _SlashState();
}

class _SlashState extends State<Slash> {
  final controller = Get.put(MyStateController());
  List<Slide> slides = [];
  @override
  void initState() {
    super.initState();

    // slides added one by one
    slides.add(
      Slide(
        backgroundImage: "assets/images/intro/intro.png",
        backgroundOpacityColor: Colors.brown.shade300,
        title: "Welcome to Biggest Online Store",
        marginTitle: EdgeInsets.only(bottom: 10, top: 280, left: 50, right: 50),
        description:
            "Latest Trends In Clothing For Women, Men & Kids At Multikart, Find New Arrivls,Fashion Catalogs, Collections & Lookbooks Every Week",
        backgroundColor: Mycolor.light,
        styleTitle: GoogleFonts.lato(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22,
          letterSpacing: 2,
          fontStyle: FontStyle.normal,
        ),
        maxLineTitle: 2,
        backgroundImageFit: BoxFit.cover,
        maxLineTextDescription: 3,
        styleDescription: GoogleFonts.lato(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 12,
          fontStyle: FontStyle.normal,
        ),
        marginDescription: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
      ),
    );
    // second itemss
    slides.add(
      Slide(
        backgroundImage: "assets/images/intro/one.jpg",
        title: "Welcome to Biggest Online Store",
        marginTitle: EdgeInsets.only(bottom: 10, top: 250, left: 50, right: 50),
        description:
            "Latest Trends In Clothing For Women, Men & Kids At Multikart, Find New Arrivls,Fashion Catalogs, Collections & Lookbooks Every Week",
        backgroundColor: Mycolor.light,
        styleTitle: GoogleFonts.lato(
          color: Colors.white60,
          fontWeight: FontWeight.bold,
          fontSize: 28,
          letterSpacing: 2,
          fontStyle: FontStyle.normal,
        ),
        maxLineTitle: 2,
        backgroundImageFit: BoxFit.cover,
        maxLineTextDescription: 3,
        styleDescription: GoogleFonts.lato(
          color: Colors.grey.shade50,
          fontWeight: FontWeight.bold,
          fontSize: 12,
          fontStyle: FontStyle.normal,
        ),
        marginDescription: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
        backgroundOpacityColor: Colors.pink.shade100,
      ),
    );
    // third items
    slides.add(
      Slide(
        backgroundImage: "assets/images/intro/four.jpg",
        title: "Welcome to Biggest Online Store",
        marginTitle: EdgeInsets.only(bottom: 10, top: 250, left: 50, right: 50),
        description:
            "Latest Trends In Clothing For Women, Men & Kids At Multikart, Find New Arrivls,Fashion Catalogs, Collections & Lookbooks Every Week",
        backgroundColor: Mycolor.light,
        styleTitle: GoogleFonts.lato(
          color: Colors.white60,
          fontWeight: FontWeight.bold,
          fontSize: 28,
          letterSpacing: 2,
          fontStyle: FontStyle.normal,
        ),
        maxLineTitle: 2,
        backgroundImageFit: BoxFit.cover,
        maxLineTextDescription: 3,
        styleDescription: GoogleFonts.lato(
          color: Colors.grey.shade300,
          fontWeight: FontWeight.bold,
          fontSize: 12,
          fontStyle: FontStyle.normal,
        ),
        marginDescription: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
      ),
    );

    // forth items
    slides.add(
      Slide(
        backgroundImage: "assets/images/intro/three.jpg",
        title: "Welcome to Biggest Online Store",
        marginTitle: EdgeInsets.only(bottom: 10, top: 300, left: 50, right: 50),
        description:
            "Latest Trends In Clothing For Women, Men & Kids At Multikart, Find New Arrivls,Fashion Catalogs, Collections & Lookbooks Every Week",
        backgroundColor: Mycolor.light,
        styleTitle: GoogleFonts.lato(
          color: Colors.white60,
          fontWeight: FontWeight.bold,
          fontSize: 28,
          letterSpacing: 2,
          fontStyle: FontStyle.normal,
        ),
        maxLineTitle: 2,
        backgroundImageFit: BoxFit.cover,
        maxLineTextDescription: 3,
        styleDescription: GoogleFonts.lato(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 12,
          fontStyle: FontStyle.normal,
        ),
        marginDescription: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
      ),
    );
  }
  // initial state is done

  //
  void onDonePress() {
    // Do what you want
    Future.delayed(
      Duration(seconds: 3),
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SignUp()),
    );

    // );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slides,
      onDonePress: () => Get.offAll(SignUp()),
      // verticalScrollbarBehavior: scrollbarBehavior.SHOW,
    );
  }
}

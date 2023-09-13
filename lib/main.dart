import 'package:esthetica_web/mobileplage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Sizer(builder:
      (BuildContext context, Orientation orientation, DeviceType deviceType) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: MyWeb(),
    );
  }));
}

class MyWeb extends StatefulWidget {
  const MyWeb({super.key});

  @override
  State<MyWeb> createState() => _MyWebState();
}

class _MyWebState extends State<MyWeb> {
  final GlobalKey _myKey = GlobalKey();
  late bool sizee;
  // late double screenWidth;
  @override
  void initState() {

    super.initState();
    sizee = false;
    WidgetsBinding.instance.addPostFrameCallback((_) {

      // Get the screen width using the key after the widget is built
     // late bool size;
      double screenWidth = _myKey.currentContext!.size!.width;
      print('Screen Width: $screenWidth');
      if (screenWidth < 500) {
        setState(() {
          sizee = true;
        });
      } else {
        sizee = false;
      }
      print(sizee);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _myKey,
      body:sizee ? MobileUI() : MyWeb2(),
    );
  }
}

class MyWeb2 extends StatefulWidget {
  const MyWeb2({super.key});

  @override
  State<MyWeb2> createState() => _MyWeb2State();
}

class _MyWeb2State extends State<MyWeb2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    "ESTHETICA",
                    style: TextStyle(
                        fontFamily: "commosbold",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xff69443C)),
                  ),
                  Text(
                    "APP DEVELOPERS",
                    style: TextStyle(
                      fontFamily: "commosregular",
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xff69443C),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Launching",
                    style: TextStyle(
                        fontFamily: "seasons",
                        height: 1,
                        fontSize: 100,
                        color: Color(0xff69443C)),
                  ),
                  Row(
                    children: [
                      Text(
                        "soon",
                        style: TextStyle(
                            fontFamily: "seasons",
                            height: 0.8,
                            fontSize: 100,
                            color: Color(0xff69443C)),
                      ),
                      Text("!",
                          style: GoogleFonts.ebGaramond(
                            height: 0.8,
                            fontSize: 100,
                            color: Color(0xff69443C),
                          )),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "We are currently making some",
                    style: TextStyle(
                        fontFamily: "commosregular",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff69443C)),
                  ),
                  Text(
                    "improvements to our website 🐱",
                    style: TextStyle(
                        fontFamily: "commosregular",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff69443C)),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "Connect with us",
                    style: TextStyle(
                        fontFamily: "commosregular",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff69443C)),
                  ),
                  SizedBox(height: 3.h),
                  Row(
                    children: [
                      Image.asset(
                        "assets/facebook.png",
                        height: 50,
                        width: 50,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Image.asset(
                        "assets/instagram.png",
                        height: 50,
                        width: 50,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Image.asset(
                        "assets/X.png",
                        height: 50,
                        width: 50,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

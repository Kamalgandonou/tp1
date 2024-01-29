import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_capteur_texte/background.dart';
import 'package:flutter_capteur_texte/homepage.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> 
   with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 4),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const HomePage(),
        ));
    });
   
  }
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       /* width: double.infinity,
         decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 118, 48, 203), Color.fromARGB(255, 64, 166, 187)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
         ),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            Icon(
              Icons.edit_document,
              size: 80,
              color: Color.fromARGB(255, 141, 241, 248),
            ),
            SizedBox(height: 20),
            Text(
              "Gestionnaire de tache",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 17, 17, 17),
                fontSize: 32,
              ),
            )
          ],
         ),*/
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
         ),
         child: CustomPaint(
          painter: BackgroundPainter(),
          child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.edit_document,
              size: 80,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            SizedBox(height: 20),
            Text(
              "APP CAM",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 208, 202, 202),
                fontSize: 32,
              ),
            )
          ],
         ),
          
         ),
         ),
    );
  }
}
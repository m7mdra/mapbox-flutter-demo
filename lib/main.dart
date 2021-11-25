import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive,
        overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]).then((value) {
      super.initState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MapboxMap(
      initialCameraPosition:
          const CameraPosition(target: LatLng(24.126613, 45.081137),zoom: 5.0),
      myLocationTrackingMode: MyLocationTrackingMode.Tracking,
      myLocationEnabled: true,
      accessToken:
          "pk.eyJ1IjoibTdtZHJhIiwiYSI6ImNrOXZvMXV6NTAweTgzZm9mZGp1YjFoM2sifQ.FPmtN18pSshsFeliRHwoiw",
    ));
  }
}

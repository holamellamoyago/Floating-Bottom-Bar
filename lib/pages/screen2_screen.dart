import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bnb/custom/floatingActionButton_custom.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Screen2 extends StatelessWidget {
  static const routename = 'screen2_screen';
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    CameraPosition _initialPosition =
        CameraPosition(target: LatLng(26.8206, 30.8025));
    Completer<GoogleMapController> _controller = Completer();

    void _onMapCreated(GoogleMapController controller) {
      _controller.complete(controller);
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(color: Colors.red),
              ),
              Container(
                height: 800,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                height: 900,
                decoration: BoxDecoration(color: Colors.yellow),
              ),
            ],
          ),
        )),
      ),
      // floatingActionButton: CustomFloatingButton(),
    );
  }
}

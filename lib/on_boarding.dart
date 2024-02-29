import 'package:physics_convertions_unit/controller/energy_converter.dart';
import 'package:physics_convertions_unit/controller/length_converter.dart';
import 'package:physics_convertions_unit/controller/mass_converter.dart';
import 'package:physics_convertions_unit/controller/temperature_converter.dart';
import 'package:physics_convertions_unit/controller/volume_converter.dart';
import 'package:physics_convertions_unit/models/about_me.dart';
import 'package:physics_convertions_unit/pages/dashboard.dart';
import 'package:physics_convertions_unit/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  final TemperatureConverterController tempController =
      TemperatureConverterController();
  final VolumeConverterController volController = VolumeConverterController();
  final LengthConverterController lengthController =
      LengthConverterController();
  final MassConverterController massController = MassConverterController();
  final EnergyConverterController energyController =
      EnergyConverterController();

  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          SizedBox(
            child: Container(
              alignment: const Alignment(0, 0.75),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                      },
                      child: const Text('Skip'),
                    ),
                    SmoothPageIndicator(controller: _controller, count: 3),
                    onLastPage
                        ? GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Dashboard(
                                  aboutMe: aboutMe,
                                  temperatureController: tempController,
                                  volumeController: volController,
                                  lengthController: lengthController,
                                  massController: massController,
                                  energyController: energyController,
                                );
                              }));
                            },
                            child: const Text('Done'),
                          )
                        : GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            child: const Text('Next'),
                          )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

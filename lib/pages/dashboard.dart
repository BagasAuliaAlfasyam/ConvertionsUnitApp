import 'package:physics_convertions_unit/controller/energy_converter.dart';
import 'package:physics_convertions_unit/controller/length_converter.dart';
import 'package:physics_convertions_unit/controller/mass_converter.dart';
import 'package:physics_convertions_unit/controller/volume_converter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:physics_convertions_unit/components/about_developer.dart';
import 'package:physics_convertions_unit/components/banner_dashboard.dart';
import 'package:physics_convertions_unit/components/item_dashboard.dart';
import 'package:physics_convertions_unit/controller/temperature_converter.dart';
import 'package:physics_convertions_unit/models/about_me.dart';

class Dashboard extends StatefulWidget {
  final AboutMe aboutMe;

  const Dashboard({
    super.key,
    required this.aboutMe,
    required TemperatureConverterController temperatureController,
    required VolumeConverterController volumeController,
    required LengthConverterController lengthController,
    required MassConverterController massController,
    required EnergyConverterController energyController,
  });

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  late TemperatureConverterController _temperatureConverterController;
  late VolumeConverterController _volumeConverterController;
  late LengthConverterController _lengthConverterController;
  late MassConverterController _massConverterController;
  late EnergyConverterController _energyConverterController;

  @override
  void initState() {
    super.initState();
    _temperatureConverterController = TemperatureConverterController();
    _volumeConverterController = VolumeConverterController();
    _lengthConverterController = LengthConverterController();
    _massConverterController = MassConverterController();
    _energyConverterController = EnergyConverterController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87.withOpacity(0.9),
      appBar: AppBar(
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(40)),
            border: Border.all(color: Colors.white, width: 1.8),
          ),
          child: const Padding(
            padding: EdgeInsets.only(right: 5, left: 5),
            child: AboutDev(),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white, size: 30),
        title: const Center(
          child: Text(
            'Unit Conversions',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.graph_circle,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BannerLeftDashboard(),
                BannerRightDashboard(),
              ],
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints boxConstraints) {
                  if (boxConstraints.maxWidth <= 600) {
                    return ItemsPlaceGridMobile(
                      aboutMe: aboutMe,
                      temperatureController: _temperatureConverterController,
                      volumeController: _volumeConverterController,
                      lengthController: _lengthConverterController,
                      massController: _massConverterController,
                      energyController: _energyConverterController,
                    );
                  } else {
                    return ItemsPlaceGridWeb(
                      aboutMe: aboutMe,
                      temperatureController: _temperatureConverterController,
                      volumeController: _volumeConverterController,
                      lengthController: _lengthConverterController,
                      massController: _massConverterController,
                      energyController: _energyConverterController,
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemsPlaceGridMobile extends StatefulWidget {
  final AboutMe aboutMe;
  const ItemsPlaceGridMobile({
    super.key,
    required this.aboutMe,
    required TemperatureConverterController temperatureController,
    required VolumeConverterController volumeController,
    required LengthConverterController lengthController,
    required MassConverterController massController,
    required EnergyConverterController energyController,
  });

  @override
  State<ItemsPlaceGridMobile> createState() => _ItemsPlaceGridMobileState();
}

class _ItemsPlaceGridMobileState extends State<ItemsPlaceGridMobile> {
  late TemperatureConverterController _temperatureConverterController;
  late VolumeConverterController _volumeConverterController;
  late LengthConverterController _lengthConverterController;
  late MassConverterController _massConverterController;
  late EnergyConverterController _energyConverterController;

  @override
  void initState() {
    super.initState();
    _temperatureConverterController = TemperatureConverterController();
    _volumeConverterController = VolumeConverterController();
    _lengthConverterController = LengthConverterController();
    _massConverterController = MassConverterController();
    _energyConverterController = EnergyConverterController();
  }

  int gridCount = 3;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        color: Colors.white,
      ),
      child: GridView.count(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        crossAxisCount: 3,
        mainAxisSpacing: 7,
        crossAxisSpacing: 7,
        children: [
          ItemDashboard(
            title: 'Temperature Converter',
            image: 'temperature.png',
            controller: _temperatureConverterController,
          ),
          ItemDashboard(
            title: 'Volume Converter',
            image: 'volume.png',
            controller: _volumeConverterController,
          ),
          ItemDashboard(
            title: 'Length Converter',
            image: 'length.png',
            controller: _lengthConverterController,
          ),
          ItemDashboard(
            title: 'Mass Converter',
            image: 'mass.png',
            controller: _massConverterController,
          ),
          ItemDashboard(
            title: 'Energy Converter',
            image: 'energy.png',
            controller: _energyConverterController,
          ),
        ],
      ),
    );
  }
}

class ItemsPlaceGridWeb extends StatefulWidget {
  final AboutMe aboutMe;
  const ItemsPlaceGridWeb({
    super.key,
    required this.aboutMe,
    required TemperatureConverterController temperatureController,
    required VolumeConverterController volumeController,
    required LengthConverterController lengthController,
    required MassConverterController massController,
    required EnergyConverterController energyController,
  });

  @override
  State<ItemsPlaceGridWeb> createState() => _ItemsPlaceGridWebState();
}

class _ItemsPlaceGridWebState extends State<ItemsPlaceGridWeb> {
  late TemperatureConverterController _temperatureConverterController;
  late VolumeConverterController _volumeConverterController;
  late LengthConverterController _lengthConverterController;
  late MassConverterController _massConverterController;
  late EnergyConverterController _energyConverterController;

  @override
  void initState() {
    super.initState();
    _temperatureConverterController = TemperatureConverterController();
    _volumeConverterController = VolumeConverterController();
    _lengthConverterController = LengthConverterController();
    _massConverterController = MassConverterController();
    _energyConverterController = EnergyConverterController();
  }

  int gridCount = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        color: Colors.white,
      ),
      child: GridView.count(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        crossAxisCount: gridCount,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          ItemDashboard(
            title: 'Temperature Converter',
            image: 'temperature.png',
            controller: _temperatureConverterController,
          ),
          ItemDashboard(
            title: 'Volume Converter',
            image: 'volume.png',
            controller: _volumeConverterController,
          ),
          ItemDashboard(
            title: 'Length Converter',
            image: 'length.png',
            controller: _lengthConverterController,
          ),
          ItemDashboard(
            title: 'Mass Converter',
            image: 'mass.png',
            controller: _massConverterController,
          ),
          ItemDashboard(
            title: 'Energy Converter',
            image: 'energy.png',
            controller: _energyConverterController,
          ),
        ],
      ),
    );
  }
}

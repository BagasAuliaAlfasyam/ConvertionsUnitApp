import 'package:physics_convertions_unit/models/length_models.dart';
import 'package:flutter/material.dart';

class LengthConverterController {
  ConverterModel model = ConverterModel();
  TextEditingController inputController = TextEditingController();

  void convert(BuildContext context) {
    double? inputValue = double.tryParse(inputController.text);

    if (inputValue == null) {
      model.result = 'Invalid input';
    } else {
      double result = convertLength(inputValue, model.fromUnit, model.toUnit);
      model.result = "$result";
    }
  }

  double convertLength(double value, LengthUnit fromUnit, LengthUnit toUnit) {
    switch (fromUnit) {
      case LengthUnit.millimeters:
        return _convertMillimeters(value, toUnit);
      case LengthUnit.centimeters:
        return _convertCentimeters(value, toUnit);
      case LengthUnit.decimeters:
        return _convertDecimeters(value, toUnit);
      case LengthUnit.decameters:
        return _convertDecameters(value, toUnit);
      case LengthUnit.hectometers:
        return _convertHectometers(value, toUnit);
      case LengthUnit.kilometers:
        return _convertKilometers(value, toUnit);
      case LengthUnit.metres:
        return _convertMetres(value, toUnit);
      case LengthUnit.inch:
        return _convertInch(value, toUnit);
      case LengthUnit.foot:
        return _convertFoot(value, toUnit);
      case LengthUnit.angstrom:
        return _convertAngstrom(value, toUnit);
      case LengthUnit.fermi:
        return _convertFermi(value, toUnit);
      case LengthUnit.lightYear:
        return _convertLightYear(value, toUnit);
      case LengthUnit.mile:
        return _convertMile(value, toUnit);
    }
  }

  double _convertMillimeters(double value, LengthUnit toUnit) {
    switch (toUnit) {
      case LengthUnit.millimeters:
        return value;
      case LengthUnit.centimeters:
        return value / 10;
      case LengthUnit.decimeters:
        return value / 100;
      case LengthUnit.decameters:
        return value / 10000;
      case LengthUnit.hectometers:
        return value / 100000;
      case LengthUnit.kilometers:
        return value / 1000000;
      case LengthUnit.metres:
        return value / 1000;
      case LengthUnit.inch:
        return value * 0.0393701;
      case LengthUnit.foot:
        return value * 0.00328084;
      case LengthUnit.angstrom:
        return value * 1e-10;
      case LengthUnit.fermi:
        return value * 1e-15;
      case LengthUnit.lightYear:
        return value * 1.057e-16;
      case LengthUnit.mile:
        return value * 6.2137e-7;
    }
  }

  double _convertCentimeters(double value, LengthUnit toUnit) {
    switch (toUnit) {
      case LengthUnit.millimeters:
        return value * 10;
      case LengthUnit.centimeters:
        return value;
      case LengthUnit.decimeters:
        return value / 10;
      case LengthUnit.decameters:
        return value / 1000;
      case LengthUnit.hectometers:
        return value / 10000;
      case LengthUnit.kilometers:
        return value / 100000;
      case LengthUnit.metres:
        return value / 100;
      case LengthUnit.inch:
        return value * 0.393701;
      case LengthUnit.foot:
        return value * 0.0328084;
      case LengthUnit.angstrom:
        return value * 1e-8;
      case LengthUnit.fermi:
        return value * 1e-13;
      case LengthUnit.lightYear:
        return value * 1.057e-14;
      case LengthUnit.mile:
        return value * 6.2137e-6;
    }
  }

  double _convertDecimeters(double value, LengthUnit toUnit) {
    switch (toUnit) {
      case LengthUnit.millimeters:
        return value * 100;
      case LengthUnit.centimeters:
        return value * 10;
      case LengthUnit.decimeters:
        return value;
      case LengthUnit.decameters:
        return value / 100;
      case LengthUnit.hectometers:
        return value / 1000;
      case LengthUnit.kilometers:
        return value / 10000;
      case LengthUnit.metres:
        return value / 10;
      case LengthUnit.inch:
        return value * 3.93701;
      case LengthUnit.foot:
        return value * 0.328084;
      case LengthUnit.angstrom:
        return value * 1e-9;
      case LengthUnit.fermi:
        return value * 1e-14;
      case LengthUnit.lightYear:
        return value * 1.057e-15;
      case LengthUnit.mile:
        return value * 6.2137e-5;
    }
  }

  double _convertDecameters(double value, LengthUnit toUnit) {
    switch (toUnit) {
      case LengthUnit.millimeters:
        return value * 10000;
      case LengthUnit.centimeters:
        return value * 1000;
      case LengthUnit.decimeters:
        return value * 100;
      case LengthUnit.decameters:
        return value;
      case LengthUnit.hectometers:
        return value / 10;
      case LengthUnit.kilometers:
        return value / 100;
      case LengthUnit.metres:
        return value * 10;
      case LengthUnit.inch:
        return value * 393.701;
      case LengthUnit.foot:
        return value * 32.8084;
      case LengthUnit.angstrom:
        return value * 1e-7;
      case LengthUnit.fermi:
        return value * 1e-12;
      case LengthUnit.lightYear:
        return value * 1.057e-13;
      case LengthUnit.mile:
        return value * 0.00621371;
    }
  }

  double _convertHectometers(double value, LengthUnit toUnit) {
    switch (toUnit) {
      case LengthUnit.millimeters:
        return value * 100000;
      case LengthUnit.centimeters:
        return value * 10000;
      case LengthUnit.decimeters:
        return value * 1000;
      case LengthUnit.decameters:
        return value * 10;
      case LengthUnit.hectometers:
        return value;
      case LengthUnit.kilometers:
        return value / 10;
      case LengthUnit.metres:
        return value * 100;
      case LengthUnit.inch:
        return value * 3937.01;
      case LengthUnit.foot:
        return value * 328.084;
      case LengthUnit.angstrom:
        return value * 1e-6;
      case LengthUnit.fermi:
        return value * 1e-11;
      case LengthUnit.lightYear:
        return value * 1.057e-12;
      case LengthUnit.mile:
        return value * 0.0621371;
    }
  }

  double _convertKilometers(double value, LengthUnit toUnit) {
    switch (toUnit) {
      case LengthUnit.millimeters:
        return value * 1e6;
      case LengthUnit.centimeters:
        return value * 1e5;
      case LengthUnit.decimeters:
        return value * 1e4;
      case LengthUnit.decameters:
        return value * 100;
      case LengthUnit.hectometers:
        return value * 10;
      case LengthUnit.kilometers:
        return value;
      case LengthUnit.metres:
        return value * 1e3;
      case LengthUnit.inch:
        return value * 39370.1;
      case LengthUnit.foot:
        return value * 3280.84;
      case LengthUnit.angstrom:
        return value * 1e-5;
      case LengthUnit.fermi:
        return value * 1e-10;
      case LengthUnit.lightYear:
        return value * 1.057e-11;
      case LengthUnit.mile:
        return value * 0.621371;
    }
  }

  double _convertMetres(double value, LengthUnit toUnit) {
    switch (toUnit) {
      case LengthUnit.millimeters:
        return value * 1000;
      case LengthUnit.centimeters:
        return value * 100;
      case LengthUnit.decimeters:
        return value * 10;
      case LengthUnit.decameters:
        return value / 10;
      case LengthUnit.hectometers:
        return value / 100;
      case LengthUnit.kilometers:
        return value / 1000;
      case LengthUnit.metres:
        return value;
      case LengthUnit.inch:
        return value * 39.3701;
      case LengthUnit.foot:
        return value * 3.28084;
      case LengthUnit.angstrom:
        return value * 1e-4;
      case LengthUnit.fermi:
        return value * 1e-9;
      case LengthUnit.lightYear:
        return value * 1.057e-10;
      case LengthUnit.mile:
        return value * 0.000621371;
    }
  }

  double _convertInch(double value, LengthUnit toUnit) {
    switch (toUnit) {
      case LengthUnit.millimeters:
        return value * 25.4;
      case LengthUnit.centimeters:
        return value * 2.54;
      case LengthUnit.decimeters:
        return value * 0.254;
      case LengthUnit.decameters:
        return value * 0.0254;
      case LengthUnit.hectometers:
        return value * 0.00254;
      case LengthUnit.kilometers:
        return value * 0.0000254;
      case LengthUnit.metres:
        return value * 0.0254;
      case LengthUnit.inch:
        return value;
      case LengthUnit.foot:
        return value * 0.0833333;
      case LengthUnit.angstrom:
        return value * 2.54e-8;
      case LengthUnit.fermi:
        return value * 2.54e-13;
      case LengthUnit.lightYear:
        return value * 2.6848e-14;
      case LengthUnit.mile:
        return value * 1.5783e-5;
    }
  }

  double _convertFoot(double value, LengthUnit toUnit) {
    switch (toUnit) {
      case LengthUnit.millimeters:
        return value * 304.8;
      case LengthUnit.centimeters:
        return value * 30.48;
      case LengthUnit.decimeters:
        return value * 3.048;
      case LengthUnit.decameters:
        return value * 0.3048;
      case LengthUnit.hectometers:
        return value * 0.03048;
      case LengthUnit.kilometers:
        return value * 0.0003048;
      case LengthUnit.metres:
        return value * 0.3048;
      case LengthUnit.inch:
        return value * 12;
      case LengthUnit.foot:
        return value;
      case LengthUnit.angstrom:
        return value * 3.048e-7;
      case LengthUnit.fermi:
        return value * 3.048e-12;
      case LengthUnit.lightYear:
        return value * 3.2217e-13;
      case LengthUnit.mile:
        return value * 1.8939e-4;
    }
  }

  double _convertAngstrom(double value, LengthUnit toUnit) {
    switch (toUnit) {
      case LengthUnit.millimeters:
        return value * 1e7;
      case LengthUnit.centimeters:
        return value * 1e8;
      case LengthUnit.decimeters:
        return value * 1e9;
      case LengthUnit.decameters:
        return value * 1e10;
      case LengthUnit.hectometers:
        return value * 1e11;
      case LengthUnit.kilometers:
        return value * 1e12;
      case LengthUnit.metres:
        return value * 1e10;
      case LengthUnit.inch:
        return value * 3.93701e9;
      case LengthUnit.foot:
        return value * 3.28084e8;
      case LengthUnit.angstrom:
        return value;
      case LengthUnit.fermi:
        return value * 1e5;
      case LengthUnit.lightYear:
        return value * 1.057e-18;
      case LengthUnit.mile:
        return value * 6.2137e12;
    }
  }

  double _convertFermi(double value, LengthUnit toUnit) {
    switch (toUnit) {
      case LengthUnit.millimeters:
        return value * 1e15;
      case LengthUnit.centimeters:
        return value * 1e14;
      case LengthUnit.decimeters:
        return value * 1e13;
      case LengthUnit.decameters:
        return value * 1e12;
      case LengthUnit.hectometers:
        return value * 1e11;
      case LengthUnit.kilometers:
        return value * 1e10;
      case LengthUnit.metres:
        return value * 1e12;
      case LengthUnit.inch:
        return value * 3.93701e11;
      case LengthUnit.foot:
        return value * 3.28084e10;
      case LengthUnit.angstrom:
        return value * 1e-5;
      case LengthUnit.fermi:
        return value;
      case LengthUnit.lightYear:
        return value * 1.057e-21;
      case LengthUnit.mile:
        return value * 6.2137e13;
    }
  }

  double _convertLightYear(double value, LengthUnit toUnit) {
    switch (toUnit) {
      case LengthUnit.millimeters:
        return value * 9.461e18;
      case LengthUnit.centimeters:
        return value * 9.461e17;
      case LengthUnit.decimeters:
        return value * 9.461e16;
      case LengthUnit.decameters:
        return value * 9.461e15;
      case LengthUnit.hectometers:
        return value * 9.461e14;
      case LengthUnit.kilometers:
        return value * 9.461e13;
      case LengthUnit.metres:
        return value * 9.461e15;
      case LengthUnit.inch:
        return value * 3.725e17;
      case LengthUnit.foot:
        return value * 3.104e16;
      case LengthUnit.angstrom:
        return value * 1.057e21;
      case LengthUnit.fermi:
        return value * 1.057e26;
      case LengthUnit.lightYear:
        return value;
      case LengthUnit.mile:
        return value * 5.879e12;
    }
  }

  double _convertMile(double value, LengthUnit toUnit) {
    switch (toUnit) {
      case LengthUnit.millimeters:
        return value * 1609344; // 1 mile = 1609344 millimeters
      case LengthUnit.centimeters:
        return value * 160934.4; // 1 mile = 160934.4 centimeters
      case LengthUnit.decimeters:
        return value * 16093.44; // 1 mile = 16093.44 decimeters
      case LengthUnit.decameters:
        return value * 1609.344; // 1 mile = 1609.344 decameters
      case LengthUnit.hectometers:
        return value * 160.9344; // 1 mile = 160.9344 hectometers
      case LengthUnit.kilometers:
        return value * 1.609344; // 1 mile = 1.609344 kilometers
      case LengthUnit.metres:
        return value * 1609.344; // 1 mile = 1609.344 meters
      case LengthUnit.inch:
        return value * 63360; // 1 mile = 63360 inches
      case LengthUnit.foot:
        return value * 5280; // 1 mile = 5280 feet
      case LengthUnit.angstrom:
        return value * 1.609344e18; // 1 mile = 1.609344e18 angstroms
      case LengthUnit.fermi:
        return value * 1.609344e15; // 1 mile = 1.609344e15 fermis
      case LengthUnit.lightYear:
        return value / 5.879e12; // 1 mile ≈ 5.879e-13 light years
      case LengthUnit.mile:
        return value; // 1 mile = 1 mile
    }
  }
}

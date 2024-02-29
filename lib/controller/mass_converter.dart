import 'package:physics_convertions_unit/models/mass_models.dart';
import 'package:flutter/material.dart';

class MassConverterController {
  ConverterModel model = ConverterModel();
  TextEditingController inputController = TextEditingController();

  void convert(BuildContext context) {
    double? inputValue = double.tryParse(inputController.text);

    if (inputValue == null) {
      model.result = 'Invalid input';
    } else {
      double result = convertMass(inputValue, model.fromUnit, model.toUnit);
      model.result = "$result";
    }
  }

  double convertMass(double value, MassUnit fromUnit, MassUnit toUnit) {
    switch (fromUnit) {
      case MassUnit.milligram:
        return _convertMilligram(value, toUnit);
      case MassUnit.centigram:
        return _convertCentigram(value, toUnit);
      case MassUnit.decigram:
        return _convertDecigram(value, toUnit);
      case MassUnit.gram:
        return _convertGram(value, toUnit);
      case MassUnit.decagram:
        return _convertDecagram(value, toUnit);
      case MassUnit.hectogram:
        return _convertHectogram(value, toUnit);
      case MassUnit.kilogram:
        return _convertKilogram(value, toUnit);
      case MassUnit.stone:
        return _convertStone(value, toUnit);
      case MassUnit.pound:
        return _convertPound(value, toUnit);
      case MassUnit.ounce:
        return _convertOunce(value, toUnit);
    }
  }

  double _convertMilligram(double value, MassUnit toUnit) {
    switch (toUnit) {
      case MassUnit.milligram:
        return value;
      case MassUnit.centigram:
        return value * 0.1;
      case MassUnit.decigram:
        return value * 0.01;
      case MassUnit.gram:
        return value * 0.001;
      case MassUnit.decagram:
        return value * 0.0001;
      case MassUnit.hectogram:
        return value * 0.00001;
      case MassUnit.kilogram:
        return value * 0.000001;
      case MassUnit.stone:
        return value * 1.5747e-7;
      case MassUnit.pound:
        return value * 2.20462e-6;
      case MassUnit.ounce:
        return value * 3.5274e-5;
    }
  }

  double _convertCentigram(double value, MassUnit toUnit) {
    switch (toUnit) {
      case MassUnit.milligram:
        return value * 10;
      case MassUnit.centigram:
        return value;
      case MassUnit.decigram:
        return value * 0.1;
      case MassUnit.gram:
        return value * 0.01;
      case MassUnit.decagram:
        return value * 0.001;
      case MassUnit.hectogram:
        return value * 0.0001;
      case MassUnit.kilogram:
        return value * 0.00001;
      case MassUnit.stone:
        return value * 1.5747e-6;
      case MassUnit.pound:
        return value * 2.20462e-5;
      case MassUnit.ounce:
        return value * 0.00035274;
    }
  }

  double _convertDecigram(double value, MassUnit toUnit) {
    switch (toUnit) {
      case MassUnit.milligram:
        return value * 100;
      case MassUnit.centigram:
        return value * 10;
      case MassUnit.decigram:
        return value;
      case MassUnit.gram:
        return value * 0.1;
      case MassUnit.decagram:
        return value * 0.01;
      case MassUnit.hectogram:
        return value * 0.001;
      case MassUnit.kilogram:
        return value * 0.0001;
      case MassUnit.stone:
        return value * 1.5747e-5;
      case MassUnit.pound:
        return value * 2.20462e-4;
      case MassUnit.ounce:
        return value * 0.0035274;
    }
  }

  double _convertGram(double value, MassUnit toUnit) {
    switch (toUnit) {
      case MassUnit.milligram:
        return value * 1000;
      case MassUnit.centigram:
        return value * 100;
      case MassUnit.decigram:
        return value * 10;
      case MassUnit.gram:
        return value;
      case MassUnit.decagram:
        return value * 0.1;
      case MassUnit.hectogram:
        return value * 0.01;
      case MassUnit.kilogram:
        return value * 0.001;
      case MassUnit.stone:
        return value * 1.5747e-4;
      case MassUnit.pound:
        return value * 2.20462e-3;
      case MassUnit.ounce:
        return value * 0.035274;
    }
  }

  double _convertDecagram(double value, MassUnit toUnit) {
    switch (toUnit) {
      case MassUnit.milligram:
        return value * 10000;
      case MassUnit.centigram:
        return value * 1000;
      case MassUnit.decigram:
        return value * 100;
      case MassUnit.gram:
        return value * 10;
      case MassUnit.decagram:
        return value;
      case MassUnit.hectogram:
        return value * 0.1;
      case MassUnit.kilogram:
        return value * 0.01;
      case MassUnit.stone:
        return value * 1.5747e-3;
      case MassUnit.pound:
        return value * 0.0220462;
      case MassUnit.ounce:
        return value * 0.35274;
    }
  }

  double _convertHectogram(double value, MassUnit toUnit) {
    switch (toUnit) {
      case MassUnit.milligram:
        return value * 100000;
      case MassUnit.centigram:
        return value * 10000;
      case MassUnit.decigram:
        return value * 1000;
      case MassUnit.gram:
        return value * 100;
      case MassUnit.decagram:
        return value * 10;
      case MassUnit.hectogram:
        return value;
      case MassUnit.kilogram:
        return value * 0.1;
      case MassUnit.stone:
        return value * 0.015747;
      case MassUnit.pound:
        return value * 0.220462;
      case MassUnit.ounce:
        return value * 3.5274;
    }
  }

  double _convertKilogram(double value, MassUnit toUnit) {
    switch (toUnit) {
      case MassUnit.milligram:
        return value * 1e+6;
      case MassUnit.centigram:
        return value * 1e+5;
      case MassUnit.decigram:
        return value * 1e+4;
      case MassUnit.gram:
        return value * 1000;
      case MassUnit.decagram:
        return value * 100;
      case MassUnit.hectogram:
        return value * 10;
      case MassUnit.kilogram:
        return value;
      case MassUnit.stone:
        return value * 0.15747;
      case MassUnit.pound:
        return value * 2.20462;
      case MassUnit.ounce:
        return value * 35.274;
    }
  }

  double _convertStone(double value, MassUnit toUnit) {
    switch (toUnit) {
      case MassUnit.milligram:
        return value * 6.35e+6;
      case MassUnit.centigram:
        return value * 6.35e+5;
      case MassUnit.decigram:
        return value * 6.35e+4;
      case MassUnit.gram:
        return value * 6350.29;
      case MassUnit.decagram:
        return value * 635.029;
      case MassUnit.hectogram:
        return value * 63.5029;
      case MassUnit.kilogram:
        return value * 6.35029;
      case MassUnit.stone:
        return value;
      case MassUnit.pound:
        return value * 14;
      case MassUnit.ounce:
        return value * 224;
    }
  }

  double _convertPound(double value, MassUnit toUnit) {
    switch (toUnit) {
      case MassUnit.milligram:
        return value * 453592;
      case MassUnit.centigram:
        return value * 45359.2;
      case MassUnit.decigram:
        return value * 4535.92;
      case MassUnit.gram:
        return value * 453.592;
      case MassUnit.decagram:
        return value * 45.3592;
      case MassUnit.hectogram:
        return value * 4.53592;
      case MassUnit.kilogram:
        return value * 0.453592;
      case MassUnit.stone:
        return value * 0.0714286;
      case MassUnit.pound:
        return value;
      case MassUnit.ounce:
        return value * 16;
    }
  }

  double _convertOunce(double value, MassUnit toUnit) {
    switch (toUnit) {
      case MassUnit.milligram:
        return value * 28350.5;
      case MassUnit.centigram:
        return value * 2835.05;
      case MassUnit.decigram:
        return value * 283.505;
      case MassUnit.gram:
        return value * 28.3495;
      case MassUnit.decagram:
        return value * 2.83495;
      case MassUnit.hectogram:
        return value * 0.283495;
      case MassUnit.kilogram:
        return value * 0.0283495;
      case MassUnit.stone:
        return value * 0.00446429;
      case MassUnit.pound:
        return value * 0.0625;
      case MassUnit.ounce:
        return value;
    }
  }
}

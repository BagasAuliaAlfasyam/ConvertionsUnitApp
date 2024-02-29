import 'package:physics_convertions_unit/models/energy_models.dart';
import 'package:flutter/material.dart';

class EnergyConverterController {
  ConverterModel model = ConverterModel();
  TextEditingController inputController = TextEditingController();

  void convert(BuildContext context) {
    double? inputValue = double.tryParse(inputController.text);

    if (inputValue == null) {
      model.result = 'Invalid input';
    } else {
      double result = convertEnergy(inputValue, model.fromUnit, model.toUnit);
      model.result = "$result";
    }
  }

  double convertEnergy(double value, EnergyUnit fromUnit, EnergyUnit toUnit) {
    switch (fromUnit) {
      case EnergyUnit.britishThermalUnit:
        return _convertBritishThermalUnit(value, toUnit);
      case EnergyUnit.erg:
        return _convertErg(value, toUnit);
      case EnergyUnit.footPound:
        return _convertFootPound(value, toUnit);
      case EnergyUnit.calorie:
        return _convertCalorie(value, toUnit);
      case EnergyUnit.joule:
        return _convertJoule(value, toUnit);
      case EnergyUnit.kilowattHour:
        return _convertKilowattHour(value, toUnit);
      case EnergyUnit.electronVolt:
        return _convertElectronVolt(value, toUnit);
      case EnergyUnit.literAtmosphere:
        return _convertLiterAtmosphere(value, toUnit);
    }
  }

  double _convertBritishThermalUnit(double value, EnergyUnit toUnit) {
    switch (toUnit) {
      case EnergyUnit.britishThermalUnit:
        return value;
      case EnergyUnit.erg:
        return value * 1.055e+10;
      case EnergyUnit.footPound:
        return value * 778.169;
      case EnergyUnit.calorie:
        return value * 251.996;
      case EnergyUnit.joule:
        return value * 1055.06;
      case EnergyUnit.kilowattHour:
        return value * 0.000293071;
      case EnergyUnit.electronVolt:
        return value * 2.931e+22;
      case EnergyUnit.literAtmosphere:
        return value * 0.00947817;
    }
  }

  double _convertErg(double value, EnergyUnit toUnit) {
    switch (toUnit) {
      case EnergyUnit.britishThermalUnit:
        return value * 9.47817e-14;
      case EnergyUnit.erg:
        return value;
      case EnergyUnit.footPound:
        return value * 7.37562e-12;
      case EnergyUnit.calorie:
        return value * 2.38846e-11;
      case EnergyUnit.joule:
        return value * 1e-7;
      case EnergyUnit.kilowattHour:
        return value * 2.77778e-14;
      case EnergyUnit.electronVolt:
        return value * 6.242e+11;
      case EnergyUnit.literAtmosphere:
        return value * 2.38846e-15;
    }
  }

  double _convertFootPound(double value, EnergyUnit toUnit) {
    switch (toUnit) {
      case EnergyUnit.britishThermalUnit:
        return value * 0.00128507;
      case EnergyUnit.erg:
        return value * 1.35582e+7;
      case EnergyUnit.footPound:
        return value;
      case EnergyUnit.calorie:
        return value * 0.324048;
      case EnergyUnit.joule:
        return value * 1.35582;
      case EnergyUnit.kilowattHour:
        return value * 3.72506e-7;
      case EnergyUnit.electronVolt:
        return value * 9.47817e+18;
      case EnergyUnit.literAtmosphere:
        return value * 0.000309425;
    }
  }

  double _convertCalorie(double value, EnergyUnit toUnit) {
    switch (toUnit) {
      case EnergyUnit.britishThermalUnit:
        return value * 0.00396632;
      case EnergyUnit.erg:
        return value * 4.184e+7;
      case EnergyUnit.footPound:
        return value * 3.08803;
      case EnergyUnit.calorie:
        return value;
      case EnergyUnit.joule:
        return value * 4.184;
      case EnergyUnit.kilowattHour:
        return value * 1.16222e-6;
      case EnergyUnit.electronVolt:
        return value * 2.6132e+19;
      case EnergyUnit.literAtmosphere:
        return value * 8.42752e-5;
    }
  }

  double _convertJoule(double value, EnergyUnit toUnit) {
    switch (toUnit) {
      case EnergyUnit.britishThermalUnit:
        return value * 9.47817e-4;
      case EnergyUnit.erg:
        return value * 1e+7;
      case EnergyUnit.footPound:
        return value * 0.737562;
      case EnergyUnit.calorie:
        return value * 0.239006;
      case EnergyUnit.joule:
        return value;
      case EnergyUnit.kilowattHour:
        return value * 2.77778e-7;
      case EnergyUnit.electronVolt:
        return value * 6.242e+18;
      case EnergyUnit.literAtmosphere:
        return value * 9.47817e-6;
    }
  }

  double _convertKilowattHour(double value, EnergyUnit toUnit) {
    switch (toUnit) {
      case EnergyUnit.britishThermalUnit:
        return value * 3412.14;
      case EnergyUnit.erg:
        return value * 3.6e+13;
      case EnergyUnit.footPound:
        return value * 2655.22;
      case EnergyUnit.calorie:
        return value * 860.421;
      case EnergyUnit.joule:
        return value * 3.6e+6;
      case EnergyUnit.kilowattHour:
        return value;
      case EnergyUnit.electronVolt:
        return value * 8.9875e+16;
      case EnergyUnit.literAtmosphere:
        return value * 2.39;
    }
  }

  double _convertElectronVolt(double value, EnergyUnit toUnit) {
    switch (toUnit) {
      case EnergyUnit.britishThermalUnit:
        return value * 3.82929e-20;
      case EnergyUnit.erg:
        return value * 1.60218e-12;
      case EnergyUnit.footPound:
        return value * 1.1817e-19;
      case EnergyUnit.calorie:
        return value * 3.82514e-17;
      case EnergyUnit.joule:
        return value * 1.60218e-19;
      case EnergyUnit.kilowattHour:
        return value * 1.11265e-23;
      case EnergyUnit.electronVolt:
        return value;
      case EnergyUnit.literAtmosphere:
        return value * 3.82514e-21;
    }
  }

  double _convertLiterAtmosphere(double value, EnergyUnit toUnit) {
    switch (toUnit) {
      case EnergyUnit.britishThermalUnit:
        return value * 105.468;
      case EnergyUnit.erg:
        return value * 1.055e+10;
      case EnergyUnit.footPound:
        return value * 778.169;
      case EnergyUnit.calorie:
        return value * 251.996;
      case EnergyUnit.joule:
        return value * 1055.06;
      case EnergyUnit.kilowattHour:
        return value * 0.000293071;
      case EnergyUnit.electronVolt:
        return value * 2.931e+22;
      case EnergyUnit.literAtmosphere:
        return value;
    }
  }
}

import 'package:physics_convertions_unit/models/temperature_models.dart';
import 'package:flutter/material.dart';

class TemperatureConverterController {
  ConverterModel model = ConverterModel();
  TextEditingController inputController = TextEditingController();

  void convert(BuildContext context) {
    double? inputValue = double.tryParse(inputController.text);

    if (inputValue == null) {
      model.result = 'Invalid input';
    } else {
      double result =
          convertTemperature(inputValue, model.fromUnit, model.toUnit);
      model.result = "$result";
    }
  }

  double _convertReamur(double value, TemperatureUnit toUnit) {
    switch (toUnit) {
      case TemperatureUnit.celsius:
        return value * 5 / 4;
      case TemperatureUnit.fahrenheit:
        return (value * 9 / 4) + 32;
      case TemperatureUnit.kelvin:
        return value * 5 / 4 + 273.15;
      case TemperatureUnit.reamur:
        return value;
    }
  }

  double _convertCelsius(double value, TemperatureUnit toUnit) {
    switch (toUnit) {
      case TemperatureUnit.celsius:
        return value;
      case TemperatureUnit.fahrenheit:
        return (value * 9 / 5) + 32;
      case TemperatureUnit.kelvin:
        return value + 273.15;
      case TemperatureUnit.reamur:
        return value * 4 / 5;
    }
  }

  double _convertFahrenheit(double value, TemperatureUnit toUnit) {
    switch (toUnit) {
      case TemperatureUnit.celsius:
        return (value - 32) * 5 / 9;
      case TemperatureUnit.fahrenheit:
        return value;
      case TemperatureUnit.kelvin:
        return (value + 459.67) * 5 / 9;
      case TemperatureUnit.reamur:
        return (value - 32) * 4 / 9;
    }
  }

  double _convertKelvin(double value, TemperatureUnit toUnit) {
    switch (toUnit) {
      case TemperatureUnit.celsius:
        return value - 273.15;
      case TemperatureUnit.fahrenheit:
        return (value * 9 / 5) - 459.67;
      case TemperatureUnit.kelvin:
        return value;
      case TemperatureUnit.reamur:
        return (value - 273.15) * 4 / 5;
    }
  }

  double convertTemperature(
      double value, TemperatureUnit fromUnit, TemperatureUnit toUnit) {
    switch (fromUnit) {
      case TemperatureUnit.reamur:
        return _convertReamur(value, toUnit);
      case TemperatureUnit.celsius:
        return _convertCelsius(value, toUnit);
      case TemperatureUnit.fahrenheit:
        return _convertFahrenheit(value, toUnit);
      case TemperatureUnit.kelvin:
        return _convertKelvin(value, toUnit);
    }
  }
}

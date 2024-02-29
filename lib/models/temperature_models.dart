class ConverterModel {
  double? inputValue;
  String? result;
  TemperatureUnit fromUnit;
  TemperatureUnit toUnit;

  ConverterModel({
    this.inputValue = 0.0,
    this.result = '',
    this.fromUnit = TemperatureUnit.celsius,
    this.toUnit = TemperatureUnit.fahrenheit,
  });

  TemperatureUnit get selectedUnit => fromUnit;
}

enum TemperatureUnit {
  celsius,
  fahrenheit,
  kelvin,
  reamur,
}

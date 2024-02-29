class ConverterModel {
  double? inputValue;
  String? result;
  EnergyUnit fromUnit;
  EnergyUnit toUnit;

  ConverterModel({
    this.inputValue = 0.0,
    this.result = '',
    this.fromUnit = EnergyUnit.joule,
    this.toUnit = EnergyUnit.joule,
  });

  EnergyUnit get selectedUnit => fromUnit;
}

enum EnergyUnit {
  britishThermalUnit,
  erg,
  footPound,
  calorie,
  joule,
  kilowattHour,
  electronVolt,
  literAtmosphere,
}

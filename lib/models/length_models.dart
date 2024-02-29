class ConverterModel {
  double? inputValue;
  String? result;
  LengthUnit fromUnit;
  LengthUnit toUnit;

  ConverterModel({
    this.inputValue = 0.0,
    this.result = '',
    this.fromUnit = LengthUnit.metres,
    this.toUnit = LengthUnit.metres,
  });

  LengthUnit get selectedUnit => fromUnit;
}

enum LengthUnit {
  millimeters,
  centimeters,
  decimeters,
  decameters,
  hectometers,
  kilometers,
  metres,
  inch,
  foot,
  angstrom,
  fermi,
  lightYear,
  mile,
}

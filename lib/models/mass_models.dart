class ConverterModel {
  double? inputValue;
  String? result;
  MassUnit fromUnit;
  MassUnit toUnit;

  ConverterModel({
    this.inputValue = 0.0,
    this.result = '',
    this.fromUnit = MassUnit.gram,
    this.toUnit = MassUnit.gram,
  });

  MassUnit get selectedUnit => fromUnit;
}

enum MassUnit {
  milligram,
  centigram,
  decigram,
  gram,
  decagram,
  hectogram,
  kilogram,
  stone,
  pound,
  ounce,
}

class VolumeModel {
  double? inputValue;
  String? result;
  VolumeUnit fromUnit;
  VolumeUnit toUnit;

  VolumeModel({
    this.inputValue,
    this.result,
    this.fromUnit = VolumeUnit.milliliter,
    this.toUnit = VolumeUnit.liter,
  });
}

enum VolumeUnit {
  milliliter,
  centiliter,
  deciliter,
  decaliter,
  liter,
  hectoliter,
  kiloliter,
  cubicInch,
  gallon,
  cubicFoot,
}

import 'package:physics_convertions_unit/models/volume_models.dart';
import 'package:flutter/material.dart';

class VolumeConverterController {
  VolumeModel model = VolumeModel();
  TextEditingController inputController = TextEditingController();

  void convert() {
    double? inputValue = double.tryParse(inputController.text);

    if (inputValue == null) {
      model.result = 'Invalid input';
      return;
    }

    double result;

    switch (model.fromUnit) {
      case VolumeUnit.milliliter:
        result = _convertMilliliter(inputValue, model.toUnit);
        break;
      case VolumeUnit.centiliter:
        result = _convertCentiliter(inputValue, model.toUnit);
        break;
      case VolumeUnit.deciliter:
        result = _convertDeciliter(inputValue, model.toUnit);
        break;
      case VolumeUnit.decaliter:
        result = _convertDecaliter(inputValue, model.toUnit);
        break;
      case VolumeUnit.liter:
        result = _convertLiter(inputValue, model.toUnit);
        break;
      case VolumeUnit.hectoliter:
        result = _convertHectoliter(inputValue, model.toUnit);
        break;
      case VolumeUnit.kiloliter:
        result = _convertKiloliter(inputValue, model.toUnit);
        break;
      case VolumeUnit.cubicInch:
        result = _convertCubicInch(inputValue, model.toUnit);
        break;
      case VolumeUnit.gallon:
        result = _convertGallon(inputValue, model.toUnit);
        break;
      case VolumeUnit.cubicFoot:
        result = _convertCubicFoot(inputValue, model.toUnit);
        break;
    }

    model.result = result.toString();
  }

  double _convertCubicInch(double value, VolumeUnit toUnit) {
    switch (toUnit) {
      case VolumeUnit.milliliter:
        return value * 16.3871;
      case VolumeUnit.centiliter:
        return value * 1.63871e+2;
      case VolumeUnit.deciliter:
        return value * 1.63871e+1;
      case VolumeUnit.decaliter:
        return value * 1.63871e+0;
      case VolumeUnit.hectoliter:
        return value * 1.63871e-1;
      case VolumeUnit.kiloliter:
        return value * 1.63871e-2;
      case VolumeUnit.liter:
        return value * 1.63871e+1;
      case VolumeUnit.cubicInch:
        return value;
      case VolumeUnit.gallon:
        return value * 0.004329;
      case VolumeUnit.cubicFoot:
        return value * 0.000578704;
    }
  }

  double _convertGallon(double value, VolumeUnit toUnit) {
    switch (toUnit) {
      case VolumeUnit.milliliter:
        return value * 3.78541e+3;
      case VolumeUnit.centiliter:
        return value * 3.78541e+4;
      case VolumeUnit.deciliter:
        return value * 3.78541e+3;
      case VolumeUnit.decaliter:
        return value * 3.78541e+2;
      case VolumeUnit.hectoliter:
        return value * 3.78541e+1;
      case VolumeUnit.kiloliter:
        return value * 3.78541e+0;
      case VolumeUnit.liter:
        return value * 3.78541e+3;
      case VolumeUnit.cubicInch:
        return value * 231;
      case VolumeUnit.gallon:
        return value;
      case VolumeUnit.cubicFoot:
        return value * 0.133681;
    }
  }

  double _convertCubicFoot(double value, VolumeUnit toUnit) {
    switch (toUnit) {
      case VolumeUnit.milliliter:
        return value * 2.83168e+4;
      case VolumeUnit.centiliter:
        return value * 2.83168e+5;
      case VolumeUnit.deciliter:
        return value * 2.83168e+4;
      case VolumeUnit.decaliter:
        return value * 2.83168e+3;
      case VolumeUnit.hectoliter:
        return value * 2.83168e+2;
      case VolumeUnit.kiloliter:
        return value * 2.83168e+1;
      case VolumeUnit.liter:
        return value * 2.83168e+4;
      case VolumeUnit.cubicInch:
        return value * 1728;
      case VolumeUnit.gallon:
        return value * 7.48052;
      case VolumeUnit.cubicFoot:
        return value;
    }
  }

  double _convertMilliliter(double value, VolumeUnit toUnit) {
    switch (toUnit) {
      case VolumeUnit.milliliter:
        return value;
      case VolumeUnit.centiliter:
        return value * 0.1;
      case VolumeUnit.deciliter:
        return value * 0.01;
      case VolumeUnit.decaliter:
        return value * 1e-4;
      case VolumeUnit.hectoliter:
        return value * 1e-5;
      case VolumeUnit.kiloliter:
        return value * 1e-6;
      case VolumeUnit.liter:
        return value * 0.001;
      case VolumeUnit.cubicInch:
        return value * 0.0610237;
      case VolumeUnit.gallon:
        return value * 0.000264172;
      case VolumeUnit.cubicFoot:
        return value * 3.53147e-5;
    }
  }

  double _convertCentiliter(double value, VolumeUnit toUnit) {
    switch (toUnit) {
      case VolumeUnit.milliliter:
        return value * 10.0;
      case VolumeUnit.centiliter:
        return value;
      case VolumeUnit.deciliter:
        return value * 0.1;
      case VolumeUnit.decaliter:
        return value * 1e-3;
      case VolumeUnit.hectoliter:
        return value * 1e-4;
      case VolumeUnit.kiloliter:
        return value * 1e-5;
      case VolumeUnit.liter:
        return value * 0.01;
      case VolumeUnit.cubicInch:
        return value * 0.610237;
      case VolumeUnit.gallon:
        return value * 0.00264172;
      case VolumeUnit.cubicFoot:
        return value * 3.53147e-4;
    }
  }

  double _convertDeciliter(double value, VolumeUnit toUnit) {
    switch (toUnit) {
      case VolumeUnit.milliliter:
        return value * 100.0;
      case VolumeUnit.centiliter:
        return value * 10.0;
      case VolumeUnit.deciliter:
        return value;
      case VolumeUnit.decaliter:
        return value * 0.1;
      case VolumeUnit.hectoliter:
        return value * 0.01;
      case VolumeUnit.kiloliter:
        return value * 0.001;
      case VolumeUnit.liter:
        return value * 0.1;
      case VolumeUnit.cubicInch:
        return value * 6.10237;
      case VolumeUnit.gallon:
        return value * 0.0264172;
      case VolumeUnit.cubicFoot:
        return value * 0.00353147;
    }
  }

  double _convertDecaliter(double value, VolumeUnit toUnit) {
    switch (toUnit) {
      case VolumeUnit.milliliter:
        return value * 1000.0;
      case VolumeUnit.centiliter:
        return value * 100.0;
      case VolumeUnit.deciliter:
        return value * 10.0;
      case VolumeUnit.decaliter:
        return value;
      case VolumeUnit.hectoliter:
        return value * 0.1;
      case VolumeUnit.kiloliter:
        return value * 0.01;
      case VolumeUnit.liter:
        return value * 10.0;
      case VolumeUnit.cubicInch:
        return value * 610.237;
      case VolumeUnit.gallon:
        return value * 2.64172;
      case VolumeUnit.cubicFoot:
        return value * 0.353147;
    }
  }

  double _convertHectoliter(double value, VolumeUnit toUnit) {
    switch (toUnit) {
      case VolumeUnit.milliliter:
        return value * 1e+6;
      case VolumeUnit.centiliter:
        return value * 1e+5;
      case VolumeUnit.deciliter:
        return value * 1e+4;
      case VolumeUnit.decaliter:
        return value * 1e+3;
      case VolumeUnit.hectoliter:
        return value;
      case VolumeUnit.kiloliter:
        return value * 0.1;
      case VolumeUnit.liter:
        return value * 100.0;
      case VolumeUnit.cubicInch:
        return value * 61023.7;
      case VolumeUnit.gallon:
        return value * 264.172;
      case VolumeUnit.cubicFoot:
        return value * 35.3147;
    }
  }

  double _convertKiloliter(double value, VolumeUnit toUnit) {
    switch (toUnit) {
      case VolumeUnit.milliliter:
        return value * 1e+9;
      case VolumeUnit.centiliter:
        return value * 1e+8;
      case VolumeUnit.deciliter:
        return value * 1e+7;
      case VolumeUnit.decaliter:
        return value * 1e+6;
      case VolumeUnit.hectoliter:
        return value * 1e+4;
      case VolumeUnit.kiloliter:
        return value;
      case VolumeUnit.liter:
        return value * 1e+6;
      case VolumeUnit.cubicInch:
        return value * 610237;
      case VolumeUnit.gallon:
        return value * 2641.72;
      case VolumeUnit.cubicFoot:
        return value * 353.147;
    }
  }

  double _convertLiter(double value, VolumeUnit toUnit) {
    switch (toUnit) {
      case VolumeUnit.milliliter:
        return value * 1000.0;
      case VolumeUnit.centiliter:
        return value * 100.0;
      case VolumeUnit.deciliter:
        return value * 10.0;
      case VolumeUnit.decaliter:
        return value * 0.1;
      case VolumeUnit.hectoliter:
        return value * 0.01;
      case VolumeUnit.kiloliter:
        return value * 0.001;
      case VolumeUnit.liter:
        return value;
      case VolumeUnit.cubicInch:
        return value * 61.0237;
      case VolumeUnit.gallon:
        return value * 0.264172;
      case VolumeUnit.cubicFoot:
        return value * 0.0353147;
    }
  }
}

import 'package:physics_convertions_unit/controller/volume_converter.dart';
import 'package:physics_convertions_unit/models/volume_models.dart';
import 'package:flutter/material.dart';

class VolumeConverterBottomSheet extends StatelessWidget {
  final VolumeConverterController controller;

  const VolumeConverterBottomSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const VolumeConverterTitle(),
            VolumeInputField(controller: controller),
            const SizedBox(height: 20),
            VolumeDropdowns(controller: controller, setState: setState),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  controller.convert();
                });
              },
              child: const Text('Convert'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: VolumeResult(controller: controller),
            ),
          ],
        );
      },
    );
  }
}

class VolumeConverterTitle extends StatelessWidget {
  const VolumeConverterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Volume Converter',
      style: TextStyle(color: Colors.black, fontSize: 18),
    );
  }
}

class VolumeInputField extends StatelessWidget {
  final VolumeConverterController controller;

  const VolumeInputField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: TextField(
        controller: controller.inputController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(labelText: 'Enter value'),
      ),
    );
  }
}

class VolumeDropdowns extends StatelessWidget {
  final VolumeConverterController controller;
  final StateSetter setState;

  const VolumeDropdowns(
      {super.key, required this.controller, required this.setState});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        VolumeDropdown(
          value: controller.model.fromUnit,
          onChanged: (VolumeUnit? newValue) {
            setState(() {
              controller.model.fromUnit = newValue!;
            });
          },
        ),
        VolumeDropdown(
          value: controller.model.toUnit,
          onChanged: (VolumeUnit? newValue) {
            setState(() {
              controller.model.toUnit = newValue!;
            });
          },
        ),
      ],
    );
  }
}

class VolumeDropdown extends StatelessWidget {
  final VolumeUnit? value;
  final ValueChanged<VolumeUnit?>? onChanged;
  const VolumeDropdown(
      {super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<VolumeUnit>(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      value: value,
      onChanged: onChanged,
      items: VolumeUnit.values.map((VolumeUnit unit) {
        return DropdownMenuItem<VolumeUnit>(
          value: unit,
          child: Text(unit.toString().split('.').last),
        );
      }).toList(),
    );
  }
}

class VolumeResult extends StatelessWidget {
  final VolumeConverterController controller;

  const VolumeResult({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Text('Result: ${controller.model.result}');
  }
}

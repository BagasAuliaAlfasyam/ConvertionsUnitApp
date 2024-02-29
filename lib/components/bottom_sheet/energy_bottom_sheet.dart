import 'package:physics_convertions_unit/controller/energy_converter.dart';
import 'package:physics_convertions_unit/models/energy_models.dart';
import 'package:flutter/material.dart';

class EnergyConverterBottomSheet extends StatefulWidget {
  final EnergyConverterController controller;

  const EnergyConverterBottomSheet({
    super.key,
    required this.controller,
  });

  @override
  State<EnergyConverterBottomSheet> createState() =>
      _EnergyConverterBottomSheetState();
}

class _EnergyConverterBottomSheetState
    extends State<EnergyConverterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const EnergyConverterTitle(),
            EnergyInputField(
              controller: widget.controller,
            ),
            const SizedBox(height: 20),
            EnergyDropdowns(
              controller: widget.controller,
              setState: setState,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.controller.convert(context);
                });
              },
              child: const Text('Convert'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: EnergyResult(controller: widget.controller),
            ),
          ],
        );
      },
    );
  }
}

class EnergyConverterTitle extends StatelessWidget {
  const EnergyConverterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Energy Converter',
      style: TextStyle(color: Colors.black, fontSize: 18),
    );
  }
}

class EnergyInputField extends StatelessWidget {
  final EnergyConverterController controller;

  const EnergyInputField({super.key, required this.controller});

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

class EnergyDropdowns extends StatelessWidget {
  final EnergyConverterController controller;
  final StateSetter setState;

  const EnergyDropdowns(
      {super.key, required this.controller, required this.setState});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        EnergyDropdown(
          value: controller.model.fromUnit,
          onChanged: (EnergyUnit? newValue) {
            setState(() {
              controller.model.fromUnit = newValue!;
            });
          },
        ),
        EnergyDropdown(
          value: controller.model.toUnit,
          onChanged: (EnergyUnit? newValue) {
            setState(() {
              controller.model.toUnit = newValue!;
            });
          },
        ),
      ],
    );
  }
}

class EnergyDropdown extends StatelessWidget {
  final EnergyUnit? value;
  final ValueChanged<EnergyUnit?>? onChanged;

  const EnergyDropdown(
      {super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<EnergyUnit>(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      value: value,
      onChanged: onChanged,
      items: EnergyUnit.values.map((EnergyUnit unit) {
        return DropdownMenuItem<EnergyUnit>(
          value: unit,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(unit.toString().split('.').last),
          ),
        );
      }).toList(),
    );
  }
}

class EnergyResult extends StatelessWidget {
  final EnergyConverterController controller;

  const EnergyResult({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Text('Result: ${controller.model.result}');
  }
}

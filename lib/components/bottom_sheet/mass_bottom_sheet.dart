import 'package:physics_convertions_unit/controller/mass_converter.dart';
import 'package:physics_convertions_unit/models/mass_models.dart';
import 'package:flutter/material.dart';

class MassConverterBottomSheet extends StatefulWidget {
  final MassConverterController controller;

  const MassConverterBottomSheet({
    super.key,
    required this.controller,
  });

  @override
  State<MassConverterBottomSheet> createState() =>
      _MassConverterBottomSheetState();
}

class _MassConverterBottomSheetState extends State<MassConverterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const MassConverterTitle(),
            MassInputField(
              controller: widget.controller,
            ),
            const SizedBox(height: 20),
            MassDropdowns(
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
              child: MassResult(controller: widget.controller),
            ),
          ],
        );
      },
    );
  }
}

class MassConverterTitle extends StatelessWidget {
  const MassConverterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Mass Converter',
      style: TextStyle(color: Colors.black, fontSize: 18),
    );
  }
}

class MassInputField extends StatelessWidget {
  final MassConverterController controller;

  const MassInputField({super.key, required this.controller});

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

class MassDropdowns extends StatelessWidget {
  final MassConverterController controller;
  final StateSetter setState;

  const MassDropdowns(
      {super.key, required this.controller, required this.setState});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MassDropdown(
          value: controller.model.fromUnit,
          onChanged: (MassUnit? newValue) {
            setState(() {
              controller.model.fromUnit = newValue!;
            });
          },
        ),
        MassDropdown(
          value: controller.model.toUnit,
          onChanged: (MassUnit? newValue) {
            setState(() {
              controller.model.toUnit = newValue!;
            });
          },
        ),
      ],
    );
  }
}

class MassDropdown extends StatelessWidget {
  final MassUnit? value;
  final ValueChanged<MassUnit?>? onChanged;

  const MassDropdown({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<MassUnit>(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      value: value,
      onChanged: onChanged,
      items: MassUnit.values.map((MassUnit unit) {
        return DropdownMenuItem<MassUnit>(
          value: unit,
          child: Text(unit.toString().split('.').last),
        );
      }).toList(),
    );
  }
}

class MassResult extends StatelessWidget {
  final MassConverterController controller;

  const MassResult({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Text('Result: ${controller.model.result}');
  }
}

import 'package:physics_convertions_unit/controller/length_converter.dart';
import 'package:physics_convertions_unit/models/length_models.dart';
import 'package:flutter/material.dart';

class LengthConverterBottomSheet extends StatefulWidget {
  final LengthConverterController controller;

  const LengthConverterBottomSheet({
    super.key,
    required this.controller,
  });

  @override
  State<LengthConverterBottomSheet> createState() =>
      _LengthConverterBottomSheetState();
}

class _LengthConverterBottomSheetState
    extends State<LengthConverterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Column(
          children: [
            const SizedBox(height: 20),
            const LengthConverterTitle(),
            LengthInputField(
              controller: widget.controller,
            ),
            const SizedBox(height: 20),
            LengthDropdowns(
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
              child: LengthResult(controller: widget.controller),
            ),
          ],
        );
      },
    );
  }
}

class LengthConverterTitle extends StatelessWidget {
  const LengthConverterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Length Converter',
      style: TextStyle(color: Colors.black, fontSize: 18),
    );
  }
}

class LengthInputField extends StatelessWidget {
  final LengthConverterController controller;

  const LengthInputField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: TextField(
        controller: controller.inputController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(labelText: 'Enter value'),
      ),
    );
  }
}

class LengthDropdowns extends StatelessWidget {
  final LengthConverterController controller;
  final StateSetter setState;

  const LengthDropdowns(
      {super.key, required this.controller, required this.setState});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LengthDropdown(
          value: controller.model.fromUnit,
          onChanged: (LengthUnit? newValue) {
            setState(() {
              controller.model.fromUnit = newValue!;
            });
          },
        ),
        LengthDropdown(
          value: controller.model.toUnit,
          onChanged: (LengthUnit? newValue) {
            setState(() {
              controller.model.toUnit = newValue!;
            });
          },
        ),
      ],
    );
  }
}

class LengthDropdown extends StatelessWidget {
  final LengthUnit? value;
  final ValueChanged<LengthUnit?>? onChanged;

  const LengthDropdown(
      {super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<LengthUnit>(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      value: value,
      onChanged: onChanged,
      items: LengthUnit.values.map((LengthUnit unit) {
        return DropdownMenuItem<LengthUnit>(
          value: unit,
          child: Text(unit.toString().split('.').last),
        );
      }).toList(),
    );
  }
}

class LengthResult extends StatelessWidget {
  final LengthConverterController controller;

  const LengthResult({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Text('Result: ${controller.model.result}');
  }
}

import 'package:physics_convertions_unit/controller/temperature_converter.dart';
import 'package:physics_convertions_unit/models/temperature_models.dart';
import 'package:flutter/material.dart';

class TemperatureConverterBottomSheet extends StatefulWidget {
  final TemperatureConverterController controller;

  const TemperatureConverterBottomSheet({
    super.key,
    required this.controller,
  });

  @override
  State<TemperatureConverterBottomSheet> createState() =>
      _TemperatureConverterBottomSheetState();
}

class _TemperatureConverterBottomSheetState
    extends State<TemperatureConverterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const TemperatureConverterTitle(),
            TemperatureInputField(
              controller: widget.controller,
            ),
            const SizedBox(height: 20),
            TemperatureDropdowns(
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
              padding: const EdgeInsets.only(top: 10),
              child: TemperatureResult(controller: widget.controller),
            ),
          ],
        );
      },
    );
  }
}

class TemperatureConverterTitle extends StatelessWidget {
  const TemperatureConverterTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Temperature Converter',
      style: TextStyle(color: Colors.black, fontSize: 18),
    );
  }
}

class TemperatureInputField extends StatelessWidget {
  final TemperatureConverterController controller;

  const TemperatureInputField({super.key, required this.controller});

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

class TemperatureDropdowns extends StatelessWidget {
  final TemperatureConverterController controller;
  final StateSetter setState;

  const TemperatureDropdowns(
      {super.key, required this.controller, required this.setState});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TemperatureDropdown(
          value: controller.model.fromUnit,
          onChanged: (TemperatureUnit? newValue) {
            setState(() {
              controller.model.fromUnit = newValue!;
            });
          },
        ),
        TemperatureDropdown(
          value: controller.model.toUnit,
          onChanged: (TemperatureUnit? newValue) {
            setState(() {
              controller.model.toUnit = newValue!;
            });
          },
        ),
      ],
    );
  }
}

class TemperatureDropdown extends StatelessWidget {
  final TemperatureUnit? value;
  final ValueChanged<TemperatureUnit?>? onChanged;

  const TemperatureDropdown(
      {super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<TemperatureUnit>(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      value: value,
      onChanged: onChanged,
      items: TemperatureUnit.values.map((TemperatureUnit unit) {
        return DropdownMenuItem<TemperatureUnit>(
          value: unit,
          child: Text(unit.toString().split('.').last),
        );
      }).toList(),
    );
  }
}

class TemperatureResult extends StatelessWidget {
  final TemperatureConverterController controller;

  const TemperatureResult({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Text('Result: ${controller.model.result}');
  }
}

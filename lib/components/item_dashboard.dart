import 'package:physics_convertions_unit/components/bottom_sheet/length_bottom_sheet.dart';
import 'package:physics_convertions_unit/components/bottom_sheet/energy_bottom_sheet.dart';
import 'package:physics_convertions_unit/components/bottom_sheet/mass_bottom_sheet.dart';
import 'package:physics_convertions_unit/components/bottom_sheet/temprature_bottom_sheet.dart';
import 'package:physics_convertions_unit/components/bottom_sheet/volume_bottom_sheet.dart';
import 'package:physics_convertions_unit/controller/energy_converter.dart';
import 'package:physics_convertions_unit/controller/length_converter.dart';
import 'package:physics_convertions_unit/controller/mass_converter.dart';
import 'package:physics_convertions_unit/controller/temperature_converter.dart';
import 'package:physics_convertions_unit/controller/volume_converter.dart';
import 'package:physics_convertions_unit/models/converter_type.dart';
import 'package:flutter/material.dart';

class ItemDashboard extends StatefulWidget {
  final String title, image;
  final dynamic controller;
  const ItemDashboard({
    super.key,
    required this.title,
    required this.image,
    required this.controller,
  });

  @override
  State<ItemDashboard> createState() => _ItemDashboardState();
}

class _ItemDashboardState extends State<ItemDashboard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        switch (widget.title) {
          case 'Temperature Converter':
            _showConverterBottomSheet(
              context,
              widget.controller,
              ConverterType.temperature,
            );
            break;
          case 'Volume Converter':
            _showConverterBottomSheet(
              context,
              widget.controller,
              ConverterType.volume,
            );
            break;
          case 'Length Converter':
            _showConverterBottomSheet(
              context,
              widget.controller,
              ConverterType.length,
            );
            break;
          case 'Mass Converter':
            _showConverterBottomSheet(
              context,
              widget.controller,
              ConverterType.mass,
            );
            break;
          case 'Energy Converter':
            _showConverterBottomSheet(
              context,
              widget.controller,
              ConverterType.energy,
            );
            break;
          default:
            break;
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/${widget.image}',
              height: 60,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 5),
            Text(
              widget.title,
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

void _showConverterBottomSheet(
  BuildContext context,
  dynamic controller,
  ConverterType type,
) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SizedBox(
          height: 320,
          child: Builder(
            builder: (BuildContext context) {
              if (controller != null) {
                switch (type) {
                  case ConverterType.temperature:
                    if (controller is TemperatureConverterController) {
                      return TemperatureConverterBottomSheet(
                        controller: controller,
                      );
                    }
                    break;
                  case ConverterType.volume:
                    if (controller is VolumeConverterController) {
                      return VolumeConverterBottomSheet(
                        controller: controller,
                      );
                    }
                    break;
                  case ConverterType.length:
                    if (controller is LengthConverterController) {
                      return LengthConverterBottomSheet(
                        controller: controller,
                      );
                    }
                    break;
                  case ConverterType.mass:
                    if (controller is MassConverterController) {
                      return MassConverterBottomSheet(
                        controller: controller,
                      );
                    }
                    break;
                  case ConverterType.energy:
                    if (controller is EnergyConverterController) {
                      return EnergyConverterBottomSheet(
                        controller: controller,
                      );
                    }
                    break;
                  default:
                    return const Text('Tipe konverter tidak diketahui');
                }
              }

              return const Text(
                  'Kontroler tidak valid atau tipe konverter tidak diketahui');
            },
          ),
        ),
      );
    },
  );
}

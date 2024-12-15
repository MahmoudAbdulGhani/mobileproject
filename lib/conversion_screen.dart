import 'package:flutter/material.dart';
import 'unit_converter.dart';

class ConversionScreen extends StatefulWidget {
  final String unitType;

  ConversionScreen({required this.unitType});

  @override
  _ConversionScreenState createState() => _ConversionScreenState();
}

class _ConversionScreenState extends State<ConversionScreen> {
  String fromUnit = '';
  String toUnit = '';
  double inputValue = 0;
  String result = '';

  @override
  Widget build(BuildContext context) {
    List<String> units = widget.unitType == 'Length'
        ? ['Meters', 'Kilometers']
        : widget.unitType == 'Weight'
        ? ['Grams', 'Kilograms']
        : ['Celsius', 'Fahrenheit'];

    return Scaffold(
      appBar: AppBar(title: Text('${widget.unitType} Conversion')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<String>(
              value: fromUnit.isEmpty ? units.first : fromUnit,
              items: units.map((String unit) {
                return DropdownMenuItem(value: unit, child: Text(unit));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  fromUnit = value!;
                });
              },
            ),
            DropdownButton<String>(
              value: toUnit.isEmpty ? units.first : toUnit,
              items: units.map((String unit) {
                return DropdownMenuItem(value: unit, child: Text(unit));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  toUnit = value!;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Enter Value'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                inputValue = double.tryParse(value) ?? 0;
              },
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (widget.unitType == 'Length') {
                    result = UnitConverter.convertLength(inputValue, fromUnit, toUnit).toString();
                  } else if (widget.unitType == 'Weight') {
                    result = UnitConverter.convertWeight(inputValue, fromUnit, toUnit).toString();
                  }

                });
              },
              child: Text('Convert'),
            ),
            Text('Result: $result'),
          ],
        ),
      ),
    );
  }
}

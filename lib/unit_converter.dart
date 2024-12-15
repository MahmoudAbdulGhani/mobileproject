class UnitConverter {
  static double convertLength(double value, String fromUnit, String toUnit) {
    if (fromUnit == "Meters" && toUnit == "Kilometers") {
      return value / 1000;
    }
    if (fromUnit == "Kilometers" && toUnit == "Meters") {
      return value * 1000;
    }

    return value;
  }

  static double convertWeight(double value, String fromUnit, String toUnit) {
    if (fromUnit == "Grams" && toUnit == "Kilograms") {
      return value / 1000;
    }

    return value;
  }

  static double convertTemperature(double value, String fromUnit, String toUnit) {
    if (fromUnit == "Celsius" && toUnit == "Fahrenheit") {
      return (value * 9 / 5) + 32;
    }
    if (fromUnit == "Fahrenheit" && toUnit == "Celsius") {
      return (value - 32) * 5 / 9;
    }

    return value;
  }
}

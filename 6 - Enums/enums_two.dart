enum ColorsNames {
  RED,
  GREEN,
  BLUE,
}

extension ExtendedColorsNames on ColorsNames {
  getColorValue(ColorsNames colorsNames) {
    switch (colorsNames) {
      case ColorsNames.RED:
        return '0xFF0000';
      case ColorsNames.GREEN:
        return '0x00FF00';
      case ColorsNames.BLUE:
        return '0x0000FF';
    }
  }
}

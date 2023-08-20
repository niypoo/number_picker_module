class NumberPicker {
  final num value;
  final int fractionDigits;
  final String title;
  final String label;

  NumberPicker({
    this.value = 60,
    this.fractionDigits = 0,
    required this.label,
    required this.title,
  });
}

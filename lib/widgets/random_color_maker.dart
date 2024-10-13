import 'dart:math';

int getRandomColor() {
  List<int> colors = const [
    0xFFFFC107, // Amber
    0xFFFFEB3B, // Yellow
    0xFFCDDC39, // Lime
    0xFF8BC34A, // Light Green
    0xFF4CAF50, // Green
    0xFF00BCD4, // Cyan
    0xFF03A9F4, // Light Blue
    0xFF2196F3, // Blue
    0xFF9C27B0, // Purple
    0xFFE91E63, // Pink
  ];

  Random random = Random();
  return colors[random.nextInt(colors.length)];
}

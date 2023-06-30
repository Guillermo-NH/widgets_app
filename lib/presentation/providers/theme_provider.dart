import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/theme/app_theme.dart';

// Un simple boolean
final isDartmodeProvider = StateProvider<bool>((ref) => false);

// Listado de colores inmutables
final colorListProviders = StateProvider((ref) => colorList);

// Un simple inte
final selectedcolorProvider = StateProvider((ref) => 0);

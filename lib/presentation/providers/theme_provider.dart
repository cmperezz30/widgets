import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);

//un objeto de tipo AppTheme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(), 
);

class ThemeNotifier extends StateNotifier<AppTheme>{

  ThemeNotifier(): super(AppTheme());

  void toggleDarkMode(){
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorTheme(int index){
    state = state.copyWith(selectedColor: index);
  }

}
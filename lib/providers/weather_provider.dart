import 'package:assessment_flutter/services/weather_service.dart';
import 'package:flutter/material.dart';
import '../models/item.dart';
import '../models/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  final _service = WeatherService();
  bool isLoading = false;
  List<Item> _items = [];
  List<Item> get weathers => _items;

  Future<void> getAllItems() async {
    isLoading = true;
    notifyListeners();

    final response = await _service.getAll();
    _items = response;
    isLoading = false;
    notifyListeners();
  }
}

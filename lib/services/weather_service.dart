import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:assessment_flutter/models/weather_model.dart';

import '../models/item.dart';

class WeatherService {
  Future<List<Item>> getAll() async {
    // const url =
    //     'http://api.weatherapi.com/v1/forecast.json?key=34cb2798c9c846f4b6564212232106&q=34.02139053920694,35.647088393446026';
    const url = 'https://jsonplaceholder.typicode.com/todos';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      final todos = json.map((e) {
        return Item(
          id: e['id'],
          userId: e['userId'],
          title: e['title'],
          completed: e['completed'],
        );
      }).toList();
      return todos;
    }
    // if (response.statusCode == 200) {
    //   final json = jsonDecode(response.body);

    //   final forecast = json['forecast']['forecastday'] as List;

    //   final finalList = forecast.map<Weather>((day) {
    //     final date = day['date'];

    //     return Weather(
    //       date: date,
    //       title: day['day']['condition']['text'],
    //       maxtemp_c: day['day']['maxtemp_c'].toDouble(),
    //       avgtemp_c: day['day']['avgtemp_c'].toDouble(),
    //       icon: day['day']['condition']['icon'],
    //     );
    //   }).toList();

    //   return finalList;
    // }
    return [];
    // throw "somthing went wrong";
  }
}

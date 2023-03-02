import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/model/homemodel.dart';

home_search() async
{
  var BaseUrl = "https://api.openweathermap.org/data/2.5/weather?q=karachi&appid=f5783e1fee68d6228723ecc46804ee40";
  var URL = Uri.parse(BaseUrl);
  var response = await http.get(URL);
  var json_to_dart = jsonDecode(response.body);
  var weather_data = weatherData.fromJson(json_to_dart);
  return weather_data;
  
}
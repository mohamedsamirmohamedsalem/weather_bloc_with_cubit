import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../data/model/Weather.dart';

@immutable
abstract class WeatherState extends Equatable {
  WeatherState();
}

class WeatherInitial extends WeatherState {
  WeatherInitial();
}

class WeatherLoading extends WeatherState {
  WeatherLoading();
}

class WeatherLoaded extends WeatherState {
  final Weather weather;
  WeatherLoaded(this.weather);
}

class WeatherError extends WeatherState {
  final String message;
  WeatherError(this.message);
}

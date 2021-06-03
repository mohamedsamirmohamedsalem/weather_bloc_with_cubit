import '../Weather.dart';

abstract class WeatherState {
  const WeatherState();
}

class WeatherInitial extends WeatherState {
  const WeatherInitial();
}

class WeatherLoading extends WeatherState {
  const WeatherLoading();
}

class WeatherLoaded extends WeatherState {
  final Weather weather;
  const WeatherLoaded(this.weather);

  @override
  bool operator ==(Object obj) {
    if (identical(this, obj)) return true;
    return obj is WeatherLoaded && obj.weather == weather;
  }

  @override
  int get hashCode => weather.hashCode;
}

class WeatherError extends WeatherState {
  final String message;
  const WeatherError(this.message);

  @override
  bool operator ==(Object obj) {
    if (identical(this, obj)) return true;

    return obj is WeatherError && obj.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

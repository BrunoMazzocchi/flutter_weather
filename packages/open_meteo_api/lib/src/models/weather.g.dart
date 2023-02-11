part of 'weather.dart';


Weather _$WeatherFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Weather',
      json,
      ($checkedConvert) {
        final val = Weather(
          temperature: $checkedConvert(
              'temperature', (v) => (v as num).toDouble()),
          weatherCode: $checkedConvert('weathercode', (v) => v as int),
        );
        return val;
      },
    );
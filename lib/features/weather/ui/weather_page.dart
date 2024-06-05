import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/app/core/utils/injection_container.dart';
import 'package:task_manager/domain/models/weather_model.dart';
import 'package:task_manager/domain/repositories/weather/weather_repository.dart';
import 'package:task_manager/features/planned/cubit/planned_cubit.dart';
import 'package:task_manager/generated/l10n.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  WeatherPageState createState() => WeatherPageState();
}

class WeatherPageState extends State<WeatherPage> {
  final WeatherRepository _weatherRepository = getIt<WeatherRepository>();
  WeatherModel? _weather;

  @override
  void initState() {
    super.initState();
    _getWeather();
  }

  void _getWeather() async {
    final plannedState = BlocProvider.of<PlannedCubit>(context).state;
    final city = plannedState.address;
    if (city.isNotEmpty) {
      try {
        final weatherData = await _weatherRepository.getWeather(city);
        setState(() {
          _weather = weatherData;
        });
      } catch (e) {
        Error();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlannedCubit, PlannedState>(
      builder: (context, plannedState) {
        _getWeather();
        return Scaffold(
          appBar: AppBar(
            title: Text(
              S.of(context).weather,
              style: Theme.of(context).xTextTheme.body1,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _weather != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).weather_city(_weather!.city),
                          ),
                          Text(
                            S.of(context).weather_temp(_weather!.temperature),
                          ),
                          Text(
                            S.of(context).weather_wind(_weather!.wind),
                          ),
                          Text(
                            S.of(context).weather_humidity(_weather!.humidity),
                          ),
                          Text(
                            S.of(context).weather_like(_weather!.feelslike),
                          ),
                          Text(
                            S.of(context).weather_pressure(_weather!.pressure),
                          ),
                        ],
                      )
                    : Container(),
              ],
            ),
          ),
        );
      },
    );
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null, 'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;
 
      return instance;
    });
  } 

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null, 'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Add a task`
  String get add_task {
    return Intl.message(
      'Add a task',
      name: 'add_task',
      desc: '',
      args: [],
    );
  }

  /// `Planned`
  String get planned {
    return Intl.message(
      'Planned',
      name: 'planned',
      desc: '',
      args: [],
    );
  }

  /// `In progress`
  String get in_progress {
    return Intl.message(
      'In progress',
      name: 'in_progress',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back!`
  String get welcome {
    return Intl.message(
      'Welcome back!',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Ready to plan your day?`
  String get ready {
    return Intl.message(
      'Ready to plan your day?',
      name: 'ready',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get options {
    return Intl.message(
      'Options',
      name: 'options',
      desc: '',
      args: [],
    );
  }

  /// `Your personal assistant for task management.`
  String get assistant {
    return Intl.message(
      'Your personal assistant for task management.',
      name: 'assistant',
      desc: '',
      args: [],
    );
  }

  /// `Plan, act, achieve goals!`
  String get action {
    return Intl.message(
      'Plan, act, achieve goals!',
      name: 'action',
      desc: '',
      args: [],
    );
  }

  /// `Create task`
  String get create {
    return Intl.message(
      'Create task',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Add a new task by pressing the Create task button. Once pressed, you will be taken to a screen where you can enter details of the new task, such as title, description, date, etc. Once saved, the task will be added to the task list.`
  String get description {
    return Intl.message(
      'Add a new task by pressing the Create task button. Once pressed, you will be taken to a screen where you can enter details of the new task, such as title, description, date, etc. Once saved, the task will be added to the task list.',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `In Progress Tasks`
  String get in_progress_tasks {
    return Intl.message(
      'In Progress Tasks',
      name: 'in_progress_tasks',
      desc: '',
      args: [],
    );
  }

  /// `Select Due Date`
  String get select_due_date {
    return Intl.message(
      'Select Due Date',
      name: 'select_due_date',
      desc: '',
      args: [],
    );
  }

  /// `Planned Tasks`
  String get planned_tasks {
    return Intl.message(
      'Planned Tasks',
      name: 'planned_tasks',
      desc: '',
      args: [],
    );
  }

  /// `All tasks`
  String get all_tasks {
    return Intl.message(
      'All tasks',
      name: 'all_tasks',
      desc: '',
      args: [],
    );
  }

  /// `Task Priority`
  String get task_priority {
    return Intl.message(
      'Task Priority',
      name: 'task_priority',
      desc: '',
      args: [],
    );
  }

  /// `Task Name`
  String get task_name {
    return Intl.message(
      'Task Name',
      name: 'task_name',
      desc: '',
      args: [],
    );
  }

  /// `Task Description`
  String get task_description {
    return Intl.message(
      'Task Description',
      name: 'task_description',
      desc: '',
      args: [],
    );
  }

  /// `Task Owner`
  String get task_owner {
    return Intl.message(
      'Task Owner',
      name: 'task_owner',
      desc: '',
      args: [],
    );
  }

  /// `No tasks in progress available`
  String get no_tasks {
    return Intl.message(
      'No tasks in progress available',
      name: 'no_tasks',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Name: {name}`
  String name(Object name) {
    return Intl.message(
      'Name: $name',
      name: 'name',
      desc: '',
      args: [name],
    );
  }

  /// `Description: {description}`
  String description_name(Object description) {
    return Intl.message(
      'Description: $description',
      name: 'description_name',
      desc: '',
      args: [description],
    );
  }

  /// `Owner: {owner}`
  String owner(Object owner) {
    return Intl.message(
      'Owner: $owner',
      name: 'owner',
      desc: '',
      args: [owner],
    );
  }

  /// `Due Date: {dueDate}`
  String date(Object dueDate) {
    return Intl.message(
      'Due Date: $dueDate',
      name: 'date',
      desc: '',
      args: [dueDate],
    );
  }

  /// `Priority: {priority}`
  String priority(Object priority) {
    return Intl.message(
      'Priority: $priority',
      name: 'priority',
      desc: '',
      args: [priority],
    );
  }

  /// `Selected Due Date: {selectedDate}`
  String selected_date(Object selectedDate) {
    return Intl.message(
      'Selected Due Date: $selectedDate',
      name: 'selected_date',
      desc: '',
      args: [selectedDate],
    );
  }

  /// `Task name and due date are required`
  String get snackbar {
    return Intl.message(
      'Task name and due date are required',
      name: 'snackbar',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get statistics {
    return Intl.message(
      'Statistics',
      name: 'statistics',
      desc: '',
      args: [],
    );
  }

  /// `Number of tasks performed: {tasksDone}`
  String task_done(Object tasksDone) {
    return Intl.message(
      'Number of tasks performed: $tasksDone',
      name: 'task_done',
      desc: '',
      args: [tasksDone],
    );
  }

  /// `Number of tasks completed this week: {tasksDoneThisWeek}`
  String task_week(Object tasksDoneThisWeek) {
    return Intl.message(
      'Number of tasks completed this week: $tasksDoneThisWeek',
      name: 'task_week',
      desc: '',
      args: [tasksDoneThisWeek],
    );
  }

  /// `Number of scheduled tasks: {plannedTasks}`
  String planned_task_stat(Object plannedTasks) {
    return Intl.message(
      'Number of scheduled tasks: $plannedTasks',
      name: 'planned_task_stat',
      desc: '',
      args: [plannedTasks],
    );
  }

  /// `Percentage implementation of planned tasks: {completedPercentage}%`
  String percentage_task(Object completedPercentage) {
    return Intl.message(
      'Percentage implementation of planned tasks: $completedPercentage%',
      name: 'percentage_task',
      desc: '',
      args: [completedPercentage],
    );
  }

  /// `Edit task`
  String get edit_task {
    return Intl.message(
      'Edit task',
      name: 'edit_task',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Get notification for tasks ending tomorrow`
  String get get_notification {
    return Intl.message(
      'Get notification for tasks ending tomorrow',
      name: 'get_notification',
      desc: '',
      args: [],
    );
  }

  /// `Your task is due tomorrow!`
  String get task_notification {
    return Intl.message(
      'Your task is due tomorrow!',
      name: 'task_notification',
      desc: '',
      args: [],
    );
  }

  /// `Payload`
  String get payload {
    return Intl.message(
      'Payload',
      name: 'payload',
      desc: '',
      args: [],
    );
  }

  /// `Weather`
  String get weather {
    return Intl.message(
      'Weather',
      name: 'weather',
      desc: '',
      args: [],
    );
  }

  /// `City: {weathercity}`
  String weather_city(Object weathercity) {
    return Intl.message(
      'City: $weathercity',
      name: 'weather_city',
      desc: '',
      args: [weathercity],
    );
  }

  /// `Temperature: {weathertemperature}°C`
  String weather_temp(Object weathertemperature) {
    return Intl.message(
      'Temperature: $weathertemperature°C',
      name: 'weather_temp',
      desc: '',
      args: [weathertemperature],
    );
  }

  /// `Wind: {weatherwind} mph`
  String weather_wind(Object weatherwind) {
    return Intl.message(
      'Wind: $weatherwind mph',
      name: 'weather_wind',
      desc: '',
      args: [weatherwind],
    );
  }

  /// `Humidity: {weatherhumidity}%`
  String weather_humidity(Object weatherhumidity) {
    return Intl.message(
      'Humidity: $weatherhumidity%',
      name: 'weather_humidity',
      desc: '',
      args: [weatherhumidity],
    );
  }

  /// `Feels Like: {weatherfeelslike}°C`
  String weather_like(Object weatherfeelslike) {
    return Intl.message(
      'Feels Like: $weatherfeelslike°C',
      name: 'weather_like',
      desc: '',
      args: [weatherfeelslike],
    );
  }

  /// `Pressure: {weatherpressure} in`
  String weather_pressure(Object weatherpressure) {
    return Intl.message(
      'Pressure: $weatherpressure in',
      name: 'weather_pressure',
      desc: '',
      args: [weatherpressure],
    );
  }

  /// `No payload data found`
  String get no_payload {
    return Intl.message(
      'No payload data found',
      name: 'no_payload',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
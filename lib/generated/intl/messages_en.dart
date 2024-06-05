// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(dueDate) => "Due Date: ${dueDate}";

  static m1(description) => "Description: ${description}";

  static m2(name) => "Name: ${name}";

  static m3(owner) => "Owner: ${owner}";

  static m4(completedPercentage) => "Percentage implementation of planned tasks: ${completedPercentage}%";

  static m5(plannedTasks) => "Number of scheduled tasks: ${plannedTasks}";

  static m6(priority) => "Priority: ${priority}";

  static m7(selectedDate) => "Selected Due Date: ${selectedDate}";

  static m8(tasksDone) => "Number of tasks performed: ${tasksDone}";

  static m9(tasksDoneThisWeek) => "Number of tasks completed this week: ${tasksDoneThisWeek}";

  static m10(weathercity) => "City: ${weathercity}";

  static m11(weatherhumidity) => "Humidity: ${weatherhumidity}%";

  static m12(weatherfeelslike) => "Feels Like: ${weatherfeelslike}°C";

  static m13(weatherpressure) => "Pressure: ${weatherpressure} in";

  static m14(weathertemperature) => "Temperature: ${weathertemperature}°C";

  static m15(weatherwind) => "Wind: ${weatherwind} mph";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "action" : MessageLookupByLibrary.simpleMessage("Plan, act, achieve goals!"),
    "add_task" : MessageLookupByLibrary.simpleMessage("Add a task"),
    "all_tasks" : MessageLookupByLibrary.simpleMessage("All tasks"),
    "assistant" : MessageLookupByLibrary.simpleMessage("Your personal assistant for task management."),
    "create" : MessageLookupByLibrary.simpleMessage("Create task"),
    "date" : m0,
    "description" : MessageLookupByLibrary.simpleMessage("Add a new task by pressing the Create task button. Once pressed, you will be taken to a screen where you can enter details of the new task, such as title, description, date, etc. Once saved, the task will be added to the task list."),
    "description_name" : m1,
    "done" : MessageLookupByLibrary.simpleMessage("Done"),
    "edit" : MessageLookupByLibrary.simpleMessage("Edit"),
    "edit_task" : MessageLookupByLibrary.simpleMessage("Edit task"),
    "error" : MessageLookupByLibrary.simpleMessage("Error"),
    "get_notification" : MessageLookupByLibrary.simpleMessage("Get notification for tasks ending tomorrow"),
    "in_progress" : MessageLookupByLibrary.simpleMessage("In progress"),
    "in_progress_tasks" : MessageLookupByLibrary.simpleMessage("In Progress Tasks"),
    "name" : m2,
    "no_tasks" : MessageLookupByLibrary.simpleMessage("No tasks in progress available"),
    "options" : MessageLookupByLibrary.simpleMessage("Options"),
    "owner" : m3,
    "payload" : MessageLookupByLibrary.simpleMessage("Payload"),
    "percentage_task" : m4,
    "planned" : MessageLookupByLibrary.simpleMessage("Planned"),
    "planned_task_stat" : m5,
    "planned_tasks" : MessageLookupByLibrary.simpleMessage("Planned Tasks"),
    "priority" : m6,
    "ready" : MessageLookupByLibrary.simpleMessage("Ready to plan your day?"),
    "save" : MessageLookupByLibrary.simpleMessage("Save"),
    "select_due_date" : MessageLookupByLibrary.simpleMessage("Select Due Date"),
    "selected_date" : m7,
    "snackbar" : MessageLookupByLibrary.simpleMessage("Task name and due date are required"),
    "statistics" : MessageLookupByLibrary.simpleMessage("Statistics"),
    "task_description" : MessageLookupByLibrary.simpleMessage("Task Description"),
    "task_done" : m8,
    "task_name" : MessageLookupByLibrary.simpleMessage("Task Name"),
    "task_notification" : MessageLookupByLibrary.simpleMessage("Your task is due tomorrow!"),
    "task_owner" : MessageLookupByLibrary.simpleMessage("Task Owner"),
    "task_priority" : MessageLookupByLibrary.simpleMessage("Task Priority"),
    "task_week" : m9,
    "weather" : MessageLookupByLibrary.simpleMessage("Weather"),
    "weather_city" : m10,
    "weather_humidity" : m11,
    "weather_like" : m12,
    "weather_pressure" : m13,
    "weather_temp" : m14,
    "weather_wind" : m15,
    "welcome" : MessageLookupByLibrary.simpleMessage("Welcome back!")
  };
}

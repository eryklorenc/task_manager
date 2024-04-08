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

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "action" : MessageLookupByLibrary.simpleMessage("Plan, act, achieve goals!"),
    "add_task" : MessageLookupByLibrary.simpleMessage("Add a task"),
    "assistant" : MessageLookupByLibrary.simpleMessage("Your personal assistant for task management."),
    "create" : MessageLookupByLibrary.simpleMessage("Create task"),
    "description" : MessageLookupByLibrary.simpleMessage("Add a new task by pressing the \'Create task\' button. Once pressed, you will be taken to a screen where you can enter details of the new task, such as title, description, date, etc. Once saved, the task will be added to the task list."),
    "done" : MessageLookupByLibrary.simpleMessage("Done"),
    "in_progress" : MessageLookupByLibrary.simpleMessage("In progress"),
    "options" : MessageLookupByLibrary.simpleMessage("Options"),
    "planned" : MessageLookupByLibrary.simpleMessage("Planned"),
    "ready" : MessageLookupByLibrary.simpleMessage("Ready to plan your day?"),
    "welcome" : MessageLookupByLibrary.simpleMessage("Welcome back!")
  };
}

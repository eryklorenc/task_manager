import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:task_manager/app/app.dart';
import 'package:task_manager/app/core/utils/injection_container.dart';
import 'package:task_manager/data/datasources/notification/notification_datasources.dart';
import 'firebase_options.dart';

Future<void> main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationDataSources.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

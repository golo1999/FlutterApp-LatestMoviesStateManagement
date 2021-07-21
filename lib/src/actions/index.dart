library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latest_movies_state_management/src/models/index.dart';

part 'get_movies.dart';

part 'set.dart';

part 'index.freezed.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

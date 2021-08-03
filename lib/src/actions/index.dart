library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latest_movies_state_management/src/models/index.dart';

part 'get_movies.dart';
part 'get_reviews.dart';
part 'index.freezed.dart';
part 'initialize_app.dart';
part 'register_user.dart';
part 'set.dart';
part 'sign_out_user.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}

typedef ActionResult = void Function(AppAction action);

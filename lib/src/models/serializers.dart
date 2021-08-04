import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:latest_movies_state_management/src/models/index.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  Movie,
  Review,
  Torrent,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();
